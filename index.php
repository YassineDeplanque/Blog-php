<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Accueil</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,300,700">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>
        <?php
        session_start();
        require './fonctions/bdd.php';
        require './fonctions/blog.php';

        $pdo = bdd();

        if (!empty($_POST["query"])) {
            $articles = recherche($_POST["query"]);
        } else {
            $articles = articles();
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
                <?php
                foreach ($articles as $row):
                    ?>
                    <div class="col-md-4 col-sm-6">
                        <article>
                            <img src="./img/<?php echo $row['image']; ?>" alt="https://placeimg.com/640/480/people">
                            <p class="date">Posté le <?php echo formatage_date($row['publication']); ?></p>
                            <h1><?php echo $row['titre']; ?></h1>
                            <p><?php echo $row['accroche']; ?></p>
                            <a href="article.php?id=<?php echo $row['id']; ?>">Lire l'article</a>
                        </article>
                    </div>
                <?php endforeach; ?>
            </div>
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
