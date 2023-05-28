<?php
	require('./config.php');
	session_start();

	if (isset($_POST['username'])) {

		$username = stripslashes($_REQUEST['username']);

		$username = mysqli_real_escape_string($conn, $username);

		$password = stripslashes($_REQUEST['password']);

        echo "   ".$password;
		$password = mysqli_real_escape_string($conn, $password);

		$query = "SELECT * FROM `utlisateur` WHERE `nom`='".$username."'  AND mot_passe='" .$password. "'";
		$result = mysqli_query($conn, $query);

		if (mysqli_num_rows($result)> 0) {

            while($row = mysqli_fetch_assoc($result)) {

                $_SESSION['ID'] = $row["id_util"];
                $_SESSION['prenom']=$row["prenom"];
                $_SESSION['entreprise']=$row["entreprise"];
                $_SESSION['profil']=$row['profil'];


            }


			$_SESSION['username'] = $username;
			header("Location: acceuil.php");
		} else {

			echo"error.";
		}
	}


	?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
    <style>
        body{background: #000}.card{border: none;height: 320px}.forms-inputs{position: relative}.forms-inputs span{position: absolute;top:-18px;left: 10px;background-color: #fff;padding: 5px 10px;font-size: 15px}.forms-inputs input{height: 50px;border: 2px solid #eee}.forms-inputs input:focus{box-shadow: none;outline: none;border: 2px solid #000}.btn{height: 50px}.success-data{display: flex;flex-direction: column}.bxs-badge-check{font-size: 90px}
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-6">

        <form action="" method="post">

            <div class="card px-5 py-5" id="form1">
                <div class="form-data" v-if="!submitted">
                    <div class="forms-inputs mb-4"> <span>Nom Utilisateur</span> <input autocomplete="off" type="text" name="username"  v-bind:class="{'form-control':true, 'is-invalid' : !validEmail(email) && emailBlured}" v-on:blur="emailBlured = true">
                    <div class="invalid-feedback">nom utilisateur requis !</div>
                </div>
                <div class="forms-inputs mb-4"> <span>mot de passe</span> <input autocomplete="off" type="password"   name="password"  v-model="password" v-bind:class="{'form-control':true, 'is-invalid' : !validPassword(password) && passwordBlured}" v-on:blur="passwordBlured = true">
                <div class="invalid-feedback">Au moins  8 charactere !</div>
            </div>
            <div class="mb-3"> <input type="submit" value="Se Connecter"  class="btn btn-dark w-100"> </div>
                </div>
                
            </div>


        </form>
        
    </div>
    </div>
</div>

<script>
    var app = new Vue({
  el: '#form1',
  data: function () {
    return {
    email : "",
    emailBlured : false,
    valid : false,
    submitted : false,
    password:"",
    passwordBlured:false
    }
  },

  methods:{

    validate : function(){
this.emailBlured = true;
this.passwordBlured = true;
if( this.validEmail(this.email) && this.validPassword(this.password)){
this.valid = true;
}
},

validEmail : function(email) {
   
  return true;


},

validPassword : function(password) {
   if (password.length > 7) {
    return true;
   }
},

submit : function(){
this.validate();
if(this.valid){
this.submitted = true;
}
}
  }
});
</script>
</body>
</html>