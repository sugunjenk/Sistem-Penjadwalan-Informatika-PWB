<?php
session_start();

// Check if the session exists and if the username is set
if (isset($_SESSION['email'])) {
    // Redirect to the dashboard
    header("Location: dashboard.php");
    exit();
}

// Rest of the login code
// ...
?>

<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
  <link rel="stylesheet" href="registration_form.css">
  <style>
    .container input[type="text"],
    .container input[type="password"] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      box-sizing: border-box;
      border-radius: 5px;
    }
    label{
        padding-top: 10px;
    }

  </style>
</head>
<body>
  <div class="container">
    <form id="loginForm" action="Login.php" method="POST">
      <!-- <img src="logo.png" alt="Logo" width="80" height="80"> -->
      <h2>Login</h2>
      <input type="text" placeholder="Email" name="email" required>
      <input type="password" placeholder="Password" name="password" required>
      <label><input type="radio" name="role" value="admin"> Admin</label>
      <label><input type="radio" name="role" value="mahasiswa"> Mahasiswa</label>
      <label><input type="radio" name="role" value="dosen"> Dosen</label>
      <button type="submit">Login</button>
      <label>Belum punya akun? <span><a href="registration_form.html">Registrasi</a></span></label>
    </form>
  </div>

  <script>
    // const form = document.getElementById("loginForm");
    // form.addEventListener("submit", function(event) {
      
    //   const email = form.elements.email.value;
    //   const password = form.elements.password.value;
    //   const selectedRole = document.querySelector('input[name="role"]:checked');

    //   if (email === "user@example.com" && password === "password") {
    //     alert("Login berhasil!");

    //   } else {
    //     alert("Email atau password salah. Silakan coba lagi.");
    //   }
    // });
  </script>
</body>
</html>
