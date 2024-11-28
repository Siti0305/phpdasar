<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konversi Suhu</title>
    <style>
       
        .catatan {
            position: fixed;
            top: 10px;
            right: 10px;
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            padding: 10px;
            width: 300px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <h1>Form Konversi Suhu Celsius</h1>

    <form method="POST">
        <div>
            <label for="suhu">Masukkan Suhu dalam Celsius:</label>
            <input type="number" id="suhu" name="suhu" required>
        </div>
        <br>
        <div>
            <label for="konversi">Pilih Konversi:</label>
            <select id="konversi" name="konversi" required>
                <option value="Reamur">Reamur</option>
                <option value="Fahrenheit">Fahrenheit</option>
                <option value="Kelvin">Kelvin</option>
            </select>
        </div>
        <br>
        <button type="submit">Hitung</button>
    </form>

    <?php
    
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        // Ambil nilai suhu dan jenis konversi dari form
        $suhuCelsius = $_POST['suhu'];
        $konversi = $_POST['konversi'];

        
        $hasilKonversi = '';
        if ($konversi == "Reamur") {
            $hasilKonversi = $suhuCelsius * 0.8;
            $satuan = "°R";
        } elseif ($konversi == "Fahrenheit") {
            $hasilKonversi = ($suhuCelsius * 9 / 5) + 32;
            $satuan = "°F";
        } elseif ($konversi == "Kelvin") {
            $hasilKonversi = $suhuCelsius + 273.15;
            $satuan = "K";
        }

        echo "<div class='catatan'>";
        echo "<p>Hasil konversi suhu $suhuCelsius °C ke $konversi adalah: " . number_format($hasilKonversi, 2) . " $satuan</p>";
        echo "</div>";
    }
    ?>

</body>
</html>
