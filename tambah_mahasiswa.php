<<<<<<< HEAD
<?php

$mysqli = new mysqli('localhost', 'root', '', 'tedc');

$program_studi = $mysqli->query("SELECT * FROM study_program");

if (isset($_POST['nim']) && isset($_POST['nama'])) {
    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $program_studi = $_POST['program_studi'];

    $insert = $mysqli->query("INSERT INTO students (nim, nama, study_program_id) 
                                VALUES('$nim', '$nama', $program_studi)");
    if ($insert) {
        header("Location: mahasiswa.php");
        exit();
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data Mahasiswa</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 class="text-center">Form Tambah Mahasiswa KA 2021</h1>
        <form method="POST">
            <div class="mb-3">
                <label for="nim" class="form-label">NIM</label>
                <input type="text" class="form-control" id="nim" name="nim">
            </div>
            <div class="mb-3">
                <label for="nama" class="form-label">Nama Lengkap</label>
                <input type="text" class="form-control" id="nama" name="nama">
            </div>
            <div class="mb-3">
                <label for="program_studi" class="form-label">Program Studi</label>
                <select name="program_studi" id="program_studi" class="form-control">
                    <?php while ($row = $program_studi->fetch_assoc()) { ?>
                        <option value="<?= $row['id'] ?>"><?= $row['name'] ?></option>
                    <?php } ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="mahasiswa.php" class="btn btn-warning">Kembali</a>
        </form>
    </div>
</body>
=======
<?php
    session_start();
    if (!isset($_SESSION['login'])) {
        if ($_SESSION['login'] != true) {
            header("Location: login.php");
            exit;
        }
    }

    $mysqli = new mysqli('localhost', 'root', '', 'absen');

    $program_Studi = $mysqli->query("Select * from Program_Studi");
    if (isset($_POST['Nim']) && isset($_POST['Nama'])) {
        $Nim = $_POST['Nim'];
        $Nama = $_POST['Nama'];
        $Prodi = $_POST['Prodi'];

        $insert = $mysqli->query("INSERT INTO Mahasiswa(Nim, Nama, Id_Prodi) VALUES ('$Nim','$Nama','$Prodi')");
        if ($insert) {
            $_SESSION['success'] = true;
            $_SESSION['message'] = 'Data Berhasil Ditambahkan';
            header("Location: mahasiswa.php");
            exit();
        }
    }
    
?>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Mahasiswa</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
    <div class ="container">
    <h1 class="text-center">From Tambah Mahasiswa</h1>

    <form method ="POST">
        <div class= "mb-3">
            <label for="Nim" class="form-label">NIM</label>
            <input type="text" class="form-control" id="Nim" name="Nim">
        </div>
        <div class ="mb-3">
            <label for="Nama" class="form-label">Nama</label>
            <input type="text" class="form-control" id="Nama" name="Nama">
        </div>
        <div class ="mb-3">
            <label for="Prodi" class="form-label">Prodi</label>
            <select class="form-select" id="Prodi" name="Prodi" required>
            <option value="">Pilih Program Studi</option>
                <?php while ($row = $program_Studi->fetch_assoc()) { ?>
                    <option value="<?= $row['Id_Prodi']; ?>">
                     <?= $row['Prodi']; ?>
                     </option>
                 <?php } ?>
                </select>
        </div>
        <div class="mt-3">
                <button type="submit" class="btn btn-primary">Sumbit</button>
                <a href="Mahasiwa.php" class="btn btn-warning">Cancel</a>
         </div>
    </form>
    
</body>
>>>>>>> 2d4a8ff (Update fitur di file PHP)
</html>