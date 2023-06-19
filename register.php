<?php
include("conn.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $name = $_POST['name'];
    $nim = $_POST['nim'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $class = $_POST['class'];
    $angkatan = $_POST['angkatan'];
    // var_dump($name,$nim,$email,$password,$class,$angkatan);
    add_mahasiswa($name,$nim,$email,$password,$class,$angkatan);
    
    // Redirect to a success page or display a success message
    header('Location: index.html'); // Replace 'success.html' with your actual success page
    exit;
}
?>