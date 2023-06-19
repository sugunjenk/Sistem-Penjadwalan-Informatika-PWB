<?php
include("conn.php");
session_start();

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare and execute the SQL statement
    $stmt = $conn->prepare("SELECT * FROM mahasiswa WHERE email = '$email' AND pass = '$password'");
    
    // ni bikin error
    // $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a matching row is found
    if ($result->num_rows === 1) {
        // Login successful
        $_SESSION['email'] = $email;
        echo json_encode(['status' => 'success', 'message' => 'Login berhasil!']);
        header('Location: dashboard.php');
    } else {
        // Invalid login
        echo json_encode(['status' => 'error', 'message' => 'Email atau password salah. Silakan coba lagi.']);
    }

    // Close the statement and database connection
    $stmt->close();
    $conn->close();
}
?>
