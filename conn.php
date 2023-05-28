<?php

$host = 'localhost'; // Change this if your database is hosted on a different server
$dbName = 'jadwal_kuliah_informatika'; // Replace with your actual database name
$username = 'root'; // Replace with your actual database username
$password = ''; // Replace with your actual database password

// Establish a connection to the database
$conn = new mysqli($host,$username,$password,$dbName);
// if($conn) echo "connected";
// else echo "not connected";

?>