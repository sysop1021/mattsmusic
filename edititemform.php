<h3>Edit item</h3>
<?php
	include("protected.php");
	
	if (!empty($_POST['item']))
	{
		$item = $_POST['item'];
		
		if(isset($_POST['delete']))
		{	
			$rmQuery = "DELETE FROM inventory WHERE invID = $item";
			$rmData = mysqli_query($db, $rmQuery);
			echo "<p>Item deleted!</p>";
		}
		
		else if (isset($_POST['edit']))
		{
			$edQuery = "SELECT * FROM inventory WHERE invID = $item";
			$edData = mysqli_query($db, $edQuery);
			$edRows = mysqli_fetch_assoc($edData);

			$catQuery = "SELECT * FROM categories ";
			$catData = mysqli_query($db, $catQuery);
			$catRows = mysqli_fetch_assoc($catData);

			$_SESSION['editID'] = $edRows['invID'];
			?>
			
			<form action="index.php?view=edititem" method="POST">
				<p><span class="req-alert">*</span>Item category: <select name="catSelect" required>
					<option value="">Select a category</option>
					<?php
						do
						{
							if ($catRows['catID'] == $edRows['catID'])
							{
								echo "<option value=\"" . $catRows['catID'] . "\" selected>" . $catRows['catName'] . "</option>";
							}
							else
							{
								echo "<option value=\"" . $catRows['catID'] . "\">" . $catRows['catName'] . "</option>";
							}
						}
						while ($catRows = mysqli_fetch_assoc($catData))
					?>
				</select></p>
				<p><span class="req-alert">*</span>Item name: <input type="text" required name="invName" class="l-txt-input" value="<?php echo $edRows['invName'] ?>"></p>
				<p><span class="req-alert">*</span>Price: <input type="number" required name="invPrice" value="<?php echo $edRows['invPrice'] ?>" step="0.01" min="0.00" max="9999.99"></p>
				<p>Description: <textarea type="text" name="desc"><?php echo $edRows['description'] ?></textarea></p>
				<p>Featured deal? <input type="checkbox" name="isFeat"<?php if ($edRows['isFeat'] == 1){ echo "checked";}?>><span class="tip">Featured items will appear on the homepage</span></p>
				<p>Full-size image: <input type="text" name="picBig" value="<?php echo $edRows['picBig'] ?>"><span class="tip">Recommended 500x500 px</span></p>
				<p>Thumbnail image: <input type="text" name="picSmall" value="<?php echo $edRows['picSmall'] ?>"><span class="tip">Recommended 200x200 px</span></p>
				<button type="submit">Submit</button>
			</form>
			
			<?php
		}
	}
	
	else
	{
		echo "<p>Please select a valid item.</p>";
	}
	
?>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>
