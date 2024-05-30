-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 10:17 PM
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
-- Database: `clinicsystemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `work_with`
--

CREATE TABLE `work_with` (
  `nurse_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_with`
--

INSERT INTO `work_with` (`nurse_id`, `doctor_id`) VALUES
(128, 100),
(129, 101),
(112, 102),
(105, 103),
(104, 107),
(132, 108),
(130, 109),
(106, 110),
(131, 111),
(116, 113),
(114, 115);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `work_with`
--
ALTER TABLE `work_with`
  ADD PRIMARY KEY (`nurse_id`),
  ADD KEY `fk_work_with_doctoc_id` (`doctor_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `work_with`
--
ALTER TABLE `work_with`
  ADD CONSTRAINT `fk_work_with_doctoc_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_work_with_nurse_id` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
