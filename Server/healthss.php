<html>
<head>

<title>HEALTH</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>

*{
	margin:0;
	padding:0;
}
body{
	background-image: linear-gradient(rgba(49,0,255,0.8),rgba(132,5,29,0.8)),url(patient.jpg);
	background-size:cover;
	background-position:center;
}

.counter {
	
	margin:140px 180px;
	color:#fff;
}
.icon{
	border: 1px solid #fff;
	height:100px;
	width:100px;
	margin:40px auto;
}
.icon .fa{
	font-size:40px;
	margin:25px auto;
	color: #ffc800;
}
.counter-box p{
	font-size:80px;
}
.counting{
	font-size:80px;
}
.reset{
	background:transparent;
	position:absolute;
	margin-top:10px;
	right:200px;
}
</style>
<body>
    <?php

                        require_once('db.php');

						// Create connection
						$conn = new mysqli($servername, $username ,$password , $dbname);
						$sql = "SELECT * FROM patient ORDER BY id DESC  LIMIT 1;  ";
						
						$res = $conn->query($sql);
						while($r = $res->fetch_assoc()) {
						
			?>
    
    
    <div class="reset">
	<form action="reset.php" method="POST">
		<input class="d" type="submit" name="reset" value="RESET" />
	</form>
</div>
<div class="container counter ">
	<div class="row text-center">
		<div class="col-md-3 .counter-box">
			<div class="icon"><i class="fa fa-heartbeat"></i></div>
			<p class="counting"><?php echo $r['pulse']; ?></p>
			<p>HEART BEAT</p>
		</div>
		<div class="col-md-3 .counter-box">
			<div class="icon"><i class="fa fa-thermometer-empty"></i></div>
			<p class="counting"><?php echo $r['temp']; } ?>°c</p>
			<p>BODY TEMPERATURE</p>
		</div>
		<div class="col-md-3 .counter-box">
			<div class="icon"><i class="fa fa-sun-o"></i></div>
			<p class="counting"><?php echo "0"; ?>°f</p> <!-- i disable the humdity -->
			<p>TEMPERATURE</p>
		</div>
	</div>
</div>
<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="jquery.counterup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>


<script>
$(document).ready(function(){
	$('.counting').counterUp({
    delay: 10,
    time: 500
});
	});
</script>

<script type="text/javascript">
   setTimeout(function(){
       location.reload();
   },4000);
</script>	


</body>
</html>