<?php 
include "../config.php";

extract($_POST);

$mot_passe=stripslashes($mot_passeSend);
$password=mysqli_real_escape_string($conn,$mot_passe);
$pass = $password;




$query = "INSERT into `utlisateur`(`nom`, `prenom`, mot_passe, `entreprise`, `profil`, `email`,`etat`, `contact`)
              VALUES ('$nomSend', '$prenomSend', '$pass','$entreprise_send','$profilSend','$mailSend','$etat_send',$contactSend)";
	// Exécute la requête sur la base de données
    $res = mysqli_query($conn, $query);

    $last_id = mysqli_insert_id($conn);


    for ($i=1; $i < 40; $i++) {
        $query2 ="INSERT INTO `formulaire`(`util`, `sujet`) VALUES('".$last_id."','".$i."');";
        $res =mysqli_query($conn,$query2);

        }

        if($profilSend='utilisateur'){
            $sql = "INSERT INTO `admin`(`id`,`nom`, `prenom`) VALUES ('$last_id','$nomSend', '$prenomSend') ";
            mysqli_query($conn,$sql);
        }


?>