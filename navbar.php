<?php

	$linksQuery = "SELECT * FROM categories ";
	$linksData = mysqli_query($db, $linksQuery);
	$linksRows = mysqli_fetch_assoc($linksData);
	
	$endLink = "</a>";
	
	do
	{
		$beginLink = "<a href=\"index.php?view=cat&catID=" . $linksRows['catID'] . "\">";
		echo  $beginLink . $linksRows['catName'] . $endLink;
	}
	while ($linksRows = mysqli_fetch_assoc($linksData))
?>