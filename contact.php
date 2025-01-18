<?php
session_start();
require './fonctions/bdd.php';
require './fonctions/blog.php';

$bdd = [];

if (!empty($_POST)){
    $erreurs = contact();
}

?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Infoprog - Contact</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,300,700">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>
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

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h1>Contactez-moi !</h1>
                </div>
            </div>

            <?php if (!empty($erreurs)): ?>
                <div class="alert alert-danger">
                    <?php foreach ($erreurs as $erreur): ?>
                        <p><?= $erreur ?></p>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>

            <form method="post" action="">
                <div class="row">
                    <div class="col-sm-6">
                        <input type="text" name="nom" placeholder="Votre nom *" value="<?= isset($_POST['nom']) ? htmlspecialchars($_POST['nom']) : '' ?>">
                    </div>
                    <div class="col-sm-6">
                        <input type="text" name="email" placeholder="Votre adresse email *" value="<?= isset($_POST['email']) ? htmlspecialchars($_POST['email']) : '' ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <textarea name="texte" placeholder="En quoi puis-je vous aider ? *"><?= isset($_POST['texte']) ? htmlspecialchars($_POST['texte']) : '' ?></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <input type="submit" value="Envoyer!">
                    </div>
                </div>
            </form>

            <footer>
                <div class="row">
                    <div class="col-xs-12">
                        <a href="contact.php">Contact</a> - <a href="mentions.php">Mentions légales</a> - <a href="https://www.facebook.com/infoprog.tuto">Facebook</a>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>
