<?php 
	session_start();
	
	if (isset($_GET['action']) && $_GET['action'] == "logout")
	{
		unset($_SESSION['userID']);
	}
	
	if ($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		$userQuery = "SELECT * FROM users WHERE username = '" . mysqli_real_escape_string($db, $_POST['username'])  . "'";
		$userResult = mysqli_query($db, $userQuery);
		$userRows = mysqli_fetch_assoc($userResult);
		
		 if (!$userRows)
		{
			echo "<p>No such user</p>";
			echo "<p><a href=\"index.php?view=login\">Go back</a></p>";
		}
		
		else
		{
			if (sha1($_POST['password']) == $userRows['password'])
			{
				$_SESSION['userID'] = $userRows['userID'];
				header("Location: index.php?view=login");
			}
			
			else
			{
				echo "<p>Incorrect password</p>";
				echo "<p><a href=\"index.php?view=login\">Go back</a></p>";
			}
		}
	}
	
	else
	{	
		if(!isset($_SESSION['userID']))
		{
			include("login-form.php");
		}
		
		else
		{				
			include("admin.php");
		}
	}
?>