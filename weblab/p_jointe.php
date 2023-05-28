<?php
include './config.php';

$va = $_GET["nom"];
echo $va ;


header("Location:  ./formulaire/doc/".$va);


?>