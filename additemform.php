<?php
	include("protected.php");
	
	$catQuery = "SELECT * FROM categories ";
	$catData = mysqli_query($db, $catQuery);
	$catRows = mysqli_fetch_assoc($catData);
?>

<h3>Add item</h3>
<form action="index.php?view=additem" method="POST">
	<p><span class="req-alert">*</span>Item category: <select name="catSelect" required>
		<option value="">Select a category</option>
		<?php
			do
			{
				echo "<option value=\"" . $catRows['catID'] . "\">" . $catRows['catName'] . "</option>";
			}
			while ($catRows = mysqli_fetch_assoc($catData))
		?>
	</select></p>
	<p><span class="req-alert">*</span>Item name: <input type="text" required name="invName" class="l-txt-input"></p>
	<p><span class="req-alert">*</span>Price: <input type="number" required name="invPrice" placeholder="0.00" step="0.01" min="0.00" max="9999.99"></p>
	<p>Description: <textarea type="text" name="desc"></textarea></p>
	<p>Featured deal? <input type="checkbox" name="isFeat"><span class="tip">Featured items will appear on the homepage</span></p>	
	<p>Full-size image: <input type="text" name="picBig"><span class="tip">Recommended 500x500 px</span></p>
	<p>Thumbnail image: <input type="text" name="picSmall"><span class="tip">Recommended 200x200 px</span></p>
	<button type="submit">Submit</button>	
</form>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>