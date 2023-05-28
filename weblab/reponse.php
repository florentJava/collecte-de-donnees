<?php 
session_start() ;

if($_SESSION['profil']=='utilisateur'){

    header('Location: acceuil.php');
}

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
                                    <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                        <h2 class="ml-lg-2">
                                        </h2>
                                    </div>
                                </div>

                                <?php  

                                            include './config.php';
                                            $id_forme=$_GET['id_form'];

                                $sql2= "select commentaireUbora from formulaire where id_sr=".$id_forme;

                                $result2=mysqli_query($conn,$sql2);

                                while($row=mysqli_fetch_assoc($result2)){
                                    $bool = $row['commentaireUbora'];
                                }


                                ?>


                                <form action="./toExcel.php"  method="post">
                                    <a href="./admin.php" >
                                        <i class="material-icons" style="background-color: green;" data-toggle="tooltip" title="precedant">arrow_back</i>
                                        <input type="text" name="id"  value="<?php echo $id_forme; ?>"  style="display: none;">
                                    </a>

                                    <a href="#addComModal"  data-toggle="modal" >
                                            <?php 
                                            if(empty($bool)){
                                                echo ' <input type="submit"  style="background-color: green;" class="btn btn-sucess" name="export_excel" value="Commenter">';
                                            }
                                             ?>

                                    </a>
                                    <input type="submit"  style="background-color: green;" class="btn btn-sucess" name="export_excel" value="Telecharger">
                                </form>

                                

            <?php


            $id_form=$_GET['id_form'];
            $sql = "SELECT question,question.id_question as id_question, oui_non , commentaire, fichier FROM reponse, question WHERE question.id_question = reponse.id_question and id_formulaire=".$id_form ;
            $result = mysqli_query($conn,$sql);
    
            $form='<table class="table table-striped table-hover"  >
            <thead>
                <tr>
                <th ></th>
                <th >Question</th>
                <th></th>
                <th>Reponse</th>
                <th>piece jointe</th>
                    <th ">Commentaire</th>
                </tr>
            </thead>
        
            <tbody>';
    
    
            $i = 1;
            while($row=mysqli_fetch_assoc($result)){
    
                $quest=$row['question'] ;
                $quest_pos=$row['id_question'];
                $oui = $row['oui_non'];
                $piece_j = $row['fichier'];
                $comment = $row['commentaire'];
                $form .= '<tr>
                                <th colspan="3">
                                '.$quest_pos.'-'.$quest.'
                                </th>

                                <th>
                                    '.$oui.'
                                </th>

                                <th>'.Check_file($piece_j).'</th>
                                <th>
                                '.$comment.'
                                 </th>
                    
                        </tr>';
    
                $i=$i+1;
    
            }

                
                $form .=  '<tr>
                <th colspan="5">'.$bool.'</th>
                </tr>';

            $form .='</table>';
            echo $form;


            function Check_file( $fi_name ){
                if($fi_name=="non"){
                    return "non";
                }else{
                    return  '<a  href="./p_jointe.php?nom='.$fi_name.'" style="color : white;" > voir</a>';
                }
            }

?>



                            </div>


                            <div class="clearfix">
                            </div>
                        </div>
                    </div>

                    <?php 

                    $block = 1;

                            if ($_SERVER["REQUEST_METHOD"] == "POST" and $block == 1) {
                                $com = $_POST['nom'];

                                $date = date("Y-m-d");

                                $sql = 'update formulaire set commentaireUbora= \''.$com.'\',reviser_par=\''.$_SESSION['username'].'\', `reviser_le`=\''.$date.'\' where id_sr='.$id_form ;
                                mysqli_query($conn,$sql);

                               

                                $sql_decre = 'select non_lue from notification where 1';
                                

                                $result_decre = mysqli_query($conn,$sql_decre);
                                while($row = mysqli_fetch_assoc($result_decre)){

                                    $num_notif = $row['non_lue'];

                                }

                                $sql_notif = 'UPDATE `notification` SET `non_lue`='.($num_notif-1);
                                mysqli_query($conn,$sql_notif);

                                $sql = 'update reponse set commentaire_admin= \''.$com.'\'where id_formulaire='.$id_form ;
                                mysqli_query($conn,$sql);



                                $bool="noempty";


                            }
                    ?>


                    <!----add-modal start--------->
                    <div class="modal fade" tabindex="-1" id="addComModal" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Laisser Votre Commentaire</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="" method="post">
                                    <div class="modal-body">

                                        <div class="form-group">
                                            <input type="textarea" class="form-control" name="nom" required>
                                        </div>
                                    <div class="modal-footer">
                                        <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Annuler</button>

                                        <button type="submit" class="btn btn-success">Enregistrer</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!----add-modal end--------->



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



