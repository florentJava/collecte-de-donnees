  <?php

session_start();


include '../config.php';



$idec= $_SESSION['ID'];
if(isset($_POST['displaySend'])){

    
$sql = "SELECT * FROM formulaire , sujet_descript,groupe  WHERE formulaire.sujet=sujet_descript.id and groupe.id_groupe=sujet_descript.groupe and formulaire.util='".$idec."    '";
$rq = mysqli_query($conn,$sql);


    $table='<table class="table table-striped table-hover" id="myTable_user" >
    <thead>
        <tr>
            <th onclick="sortTable(0)" style="background-color:#4c7cf3; color:white ">sujet</th>
            <th onclick="sortTable(1)" style="background-color:#4c7cf3; color:white">titre</th>
            <th onclick="sortTable(2)" style="background-color:#4c7cf3; color:white">groupe</th>
            <th onclick="sortTable(3)" style="background-color:#4c7cf3; color:white">description</th>
            <th onclick="sortTable(4)" style="background-color:#4c7cf3; color:white">Etat</th>
            <th style="background-color:#4c7cf3; color:white" >Action</th>
        </tr>
    </thead>

    <tbody>';
    
        while($row=mysqli_fetch_assoc($rq)){

            $id_sr =$row['id_sr'];
            $id=$row['id'] ;
            $sujet=$row['sujet'] ;
            $prenom=$row['libelle'] ;
            $entreprise=$row['description'] ;
            $etat=$row['traiter'] ;

        $table.= '<tr>
            <th >'.$id.'</th>
            <th>'.$sujet.'</th>
            <th>'.$prenom.'</th>
            <th>'.$entreprise.'</th>
            <th>'.$etat.'</th>
            <th>'.quel_button($etat,$id_sr).'
               
            </th>
        </tr>';

}

$table.='</tbody>
</table>';

echo $table;

}

function quel_button($et,$id_sr){

    if($et=='vide'){
        return ' <a href="#editForm" class="edit" data-toggle="modal" onclick="update('.$id_sr.')" >
        <i class="material-icons" data-toggle="tooltip" title="Edit" >send</i>Remplir
        </a>';
    }elseif ($et=='envoyer'){
        return ' <a href="#seeMore" class="edit" data-toggle="modal" onclick="seeMore('.$id_sr.')" >
        <i class="material-icons" data-toggle="tooltip" title="Edit" >more</i>Consulter
        </a>';
    }else{
        return ' <a href="#editForm" class="edit" data-toggle="modal" onclick="update('.$id_sr.')" >
        <i class="material-icons" data-toggle="tooltip" title="Edit" >save</i>Terminez
        </a>';
    }
    
}
?>
