-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 10:19 PM
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
-- Table structure for table `clinic_hotline`
--

CREATE TABLE `clinic_hotline` (
  `clinic_id` int(11) NOT NULL,
  `hotline` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_hotline`
--

INSERT INTO `clinic_hotline` (`clinic_id`, `hotline`) VALUES
(1, 1111),
(1, 9999),
(2, 2222),
(3, 3333),
(4, 4444),
(5, 1010),
(5, 5555),
(6, 6666),
(7, 7777),
(8, 5678),
(8, 8888);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_hotline`
--
ALTER TABLE `clinic_hotline`
  ADD PRIMARY KEY (`clinic_id`,`hotline`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinic_hotline`
--
ALTER TABLE `clinic_hotline`
  ADD CONSTRAINT `fk_clinic_hotline_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
