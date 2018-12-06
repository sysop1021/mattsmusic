<?php
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
			$filename = "assets\\" . $itemsRows['picSmall'];
			
			$beginLink = "<a href=\"index.php?view=prod&invID=" . $itemsRows['invID'] . "\">";
			echo $beginLink;
			
			if ($itemsRows['picSmall'] == NULL || !file_exists($filename))
			{
				echo "<img src=\"assets\\no-image-sm.png\"/>";
			}
			
			else
			{
				echo "<img src=\"$filename\">";
			}
			
			echo $itemsRows['invName'] . $endLink . "<br><br>";
		}
		while ($itemsRows = mysqli_fetch_assoc($itemsData));
	}
?>