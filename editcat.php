<?php
	include("protected.php");
	
	//echo $_SESSION['editID'] . " => " . $_POST['catName'];
	
	$catName = mysqli_real_escape_string($db, $_POST['catName']);
	$catID = $_SESSION['editID'];
	unset($_SESSION['editID']);
	
	if ($catName != NULL)
	{
		$updateCatQuery = "UPDATE categories SET catName = '$catName' WHERE catID = '$catID'";
		mysqli_query($db, $updateCatQuery);
		echo "<p>Category successfully updated!</p>";
	}
	
	else
	{
		echo "<p>Unable to update category</p>";
	}
	
?>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>