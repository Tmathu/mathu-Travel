<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "mathu"; 

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $destination = $_POST['destination'];
    $start_date = $_POST['start_date'];
    $return_date = $_POST['return_date'];
    $activities = $_POST['activities'];

    
    if (empty($destination) || empty($start_date) || empty($return_date) || empty($activities)) {
        echo "All fields are required.";
    } else {
        
        $stmt = $conn->prepare("INSERT INTO trip_plans (destination, start_date, return_date, activities) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $destination, $start_date, $return_date, $activities);

      
        if ($stmt->execute()) {
            echo "Your trip plan has been successfully saved.";
        } else {
            echo "Error: " . $stmt->error;
        }

        
        $stmt->close();
    }
}


$conn->close();
?>
