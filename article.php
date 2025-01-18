<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Infoprog - Article</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,300,700">
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <?php
    require './fonctions/bdd.php';
    require './fonctions/blog.php';

    $pdo = bdd();

    if (isset($_GET['id']) && !empty($_GET['id'])) {
        $id = (int)$_GET['id'];
        $article = article($id);

        if (!$article) {
            header("Location: index.php");
            exit;
        }       
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST['commentaire'])) {
            $pseudo = 'Anonyme'; // Remplacez par le pseudo de l'utilisateur connecté si disponible
            $commentaire = $_POST['commentaire'];
            ajouter_commentaire($id, $pseudo, $commentaire); // Appel de la fonction pour ajouter le commentaire
        }
    } else {
        header("Location: index.php");
        exit;
    }
    ?>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="index.php">L'aviation</a>
                </div>
                <div class="col-sm-10">
                    <nav>
                        <ul>
                            <li><a href="index.php">Accueil</a></li>
                            <li><a href="contact.php">Contact</a></li>
                            <li><a href="connexion.php">Connexion</a></li>
                            <li><a href="inscription.php">Inscription</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div class="container article">
        <div class="row">
            <form method="post" action="">
                <div class="col-sm-10">
                    <input type="text" name="query" placeholder="Rechercher un article ...">
                </div>
                <div class="col-sm-2">
                    <input type="submit" value="OK!">
                </div>
            </form>
        </div>
        
        <div class="row">
            <article>
                <div class="col-sm-5">
                    <img src="./img/<?php echo htmlspecialchars($article['image']); ?>" alt="Image de l'article">
                </div>
                <div class="col-sm-7">
                    <p class="date">Posté le <?php echo formatage_date($article['publication']); ?></p>
                    <h1><?php echo htmlspecialchars($article['titre']); ?></h1>
                    <p><?php echo htmlspecialchars($article['contenu']); ?></p>
                </div>
            </article>
        </div>
    </div>

    <div class="container commentaires">
        <div class="row">
            <div class="col-xs-12">
                <?php $nombreCommentaires = nb_commentaires($id); ?>
                <h1>Commentaires (<?php echo $nombreCommentaires; ?>)</h1>
            </div>
        </div>
        
        <?php
        $commentaires = commentaires($id);
        foreach ($commentaires as $commentaire) {
            echo "<div class='row commentaire'>";
            echo "<div class='col-xs-12'>";
            echo "<p class='date'>Posté par " . htmlspecialchars($commentaire['pseudo']) . " le " . htmlspecialchars($commentaire['publication']) . " :</p>";
            echo "<p>" . htmlspecialchars($commentaire['commentaire']) . "</p>";
            echo "</div>";
            echo "</div>";
        }
        ?>

        <div class="row">
            <div class="col-xs-12">
                <form method="post" action="">
                    <textarea name="commentaire" placeholder="Votre commentaire *" required></textarea>
                    <input type="submit" value="Commenter">
                </form>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="row">
            <div class="col-xs-12">
                <a href="contact.php">Contact</a> - <a href="mentions.php">Mentions légales</a> - <a href="https://www.facebook.com/infoprog.tuto">Facebook</a>
            </div>
        </div>
    </footer>
</body>
</html>
