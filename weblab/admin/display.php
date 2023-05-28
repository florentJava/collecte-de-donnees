
<?php

include '../config.php';


$sql = "SELECT utlisateur.nom, formulaire.id_sr,formulaire.etat, formulaire.sujet, formulaire.daje,formulaire.commentaireUbora, formulaire.reviser_le,reviser_par as par FROM `formulaire`, utlisateur WHERE traiter='envoyer' AND utlisateur.id_util=formulaire.util";
$rq = mysqli_query($conn,$sql);

if(isset($_POST['displaySend'])){

    $table='<table class="table table-striped table-hover" id="myTable_admin" >
    <thead>
        <tr>
            <th onclick="sortTable(0)"  style="background-color:#4c7cf3; color:white ">Id_formulaire</th>
            <th onclick="sortTable(1)"  style="background-color:#4c7cf3; color:white ">utilisateur</th>
            <th onclick="sortTable(2)"  style="background-color:#4c7cf3; color:white ">sujet</th>
            <th onclick="sortTable(3)"  style="background-color:#4c7cf3; color:white ">date envoie</th>
            <th onclick="sortTable(3)"  style="background-color:#4c7cf3; color:white ">Reviser par</th>
            <th onclick="sortTable(3)"  style="background-color:#4c7cf3; color:white ">Reviser le</th>
            <th onclick="sortTable(7)"  style="background-color:#4c7cf3; color:white ">Voir</th>
        </tr>
    </thead>

    <tbody>';
        while($row=mysqli_fetch_assoc($rq)){

            $id=$row['id_sr'] ;
            $nom=$row['nom'] ;
            $prenom=$row['sujet'] ;
            $entreprise=$row['daje'] ;
            $admin=$row['par'];
            $date = $row['reviser_le'];

        $table.= '<tr>
            <th>'.$id.'</th>
            <th>'.$nom.'</th>
            <th>sujet '.$prenom.'</th>
            <th>'.$entreprise.'</th>
            <th>'.$admin.'</th>
            <th>'.$date.'</th>
            <th>
                <a href="./reponse.php?id_form='.$id.'" >
                    <i class="material-icons" data-toggle="tooltip" title="telecharger">visibility</i>
                </a>
            </th>

           
            
        </tr>';

}

$table.='</tbody>
</table>';

echo $table;

}
?>
