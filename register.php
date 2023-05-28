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
    // Retrieve other form fields based on the category

    // cek apakah email sudah digunakan

    // Insert data into the database
    // Replace 'mahasiswa' with your actual table name
    
    // full
    // $query = "INSERT INTO mahasiswa (nama, nim, email, password, kelas_id, angkatan_id) 
    // VALUES ('$name', '$nim', '$email', '$password', '$class', '$angkatan')";

    // demo
    $query = "INSERT INTO mahasiswa (nama, nim, email, password) 
    VALUES ('$name', '$nim', '$email', '$password')";
    
    if (mysqli_query($conn, $query)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
    }
    
    mysqli_close($conn);

    // Redirect to a success page or display a success message
    header('Location: login.html'); // Replace 'success.html' with your actual success page
    exit;
}
?>