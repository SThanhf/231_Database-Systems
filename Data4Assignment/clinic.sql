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
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(11) NOT NULL,
  `_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `_name`, `address`, `email`, `_desc`) VALUES
(1, 'Đa khoa', '1 Bis, Hùng Vương', 'CL001@yahoo.com', 'Tổng quát'),
(2, 'Khoa Ngoại tổng quát', '2 Bis, Trưng Trắc', 'CL002@yahoo.com', 'Ngoại tổng quát'),
(3, 'Khoa nội tổng quát', '3 Bis, Đinh Bộ Lĩnh', 'CL003@yahoo.com', 'Khám nội tổng quát'),
(4, 'Khoa tim mạch', '4 Bis, Lý Thường Kiệt', 'CL004@yahoo.com', 'Tim mạch'),
(5, 'Khoa nhi', '5 Bis, Trần Hưng Đạo', 'CL005@yahoo.com', 'Khám nhi'),
(6, 'Khoa hô hấp', '6 Bis, Trần Nguyễn Hãn', 'CL006@yahoo.com', 'Các bệnh về đường hô hấp'),
(7, 'Khoa ung bứu', '7 Bis, Nguyễn An Ninh', 'CL007@yahoo.com', 'Các bệnh liên quan về bứu'),
(8, 'Khoa Y học cổ truyền', '8 Bis, Lê Lợi', 'CL008@yahoo.com', 'Y học cổ truyền');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `_name` (`_name`),
  ADD UNIQUE KEY `address` (`address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
