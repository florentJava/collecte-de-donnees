<?php
    session_start();

    require '../config.php';

    $user = $_SESSION['ID'];
    $username= $_SESSION['username'];
    $id_form = $_SESSION['ID_FORM'] ;


    $sql="SELECT count(question) as nb , id_sujet FROM question WHERE question.id_sujet  IN (SELECT sujet FROM formulaire WHERE id_sr=".$id_form.");";
    $result = mysqli_query($conn,$sql);


    while($row=mysqli_fetch_assoc($result)){
        $nbr= $row['nb'];
        $id_sujet=$row['id_sujet'];
    }

    echo $id_sujet.'id sujet';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        for ($i=1; $i <= $nbr; $i++) {

            $id_quest =$id_sujet.'.'.$i;
            $com= $_POST['com'.$i.'m'];
            $oui=$_POST['o'.$i.'n'];

            if(isset($_FILES['fi'.$i.'chier']) and $_FILES['fi'.$i.'chier']['error']==0){
               
                $dossier = 'doc/';
                $nom_temporaire = $_FILES['fi'.$i.'chier']['tmp_name'];

                if(!is_uploaded_file(($nom_temporaire))){
                    exit("le fichier est introuvable");
                }

                $nom_fichier=pathinfo($_FILES['fi'.$i.'chier']['name']);

                $extension_upload =$nom_fichier['extension'];

                $extension_upload = strtolower($extension_upload);

                $_extension_autorise =  array('png','jpeg','jpg','pdf');

                if(!in_array($extension_upload,$_extension_autorise)){
                    exit ("Erreur, extension non autorisee");
                }

                $nom_final = "fi".$id_quest.'_'.$user.'_'.$username.'c.'.$extension_upload;

                if(move_uploaded_file($nom_temporaire,$dossier.$nom_final )){

                }else{
                    exit("impossible de copier le fichier");
                }

                $sql_insert = 'INSERT INTO `reponse`(`id_formulaire`, `id_question`, `oui_non`, `commentaire`,`fichier`) VALUES ('.$id_form.',\''.$id_quest.'\',\''.$oui.'\',\''.$com.'\',\''.$nom_final.'\') ';

            }else{
                $sql_insert = 'INSERT INTO `reponse`(`id_formulaire`, `id_question`, `oui_non`, `commentaire`) VALUES ('.$id_form.',\''.$id_quest.'\',\''.$oui.'\',\''.$com.'\') ';

            }


            mysqli_query($conn,$sql_insert);

            $date = date("Y-m-d");

            $sql_update ='UPDATE `formulaire` SET `traiter`=\'envoyer\', `daje`=\''.$date.'\' WHERE `id_sr`='.$id_form ;
            mysqli_query($conn,$sql_update);

            $sql_decre = 'select non_lue from notification where 1';


            $result_decre = mysqli_query($conn,$sql_decre);
            while($row = mysqli_fetch_assoc($result_decre)){

                $num_notif = $row['non_lue'];

            }

            $sql_notif = 'UPDATE `notification` SET `non_lue` ='.($num_notif+1);
            mysqli_query($conn,$sql_notif);



        }

    header("Location:../acceuil.php?msg=formulaire soumis");

    }



    function identifiant($id)
{
    return str_replace("", "0", $id);
}

?>