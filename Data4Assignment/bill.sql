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
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL DEFAULT 0,
  `_status` tinyint(1) NOT NULL DEFAULT 0,
  `_timestamp` date NOT NULL DEFAULT curdate(),
  `due_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `total_cost`, `_status`, `_timestamp`, `due_date`) VALUES
(11111, 0, 1, '2018-12-29', '2019-01-03'),
(11211, 0, 1, '2018-12-30', '2019-01-04'),
(11311, 0, 1, '2018-12-31', '2019-01-05'),
(11411, 0, 1, '2019-02-28', '2019-03-05'),
(12111, 0, 1, '2018-12-29', '2019-01-03'),
(12211, 0, 1, '2018-12-30', '2019-01-04'),
(12311, 0, 1, '2018-12-31', '2019-01-05'),
(12411, 0, 1, '2019-02-28', '2019-03-05'),
(21111, 0, 1, '2018-12-29', '2019-01-03'),
(21211, 0, 1, '2018-12-30', '2019-01-04'),
(21311, 0, 1, '2018-12-31', '2019-01-05'),
(31111, 0, 1, '2018-12-29', '2019-01-03'),
(31211, 0, 1, '2018-12-30', '2019-01-04'),
(31311, 0, 1, '2018-12-31', '2019-01-05'),
(31411, 0, 1, '2019-02-28', '2019-03-05'),
(41111, 0, 1, '2018-12-29', '2019-01-03'),
(41211, 0, 1, '2018-12-30', '2019-01-04'),
(41311, 0, 1, '2018-12-31', '2019-01-05'),
(41411, 0, 1, '2019-02-28', '2019-03-05'),
(51111, 0, 1, '2018-12-29', '2019-01-03'),
(51112, 0, 1, '2018-12-29', '2019-01-03'),
(51211, 0, 1, '2018-12-30', '2019-01-04'),
(51311, 0, 1, '2018-12-31', '2019-01-05'),
(51411, 0, 1, '2019-02-28', '2019-03-05'),
(52111, 0, 1, '2018-12-29', '2019-01-03'),
(52211, 0, 1, '2018-12-30', '2019-01-04'),
(52311, 0, 1, '2018-12-31', '2019-01-05'),
(52411, 0, 1, '2019-02-28', '2019-03-05'),
(61111, 0, 1, '2018-12-29', '2019-01-03'),
(61211, 0, 1, '2018-12-30', '2019-01-04'),
(61221, 0, 1, '2018-12-30', '2019-01-04'),
(61311, 0, 1, '2018-12-31', '2019-01-05'),
(61411, 0, 1, '2019-02-28', '2019-03-05'),
(71111, 0, 1, '2018-12-29', '2019-01-03'),
(71121, 0, 1, '2018-12-29', '2019-01-03'),
(71211, 0, 1, '2018-12-30', '2019-01-04'),
(71311, 0, 1, '2018-12-31', '2019-01-05'),
(71411, 0, 1, '2019-02-28', '2019-03-05'),
(81111, 0, 1, '2018-12-29', '2019-01-03'),
(81211, 0, 1, '2018-12-30', '2019-01-04'),
(81311, 0, 1, '2018-12-31', '2019-01-05'),
(82111, 0, 1, '2018-12-29', '2019-01-03'),
(82211, 0, 1, '2018-12-30', '2019-01-04'),
(82311, 0, 1, '2018-12-31', '2019-01-05'),
(82411, 0, 1, '2019-02-28', '2019-03-05');

--
-- Triggers `bill`
--
DELIMITER $$
CREATE TRIGGER `check_payment_deadline` BEFORE INSERT ON `bill` FOR EACH ROW BEGIN
    DECLARE due_date DATE;

    -- Lấy ngày hiện tại
    SET NEW._timestamp = CURDATE();

    -- Tính toán ngày thanh toán cuối cùng (5 ngày kể từ ngày tạo)
    SET due_date = DATE_ADD(NEW._timestamp, INTERVAL 5 DAY);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `due_date_bill` BEFORE INSERT ON `bill` FOR EACH ROW BEGIN
    -- Tính toán ngày thanh toán cuối cùng (5 ngày kể từ ngày tạo)
    SET new.due_date = DATE_ADD(NEW._timestamp, INTERVAL 5 DAY);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82416;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
