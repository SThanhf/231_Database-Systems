-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 10:18 PM
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
-- Table structure for table `examination_allergy`
--

CREATE TABLE `examination_allergy` (
  `exam_id` int(11) NOT NULL,
  `allergy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examination_allergy`
--

INSERT INTO `examination_allergy` (`exam_id`, `allergy`) VALUES
(12111, 1),
(12111, 2),
(51211, 3),
(61211, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examination_allergy`
--
ALTER TABLE `examination_allergy`
  ADD PRIMARY KEY (`exam_id`,`allergy`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examination_allergy`
--
ALTER TABLE `examination_allergy`
  ADD CONSTRAINT `fk_patient_allergy_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
