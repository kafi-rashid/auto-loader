<?php 
	$dbcon = mysqli_connect('localhost', 'root', '', 'auto_loader');
	$text = $_POST['text'];
	$text = str_replace(array('\\', "\0", "\n", "\r", "'", '"', "\x1a"), array(' ', ' ', ' ', ' ', "\\'", ' ', ' '), $text);
	$result = mysqli_query($dbcon, "INSERT INTO texts (text) VALUES ('$text')");
?>