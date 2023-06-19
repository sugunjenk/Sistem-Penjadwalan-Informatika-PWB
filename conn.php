<?php

$host = 'localhost'; // Change this if your database is hosted on a different server
$dbName = 'jadwal_kuliah_informatika'; // Replace with your actual database name
$username = 'root'; // Replace with your actual database username
$password = '125125'; // Replace with your actual database password

// Establish a connection to the database
$conn = new mysqli($host,$username,$password,$dbName);
// if($conn) echo "connected";
// else echo "not connected";
function add_mahasiswa($name,$nim,$email,$password,$class,$angkatan){
    global $conn;
    $query = "INSERT INTO mahasiswa (fullname, nim, email, pass, kelas, angkatan) 
    VALUES ('$name', $nim, '$email', '$password','$class','$angkatan')";
    
    if (mysqli_query($conn, $query)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
    }
    
    mysqli_close($conn);
}
?>