-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 08:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal_kuliah_informatika`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `angkatan_id` int(11) DEFAULT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `kelas_id`, `angkatan_id`, `password`) VALUES
(1, 'parjay', '2108561093', 'parthawijaya04@gmail.com', NULL, NULL, '123123'),
(3, 'Geming', '327193', 'parthawijaya05@gmail.com', NULL, NULL, '123123'),
(4, 'John Doe', '1234567890', 'john.doe@example.com', 1, NULL, ''),
(5, 'Jane Smith', '0987654321', 'jane.smith@example.com', 2, NULL, ''),
(6, 'Michael Johnson', '5678901234', 'michael.johnson@example.com', 1, NULL, ''),
(7, 'Emily Davis', '4567890123', 'emily.davis@example.com', 3, NULL, ''),
(8, 'David Wilson', '3456789012', 'david.wilson@example.com', 2, NULL, ''),
(9, 'Sarah Anderson', '2345678901', 'sarah.anderson@example.com', 1, NULL, ''),
(10, 'Robert Martinez', '6543210987', 'robert.martinez@example.com', 3, NULL, ''),
(11, 'Jessica Lee', '5432109876', 'jessica.lee@example.com', 2, NULL, ''),
(12, 'Daniel Taylor', '4321098765', 'daniel.taylor@example.com', 1, NULL, ''),
(13, 'Olivia Brown', '3210987654', 'olivia.brown@example.com', 3, NULL, ''),
(14, 'John Doe', '202110001', 'john.doe@example.com', 1, NULL, ''),
(15, 'Jane Smith', '202110002', 'jane.smith@example.com', 1, NULL, ''),
(16, 'Michael Johnson', '202110003', 'michael.johnson@example.com', 2, NULL, ''),
(17, 'Emily Davis', '202110004', 'emily.davis@example.com', 2, NULL, ''),
(18, 'David Wilson', '202110005', 'david.wilson@example.com', 3, NULL, ''),
(19, 'Sarah Anderson', '202110006', 'sarah.anderson@example.com', 3, NULL, ''),
(20, 'Robert Martinez', '202110007', 'robert.martinez@example.com', 1, NULL, ''),
(21, 'Jessica Taylor', '202110008', 'jessica.taylor@example.com', 1, NULL, ''),
(22, 'Daniel Thomas', '202110009', 'daniel.thomas@example.com', 2, NULL, ''),
(23, 'Olivia Jackson', '202110010', 'olivia.jackson@example.com', 2, NULL, ''),
(24, 'William White', '202110011', 'william.white@example.com', 3, NULL, ''),
(25, 'Sophia Harris', '202110012', 'sophia.harris@example.com', 3, NULL, ''),
(26, 'Joseph Clark', '202110013', 'joseph.clark@example.com', 1, NULL, ''),
(27, 'Emma Lewis', '202110014', 'emma.lewis@example.com', 1, NULL, ''),
(28, 'Alexander Lee', '202110015', 'alexander.lee@example.com', 2, NULL, ''),
(29, 'Madison Walker', '202110016', 'madison.walker@example.com', 2, NULL, ''),
(30, 'James Hall', '202110017', 'james.hall@example.com', 3, NULL, ''),
(31, 'Ava Young', '202110018', 'ava.young@example.com', 3, NULL, ''),
(32, 'John Doe', '202110019', 'john.doe2@example.com', 1, NULL, ''),
(33, 'Jane Smith', '202110020', 'jane.smith2@example.com', 1, NULL, ''),
(34, 'Michael Johnson', '202110021', 'michael.johnson2@example.com', 2, NULL, ''),
(35, 'Emily Davis', '202110022', 'emily.davis2@example.com', 2, NULL, ''),
(36, 'David Wilson', '202110023', 'david.wilson2@example.com', 3, NULL, ''),
(37, 'Sarah Anderson', '202110024', 'sarah.anderson2@example.com', 3, NULL, ''),
(38, 'Robert Martinez', '202110025', 'robert.martinez2@example.com', 1, NULL, ''),
(39, 'Jessica Taylor', '202110026', 'jessica.taylor2@example.com', 1, NULL, ''),
(40, 'Daniel Thomas', '202110027', 'daniel.thomas2@example.com', 2, NULL, ''),
(41, 'Olivia Jackson', '202110028', 'olivia.jackson2@example.com', 2, NULL, ''),
(42, 'William White', '202110029', 'william.white2@example.com', 3, NULL, ''),
(43, 'Sophia Harris', '202110030', 'sophia.harris2@example.com', 3, NULL, ''),
(44, 'Joseph Clark', '202110031', 'joseph.clark2@example.com', 1, NULL, ''),
(45, 'Emma Lewis', '202110032', 'emma.lewis2@example.com', 1, NULL, ''),
(46, 'Alexander Lee', '202110033', 'alexander.lee2@example.com', 2, NULL, ''),
(47, 'Madison Walker', '202110034', 'madison.manson@example.com', 3, NULL, ''),
(48, 'John Doe', '202110001', 'john.doe@example.com', 1, NULL, ''),
(49, 'Jane Smith', '202110002', 'jane.smith@example.com', 1, NULL, ''),
(50, 'Michael Johnson', '202110003', 'michael.johnson@example.com', 2, NULL, ''),
(51, 'Emily Davis', '202110004', 'emily.davis@example.com', 2, NULL, ''),
(52, 'David Wilson', '202110005', 'david.wilson@example.com', 3, NULL, ''),
(53, 'Sarah Anderson', '202110006', 'sarah.anderson@example.com', 3, NULL, ''),
(54, 'Robert Martinez', '202110007', 'robert.martinez@example.com', 1, NULL, ''),
(55, 'Jessica Taylor', '202110008', 'jessica.taylor@example.com', 1, NULL, ''),
(56, 'Daniel Thomas', '202110009', 'daniel.thomas@example.com', 2, NULL, ''),
(57, 'Olivia Jackson', '202110010', 'olivia.jackson@example.com', 2, NULL, ''),
(58, 'William White', '202110011', 'william.white@example.com', 3, NULL, ''),
(59, 'Sophia Harris', '202110012', 'sophia.harris@example.com', 3, NULL, ''),
(60, 'Joseph Clark', '202110013', 'joseph.clark@example.com', 1, NULL, ''),
(61, 'Emma Lewis', '202110014', 'emma.lewis@example.com', 1, NULL, ''),
(62, 'Alexander Lee', '202110015', 'alexander.lee@example.com', 2, NULL, ''),
(63, 'Madison Walker', '202110016', 'madison.walker@example.com', 2, NULL, ''),
(64, 'James Hall', '202110017', 'james.hall@example.com', 3, NULL, ''),
(65, 'Ava Young', '202110018', 'ava.young@example.com', 3, NULL, ''),
(66, 'John Doe', '202110019', 'john.doe2@example.com', 1, NULL, ''),
(67, 'Jane Smith', '202110020', 'jane.smith2@example.com', 1, NULL, ''),
(68, 'Michael Johnson', '202110021', 'michael.johnson2@example.com', 2, NULL, ''),
(69, 'Emily Davis', '202110022', 'emily.davis2@example.com', 2, NULL, ''),
(70, 'David Wilson', '202110023', 'david.wilson2@example.com', 3, NULL, ''),
(71, 'Sarah Anderson', '202110024', 'sarah.anderson2@example.com', 3, NULL, ''),
(72, 'Robert Martinez', '202110025', 'robert.martinez2@example.com', 1, NULL, ''),
(73, 'Jessica Taylor', '202110026', 'jessica.taylor2@example.com', 1, NULL, ''),
(74, 'Daniel Thomas', '202110027', 'daniel.thomas2@example.com', 2, NULL, ''),
(75, 'Olivia Jackson', '202110028', 'olivia.jackson2@example.com', 2, NULL, ''),
(76, 'William White', '202110029', 'william.white2@example.com', 3, NULL, ''),
(77, 'Sophia Harris', '202110030', 'sophia.harris2@example.com', 3, NULL, ''),
(78, 'Joseph Clark', '202110031', 'joseph.clark2@example.com', 1, NULL, ''),
(79, 'Emma Lewis', '202110032', 'emma.lewis2@example.com', 1, NULL, ''),
(80, 'Alexander Lee', '202110033', 'alexander.lee2@example.com', 2, NULL, ''),
(81, 'Madison Walker', '202110034', 'madison.masion@example.com', 3, NULL, ''),
(82, 'John Doe', '202110001', 'john.doe@example.com', 1, NULL, ''),
(83, 'Jane Smith', '202110002', 'jane.smith@example.com', 1, NULL, ''),
(84, 'Michael Johnson', '202110003', 'michael.johnson@example.com', 2, NULL, ''),
(85, 'Emily Davis', '202110004', 'emily.davis@example.com', 2, NULL, ''),
(86, 'David Wilson', '202110005', 'david.wilson@example.com', 3, NULL, ''),
(87, 'Sarah Anderson', '202110006', 'sarah.anderson@example.com', 3, NULL, ''),
(88, 'Robert Martinez', '202110007', 'robert.martinez@example.com', 1, NULL, ''),
(89, 'Jessica Taylor', '202110008', 'jessica.taylor@example.com', 1, NULL, ''),
(90, 'Daniel Thomas', '202110009', 'daniel.thomas@example.com', 2, NULL, ''),
(91, 'Olivia Jackson', '202110010', 'olivia.jackson@example.com', 2, NULL, ''),
(92, 'William White', '202110011', 'william.white@example.com', 3, NULL, ''),
(93, 'Sophia Harris', '202110012', 'sophia.harris@example.com', 3, NULL, ''),
(94, 'Joseph Clark', '202110013', 'joseph.clark@example.com', 1, NULL, ''),
(95, 'Emma Lewis', '202110014', 'emma.lewis@example.com', 1, NULL, ''),
(96, 'Alexander Lee', '202110015', 'alexander.lee@example.com', 2, NULL, ''),
(97, 'Madison Walker', '202110016', 'madison.walker@example.com', 2, NULL, ''),
(98, 'James Hall', '202110017', 'james.hall@example.com', 3, NULL, ''),
(99, 'Ava Young', '202110018', 'ava.young@example.com', 3, NULL, ''),
(100, 'John Doe', '202110019', 'john.doe2@example.com', 1, NULL, ''),
(101, 'Jane Smith', '202110020', 'jane.smith2@example.com', 1, NULL, ''),
(102, 'Michael Johnson', '202110021', 'michael.johnson2@example.com', 2, NULL, ''),
(103, 'Emily Davis', '202110022', 'emily.davis2@example.com', 2, NULL, ''),
(104, 'David Wilson', '202110023', 'david.wilson2@example.com', 3, NULL, ''),
(105, 'Sarah Anderson', '202110024', 'sarah.anderson2@example.com', 3, NULL, ''),
(106, 'Robert Martinez', '202110025', 'robert.martinez2@example.com', 1, NULL, ''),
(107, 'Jessica Taylor', '202110026', 'jessica.taylor2@example.com', 1, NULL, ''),
(108, 'Daniel Thomas', '202110027', 'daniel.thomas2@example.com', 2, NULL, ''),
(109, 'Olivia Jackson', '202110028', 'olivia.jackson2@example.com', 2, NULL, ''),
(110, 'William White', '202110029', 'william.white2@example.com', 3, NULL, ''),
(111, 'Sophia Harris', '202110030', 'sophia.harris2@example.com', 3, NULL, ''),
(112, 'Joseph Clark', '202110031', 'joseph.clark2@example.com', 1, NULL, ''),
(113, 'Emma Lewis', '202110032', 'emma.lewis2@example.com', 1, NULL, ''),
(114, 'Alexander Lee', '202110033', 'alexander.lee2@example.com', 2, NULL, ''),
(115, 'Madison Walker', '202110034', 'madison.masion@example.com', 3, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `angkatan_id` (`angkatan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `gedung` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`angkatan_id`) REFERENCES `angkatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
