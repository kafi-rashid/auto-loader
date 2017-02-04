<?php 
	$dbcon = mysqli_connect('localhost', 'root', '', 'auto_loader');
	$last_row = (int)$_GET['id'];
	$result = mysqli_query($dbcon, "SELECT * FROM texts WHERE id > '$last_row'");
	while($text = mysqli_fetch_array($result)) echo "<div class='text'><input type='checkbox'>" . $text['text'] . "<script>var new_row = " . $text['id'] . ";</script></div>";
?>