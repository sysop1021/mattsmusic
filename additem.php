<?php
	include("protected.php");
	
	$invName = mysqli_real_escape_string($db, $_POST['invName']);
	$catSelect = mysqli_real_escape_string($db, $_POST['catSelect']);
	$invPrice = mysqli_real_escape_string($db, $_POST['invPrice']);
	
	$desc = mysqli_real_escape_string($db, $_POST['desc']);
	isset($_POST['isFeat']) ? $isFeat = 1 : $isFeat = 0;
	$picSmall = mysqli_real_escape_string($db, $_POST['picSmall']);
	$picBig = mysqli_real_escape_string($db, $_POST['picBig']);
	
	if ($invName != NULL && $catSelect != NULL && $invPrice != NULL)
	{
		$addQuery = "INSERT INTO inventory (invID, invName, catID, invPrice, description, isFeat, picSmall, picBig) VALUES (NULL, '$invName', '$catSelect', '$invPrice', '$desc', '$isFeat', '$picSmall', '$picBig')";
		mysqli_query($db, $addQuery);
		echo "<p>New item successfully added!</p>	";
	}
	
	else
	{
		echo "<p>Unable to add item</p>";
	}

?>


<p><a href="index.php?view=login">Go back to Admin Console</a></p>