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
-- Table structure for table `clinic_worktime`
--

CREATE TABLE `clinic_worktime` (
  `clinic_id` int(11) NOT NULL,
  `weekdays` varchar(15) NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL
) ;

--
-- Dumping data for table `clinic_worktime`
--

INSERT INTO `clinic_worktime` (`clinic_id`, `weekdays`, `open_time`, `close_time`) VALUES
(1, 'Cả tuần', '08:00:00', '17:00:00'),
(2, 'Thứ 2, Thứ 4', '08:00:00', '17:00:00'),
(3, 'Thứ 3, Thứ 5', '08:00:00', '17:00:00'),
(4, 'Cả tuần', '08:00:00', '17:00:00'),
(5, 'Thứ 2, Thứ 3', '08:00:00', '17:00:00'),
(6, 'Cả tuần', '08:00:00', '17:00:00'),
(7, 'Trừ Chủ nhật', '08:00:00', '17:00:00'),
(8, 'Thứ 2, Thứ 6', '08:00:00', '11:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_worktime`
--
ALTER TABLE `clinic_worktime`
  ADD PRIMARY KEY (`clinic_id`,`weekdays`,`open_time`,`close_time`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinic_worktime`
--
ALTER TABLE `clinic_worktime`
  ADD CONSTRAINT `fk_clinic_worktime_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
