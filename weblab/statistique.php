<?php

session_start();

if($_SESSION['profil']=='utilisateur'){

    header('Location: acceuil.php');
}


include './config.php';
$sql = 'CREATE VIEW IF NOT EXISTS lesouis (id,sujet,nbr) AS SELECT sujet_descript.id as id ,sujet_descript.sujet as sujet , COUNT(reponse.oui_non) as nbr from reponse, sujet_descript, question WHERE reponse.oui_non=\'oui\' AND sujet_descript.id=question.id_sujet AND question.id_question=reponse.id_question GROUP BY sujet_descript.id;';

mysqli_query($conn,$sql);

$sql = "SELECT sujet_descript.id, sujet_descript.sujet, COUNT(DISTINCT(question.id_question)) as nbr_question, lesouis.nbr as nbr_oui, COUNT(reponse.oui_non) as nbre_reponse from lesouis, question, sujet_descript, reponse WHERE sujet_descript.id=question.id_sujet AND question.id_question=reponse.id_question AND lesouis.id=sujet_descript.id GROUP BY question.id_sujet;";

$result= mysqli_query($conn,$sql);

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
                                        <input type="search" class="form-control" placeholder="Rechercher">
                                        <div class="input-group-append">
                                            <button class="btn" type="submit" id="button-addon2">
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
                                </div>
                            </div>

                                <div>
                                    <table class="table table-striped table-hover">

                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th>nombre questions</th>
                                        <th>nombre oui</th>
                                        <th>nombre non</th>
                                        <th>nombre reponses</th>
                                        <th>%oui</th>
                                    </tr>


                                        <?php 


                                            while($row = mysqli_fetch_assoc($result)){



                                            echo'<tr>
                                                <th>'.$row['id'].'</th>
                                                <th>'.$row['sujet'].'</th>
                                                <th>'.$row['nbr_question'].'</th>
                                                <th>'.$row['nbr_oui'].'</th>
                                                <th>'.($row['nbre_reponse']-$row['nbr_oui']).'</th>
                                                <th>'.$row['nbre_reponse'].'</th>
                                                <th>'.($row['nbr_oui']/$row['nbre_reponse']*100).'</th>
                                                </tr>';
                                            }
                                        ?>
                                    </table>
                                </div>


                        </div>
                    </div>


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



