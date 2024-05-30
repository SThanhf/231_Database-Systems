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
-- Table structure for table `work_at`
--

CREATE TABLE `work_at` (
  `ms_id` int(11) NOT NULL,
  `room_num` int(11) DEFAULT NULL,
  `clinic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_at`
--

INSERT INTO `work_at` (`ms_id`, `room_num`, `clinic_id`) VALUES
(100, 101, 1),
(128, 101, 1),
(113, 102, 1),
(116, 102, 1),
(111, 201, 2),
(131, 201, 2),
(106, 301, 3),
(110, 301, 3),
(109, 401, 4),
(130, 401, 4),
(104, 501, 5),
(107, 501, 5),
(108, 502, 5),
(132, 502, 5),
(103, 601, 6),
(105, 601, 6),
(102, 701, 7),
(112, 701, 7),
(101, 801, 8),
(129, 801, 8),
(114, 802, 8),
(115, 802, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `work_at`
--
ALTER TABLE `work_at`
  ADD PRIMARY KEY (`ms_id`),
  ADD KEY `fk_work_at_room_num_clinic_id` (`room_num`,`clinic_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `work_at`
--
ALTER TABLE `work_at`
  ADD CONSTRAINT `fk_work_at_ms_id` FOREIGN KEY (`ms_id`) REFERENCES `medical_staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_work_at_room_num_clinic_id` FOREIGN KEY (`room_num`,`clinic_id`) REFERENCES `room` (`num`, `clinic_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
