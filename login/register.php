<?php session_start();
require_once('dbconnection.php');

//Code for Registration 
if(isset($_POST['signup']))
{
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$contact=$_POST['contact'];
	$genero=$_POST['genders'];
	$enc_password=$password;
	$msg=mysqli_query($con,"insert into users(fname,lname,email,password,contactno,genero) values('$fname','$lname','$email','$enc_password','$contact', '$genero')");
if($msg)
{
	echo "<script>alert('Registrado com Sucesso');</script>";
}
}

?>
<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Login | LiveBus</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="https://livebus.pt/assets/img/logo/logo.png" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form name="registration" method="post" action="" enctype="multipart/form-data" class="login100-form validate-form flex-sb flex-w" >
					<span class="login100-form-title p-b-53">
						Registre-se
					</span>
					
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							Primeiro Nome
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Primeiro Nome em Falta">
						<input class="input100" type="text" name="fname" >
						<span class="focus-input100"></span>
					</div>
					
                <div class="p-t-31 p-b-9">
						<span class="txt1">
							Segundo Nome
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Segundo Nome em Falta">
						<input class="input100" type="text" name="lname" >
						<span class="focus-input100"></span>
					</div>
					
                    <div class="p-t-31 p-b-9">
						<span class="txt1">
							Email
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Email em Falta">
						<input class="input100" type="email" name="email" >
						<span class="focus-input100"></span>
					</div>
					
                    <div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password em Falta">
						<input class="input100" type="password" name="password" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Telefone
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Telefone em Falta">
						<input class="input100" type="text" name="contact" >
						<span class="focus-input100"></span>
					</div>
					
					

					<div class="container-login100-form-btn m-t-17">
						<button type="submit" name="signup" class="login100-form-btn" >
							Register
						</button>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Já tem conta?
						</span>

						<a href="index" class="txt2 bo1">
							Faça Login aqui
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>