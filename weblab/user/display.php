
<?php

include '../config.php';


$sql = "SELECT * FROM `utlisateur` ; ";
$rq = mysqli_query($conn,$sql);

if(isset($_POST['displaySend'])){

    $table='<table class="table table-striped table-hover" id="myTable" >
    <thead>
        <tr>
            <th onclick="sortTable(0)">Identifiant</th>
            <th onclick="sortTable(1)">Nom</th>
            <th onclick="sortTable(2)">Prenom</th>
            <th onclick="sortTable(3)">Entreprise</th>
            <th onclick="sortTable(4)">Profil</th>
            <th onclick="sortTable(4)">etat</th>
            <th onclick="sortTable(5)">Email</th>
            <th onclick="sortTable(6)">Contact</th>
            <th onclick="sortTable(7)">Modifier</th>
        </tr>
    </thead>

    <tbody>';
        while($row=mysqli_fetch_assoc($rq)){

            $id=$row['id_util'] ;
            $nom=$row['nom'] ;
            $prenom=$row['prenom'] ;
            $entreprise=$row['entreprise'] ;
            $etat=$row['etat'];
            $profil=$row['profil'];
            $email=$row['email'] ;
            $contact=$row['contact'];

        $table.= '<tr>
            <th>'.$id.'</th>
            <th>'.$nom.'</th>
            <th>'.$prenom.'</th>
            <th>'.$entreprise.'</th>
            <th>'.$profil.'</th>
            <th>'.$etat.'</th>
            <th>'.$email.'</th>
           <th>'.$contact.'</th>
            <th>
                <a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="getDetails('.$id.',\''.$nom.'\',\''.$prenom.'\',\''.$entreprise.'\',\''.$profil.'\',\''.$email.'\','.$contact.')">
                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                </a>
            </th>
        </tr>';

}

$table.='</tbody>
</table>';

echo $table;

}
?>
