<?php
	$endLink = "</a>";

	if (isset($_GET['view']))
	{
		$view = $_GET['view'];
		include("$view.php");
	}
	
	// MAIN HOMEPAGE
	else
	{
		include("main.php");
	}
?>