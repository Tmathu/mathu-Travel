<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "mathu"; // Database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirm_password'];

   
    if (empty($username) || empty($email) || empty($password) || empty($confirmPassword)) {
        echo "All fields are required.";
        exit;
    }

    if ($password !== $confirmPassword) {
        echo "Passwords do not match.";
        exit;
    }

    if (strlen($password) < 6) {
        echo "Password must be at least 6 characters.";
        exit;
    }

   
    $sql = "SELECT * FROM signup WHERE username = '$username' OR email = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "Username or Email already exists.";
    } else {
       
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        
        $sql = "INSERT INTO signup (username, email, password) VALUES ('$username', '$email', '$hashedPassword')";
        if ($conn->query($sql) === TRUE) {
            echo "Account created successfully!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

$conn->close();
?>
