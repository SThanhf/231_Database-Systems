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
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `exam_id` int(11) NOT NULL,
  `serial_num` varchar(50) NOT NULL,
  `_desc` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`exam_id`, `serial_num`, `_desc`, `quantity`) VALUES
(11111, '13', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên', 2),
(11311, '04', 'chai, mỗi lần ho uống 1 nắp', 1),
(11411, '14', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên', 6),
(12111, '20', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên', 2),
(12211, '06', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(12311, '09', 'chai, ngày nhỏ 3 lần', 1),
(12411, '05', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 2),
(21111, '25', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên', 2),
(21311, '23', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên', 4),
(31111, '15', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 10),
(31211, '07', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 20),
(41111, '02', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 2),
(41211, '15', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 8),
(41311, '01', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 2),
(41411, '10', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(51111, '13', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 2),
(51112, '14', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 12),
(51211, '20', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(52111, '11', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(52211, '17', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(61211, '20', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 4),
(61221, '18', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 16),
(61411, '11', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 8),
(71111, '17', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 6),
(71311, '19', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 18),
(71411, '19', 'vỉ 6 viên, ngày 2 lần, mỗi lần 2 viên ', 14),
(81111, '21', 'gói 2 lạng, mỗi buổi sáng pha 1 tách', 5),
(81211, '21', 'gói 2 lạng, mỗi buổi sáng pha 1 tách', 7),
(81311, '03', 'lọ nhiều viên, ngày 2 lần, mỗi lần 1 viên', 1),
(82311, '22', 'bịch 1kg, xắt nhỏ nấu uống', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`exam_id`,`serial_num`),
  ADD KEY `fk_prescription_serial_num` (`serial_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `fk_prescription_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_prescription_serial_num` FOREIGN KEY (`serial_num`) REFERENCES `medicine` (`serial_num`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
