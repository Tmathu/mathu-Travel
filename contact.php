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
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $message = $_POST['message'];

    
    if (empty($name) || empty($email) || empty($address) || empty($message)) {
        echo "All fields are required.";
    } else {
    
        $sql = "INSERT INTO contact_form (name, email, address, message) VALUES ('$name', '$email', '$address', '$message')";

        if ($conn->query($sql) === TRUE) {
            echo "Thank you, $name! Your message has been sent successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

$conn->close();
?>
