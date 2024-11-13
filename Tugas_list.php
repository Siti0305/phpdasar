<?php

$Presensi = [
    [1, "D212111001", "Aliftia Radianti Taniasari"],
    [2, "D212111002", "Cahya Julianti"],
    [3, "D212111003", "Dasimah Seftiani"],
    [4, "D212111004", "Desi Syifa Fitria"],
    [5, "D212111005", "Dewi Yulianti"],
    [6, "D212111006", "Gita Septiani"],
    [7, "D212111007", "Ikhlas Wandana"],
    [8, "D212111008", "Intan Khoirunnisa"],
    [9, "D212111009", "Islah Nurhasanah"],
    [10, "D212111010", "Kenia Nurazizah"],
    [11, "D212111011", "Muhammad Rivaldi Hafidz Fathurahman"],
    [12, "D212111012", "Puspa Dewi Kusumawati"],
    [13, "D212111013", "Renaldi Irawan"],
    [14, "D212111014", "Rizaldy Muhamad Sopyan"],
    [15, "D212111015", "Rudi Loilatu"],
    [16, "D212111016", "Seli Pebriani"],
    [17, "D212111017", "Sephia Sumi Jaya Tiningrum"],
    [18, "D212111018", "Siti Aminah"],
    [19, "D212111019", "Siti Rismawati"],
    [20, "D212111020", "Sophia Nur Khafsoh"],
    [21, "D212111021", "Triana Siti Aryani"],
    [22, "D212111022", "Yunita Riani"],
    [23, "D212111023", "Ajeng Aprilyani"],
    [24, "D212111025", "Aspiya Huwaida"],
    [25, "D212111026", "Aura Maliya"],
    [26, "D212111028", "Fanisa Tri Agna Fata"],
    [27, "D212111029", "Ineu Rahmawati"],
    [28, "D212111030", "Muhammad Reza Ardiansyah"],
    [29, "D212111031", "Siti Nur Rohimah"],
    [30, "D212111032", "Wawan Jefriansyah"],
    [31, "D212111033", "Novita Qadariah"],
    [32, "D212111034", "Rahmatia"],
    [33, "D212111035", "Zaltin"],

];

echo "<table border='1' cellpadding='5' cellspacing='0'>";
echo "<tr>
        <th>NO</th>
        <th>NIM</th>
        <th>NAMA</th>
        </tr>";

foreach ($Presensi as $mhs) {
    echo "<tr>";
    echo "<td>" . $mhs[0] . "</td>";
    echo "<td>" . $mhs[1] . "</td>";
    echo "<td>" . $mhs[2] . "</td>";
    echo "</tr>";
}

echo "</table>";
?>