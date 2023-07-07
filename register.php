<?php
include("conn.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nim = $_POST['nim'];
    $email = $_POST['email'];
    $name = $_POST['name'];
    $username =  $_POST['username'];
    $password = $_POST['password'];
    // Apakah NIM sudah ada di DB
    $query = "SELECT * FROM user WHERE id = '$nim'";
    if(mysqli_num_rows(mysqli_query($conn,$query)) !== 0){
        gagal_regis('NIM Sudah Terdaftar');
    }
    // Apakah Email sudah ada di DB
    $query = "SELECT * FROM user WHERE email = '$email'";
    if(mysqli_num_rows(mysqli_query($conn,$query)) !== 0){
        gagal_regis('Email Sudah Terdaftar');
    }

    $role = $_POST['category'];
    if($role === 'mahasiswa'){
        // Menambahkan User
        add_user_table($conn, $name,$username,$nim,$email,$password,$role);
        // Memeriksa apakah kelas sudah benar
        $class = $_POST['class'];
        $query = "SELECT * FROM kelas WHERE nama_kode_kelas = '$class'";
        $class_row = mysqli_query($conn,$query);
        if(mysqli_num_rows($class_row) === 0){
            gagal_regis('Kelas tidak ada');
        }
        $class_row = mysqli_fetch_assoc($class_row);
        $class_id = $class_row['id'];

        // Update jumlah mahasiswa
        $query = "UPDATE kelas SET jumlah_mahasiswa = jumlah_mahasiswa + 1 WHERE id = $class_id";
        mysqli_query($conn,$query);

        // Menambahkan data di tabel mahasiswa
        $query = "INSERT INTO mahasiswa (id_user, kelas) VALUES ($nim,$class_id)";
        mysqli_query($conn,$query);
        
        header('Location: dashboardMahasiswa.php');
        exit;
    }

    

}

function gagal_regis($msg_error){
    header('Location: registration_form.php?error='.$msg_error);
    exit;
}

function add_user_table($conn, $name, $username, $nim,$email,$password,$role){
    $query = "INSERT INTO user (fullname, id, email, password,role,username) 
    VALUES ('$name', $nim, '$email', '$password','$role','$username')";
    
    if (mysqli_query($conn, $query)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
    }
    // mysqli_close($conn);

}
?>