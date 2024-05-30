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
-- Table structure for table `medical_staff`
--

CREATE TABLE `medical_staff` (
  `id` int(11) NOT NULL,
  `start_date` date DEFAULT curdate(),
  `YOE` int(11) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `medical_staff`
--

INSERT INTO `medical_staff` (`id`, `start_date`, `YOE`, `license_number`, `salary`, `role`) VALUES
(100, '2018-12-20', 6, '100000', 12000000, 'doctor'),
(101, '2018-12-20', 5, '101000', 10000000, 'doctor'),
(102, '2018-11-20', 5, '102000', 10000000, 'doctor'),
(103, '2018-10-21', 4, '103000', 8000000, 'doctor'),
(104, '2018-09-23', 6, '104000', 6000000, 'nurse'),
(105, '2018-08-24', 5, '105000', 5000000, 'nurse'),
(106, '2018-08-13', 2, '106000', 2000000, 'nurse'),
(107, '2018-09-25', 5, '107000', 10000000, 'doctor'),
(108, '2017-09-26', 7, '108000', 14000000, 'doctor'),
(109, '2018-08-27', 5, '109000', 10000000, 'doctor'),
(110, '2018-07-28', 6, '110000', 12000000, 'doctor'),
(111, '2018-08-29', 5, '111000', 10000000, 'doctor'),
(112, '2018-07-30', 5, '112000', 5000000, 'nurse'),
(113, '2017-09-30', 4, '113000', 8000000, 'doctor'),
(114, '2017-08-31', 2, '114000', 2000000, 'nurse'),
(115, '2018-01-31', 6, '115000', 12000000, 'doctor'),
(116, '2018-02-15', 5, '116000', 5000000, 'nurse'),
(128, '2018-05-06', 7, '128000', 7000000, 'nurse'),
(129, '2018-01-02', 6, '129000', 6000000, 'nurse'),
(130, '2017-02-17', 6, '130000', 7000000, 'nurse'),
(131, '2018-11-11', 5, '131000', 5000000, 'nurse'),
(132, '2018-11-11', 6, '132000', 6000000, 'nurse');

--
-- Triggers `medical_staff`
--
DELIMITER $$
CREATE TRIGGER `check_insert_doctor` BEFORE INSERT ON `medical_staff` FOR EACH ROW BEGIN
	IF new.role = 'doctor' AND new.YOE < 3 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Số năm kinh nghiệm tối thiếu của bác sĩ là 3';
    END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `check_salary` BEFORE INSERT ON `medical_staff` FOR EACH ROW BEGIN
    -- Kiểm tra nếu là bác sĩ và có y tá có lương cao hơn
	IF NEW.role = 'doctor' AND EXISTS(SELECT * FROM medical_staff WHERE role = 'nurse' AND salary > NEW.salary) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Lương của bác sĩ không thể thấp hơn lương của y tá.';
    END IF;

    -- Kiểm tra nếu là y tá và có bác sĩ có lương thấp hơn
	IF NEW.role = 'nurse' AND EXISTS(SELECT * FROM medical_staff WHERE role = 'doctor' AND salary < NEW.salary) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Lương của y tá phải thấp hơn lương của bác sĩ.';
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medical_staff`
--
ALTER TABLE `medical_staff`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_staff`
--
ALTER TABLE `medical_staff`
  ADD CONSTRAINT `fk_medical_staff_id` FOREIGN KEY (`id`) REFERENCES `_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
