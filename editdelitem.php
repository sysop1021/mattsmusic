<?php
	include("protected.php");
	
	$itemsQuery = "SELECT * FROM inventory";
	$itemsData = mysqli_query($db, $itemsQuery);
	$itemsRows = mysqli_fetch_assoc($itemsData);
?>
<h3>Edit/delete Item</h3>
<form action="index.php?view=edititemform" method="POST">
	<p><span class="req-alert">*</span>Item: <select name="item" required>
		<option value="">Select an item</option>
		<?php
			do
			{
				echo "<option value=\"" . $itemsRows['invID'] . "\">" . $itemsRows['invName'] . "</option>";
			}
			while ($itemsRows = mysqli_fetch_assoc($itemsData))
		?>
	</select></p>
	<p><button type="submit" name="edit">Edit item</button>
	<button type="submit" name="delete" class="del-button">Delete item</button></p>
		
</form>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>
