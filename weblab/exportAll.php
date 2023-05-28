<?php

            include './config.php';


            if(isset($_GET['val'])){
                $attribut = htmlspecialchars($_GET['attribut']);
                $valeur_voulue = htmlspecialchars($_GET['val']);
                $sql = "select groupe.libelle, sujet_descript.sujet  as sd_id ,question.question as qq, utlisateur.nom,question.id_question ,reponse.oui_non,reponse.commentaire,formulaire.commentaireUbora,entreprise,formulaire.daje,formulaire.reviser_le,formulaire.reviser_par FROM utlisateur, sujet_descript, question, reponse, formulaire , groupe WHERE sujet_descript.id=question.id_sujet AND sujet_descript.id=formulaire.sujet AND formulaire.id_sr=reponse.id_formulaire AND reponse.id_question=question.id_question  AND sujet_descript.groupe=groupe.id_groupe AND utlisateur.id_util=formulaire.util AND ". $attribut." LIKE '%".$valeur_voulue."%'" ;


            }else{
                $sql = "select groupe.libelle, sujet_descript.sujet  as sd_id ,question.question as qq, utlisateur.nom,question.id_question,reponse.oui_non,reponse.commentaire,formulaire.commentaireUbora,entreprise,formulaire.daje,formulaire.reviser_le,formulaire.reviser_par FROM utlisateur, sujet_descript, question, reponse, formulaire , groupe WHERE sujet_descript.id=question.id_sujet AND sujet_descript.id=formulaire.sujet AND formulaire.id_sr=reponse.id_formulaire AND reponse.id_question=question.id_question AND sujet_descript.groupe=groupe.id_groupe AND utlisateur.id_util=formulaire.util;";

            }


            $result = mysqli_query($conn,$sql);
    
            $form='<table  >
            <thead>
                <tr>
                <th >Groupe</th>
                <th  >sujet</th>
                <th >num question</th>
                <th>question</thnclick=>
                <th >remplie par</th>
                <th >Reponse</th>
                <th >commentaire client</th>
                <th >Entreprise</th>
                <th >Commentaire Ubora</thonclick=>
                <th >Soumis le</th>
                <th >revu le</th>
                <th >reviser par</th>
                </tr>
            </thead>
        
            <tbody>';
    
    
            $i = 1;
            while($row=mysqli_fetch_assoc($result)){
    

                $form .= '<tr>
                <th >'.$row['libelle'].'</th>
                <th >'.$row['sd_id'].'</th>
                <th>'.$row['id_question'].'</th>
                <th>'.$row['qq'].'</th>
                <th>'.$row['nom'].'</th>
                <th>'.$row['oui_non'].'</th>
                <th>'.$row['commentaire'].'</th>
                <th>'.$row['commentaire'].'</th>
                <th>'.$row['commentaireUbora'].'</th>
                <th>'.$row['daje'].'</th>
                <th>'.$row['reviser_le'].'</th>
                <th>'.$row['reviser_par'].'</th>
                </tr>';
    
                $i=$i+1;
    
            }

            $form .='</table>';
            header('Content-Type: application/xls');
            header('Content-Disposition: attachment; filename=dataAll.xls');
            echo utf8_decode($form);

?>

<style>
    table {
  border-collapse: collapse;
  border: 1px solid black;
}

th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
}
</style>