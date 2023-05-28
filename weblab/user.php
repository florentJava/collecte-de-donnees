 <?php
	require "./config.php";

	$count=mysqli_query($conn,"select count(id_util) as cpt from utlisateur");
	
	$nbr_element = 10;


	while($row=mysqli_fetch_assoc($count)){

	$nbr_page = ceil($row['cpt']/$nbr_element) ;
	$nbr_total = $row['cpt'];

	}

	
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
 				<h3><img src="img/logo.png" class="img-fluid" />
 					<br><span>Ubora Consulting</span>
 				</h3>
 			</div>
 			<ul class="list-unstyled component m-0">
 				<li class="active">
 					<a href="#" class="dashboard"><i class="material-icons">dashboard</i>dashboard </a>
 				</li>

 				<li class="dropdown">
 					<a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false">
 						<i class="material-icons">home</i>Home.
 					</a>

 				</li>


 				<li class="dropdown">
 					<a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
 						<i class="material-icons">aspect_ratio</i>Mes Formulaires.
 					</a>
 					<ul class="collapse list-unstyled menu" id="homeSubmenu1">
 						<li><a href="#">Mes Donnees</a></li>
 						<li><a href="#">Nouveau Formulaire</a></li>
 						<li><a href="#">Formulaire Enregistrer</a></li>
 						<li><a href="#">Formulaire Envoyer</a></li>
 					</ul>
 				</li>


 				<li class="active">
 					<a href="#" class="dashboard"><i class="material-icons">apps</i>ADMIN </a>
 				</li>

 				<li class="dropdown">
 					<a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
 						<i class="material-icons">equalizer</i>STATISTIQUES
 					</a>
 					<ul class="collapse list-unstyled menu" id="homeSubmenu3">
 						<li><a href="#">Pages 1</a></li>
 						<li><a href="#">Pages 2</a></li>
 						<li><a href="#">Pages 3</a></li>
 					</ul>
 				</li>


 				<li class="dropdown">
 					<a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
 						<i class="material-icons">extension</i>Gestion Donnees
 					</a>
 					<ul class="collapse list-unstyled menu" id="homeSubmenu4">
 						<li><a href="#">Formulaires Recus</a></li>
 						<li><a href="#">Editer Formulaire</a></li>
 						<li><a href="#"></a></li>
 					</ul>
 				</li>

 				<li class="dropdown">
 					<a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false">
 						<i class="material-icons">border_color</i>Gestion Utilisateur
 					</a>
 				</li>


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
 										<input type="search" class="form-control" placeholder="Search">
 										<div class="input-group-append">
 											<button class="btn" type="submit" id="button-addon2">Go
 											</button>
 										</div>
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
 												<li><a href="#" class="btn btn-danger">
 														<span class="material-icons">logout</span>
 														Logout
 													</a></li>

 											</ul>

 										<li class="nav-item">
 											<a class="nav-link" href="#">
 												Mrs/Mme FLORENT
 											</a>
 										</li>
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
 										<h2 class="ml-lg-2">Gerer les utilisateurs:   <span style="color: green;"><?php if(isset($_GET['msg'])){echo$_GET['msg']; };  ?></span>  </h2>
 									</div>
 									<div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
 										<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
 											<i class="material-icons">&#xE147;</i>
 											<span>Ajouter Utilisateur</span>
 										</a>
 										<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
 											<i class="material-icons">&#xE15C;</i>
 											<span>Supprimer</span>
 										</a>
 									</div>
 								</div>
 							</div>

 							<table class="table table-striped table-hover">
 								<thead>
 									<tr>
 										<th>Id</th>
 										<th>nom</th>
 										<th>prenom</th>
 										<th>Entreprise</th>
 										<th>profil</th>
 										<th>Email</th>
 										<th>contact</th>
 										<th>Actions</th>
 									</tr>
 								</thead>

 								<tbody>
								 	<?php while($row=mysqli_fetch_assoc($rq)){?>

 									<tr>
 										<th>  <?php echo $row['id_util'] ?>  </th>
 										<th><?php echo $row['nom'] ?> </th>
 										<th><?php echo $row['prenom'] ?> </th>
 										<th><?php echo $row['entreprise'] ?> </th>
 										<th><?php echo $row['profil'] ?> </th>
 										<th><?php echo $row['email'] ?> </th>
										<th><?php echo $row['contact'] ?> </th>
 										<th>
 											<a href="#editEmployeeModal" class="edit" data-toggle="modal">
 												<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
 											</a>
 											<a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
 												<i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
 											</a>
 										</th>
 									</tr>

								<?php } ?>
 								</tbody>


 							</table>
 
 							<div class="clearfix">
 								<div class="hint-text"> TOTAL </b> :  <b><?php echo $nbr_total ; ?></b> UTILISATEURS</div>
 								<ul class="pagination">
								 <li class="page-item disabled"><a href="#">Previous</a></li>
 									<?php 
										for ($i=1; $i <=$nbr_page ; $i++) { 
											echo "<a href='?page=$i' class='page-link'>$i</a>";
										}
									?>
								        <li class="page-item"><a href="#" class="page-link">Next</a></li>

 								</ul>
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
								<form action="./user/form_user.php" method="get">
 									<div class="modal-body">

 										<div class="form-group">

 											<label>nom</label>
 											<input type="text" class="form-control" name="nom" required>
 										</div>
 										<div class="form-group">
 											<label>prenom</label>
 											<input type="text" class="form-control" name="prenom" required>
 										</div>
 										<div class="form-group">
 											<label>Mot De Passe</label>
 											<input type="password" class="form-control" name="mot_passe" required>
 										</div>
 										<div class="form-group">
 											<label>profil</label>
											<select name="profil" id="" class="form-control" required>
											<option value="utilisateur">Utilisateur</option>
											<option value="admin">Admin</option>

											</select>
 										</div>
 										<div class="form-group">
 											<label>Email</label>
 											<input type="mail" class="form-control" name="mail" required>
 										</div>
 										<div class="form-group">
 											<label>entreprise</label>
 											<input type="text" class="form-control" name="entrepise" required>
 										</div>
 										<div class="form-group">
 											<label>Contact</label>
 											<input type="number" class="form-control" name="contact" required>
 										</div>
									</div>
									<div class="modal-footer">
										<button type="cancel" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
										<button type="submit" class="btn btn-success">Ajouter</button>
									</div>
								</form>
 							</div>
 						</div>
 					</div>

 					<!----add-modal end--------->





 					<!----edit-modal start--------->
 					<div class="modal fade" tabindex="-1" id="editEmployeeModal" role="dialog">
 						<div class="modal-dialog" role="document">
 							<div class="modal-content">
 								<div class="modal-header">
 									<h5 class="modal-title">Edit Employees</h5>
 									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 										<span aria-hidden="true">&times;</span>
 									</button>
 								</div>
 								<div class="modal-body">
 									<div class="form-group">
 										<label>Name</label>
 										<input type="text" class="form-control" required>
 									</div>
 									<div class="form-group">
 										<label>Email</label>
 										<input type="emil" class="form-control" required>
 									</div>
 									<div class="form-group">
 										<label>Address</label>
 										<textarea class="form-control" required></textarea>
 									</div>
 									<div class="form-group">
 										<label>Phone</label>
 										<input type="text" class="form-control" required>
 									</div>
 								</div>
 								<div class="modal-footer">
 									<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
 									<button type="button" class="btn btn-success">Save</button>
 								</div>
 							</div>
 						</div>
 					</div>

 					<!----edit-modal end--------->


 					<!----delete-modal start--------->
 					<div class="modal fade" tabindex="-1" id="deleteEmployeeModal" role="dialog">
 						<div class="modal-dialog" role="document">
 							<div class="modal-content">
 								<div class="modal-header">
 									<h5 class="modal-title">Delete Employees</h5>
 									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 										<span aria-hidden="true">&times;</span>
 									</button>
 								</div>
 								<div class="modal-body">
 									<p>Are you sure you want to delete this Records</p>
 									<p class="text-warning"><small>this action Cannot be Undone,</small></p>
 								</div>
 								<div class="modal-footer">
 									<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
 									<button type="button" class="btn btn-success">Delete</button>
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
 										<label>Name</label>
 										<input type="text" class="form-control" required>
 									</div>
 									<div class="form-group">
 										<label>Email</label>
 										<input type="emil" class="form-control" required>
 									</div>
 									<div class="form-group">
 										<label>Address</label>
 										<textarea class="form-control" required></textarea>
 									</div>
 									<div class="form-group">
 										<label>Phone</label>
 										<input type="text" class="form-control" required>
 									</div>
 								</div>
 								<div class="modal-footer">
 									<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
 									<button type="button" class="btn btn-success">Save</button>
 								</div>
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
 						<p class="mb-0">&copy 2021 Vishweb Design . All Rights Reserved.</p>
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
 		$(document).ready(function() {
 			$(".xp-menubar").on('click', function() {
 				$("#sidebar").toggleClass('active');
 				$("#content").toggleClass('active');
 			});

 			$('.xp-menubar,.body-overlay').on('click', function() {
 				$("#sidebar,.body-overlay").toggleClass('show-nav');
 			});

 		});
 	</script>





 </body>

 </html>