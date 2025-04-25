<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection
$servername = "localhost"; // Database server
$username = "root"; // Database username
$password = ""; // Database password
$dbname = "mathu"; // Database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $username = $_POST['username'];
    $password = $_POST['password'];

   
    if (empty($username) || empty($password)) {
        echo json_encode(['error' => 'Please fill in both fields.']);
        exit;
    }

    
    $sql = "SELECT * FROM signup WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            echo json_encode(['success' => 'Login successful!']);
        } else {
            echo json_encode(['error' => 'Invalid password.']);
        }
    } else {
        echo json_encode(['error' => 'No such user found.']);
    }
}

$conn->close();
?>
