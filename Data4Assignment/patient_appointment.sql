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
-- Table structure for table `patient_appointment`
--

CREATE TABLE `patient_appointment` (
  `patient_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `_status` varchar(50) DEFAULT 'UNCONFIRM'
) ;

--
-- Dumping data for table `patient_appointment`
--

INSERT INTO `patient_appointment` (`patient_id`, `app_id`, `_status`) VALUES
(117, 111, 'UNCONFIRM'),
(118, 111, 'CONFIRM'),
(117, 112, 'UNCONFIRM'),
(127, 112, 'CONFIRM'),
(117, 113, 'UNCONFIRM'),
(118, 113, 'CONFIRM'),
(117, 114, 'UNCONFIRM'),
(119, 114, 'CONFIRM'),
(123, 121, 'CONFIRM'),
(124, 122, 'CONFIRM'),
(125, 123, 'CONFIRM'),
(118, 124, 'CONFIRM'),
(122, 211, 'CONFIRM'),
(119, 212, 'CONFIRM'),
(121, 213, 'CONFIRM'),
(124, 214, 'CONFIRM'),
(122, 311, 'CONFIRM'),
(122, 312, 'CONFIRM'),
(119, 313, 'CONFIRM'),
(118, 314, 'CONFIRM'),
(117, 411, 'UNCONFIRM'),
(124, 411, 'CONFIRM'),
(127, 412, 'CONFIRM'),
(120, 413, 'CONFIRM'),
(120, 414, 'CONFIRM'),
(119, 511, 'CONFIRM'),
(121, 512, 'CONFIRM'),
(118, 513, 'CONFIRM'),
(120, 514, 'CONFIRM'),
(122, 521, 'CONFIRM'),
(127, 522, 'CONFIRM'),
(125, 523, 'CONFIRM'),
(123, 524, 'CONFIRM'),
(124, 611, 'CONFIRM'),
(123, 612, 'CONFIRM'),
(121, 612, 'CONFIRM'),
(120, 613, 'CONFIRM'),
(125, 614, 'CONFIRM'),
(124, 711, 'CONFIRM'),
(123, 711, 'CONFIRM'),
(119, 712, 'CONFIRM'),
(120, 713, 'CONFIRM'),
(125, 714, 'CONFIRM'),
(123, 811, 'CONFIRM'),
(122, 812, 'CONFIRM'),
(121, 813, 'CONFIRM'),
(121, 821, 'CONFIRM'),
(127, 822, 'CONFIRM'),
(124, 823, 'CONFIRM'),
(127, 824, 'CONFIRM');

--
-- Triggers `patient_appointment`
--
DELIMITER $$
CREATE TRIGGER `check_appoint_patient` BEFORE INSERT ON `patient_appointment` FOR EACH ROW BEGIN
	declare timesUncomfirm INT;
	select count(*) INTO timesUncomfirm 
    from patient_appointment
    where patient_id = new.patient_id AND _status = 'UNCONFIRM';
    if timesUncomfirm >= 5 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Không thể đăng ký cuộc hẹn vì đã lỡ hẹn quá nhiều';
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  ADD PRIMARY KEY (`patient_id`,`app_id`),
  ADD KEY `fk_patient_appointment_app_id` (`app_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  ADD CONSTRAINT `fk_patient_appointment_app_id` FOREIGN KEY (`app_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_patient_appointment_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
