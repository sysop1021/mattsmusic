<?php
	include("dbconnect.php");
?>

<!DOCTYPE html>
<meta charset="utf-8">

<html>
	<head>
		<link type="text/css" rel="stylesheet" href="assets\styles.css">
		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
		<title>Matt's Music</title>
	</head>
	<body>
		<div class="container">
			<div class="header">
				<div class="logo">
					<a href="index.php"><img src="assets\logo.png"/></a>
				</div>
				<div class="nav" id="admin">
					<a href="index.php?view=login">Staff login</a>
				</div>				
				<div class="nav">
					<!-- links go here -->
					<?php include("navbar.php"); ?>
				</div>
			</div> <!-- /header -->
			<div class="content">
				<?php include("content.php"); ?>
			</div>
			<div class="footer">
				<p>129 West 81st Street | St. Louis, MO</p>
				<p>©2071 Vandelay Industries</p>
			</div>
		</div> <!-- /container -->
	</body>
</html>