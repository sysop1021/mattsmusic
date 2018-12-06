<?php
	include("protected.php");
	
?>

<h3>Add category</h3>
<form action="index.php?view=addcat" method="POST">
	<p><span class="req-alert">*</span>Category name: <input type="text" name="catName" class="l-txt-input" required></p>
	<button type="submit">Submit</button>
</form>

<p><a href="index.php?view=login">Go back to Admin Console</a></p>