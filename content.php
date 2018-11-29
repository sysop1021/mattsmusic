<?php
	$endLink = "</a>";

	if (isset($_GET['view']))
	{
		// CATEGORY VIEW
		if ($_GET['view'] == "cat")
		{
			$itemsQuery = "SELECT * FROM inventory WHERE catID = " . $_GET['catID'];
			$itemsData = mysqli_query($db, $itemsQuery);
			$itemsRows = mysqli_fetch_assoc($itemsData);
			
			$catNameQ = "SELECT catName FROM categories WHERE catID = " . $_GET['catID'];
			$catNameData = mysqli_query($db, $catNameQ);
			$catName = mysqli_fetch_assoc($catNameData);
			
			echo "<h3>" . $catName['catName'] ."</h3>";
			
			if ($itemsRows == NULL)
			{
				echo "No items in this category";
			}
			
			else
			{
				do
				{
					$beginLink = "<a href=\"index.php?view=prod&invID=" . $itemsRows['invID'] . "\">";
					echo $beginLink;
					
					if ($itemsRows['picSmall'] == NULL)
					{
						echo "<img src=\"assets\\no-image-sm.png\"/>";
					}
					else
					{
						echo "<img src=\"assets\\" . $itemsRows['picSmall'] . "\"/>";
					}
					
					echo $itemsRows['invName'] . $endLink . "<br><br>";
				}
				while ($itemsRows = mysqli_fetch_assoc($itemsData));
			}
		}
		
		// PRODUCT PAGE
		else if ($_GET['view'] == "prod")
		{			
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
					echo "<strong>" . $detailsRows['invName'] . "</strong><br>";
					echo "<em>$" . $detailsRows['invPrice'] . "</em><br>";
					echo $detailsRows['description'] . "<br>";
					
					if ($detailsRows['picBig'] == NULL)
					{
						echo "<img src=\"assets\\no-image.png\"/>";
					}
					else
					{
						echo "<img src=\"assets\\" . $detailsRows['picBig'] . "\"/>";
					}
				}
				while ($detailsRows = mysqli_fetch_assoc($detailsData));
			}
			
		}
	}
	
	// MAIN HOMEPAGE
	else
	{
		echo "<h1>Welcome to Matt's Music</h1>";
		echo "<h3>We are southeastern Missouri's 12th largest specialty music shop! Since 1784!</h3>";
		echo "<h5>Featured Deals:</h5>";
		
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
			
			echo $featRows['invName'] . $endLink . "<br>";
		}
		while ($featRows = mysqli_fetch_assoc($featData));	
	}
?>