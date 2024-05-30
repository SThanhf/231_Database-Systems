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
-- Table structure for table `_user`
--

CREATE TABLE `_user` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `minit` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL,
  `_password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `_user`
--

INSERT INTO `_user` (`id`, `fname`, `minit`, `lname`, `gender`, `birthdate`, `addr`, `email`, `phone_num`, `is_active`, `username`, `_password`, `type`) VALUES
(100, 'Nguyễn', 'Văn', 'A', 'male', '1988-12-01', '8 Võ Văn Ngân', 'nguyenvanA@yahoo.com', '123123', 1, 'nguyenvanA', 'nguyenvanA123', 'staff'),
(101, 'Nguyễn', 'Văn', 'B', 'male', '1988-10-02', '9 Nguyễn Văn Nguyễn', 'nguyenvanB@yahoo.com', '124124', 1, 'nguyenvanB', 'nguyenvanB124', 'staff'),
(102, 'Mai', 'Chí', 'E', 'male', '1987-02-19', '52 Nguyễn Xí', 'maichiE@yahoo.com', '128128', 1, 'maichiE', 'maichiE128', 'staff'),
(103, 'Võ', 'Hồng', 'C', 'female', '1980-10-15', '12 Nguyễn Chí Thanh', 'vohongC@yahoo.com', '125125', 1, 'vohongC', 'vohongC125', 'staff'),
(104, 'Mai', 'Hồng', 'D', 'female', '1981-02-18', '17 Nguyễn Trãi', 'maihongD@yahoo.com', '126126', 1, 'maihongD', 'maihongD126', 'staff'),
(105, 'Mai', 'Hồng', 'F', 'female', '1988-01-24', '17 Nguyễn Trãi', 'maihongF@yahoo.com', '127127', 1, 'maihongF', 'maihongF127', 'staff'),
(106, 'Phạm', 'Hồng', 'G', 'female', '1990-03-10', '14 Nguyễn Hữu Cảnh', 'phamhongG@yahoo.com', '129129', 1, 'phamhongG', 'phamhongG129', 'staff'),
(107, 'Trương', 'Hữu', 'H', 'male', '1982-04-22', '54 Nguyễn Bính', 'truonghuuH@yahoo.com', '130130', 1, 'truonghuuH', 'truonghuuH130', 'staff'),
(108, 'Đào', 'Duy', 'K', 'male', '1997-05-01', '14 Nguyễn Lữ', 'daoduyK@yahoo.com', '131131', 1, 'daoduyK', 'daoduyK131', 'staff'),
(109, 'Đỗ', 'Duy', 'L', 'male', '1992-06-01', '35 Nguyễn Hợi', 'doduyL@yahoo.com', '132132', 1, 'doduyL', 'doduyL132', 'staff'),
(110, 'Đỗ', 'Anh', 'M', 'male', '1983-07-27', '1 Nguyễn An Ninh', 'doanhM@yahoo.com', '133133', 1, 'doanhM', 'doanhM133', 'staff'),
(111, 'Bùi', 'Gia', 'D', 'male', '1985-12-02', '11 Trần Thị Thơm', 'buigiaD@yahoo.com', '134134', 1, 'buigiaD', 'buigiaD134', 'staff'),
(112, 'Bùi', 'Gia', 'N', 'female', '1986-12-03', '15 Trần Thị Thơm', 'buigiaN@yahoo.com', '135135', 1, 'buigiaN', 'buigiaN135', 'staff'),
(113, 'Nguyễn', 'Phương', 'Đ', 'male', '1987-12-05', '24 Mai Chí Thọ', 'nguyenphuongĐ@yahoo.com', '136136', 1, 'nguyenphuongĐ', 'nguyenphuongĐ136', 'staff'),
(114, 'Nguyễn', 'Phương', 'Q', 'female', '1988-11-06', '28 Nguyễn Văn Linh', 'nguyenphuongQ@yahoo.com', '137137', 1, 'nguyenphuongQ', 'nguyenphuongQ137', 'staff'),
(115, 'Nguyễn', 'Hữu', 'T', 'male', '1988-10-07', '29 Nguyễn Văn Trỗi', 'nguyenhuuT@yahoo.com', '138138', 1, 'nguyenhuuT', 'nguyenhuuT138', 'staff'),
(116, 'Nguyễn', 'Lê', 'U', 'female', '1989-09-02', '29 Nguyễn Nhạc', 'nguyenleU@yahoo.com', '139139', 1, 'nguyenleU', 'nguyenleU139', 'staff'),
(117, 'Đỗ', 'Anh', 'B', 'male', '2000-02-28', '17 Mai Hắc Đế', 'doanhB@yahoo.com', '140140', 1, 'doanhB', 'doanhB140', 'user'),
(118, 'Đỗ', 'Hải', 'D', 'male', '2001-03-01', '18 Mai An Tiêm', 'dohaiD@yahoo.com', '141141', 1, 'dohaiD', 'dohaiD141', 'user'),
(119, 'Đỗ', 'Thủ', 'K', 'male', '2001-04-02', '19 Mai An Tiêm', 'dothuK@yahoo.com', '142142', 1, 'dothuK', 'dothuK142', 'user'),
(120, 'Nguyễn', 'Hồng', 'L', 'female', '2002-08-30', '22 Ngô Quyền', 'nguyenhongL@yahoo.com', '143143', 1, 'nguyenhongL', 'nguyenhongL143', 'user'),
(121, 'Nguyễn', 'Thị', 'P', 'female', '1999-08-15', '33 Hải Thượng Lãn Ông', 'nguyenthiP@yahoo.com', '144144', 1, 'nguyenthiP', 'nguyenthiP144', 'user'),
(122, 'Nguyễn', 'Thanh', 'M', 'male', '2001-08-14', '44 Võ Văn Kiệt', 'nguyenthanhM@yahoo.com', '145145', 1, 'nguyenthanhM', 'nguyenthanhM145', 'user'),
(123, 'Nguyễn', 'Thanh', 'T', 'female', '2001-08-13', '55 Võ Văn Kiệt', 'nguyenthanhT@yahoo.com', '146146', 1, 'nguyenthanhT', 'nguyenthanhT146', 'user'),
(124, 'Nguyễn', 'Thị', 'A', 'female', '2001-07-12', '66 Võ Văn Ngân', 'nguyenthiA@yahoo.com', '147147', 1, 'nguyenthiA', 'nguyenthiA147', 'user'),
(125, 'Nguyễn', 'Sỹ', 'T', 'male', '2001-07-11', '77 Võ Văn Ngân', 'nguyensyT@yahoo.com', '148148', 1, 'nguyensyT', 'nguyensyT148', 'user'),
(126, 'Văn', 'Công', 'N', 'male', '2000-07-10', '88 Mạc Đĩnh Chi', 'vancongN@yahoo.com', '149149', 1, 'vancongN', 'vancongN149', 'user'),
(127, 'Vũ', 'Phụng', 'T', 'female', '2003-05-09', '74 Mạc Đĩnh Chi', 'vuphungT@yahoo.com', '150150', 1, 'vuphungT', 'vuphungT150', 'user'),
(128, 'Đỗ', 'Thị', 'Đ', 'female', '1992-04-17', '66 Mai Thế Lợi', 'dothiD@yahoo.com', '151151', 1, 'dothiD', 'dothiD151', 'staff'),
(129, 'Nguyễn', 'Văn', 'H', 'male', '1987-02-15', '58 Hoàng Văn Lợi', 'nguyenvanH@yahoo.com', '152152', 1, 'nguyenvanH', 'nguyenvanH152', 'staff'),
(130, 'Hoang', 'Thi', 'V', 'female', '1985-01-01', '11 Phan Văn Mãi', 'hoangthiV@yahoo.com', '153153', 1, 'hoangthiV', 'hoangthiV153', 'staff'),
(131, 'Phạm', 'Thị Xuân', 'N', 'female', '1995-05-01', '15 Võ Thị Cường', 'phamthixuanN@yahoo.com', '154154', 1, 'phamthixuanN', 'phamthixuanN154', 'staff'),
(132, 'Đỗ', 'Hoàng', 'Ý', 'male', '1979-12-15', '76 Hà Văn Hứa', 'dohoangY@yahoo.com', '155155', 1, 'dohoangY', 'dohoangY155', 'staff');

--
-- Triggers `_user`
--
DELIMITER $$
CREATE TRIGGER `check_password` BEFORE INSERT ON `_user` FOR EACH ROW BEGIN
    DECLARE password_length INT;
    DECLARE contains_digit BOOLEAN;
    DECLARE contains_letter BOOLEAN;

    -- Kiểm tra mật khẩu có đủ 8 ký tự không
    SET password_length = CHAR_LENGTH(NEW._password);
    IF password_length < 8 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Mật khẩu phải chứa ít nhất 8 ký tự.';
    END IF;

    -- Kiểm tra mật khẩu có chứa chữ và số không
    SET contains_digit = FALSE;
    SET contains_letter = FALSE;

    WHILE password_length > 0 DO
        IF SUBSTRING(NEW._password, password_length, 1) REGEXP '[0-9]' THEN
            SET contains_digit = TRUE;
        ELSE
            SET contains_letter = TRUE;
        END IF;

        SET password_length = password_length - 1;
    END WHILE;

    IF NOT contains_digit OR NOT contains_letter THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Mật khẩu phải chứa ít nhất một chữ cái và một số.';
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_user`
--
ALTER TABLE `_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_user`
--
ALTER TABLE `_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
