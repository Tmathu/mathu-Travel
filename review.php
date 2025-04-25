<?php

$servername = "localhost";
$username = "root";         
$password = "";             
$dbname = "mathu"; 
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$place = htmlspecialchars($_POST['place']);
$stars = intval($_POST['stars']);
$feedback = htmlspecialchars($_POST['feedback']);


$sql = "INSERT INTO reviews (place, stars, feedback) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sis", $place, $stars, $feedback);

if ($stmt->execute()) {
    echo "<script>alert('Review submitted successfully!'); window.location.href='Review.html';</script>";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
