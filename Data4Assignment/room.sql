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
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `num` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `_name` varchar(50) NOT NULL,
  `_desc` varchar(200) DEFAULT NULL,
  `_status` varchar(50) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`num`, `clinic_id`, `_name`, `_desc`, `_status`, `doctor_id`) VALUES
(101, 1, 'ĐK01', 'Phòng khám Đa khoa 1', 'HOẠT ĐỘNG', 100),
(102, 1, 'ĐK02', 'Phòng khám Đa khoa 2', 'HOẠT ĐỘNG', 113),
(201, 2, 'NgTQ01', 'Phòng khám Ngoại tổng quát 1', 'HOẠT ĐỘNG', 111),
(301, 3, 'NTQ01', 'Phòng khám Nội tổng quát 1', 'HOẠT ĐỘNG', 110),
(401, 4, 'TM01', 'Phòng khám Tim mạch 1', 'HOẠT ĐỘNG', 109),
(501, 5, 'KN01', 'Phòng khám Khoa nhi 1', 'HOẠT ĐỘNG', 108),
(502, 5, 'KN02', 'Phòng khám Khoa nhi 2', 'HOẠT ĐỘNG', 107),
(601, 6, 'HH01', 'Phòng khám Hô hấp 1', 'HOẠT ĐỘNG', 103),
(701, 7, 'UB01', 'Phòng khám Ung bướu 1', 'HOẠT ĐỘNG', 102),
(801, 8, 'YCT01', 'Phòng khám Y học cổ truyền 1', 'HOẠT ĐỘNG', 101),
(802, 8, 'YCT02', 'Phòng khám Y học cổ truyền 2', 'HOẠT ĐỘNG', 115);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`num`,`clinic_id`),
  ADD KEY `fk_room_doctor_id` (`doctor_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
