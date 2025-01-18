<?php

include_once '../inscription.php';
function inscription() {
    if(isset($_POST["pseudo"], $_POST["email"], $_POST["emailconf"], $_POST["password"], $_POST["passwordconf"])
            && !empty($_POST["pseudo"]) && !empty($_POST["email"]) && 
            !empty($_POST["emailconf"]) && !empty($_POST["password"]) 
            && !empty($_POST["passwordconf"])
                    ){
        $pseudo = strip_tags($_POST["pseudo"]);
        $pass = password_hash($_POST["password"], PASSWORD_ARGON2ID);
        if(!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)){
            die("L'adresse email est invalide");
        }
        require_once './bdd.php';
        $sql = "INSERT INTO membres ('pseudo', 'email', 'password') VALUES(:pseudo, :email, $pass)";
        $query = $pdo->prepare($sql);
        $query->execute();
    }else{
        die("Le formulaie est incomplet");
    }
}