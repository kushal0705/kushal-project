-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 09:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kushalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(7) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_description`) VALUES
(1, 'Bachelors in Computer Science(B.Sc.CS)', 'B.Sc in Computer Science is a three-year undergraduate degree course that deals with the principles and applications of the computer. The main agenda of the degree course is the technical implementation of computers and computer systems. Students in the three-year degree course undertake various term papers, practical sessions and learning theoretical foundations of the computer.'),
(2, 'Bachelor Of Information Tecnology (B.SC IT)', 'This degree is primarily focused on subjects such as software, databases, and networking. The BSc degree in IT is awarded for completing a programme of study in the field of software development, software testing, software engineering, web design, databases, programming, computer networking and computer systems.'),
(3, 'Bachelor OF Commerce (B.COM)', 'A Bachelor of Commerce, abbreviated as B.Com is an undergraduate degree in commerce and related subjects. The course is designed to provide students with a wide range of managerial skills and understanding in streams like finance, accounting, taxation and management'),
(4, 'Bachelors in Arts (B.A)', 'The Bachelor of Arts (B.A.) is the most common undergraduate degree offered by universities and colleges worldwide. B.A. degrees are mainly awarded to students following a programme in the Liberal Arts (e.g. Humanities, Social Sciences).');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(7) NOT NULL,
  `student_username` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `student_description` text DEFAULT NULL,
  `student_photo` longblob DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_username`, `student_email`, `student_password`, `student_description`, `student_photo`, `timestamp`) VALUES
(1, 'Kushal07', 'kushal07@gmail.com', '$2y$10$fjRCB2Nbb0BttrxUgdMzxuNjx9GCqXo4TEIlJYMK1.iug.nCQKfTm', NULL, NULL, '2021-01-31 12:07:35');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
