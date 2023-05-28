<?php
 
// Connexion � la base de donn�es MySQL 
$conn = mysqli_connect("localhost", "root", "", "ubora_collecte");
 
// V�rifier la connexion
if($conn === false){
    die("ERREUR : Impossible de se connecter. " . mysqli_connect_error());
}
?>