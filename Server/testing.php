<?php
    $bpm = $_GET["bpm"];
    $temp= $_GET["temp"];
    require_once('db.php');
    

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind
$stmt = $conn->prepare("INSERT INTO patient (pulse,temp) VALUES (?,?)");
$stmt->bind_param("ss", $pulse,$temp);

// set parameters and execute
$pulse = $bpm;
$temp= $temp;
$stmt->execute();
$stmt->close();
$conn->close();
?>