<?php

function bdd() {
    try {
        $host = 'mysql:host=localhost;dbname=aviation';
        $login = 'eleve2';
        $password = 'eleve';
        $pdo = new PDO($host, $login, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch (Exception $e) {
        die($e->getMessage());
    }
}

?>