<?php
	echo "<h1>Welcome to Matt's Music</h1>";
	echo "<p>We are southeastern Missouri's 12th largest specialty music shop! Since 1784!</p>";
	echo "<h3>Featured Deals:</h3>";
	
	$featQuery = "SELECT * FROM inventory WHERE isFeat = " . "1";
	$featData = mysqli_query($db, $featQuery);
	$featRows = mysqli_fetch_assoc($featData);
	
	do
	{
		$beginLink = "<a href=\"index.php?view=prod&invID=" . $featRows['invID'] . "\">";
		echo $beginLink;

		if ($featRows['picSmall'] == NULL)
		{
			echo "<img src=\"assets\\no-image-sm.png\"/>";
		}
		else
		{
			echo "<img src=\"assets\\" . $featRows['picSmall'] . "\"/>";
		}
		
		echo $featRows['invName'] . $endLink . "<br><br>";
	}
	while ($featRows = mysqli_fetch_assoc($featData));
?>