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
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `_name` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `_desc` varchar(50) DEFAULT NULL
) ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `_name`, `cost`, `_desc`) VALUES
(1, 'Siêu âm', 100000, 'Phát hiện bệnh từ bên trong cơ thể'),
(2, 'Nội soi Dạ dày', 2000000, 'Phát hiện bệnh từ bên trong dạ dày, có gây mê'),
(3, 'Nội soi Đại tràng', 2300000, 'Phát hiện bệnh từ bên trong đại tràng, có gây mê'),
(4, 'Đo điện tim', 150000, 'Đo số nhịp tim đập trên một đơn vị thời gian'),
(5, 'X quang Phổi', 200000, 'Chụp vùng phổi để phát hiện các bệnh liên quan'),
(6, 'Đo huyết áp tứ chi', 250000, 'Đo huyết áp của các cơ của tứ chi'),
(7, 'Đo cận-viễn-loạn', 100000, 'Đo mắt và phát hiện các bệnh về mắt'),
(8, 'Đo điện não', 400000, 'Đo xung điện trên vùng não bộ'),
(9, 'Đo xơ vữa động mạch', 350000, 'Đo tình trạng mảng xơ vữa trong thành động mạch'),
(10, 'Khám tổng quát', 210000, 'Khám tất cả các chức năng cơ bản của cơ thể');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
