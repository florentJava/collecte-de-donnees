<?php
 include './config.php';

session_start();
$id =  $_SESSION['ID'];

$sql = "SELECT * from utlisateur where id_util=".$id;
$result = mysqli_query($conn,$sql);

while($row = mysqli_fetch_assoc($result)){

    $password=$row['mot_passe'];
}

if($_GET['ap']==$password){
    $sql = "UPDATE utlisateur SET `mot_passe`='".$_GET['np']."' WHERE id_util=".$id;
    mysqli_query($conn,$sql);

    header("Location: ./connexion/logout.php");

}
?>