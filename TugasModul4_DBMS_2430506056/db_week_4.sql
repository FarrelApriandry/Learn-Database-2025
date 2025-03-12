-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 07:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_week_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee`
--

CREATE TABLE `tb_employee` (
  `id_employee` int(11) NOT NULL,
  `name_employee` varchar(100) DEFAULT NULL,
  `division_employee` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_employee`
--

INSERT INTO `tb_employee` (`id_employee`, `name_employee`, `division_employee`, `salary`) VALUES
(1, 'Andi', 'Manager', 8000),
(2, 'Budi', 'Staff', 4000),
(3, 'Citra', 'Staff', 3500),
(4, 'Dewi', 'Manager', 8500),
(5, 'Eka', 'Supervisor', 6000),
(6, 'Rahmad', 'Staff', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_employee`
--
ALTER TABLE `tb_employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_employee`
--
ALTER TABLE `tb_employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
