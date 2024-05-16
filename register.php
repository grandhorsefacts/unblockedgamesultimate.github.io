<?php
// Establish connection to MySQL database
$servername = "localhost";
$username = "username"; // Your MySQL username
$password = "password"; // Your MySQL password
$dbname = "your_database"; // Your MySQL database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['new_username']) && isset($_POST['new_password'])) {
        $new_username = $_POST['new_username'];
        $new_password = $_POST['new_password'];

        // Insert new user into the database
        $sql = "INSERT INTO users (username, password) VALUES ('$new_username', '$new_password')";

        if ($conn->query($sql) === TRUE) {
            // New user registered successfully
            echo "Registration successful. You can now sign in.";
        } else {
            // Error in registration
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}
$conn->close();
?>