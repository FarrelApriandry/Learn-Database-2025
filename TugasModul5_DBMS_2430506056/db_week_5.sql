-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 05:08 PM
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
-- Database: `db_week_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_enrollment`
--

CREATE TABLE `tb_enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course` enum('databases','networks','algorithms') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_enrollment`
--

INSERT INTO `tb_enrollment` (`enrollment_id`, `student_id`, `course`) VALUES
(1, 1, 'databases'),
(2, 2, 'networks'),
(3, 3, 'algorithms');

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `student_id` int(11) NOT NULL,
  `name` char(70) NOT NULL,
  `major` enum('TIF','TIK','SI') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`student_id`, `name`, `major`) VALUES
(1, 'Assep', 'TIF'),
(2, 'Rama', 'TIK'),
(3, 'Sita', 'SI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_enrollment`
--
ALTER TABLE `tb_enrollment`
  ADD PRIMARY KEY (`enrollment_id`);

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_enrollment`
--
ALTER TABLE `tb_enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
