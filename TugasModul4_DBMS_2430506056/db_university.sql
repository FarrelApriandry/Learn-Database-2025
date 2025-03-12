-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 07:33 PM
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
-- Database: `db_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` enum('Coding','Basic_Science','Nasional') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`) VALUES
(1, 'Coding'),
(2, 'Basic_Science'),
(3, 'Nasional');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `department` enum('Elektro','Mekatro','Teknologi Informasi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `department`) VALUES
(1, 'Adit', 'Elektro'),
(2, 'Budi', 'Elektro'),
(3, 'Cindy', 'Elektro'),
(4, 'Dewi', 'Mekatro'),
(5, 'Eka', 'Mekatro'),
(6, 'Fajar', 'Mekatro'),
(7, 'Gilang', 'Mekatro'),
(8, 'Hani', 'Mekatro'),
(9, 'Indra', 'Teknologi Informasi'),
(10, 'Joko', 'Teknologi Informasi'),
(11, 'Kiki', 'Teknologi Informasi'),
(12, 'Lina', 'Teknologi Informasi'),
(13, 'Mila', 'Teknologi Informasi'),
(14, 'Nando', 'Teknologi Informasi'),
(15, 'Omar', 'Teknologi Informasi'),
(16, 'Putri', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `grade` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`id`, `student_id`, `course_id`, `grade`) VALUES
(1, 1, 1, 85.50),
(2, 1, 2, 90.00),
(3, 2, 1, 78.00),
(4, 3, 3, 88.50),
(5, 4, 2, 95.00),
(6, 5, 1, 85.00),
(7, 6, 3, 79.00),
(8, 7, 1, 91.00),
(9, 8, 2, 86.00),
(10, 9, 1, 77.50),
(11, 10, 2, 93.00),
(12, 11, 1, 85.00),
(13, 12, 3, 78.50),
(14, 13, 2, 90.00),
(15, 14, 3, 92.00),
(16, 15, 1, 88.00),
(17, 16, 2, 87.50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
