<?php

    include '../config.php';
    extract($_POST);


    echo($nom_send);

    $sql='UPDATE `utlisateur` SET `nom`=\''.$nom_send.'\',`prenom`=\''.$prenom_send.'\',`entreprise`=\''.$entreprise_send.'\',`profil`=\''.$profil_send.'\',`email`=\''.$mail_send.'\',`contact`='.$contact_send.',`etat`=\''.$etat_send.'\' WHERE `id_util`='.$id_send;
    mysqli_query($conn,$sql);

?>