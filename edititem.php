<?php
	include("protected.php");
	
	$invName = mysqli_real_escape_string($db, $_POST['invName']);
	$catSelect = mysqli_real_escape_string($db, $_POST['catSelect']);
	$invPrice = mysqli_real_escape_string($db, $_POST['invPrice']);
	
	$desc = mysqli_real_escape_string($db, $_POST['desc']);
	isset($_POST['isFeat']) ? $isFeat = 1 : $isFeat = 0;
	$picSmall = mysqli_real_escape_string($db, $_POST['picSmall']);
	$picBig = mysqli_real_escape_string($db, $_POST['picBig']);
	
	$invID = $_SESSION['editID'];
	unset($_SESSION['editID']);
	
	if ($invName != NULL && $invPrice != NULL)
	{
		$updateQuery = "UPDATE inventory SET invName = '$invName', catID = '$catSelect', invPrice = '$invPrice', description = '$desc', isFeat = '$isFeat', picSmall = '$picSmall', picBig = '$picBig' WHERE invID = '$invID'";
		mysqli_query($db, $updateQuery);
		echo "<p>Item successfully updated!</p>	";
	}
	
	else
	{
		echo "<p>Unable to update item</p>";
	}
	

?>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>