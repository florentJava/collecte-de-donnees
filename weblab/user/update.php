<?php

include '../config.php';

if(isset($_POST['id_user'])){

    $id=$_POST['id_user'];
    $sql = 'select * from utilisateur where id = $_id';

    $result = mysqli_query($conn,$sql);
    $response = array();

    while($row = mysqli_fetch_assoc($result)){

        $response = $row;

    }

}
?>