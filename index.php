<?php 
	$dbcon = mysqli_connect('localhost', 'root', '', 'auto_loader');
	$result_init = mysqli_query($dbcon, "SELECT * FROM (SELECT * FROM texts ORDER BY id DESC LIMIT 6) tb ORDER BY id ASC");
	$data = array();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Auto Loader</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<p class="header">Auto Loader</p>
	<span>by Kafi Rashid</span>
	<div class="center">
		<div id="sender">
			<textarea id="text" placeholder="Write here"></textarea>
			<button id="send">Send</button>
		</div>
		<hr>
		<div id="container">
			<?php
				while($text_init = mysqli_fetch_array($result_init)) $data[] = $text_init;
				foreach($data as $d) echo "<script> var last_row = " . $d[0] . "; </script>"; 
				$data = array_reverse($data,true);
				foreach($data as $d) echo "<div class='text'><input type='checkbox'>" . $d[1] . "</div>";
			?>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$('#send').click(function() {
				var text = $('#text').val();
	            $.ajax({
				    url: 'sender.php',
				    type: "POST",
				    data: "text="+text,
			     	success: function(data){
			     		$('#text').val('');
				    }
				});
		    });
			var interval = setInterval(function() {
				$.ajax({
					url: 'receiver.php?id='+last_row,
					success: function(data) {
						$('#container').prepend(data);
						last_row = new_row;
		            }
				});
			}, 1000);
		});
	</script>
</body>
</html>