<h3>Edit category</h3>
<?php
	include("protected.php");
	
	if (!empty($_POST['cat']))
	{
		$cat = $_POST['cat'];
		
		if(isset($_POST['delete']))
		{
			$rmCatQuery = "DELETE FROM categories WHERE catID = $cat";
			$rmItemsQuery = "DELETE FROM inventory WHERE catID = $cat"; // also delete associated items!!!
			mysqli_query($db, $rmCatQuery);
			mysqli_query($db, $rmItemsQuery);
			
			echo "<p>Category deleted!</p>";
		}
		
		else if(isset($_POST['edit']))
		{
			$edCatQuery = "SELECT * FROM categories WHERE catID = $cat";
			$edCatData = mysqli_query($db, $edCatQuery);
			$edCatRows = mysqli_fetch_assoc($edCatData);
			
			$_SESSION['editID'] = $edCatRows['catID'];
			
			?>
			<form action="index.php?view=editcat" method="POST">
				<p><span class="req-alert">*</span>Category name: <input type="text" name="catName" class="l-txt-input" required value = "<?php echo $edCatRows['catName']?>"></p>
				<button type="submit">Submit</button>
			</form>
			<?php
		}
	}
	
	else
	{
		echo "<p>Please select a valid category.</p>";
	}
?>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>