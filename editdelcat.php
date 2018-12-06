<?php
	include("protected.php");
	
	$catsQuery = "SELECT * FROM categories";
	$catsData = mysqli_query($db, $catsQuery);
	$catsRows = mysqli_fetch_assoc($catsData);
?>

<h3>Edit/delete category</h3>
<form action="index.php?view=editcatform" method="POST">
	<p><span class="req-alert">*</span>Category: <select name="cat" required>
		<option value="">Select a category</option>
		<?php
			do
			{
				echo "<option value=\"" . $catsRows['catID'] . "\">" . $catsRows['catName'] . "</option>";
			}
			while ($catsRows = mysqli_fetch_assoc($catsData))
		?>
	</select></p>
	<p class="req-alert">WARNING: Deleting a category will also delete all associated items!</p>
	<p><button type="submit" name="edit">Edit category</button>
	<button type="submit" name="delete" class="del-button">Delete category</button></p>
</form>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>