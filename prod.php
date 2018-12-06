<?php
	$detailsQuery = "SELECT * FROM inventory WHERE invID = " . $_GET['invID'];
	$detailsData = mysqli_query($db, $detailsQuery);
	$detailsRows = mysqli_fetch_assoc($detailsData);

	if ($detailsRows == NULL)
	{
		echo "This item does not exist";
	}

	else
	{			
		do
		{
			$filename = "assets\\" . $detailsRows['picBig'];
			
			echo "<strong>" . $detailsRows['invName'] . "</strong><br>";
			echo "<em>$" . $detailsRows['invPrice'] . "</em><br>";
			echo $detailsRows['description'] . "<br>";
			
			if ($detailsRows['picBig'] == NULL || !file_exists($filename))
			{
				echo "<img src=\"assets\\no-image.png\"/>";
			}
			else
			{
				echo "<img src=\"$filename\">";
			}
		}
		while ($detailsRows = mysqli_fetch_assoc($detailsData));
	}
?>