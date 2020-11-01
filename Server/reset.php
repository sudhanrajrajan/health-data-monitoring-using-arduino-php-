<?php
	require_once('db.php');
		if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
		}
	// prepare and bind
	$stmt = $conn->prepare("INSERT INTO patient (pulse,temp) VALUES (?,?)");
	$stmt->bind_param("ss", $pulse,$temp);

	// set parameters and execute
	$pulse = "0";
	$temp= "0";
	$stmt->execute();
	$stmt->close();
	$conn->close();
	echo '<script>window.top.location="healthss.php";</script>';
?>