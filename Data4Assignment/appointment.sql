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
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `_time` time NOT NULL,
  `_end_time` time NOT NULL,
  `_date` date NOT NULL,
  `cur_people` int(11) NOT NULL DEFAULT 0,
  `max_people` int(11) NOT NULL,
  `_status` int(11) NOT NULL,
  `clinic_id` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `_time`, `_end_time`, `_date`, `cur_people`, `max_people`, `_status`, `clinic_id`) VALUES
(111, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 1),
(112, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 1),
(113, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 1),
(114, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 1),
(121, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 1),
(122, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 1),
(123, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 1),
(124, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 1),
(211, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 2),
(212, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 2),
(213, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 2),
(214, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 2),
(311, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 3),
(312, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 3),
(313, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 3),
(314, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 3),
(411, '08:00:00', '11:30:00', '2018-12-29', 0, 3, 0, 4),
(412, '08:00:00', '11:30:00', '2018-12-30', 0, 3, 0, 4),
(413, '08:00:00', '11:30:00', '2018-12-31', 0, 3, 0, 4),
(414, '08:00:00', '11:30:00', '2019-02-28', 0, 3, 0, 4),
(511, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 5),
(512, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 5),
(513, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 5),
(514, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 5),
(521, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 5),
(522, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 5),
(523, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 5),
(524, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 5),
(611, '08:00:00', '11:30:00', '2018-12-29', 0, 4, 0, 6),
(612, '08:00:00', '11:30:00', '2018-12-30', 0, 4, 0, 6),
(613, '08:00:00', '11:30:00', '2018-12-31', 0, 4, 0, 6),
(614, '08:00:00', '11:30:00', '2019-02-28', 0, 4, 0, 6),
(711, '08:00:00', '11:30:00', '2018-12-29', 0, 2, 0, 7),
(712, '08:00:00', '11:30:00', '2018-12-30', 0, 2, 0, 7),
(713, '08:00:00', '11:30:00', '2018-12-31', 0, 2, 0, 7),
(714, '08:00:00', '11:30:00', '2019-02-28', 0, 2, 0, 7),
(811, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 8),
(812, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 8),
(813, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 8),
(814, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 8),
(821, '08:00:00', '11:30:00', '2018-12-29', 0, 5, 0, 8),
(822, '08:00:00', '11:30:00', '2018-12-30', 0, 5, 0, 8),
(823, '08:00:00', '11:30:00', '2018-12-31', 0, 5, 0, 8),
(824, '08:00:00', '11:30:00', '2019-02-28', 0, 5, 0, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_appointment_clinic_id` (`clinic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `fk_appointment_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
