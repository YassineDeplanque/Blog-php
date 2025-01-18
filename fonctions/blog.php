<?php

function articles() {
    global $pdo;
    $req = $pdo->query("SELECT * FROM articles");
    $data = $req->fetchAll();

    return $data;
}

function article($id) {
    global $pdo;
    $query = $pdo->prepare("SELECT * FROM articles WHERE id = :id");
    $query->execute(['id' => $id]);
    $article = $query->fetch();

    if ($article) {
        return $article;
    } else {
        header("Location: index.php");
        exit;
    }
}

function formatage_date($publication) {
    $dt = DateTime::createFromFormat('Y-m-d H:i:s', $publication);
    return $dt->format('d/m/Y H:i:s');
}

function nb_commentaires($id) {
    global $pdo;

    $sql = "SELECT COUNT(*) FROM commentaires WHERE id_article = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$id]);

    return $stmt->fetchColumn();
}

function commentaires($id) {
    global $pdo;

    $sql = "SELECT membres.pseudo, commentaires.commentaire, commentaires.publication 
            FROM commentaires 
            INNER JOIN membres ON commentaires.id_membre = membres.id 
            WHERE commentaires.id_article = ? 
            ORDER BY commentaires.publication DESC";

    $stmt = $pdo->prepare($sql);
    $stmt->execute([$id]);

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function recherche($mot_cle) {
    global $pdo;

    $sql = "SELECT * FROM articles WHERE titre LIKE :mot_cle OR contenu LIKE :mot_cle ORDER BY publication DESC";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['mot_cle' => '%' . $mot_cle . '%']);

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function contact() {
    $erreurs = [];

    if (empty($_POST['nom'])) {
        $erreurs[] = "Le nom est requis.";
    }
    if (empty($_POST['email'])) {
        $erreurs[] = "L'adresse email est requise.";
    } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $erreurs[] = "L'adresse email est invalide.";
    }
    if (empty($_POST['texte'])) {
        $erreurs[] = "Le message est requis.";
    }

    if (!empty($erreurs)) {
        return $erreurs;
    }

    $to = "yassine.deplanque@idologis.fr";
    $subject = "Nouveau message de contact";
    $message = "Nom: " . htmlspecialchars($_POST['nom']) . "\n";
    $message .= "Email: " . htmlspecialchars($_POST['email']) . "\n";
    $message .= "Message: \n" . htmlspecialchars($_POST['texte']) . "\n";

    $headers = "From: " . htmlspecialchars($_POST['email']) . "\r\n";
    $headers .= "Reply-To: " . htmlspecialchars($_POST['email']) . "\r\n";

    if (!mail($to, $subject, $message, $headers)) {
        $erreurs[] = "Une erreur est survenue lors de l'envoi du message. Veuillez réessayer.";
    }

    return $erreurs;
}

?>