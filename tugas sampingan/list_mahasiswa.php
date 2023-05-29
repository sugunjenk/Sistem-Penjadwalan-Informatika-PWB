<?php
// Koneksi ke database
include("../conn.php");

// Mengatur jumlah data yang ditampilkan per halaman
$perPage = (isset($_GET['perPage']) ? $_GET['perPage'] : 10);

// Menghitung jumlah data mahasiswa
$queryCount = "SELECT COUNT(*) as total FROM mahasiswa";
$resultCount = mysqli_query($conn, $queryCount);
$rowCount = mysqli_fetch_assoc($resultCount);
$totalData = $rowCount['total'];

// Menghitung jumlah halaman
$totalPages = ceil($totalData / $perPage);

// Mengambil halaman saat ini
$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;

// Mengatur batas data yang akan ditampilkan
$start = ($currentPage - 1) * $perPage;

// Mengambil data mahasiswa berdasarkan halaman dan jumlah data per halaman
$queryMahasiswa = "SELECT * FROM mahasiswa LIMIT $start, $perPage";
$resultMahasiswa = mysqli_query($conn, $queryMahasiswa);

// Menampilkan data mahasiswa
?>
<!DOCTYPE html>
<html>
<head>
    <title>List Mahasiswa</title>
</head>
<body>

<br> Kelompok 3 Kelas C:
<br> 1. I Putu Diska Fortunawan (2108561046)
<br> 2. I Made Suma Gunawan (2108561108)
<br> 3. Putu Ode Irfan Ardika (2108561083)
<br> 4. I Dewa Gede Partha Wijaya (2108561093)
<br> 5. I Putu Andi Wiratama Putra (2108561052)

    <h1>List Mahasiswa</h1>
    
    <!-- Form untuk memilih jumlah data per halaman -->
    <form action="" method="get">
        <label for="perPage">Jumlah data per halaman:</label>
        <select name="perPage" id="perPage">
            <option value="10" <?php if ($perPage == 10) echo "selected"; ?>>10</option>
            <option value="25" <?php if ($perPage == 25) echo "selected"; ?>>25</option>
            <option value="50" <?php if ($perPage == 50) echo "selected"; ?>>50</option>
            <option value="<?php echo $totalData; ?>" <?php if ($perPage == $totalData) echo "selected"; ?>>Semua</option>
        </select>
        <input type="submit" value="Tampilkan">
    </form>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>NIM</th>
                <th>Email</th>
                <th>Kelas</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = mysqli_fetch_assoc($resultMahasiswa)) : ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['nama']; ?></td>
                <td><?php echo $row['nim']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['kelas_id']; ?></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
    
    <!-- Navigasi halaman -->
    <div>
        <?php if ($currentPage > 1) : ?>
            <a href="?perPage=<?php echo $perPage; ?>&page=1">First</a>
            <a href="?perPage=<?php echo $perPage; ?>&page=<?php echo $currentPage - 1; ?>">Prev</a>
        <?php endif; ?>
        
        <?php if ($currentPage < $totalPages) : ?>
            <a href="?perPage=<?php echo $perPage; ?>&page=<?php echo $currentPage + 1; ?>">Next</a>
            <a href="?perPage=<?php echo $perPage; ?>&page=<?php echo $totalPages; ?>">Last</a>
        <?php endif; ?>
    </div>
</body>
</html>
