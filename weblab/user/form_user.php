<?php 

require"../config.php";

if ($_SERVER["REQUEST_METHOD"] == "GET") {

	$nom=stripslashes($_REQUEST['nom']);
	$nom=mysqli_real_escape_string($conn, $nom);
	
	$prenom=stripslashes($_REQUEST['prenom']);
	$prenom=mysqli_real_escape_string($conn, $prenom);
	
	$mail=stripslashes($_REQUEST['mail']);
	$mail=mysqli_real_escape_string($conn, $mail);
	
	$contact=stripslashes($_REQUEST['contact']);
	$contact=mysqli_real_escape_string($conn, $contact);
	
	$mot_passe=stripslashes($_REQUEST['mot_passe']);
	$mot_passe=mysqli_real_escape_string($conn, $mot_passe);
	
	$entreprise=stripslashes($_REQUEST['entrepise']);
	$entreprise=mysqli_real_escape_string($conn, $entreprise);
	
	$profil=stripslashes($_REQUEST['profil']);
	$profil=mysqli_real_escape_string($conn, $profil);

	$query = "INSERT into `utlisateur`(`nom`, `prenom`, `mot_passe`, `entreprise`, `profil`, `email`, `contact`)
              VALUES ('$nom', '$prenom', '".hash('sha256', $mot_passe)."','$entreprise','$profil','$mail',$contact)";
	// Exécute la requête sur la base de données
    $res = mysqli_query($conn, $query);
	$last_id = mysqli_insert_id($conn);
	header("Location:../user.php?msg=compte creer id: $last_id ");

}

?>
