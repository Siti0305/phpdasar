-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tedc`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `study_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`nim`, `nama`, `study_program_id`) VALUES
('D212111001', 'Aliftia Radianti Taniasari', 11),
('D212111002', 'Cahya Julianti', 11),
('D212111003', 'Dasimah Seftiani', 11),
('D212111004', 'Desi Syifa Fitria', 11),
('D212111005', 'Dewi Yulianti', 11),
('D212111006', 'Gita Septiani', 11),
('D212111007', 'Ikhlas Wandana', 11),
('D212111008', 'Intan Khoirunnisa', 11),
('D212111009', 'Islah Nurhasanah', 11),
('D212111010', 'Kenia Nurazizah', 11),
('D212111011', 'M Rivaldi Hafizd Fathurohman', 11),
('D212111012', 'Puspa Dewi Kusumawati', 11),
('D212111013', 'Renaldi Irawan', 11),
('D212111014', 'Rizaldy Muhamad Sopyan', 11),
('D212111015', 'Rudi Loilatu', 11),
('D212111016', 'Seli Pebriani', 11),
('D212111017', 'Sephia Sumi Jaya Tiningrum', 11),
('D212111018', 'Siti Aminah', 11),
('D212111019', 'Siti Rismawati', 11),
('D212111020', 'Sophia Nurhafshoh Koenady', 11),
('D212111021', 'Triana Siti Aryani', 11),
('D212111022', 'Yunita Riani', 11),
('D212111023', 'Ajeng Aprilyani', 11),
('D212111025', 'Aspiya Huwaida', 11),
('D212111026', 'Aura Maliya', 11),
('D212111028', 'Fanisa Tri Agna Fata', 11),
('D212111029', 'Ineu Rahmawati', 11),
('D212111030', 'Muhammad Reza Andriansyah', 11),
('D212111031', 'Siti Nur Rohimah', 11),
('D212111032', 'Wawan Jefriansyah', 11),
('D212111033', 'Novita Qadariah', 11),
('D212111034', 'Rahmatia', 11),
('D212111035', 'Zaltin', 11);

-- --------------------------------------------------------

--
-- Table structure for table `study_program`
--

CREATE TABLE `study_program` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_program`
--

INSERT INTO `study_program` (`id`, `name`) VALUES
(1, 'Komputerisasi Akuntansi'),
(2, 'Kontruksi Bangunan'),
(3, 'Rekam Medik dan Informasi Kesehatan'),
(4, 'Teknik Komputer'),
(5, 'Teknik Informatika'),
(6, 'Mesin Otomotif'),
(7, 'Mekanik Industri Dan Desain'),
(8, 'Akuntansi'),
(9, 'Teknik Mesin'),
(10, 'Teknik Elektronika'),
(11, 'Teknik Kimia'),
(12, 'Komputerisasi Akuntansi'),
(13, 'Teknik Otomasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `study_program`
--
ALTER TABLE `study_program`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `study_program`
--
ALTER TABLE `study_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
