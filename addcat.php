<?php
	include("protected.php");
	
	if ($_POST['catName'] != NULL)
	{
		$catName = mysqli_real_escape_string($db, $_POST['catName']);
		$addCatQuery = "INSERT INTO categories (catID, catName) VALUES (NULL, '$catName');";
		mysqli_query($db, $addCatQuery);
		
		echo "<p>New category successfully added!</p>";		
	}
	
	else
	{
		echo "<p>Unable to add category</p>";
	}
?>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>