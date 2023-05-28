<?php
	require "./config.php";

	session_start();

	if($_SESSION['profil']=='utilisateur'){

		header('Location: acceuil.php');
	}
	

	$count=mysqli_query($conn,"select count(id_util) as cpt from utlisateur");
	
	$nbr_element = 10;


	
	
	if(empty($_GET["page"])){
		$page=1;
	}else{
		$page=$page=$_GET["page"];
	}
	$debut=$nbr_element*($page -1);
	


	$sql = "SELECT * FROM `utlisateur` order by id_util limit $debut,$nbr_element";
	$rq = mysqli_query($conn,$sql);

	?>
 <!doctype html>
 <html lang="en">

 <head>
 	<!-- Required meta tags -->
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
 	<title>crud dashboard</title>
 	<!-- Bootstrap CSS -->
 	<link rel="stylesheet" href="css/bootstrap.min.css">
 	<!----css3---->
 	<link rel="stylesheet" href="css/custom.css?ts=<?php echo time() ?>">


 	<!--google fonts -->
 	<link rel="preconnect" href="https://fonts.googleapis.com">
 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">


 	<!--google material icon-->
 	<link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

 </head>

 <body>



 	<div class="wrapper">

 		<div class="body-overlay"></div>

 		<!-------sidebar--design------------>

 		<div id="sidebar">
			<div class="sidebar-header">
				Ubora Consulting Services
				<h3><img src="img/logo.png" class="img-fluid" />
				</h3>
			</div>
			<ul class="list-unstyled component m-0">
				<li>
					<a href="./acceuil.php">
						<i class="material-icons">home</i>Acceuil
					</a>

				</li>

				<?php

				if($_SESSION['profil']=='admin'){

				echo '<li class="dropdown">
					<a href="./statistique.php">
						<i class="material-icons">equalizer</i>Statistique
					</a>
				</li>


				<li class="dropdown">
					<a href="./admin.php"> <i class="material-icons">description</i>Formulaires Recus</a>
				</li>


				<li class="dropdown">
					<a href="./user_experience.php">
						<i class="material-icons">border_color</i>Utilisateurs
					</a>
				</li>

				<li class="dropdown">
					<a href="rapport.php">
						<i class="material-icons">view_timeline</i>Rapport
					</a>
				</li>';


	};


	?>

	
	</ul>
	</div>
 		<!-------sidebar--design- close----------->



 		<!-------page-content start----------->

 		<div id="content">

 			<!------top-navbar-start----------->

 			<div class="top-navbar">
 				<div class="xd-topbar">
 					<div class="row">
 						<div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
 							<div class="xp-menubar">
 								<span class="material-icons text-white">signal_cellular_alt</span>
 							</div>
 						</div>

 						<div class="col-md-5 col-lg-3 order-3 order-md-2">
 							<div class="xp-searchbar">
 								<form>
 									<div class="input-group">
 										<input type="search" id="search_bar" onkeyup="myFunction()" class="form-control" placeholder="Rechercher">
 									</div>
 								</form>
 							</div>
 						</div>


 						<div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
 							<div class="xp-profilebar text-right">
 								<nav class="navbar p-0">
 									<ul class="nav navbar-nav flex-row ml-auto">

 										<li class="dropdown nav-item">
 											<a class="nav-link" href="#" data-toggle="dropdown">
 												<img src="img/user.png" style="width:40px; border-radius:50%;" />
 												<span class="xp-user-live"></span>
 											</a>
 											<ul class="dropdown-menu small-menu">
												<li><a href="#profilUserModal" class="btn btn-success" data-toggle="modal">
 														<span class="material-icons">person_outline</span>
 														Profile
 													</a></li>
 												<li><a href="./connexion/logout.php" class="btn btn-danger">
 														<span class="material-icons">logout</span>
 														Se Deconnecter
 													</a></li>
 											</ul>

 										</li>


 									</ul>
 								</nav>
 							</div>
 						</div>

 					</div>

 				</div>
 			</div>
 			<!------top-navbar-end----------->


 			<!------main-content-start----------->

 			<div class="main-content">
 				<div class="row">
 					<div class="col-md-12">
 						<div class="table-wrapper">

 							<div class="table-title">
 								<div class="row">
 									<div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
 										<h2 class="ml-lg-2">Gerer les utilisateurs: </h2>
 									</div>
 									<div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
 										<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
 											<i class="material-icons">&#xE147;</i>
 											<span>
                                                Ajouter Utilisateur
                                            </span>
 										</a>
										 <span style="color: green;"><?php if(isset($_GET['msg'])){echo$_GET['msg']; };  ?></span>

 									</div>
 								</div>
 							</div>

 							<div  id="users_data">


 							</div>

 						</div>
 					</div>


 					<!----add-modal start--------->
 					<div class="modal fade" tabindex="-1" id="addEmployeeModal" role="dialog">
 						<div class="modal-dialog" role="document">
 							<div class="modal-content">
 								<div class="modal-header">
 									<h5 class="modal-title">Ajouter Utilisateur</h5>
 									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 										<span aria-hidden="true">&times;</span>
 									</button>
 								</div>
 									<div class="modal-body">

 										<div class="form-group">

 											<label>nom</label>
 											<input type="text" class="form-control" id="nom" required>
 										</div>
 										<div class="form-group">
 											<label>prenom</label>
 											<input type="text" class="form-control" id="prenom" required>
 										</div>
 										<div class="form-group">
 											<label>Mot De Passe</label>
 											<input type="password" class="form-control" id="mot_passe" required>
 										</div>
 										<div class="form-group">
 											<label>profil</label>
											<select id="profil" class="form-control" required>
											<option value="utilisateur">Utilisateur</option>
											<option value="admin">Admin</option>
											</select>
 										</div>

										 <div class="form-group">
 											<label>Etat</label>
											<select id="etat" class="form-control" required>
											<option value="Actif">Actif</option>
											<option value="Non Actif">Non Actif</option>
											</select>
 										</div>
 										<div class="form-group">
 											<label>Email</label>
 											<input type="mail" class="form-control" id="mail" required>
 										</div>
 										<div class="form-group">
 											<label>entreprise</label>
 											<input type="text" class="form-control" id="entreprise" required>
 										</div>
 										<div class="form-group">
 											<label>Contact</label>
 											<input type="number" class="form-control" id="contact" required>
 										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
										<button type="button" onclick="adduser()" class="btn btn-success" data-dismiss="modal">Ajouter</button>
									</div>
 							</div>
 						</div>
 					</div>

 					<!----add-modal end--------->





 					<!----edit-modal start--------->
 					<div class="modal fade" tabindex="-1" id="editEmployeeModal" role="dialog">
                     <div class="modal-dialog" role="document">
 							<div class="modal-content">
 								<div class="modal-header">
 									<h5 class="modal-title">Modifier Utilisateur </h5>
 									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 										<span aria-hidden="true">&times;</span>
 									</button>
 								</div>
 									<div class="modal-body" id="body_remplir">

									 <div class="form-group">

										<label>identifiant</label>
										<input type="text" class="form-control" id="edit_id" required readonly="readonly">
										</div><div class="form-group">

										<label>nom</label>
										<input type="text" class="form-control" id="edit_nom" required>
										</div>
								
 										<div class="form-group">
 											<label>prenom</label>
 											<input type="text" class="form-control" id="edit_prenom" required>
 										</div>

 										<div class="form-group">
 											<label>profil</label>
											<select id="edit_profil" class="form-control" required>
											<option value="utilisateur">Utilisateur</option>
											<option value="admin">Admin</option>
											</select>
 										</div>

										 <div class="form-group">
 											<label>Etat</label>
											<select id="edit_etat" class="form-control" required>
											<option value="Actif">Actif</option>
											<option value="Non Actif">Non Actif</option>
											</select>
 										</div>
						
 										<div class="form-group">
 											<label>Email</label>
 											<input type="mail" class="form-control" id="edit_mail" required>
 										</div>
 										<div class="form-group">
 											<label>entreprise</label>
 											<input type="text" class="form-control" id="edit_entreprise" required>
 										</div>
 										<div class="form-group">
 											<label>Contact</label>
 											<input type="number" class="form-control" id="edit_contact" required>
 										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
										<button type="button" onclick="update()" class="btn btn-success" data-dismiss="modal">Modifier</button>
									</div>
 							</div>
 						</div>
 					</div>

 					<!----edit-modal end--------->





 					<!-- profile-Modal Start -->
 					<div class="modal fade" tabindex="-1" id="profilUserModal" role="dialog">
 						<div class="modal-dialog" role="document">
 							<div class="modal-content">
 								<div class="modal-header">
 									<h5 class="modal-title">PROFILE</h5>
 									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 										<span aria-hidden="true">&times;</span>
 									</button>
 								</div>
 								<div class="modal-body">

								 <div class="form-group">
 										<label>identifiant</label>
 										<input type="text"  value="<?php echo $_SESSION['ID'] ?>" id="profil_id" class="form-control" required readonly="readonly">
 									</div>

									 <div class="form-group">
 										<label>nom</label>
 										<input type="text" id ="profil_nom" value="<?php echo $_SESSION['username'] ?>" class="form-control" required readonly="readonly">
 									</div>

									<div class="form-group">
 										<label>prenom</label>
 										<input type="text" id="profil_prenom" value="<?php echo $_SESSION['prenom'] ?>"  class="form-control" required readonly="readonly">
 									</div>

									 <div class="form-group">
 										<label>Entreprise</label>
 										<input type="text" class="form-control" id="profil_entreprise" value="<?php echo $_SESSION['entreprise'] ?>"  required readonly="readonly">
 									</div>
									 </div>



									<form action="changePass.php">
										<h2>CHANGER DE MOT DE PASSE</h2>
										<div class="form-group">
											<label>Ancien Mot De Passe</label>
											<input type="password" name="ap" class="form-control" required>
										</div>
										<div class="form-group">
											<label>Nouveau Mot De Passe</label>
											<input type="password" name="np" class="form-control" required >
										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
											<button type="submit" class="btn btn-success">Effectuer</button>
										</div>
								    </form>
 							</div>
 						</div>
 					</div>

 					<!-- profile-Modal end -->

 				</div>
 			</div>

 			<!------main-content-end----------->



 			<!----footer-design------------->

 			<footer class="footer">
 				<div class="container-fluid">
 					<div class="footer-in">
 						<p class="mb-0"></p>
 					</div>
 				</div>
 			</footer>




 		</div>

 	</div>



 	<!-------complete html----------->






 	<!-- Optional JavaScript -->
 	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
 	<script src="js/jquery-3.3.1.slim.min.js"></script>
 	<script src="js/popper.min.js"></script>
 	<script src="js/bootstrap.min.js"></script>
 	<script src="js/jquery-3.3.1.min.js"></script>


 	<script type="text/javascript">

        $(document).ready(function(){
            displayData();
        })


        function update(){

			var edit_id = $('#edit_id').val();
			var edit_nom = $('#edit_nom').val();
			var edit_prenom =$('#edit_prenom').val();
			var edit_profil = $('#edit_profil').val();
			var edit_mail  =$('#edit_mail').val();
			var edit_entreprise  =$('#edit_entreprise').val();
			var edit_contact  =$('#edit_contact').val();
			var edit_etat  =$('#edit_etat').val();

			$.ajax({
                url:"./user/updateUser.php",
                type:"post",
                data:{
                    id_send:edit_id,
					nom_send:edit_nom,
					prenom_send:edit_prenom,
					profil_send:edit_profil,
					mail_send:edit_mail,
					entreprise_send:edit_entreprise,
					contact_send:edit_contact,
					etat_send:edit_etat,
            },
            success: function(data,status){
				alert('Modification(s) effectue(S)');
				displayData();
            }});

        }

        function getDetails(id_user,nom,prenom,entreprise,profil,mail,contact){

			$('#edit_id').val(id_user);
			$('#edit_nom').val(nom);
			$('#edit_prenom').val(prenom);
			$('#edit_profil').val(profil);
			$('#edit_mail').val(mail);
			$('#edit_entreprise').val(entreprise);
			$('#edit_contact').val(contact);

        }

        function displayData(){
            var displayData="true";

            $.ajax({
                url:"./user/display.php",
                type:"post",
                data:{	
                    displaySend:displayData,
            },
            success: function(data,status){
                $('#users_data').html(data);
            }});
        }


        function adduser(){

            var nom=$('#nom').val();

            var prenom=$('#prenom').val();

            var mail=$('#mail').val();

            var contact=$('#contact').val();

            var mot_passe=$('#mot_passe').val();

            var entreprise=$('#entreprise').val();

			var etat = $('#etat').val();

            var profil=$('#profil').val();

            $.ajax({
                url:"./user/form_user_experience.php",
                type: "post",
                data:{
                    nomSend:nom,
                    prenomSend:prenom,
                    mailSend:mail,
                    contactSend:contact,
                    mot_passeSend:mot_passe,
                    profilSend:profil,
					etat_send:etat,
                    entreprise_send: entreprise
                },
                success : function(data,status){

                    //function to display data
                    console.log(status);

                }
            })

            alert(nom +" ajoute avec succes");
			displayData();

        }

 		$(document).ready(function() {
 			$(".xp-menubar").on('click', function() {
 				$("#sidebar").toggleClass('active');
 				$("#content").toggleClass('active');
 			});

 			$('.xp-menubar,.body-overlay').on('click', function() {
 				$("#sidebar,.body-overlay").toggleClass('show-nav');
 			});

 		});



		 function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search_bar");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 1; i < tr.length; i++) {
	th = tr[i].getElementsByTagName("th")[0];
	t1h=tr[i].getElementsByTagName("th")[1];
	t2h=tr[i].getElementsByTagName("th")[2];
	t3h=tr[i].getElementsByTagName("th")[3];
	t4h=tr[i].getElementsByTagName("th")[4];


	if (th) {
		txtValue = th.textContent || th.innerText;
		txt1Value = t1h.textContent || t1h.innerText;
		txt2Value = t2h.textContent || t2h.innerText;
		txt3Value = t3h.textContent || t3h.innerText;
		txt4Value = t4h.textContent || t4h.innerText;


		if ((txtValue.toUpperCase().indexOf(filter) > -1)||(txt1Value.toUpperCase().indexOf(filter) > -1)||(txt2Value.toUpperCase().indexOf(filter) > -1)||(txt3Value.toUpperCase().indexOf(filter) > -1)||(txt4Value.toUpperCase().indexOf(filter) > -1)) {
			tr[i].style.display = "";
		} else {
			tr[i].style.display = "none";
		}
	}
  }
}



	function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  // Set the sorting direction to ascending:
  dir = "asc";
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = rows[i].getElementsByTagName("th")[n];
      y = rows[i + 1].getElementsByTagName("th")[n];
      /* Check if the two rows should switch place,
      based on the direction, asc or desc: */
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      // Each time a switch is done, increase this count by 1:
      switchcount ++;
    } else {
      /* If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again. */
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
 	</script>







 </body>

 </html>