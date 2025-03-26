-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 06:45 PM
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
-- Database: `db_week_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_grades`
--

CREATE TABLE `tb_grades` (
  `student_id` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_grades`
--

INSERT INTO `tb_grades` (`student_id`, `subject`, `grade`) VALUES
(1, 'Matematika', 85),
(1, 'Fisika', 90),
(2, 'Matematika', 78),
(2, 'Fisika', 88),
(3, 'Matematika', 92),
(3, 'Fisika', 95),
(4, 'Matematika', 80),
(4, 'Fisika', 85),
(5, 'Matematika', 89),
(5, 'Fisika', 91);

-- --------------------------------------------------------

--
-- Table structure for table `tb_students`
--

CREATE TABLE `tb_students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_students`
--

INSERT INTO `tb_students` (`student_id`, `name`, `age`) VALUES
(1, 'Andi', 20),
(2, 'Budi', 21),
(3, 'Citra', 22),
(4, 'Dewi', 23),
(5, 'Eka', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_grades`
--
ALTER TABLE `tb_grades`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_students`
--
ALTER TABLE `tb_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_grades`
--
ALTER TABLE `tb_grades`
  ADD CONSTRAINT `tb_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tb_students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
