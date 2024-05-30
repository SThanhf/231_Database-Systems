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
-- Table structure for table `medicine_in_clinic`
--

CREATE TABLE `medicine_in_clinic` (
  `clinic_id` int(11) NOT NULL,
  `serial_num` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ;

--
-- Dumping data for table `medicine_in_clinic`
--

INSERT INTO `medicine_in_clinic` (`clinic_id`, `serial_num`, `quantity`) VALUES
(1, '01', 200),
(1, '04', 200),
(1, '05', 100),
(1, '06', 200),
(1, '07', 50),
(1, '08', 300),
(1, '09', 250),
(1, '11', 100),
(1, '12', 200),
(1, '13', 200),
(1, '14', 300),
(1, '20', 200),
(2, '13', 400),
(2, '23', 500),
(2, '24', 300),
(2, '25', 80),
(3, '01', 300),
(3, '02', 200),
(3, '04', 200),
(3, '06', 100),
(3, '07', 60),
(3, '11', 100),
(3, '12', 300),
(3, '15', 200),
(3, '16', 100),
(4, '01', 500),
(4, '02', 150),
(4, '10', 200),
(4, '15', 500),
(5, '11', 100),
(5, '12', 150),
(5, '13', 250),
(5, '14', 500),
(5, '16', 120),
(5, '17', 100),
(5, '20', 200),
(6, '01', 400),
(6, '11', 100),
(6, '17', 300),
(6, '18', 300),
(6, '20', 300),
(7, '17', 400),
(7, '19', 200),
(8, '03', 400),
(8, '21', 500),
(8, '22', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicine_in_clinic`
--
ALTER TABLE `medicine_in_clinic`
  ADD PRIMARY KEY (`clinic_id`,`serial_num`),
  ADD KEY `fk_medicine_in_clinic_serial_num` (`serial_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine_in_clinic`
--
ALTER TABLE `medicine_in_clinic`
  ADD CONSTRAINT `fk_medicine_in_clinic_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_medicine_in_clinic_serial_num` FOREIGN KEY (`serial_num`) REFERENCES `medicine` (`serial_num`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
