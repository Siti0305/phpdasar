-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 03:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Nim` varchar(19) NOT NULL,
  `Nama` varchar(60) DEFAULT NULL,
  `Id_Prodi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Nim`, `Nama`, `Id_Prodi`) VALUES
('D212111001', 'Aliftia Radianti Taniasari', 110),
('D212111002', 'Cahya Julianti', 110),
('D212111003', 'Dasimah Seftiani', 110),
('D212111004', 'Desi Syifa Fitria', 110),
('D212111005', 'Dewi Yulianti', 110),
('D212111006', 'Gita Septiani', 110),
('D212111007', 'Ikhlas Wandana', 110),
('D212111008', 'Intan Khoirunnisa', 110),
('D212111009', 'Islah Nurhasanah', 110),
('D212111010', 'Kenia Nurazizah', 110),
('D212111011', 'M Rivaldi Hafizd Fathurohman', 110),
('D212111012', 'Puspa Dewi Kusumawati', 110),
('D212111013', 'Renaldi Irawan', 110),
('D212111014', 'Rizaldy Muhamad Sopyan', 110),
('D212111015', 'Rudi Loilatu', 110),
('D212111016', 'Seli Pebriani', 110),
('D212111017', 'Sephia Sumi Jaya Tiningrum', 110),
('D212111018', 'Siti Aminah', 110),
('D212111019', 'Siti Rismawati', 110),
('D212111020', 'Sophia Nurhafshoh Koenady', 110),
('D212111021', 'Triana Siti Aryani', 110),
('D212111022', 'Yunita Riani', 110),
('D212111023', 'Ajeng Aprilyani', 110),
('D212111025', 'Aspiya Huwaida', 110),
('D212111026', 'Aura Maliya', 110),
('D212111028', 'Fanisa Tri Agna Fata', 110),
('D212111029', 'Ineu Rahmawati', 110),
('D212111030', 'Muhammad Reza Andriansyah', 110),
('D212111031', 'Siti Nur Rohimah', 110),
('D212111032', 'Wawan Jefriansyah', 110),
('D212111033', 'Novita Qadariah', 110),
('D212111034', 'Rahmatia', 110),
('D212111035', 'Zaltin', 110);

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `Id_Prodi` int(10) NOT NULL,
  `Prodi` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`Id_Prodi`, `Prodi`) VALUES
(101, 'Kontruksi Bangunan'),
(102, 'Rekam Medik dan Informasi Kesehatan'),
(103, 'Teknik Komputer'),
(104, 'Teknik Informatika'),
(105, 'Mesin Otomotif'),
(106, 'Mekanik Industri Dan Desain'),
(107, 'Akuntansi'),
(108, 'Teknik Mesin'),
(109, 'Teknik Elektronika'),
(110, 'Komputerisasi Akuntansi'),
(111, 'Teknik Kimia'),
(112, 'Teknik Otomasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`Id_Prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
