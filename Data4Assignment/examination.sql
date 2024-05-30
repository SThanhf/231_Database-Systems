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
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `id` int(11) NOT NULL,
  `diagnose` varchar(100) NOT NULL,
  `_desc` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`id`, `diagnose`, `_desc`, `image`, `total_price`, `doctor_id`, `patient_id`, `app_id`, `bill_id`, `service_id`) VALUES
(11111, 'Viêm đường cuống họng, nên dùng Ibuprofen\r\n', 'Viêm cuống họng', 'abcdef', 0, 100, 118, 111, NULL, 1),
(11211, 'Bình thường', 'Bình thường', 'abcdef', 0, 100, 127, 112, NULL, 1),
(11311, 'Bình thường, trong lúc điều trị có ho đờm, có thể sử dụng thuốc bổ phổi', 'Bình thường', 'abcdef', 0, 100, 118, 113, NULL, 1),
(11411, 'Dạ dày có vết loét nhỏ, dùng thuốc Omeprazole', 'Loét dạ dày nhẹ', 'abcdef', 0, 100, 119, 114, NULL, 1),
(12111, 'Nổi mẩn đỏ do dị ứng thức ăn', 'Dị ứng đậu phộng và sò', 'Dị ứng đậu phộng và sò.png', 0, 113, 123, 121, NULL, 10),
(12211, 'Điện não yếu', 'Điện não yếu', 'abcdef', 0, 113, 124, 122, NULL, 8),
(12311, 'Sức khỏe ổn, thể chất bình thường, mắt có dấu hiệu tăng độ ', 'Mắt có dấu hiệu tăng độ', 'abcdef', 0, 113, 125, 123, NULL, 10),
(12411, 'Sức khỏe ổn, mắt yếu, hơi vàng', 'Mắt yếu, hơi vàng', 'abcdef', 0, 113, 118, 124, NULL, 10),
(21111, 'Không có biểu hiện bệnh, da hơi khô', 'Bổ sung collagen', 'abcdef', 0, 111, 122, 211, NULL, 6),
(21211, 'Mắt 10/10, không tật', 'Mắt ổn', 'abcdef', 0, 111, 119, 212, NULL, 7),
(21311, 'Huyết áp ổn, da hơi nhợt nhạt, cần bổ sung vitamin', 'Thiếu vitamin', 'abcdef', 0, 111, 121, 213, NULL, 6),
(31111, 'Dạ dày bình thường, cơ thể mất ngủ, nên dùng Atenololol', 'Dùng Atenololol', 'abcdef', 0, 110, 122, 311, NULL, 2),
(31211, 'Viêm đại tràng', 'Viêm đại tràng', 'abcdef', 0, 110, 122, 312, NULL, 3),
(31311, 'Ngũ quan ổn', 'Bình thường', 'abcdef', 0, 110, 119, 313, NULL, 1),
(31411, 'Sốt nhẹ, giữ cân bằng kém, khuyên dùng Aspirin', 'Sốt nhẹ, giữ cân bằng kém', 'abcdef', 0, 110, 118, 314, NULL, 10),
(41111, 'Tim yếu, co bóp không đều, khuyên dùng Clopid\r\n', 'Tim yếu, co bóp không đều', 'abcdef', 0, 109, 124, 411, NULL, 4),
(41211, 'Tim đập nhanh do thiếu ngủ, khuyên dùng Atenololol', 'Tim đập nhanh do thiếu ngủ', 'abcdef', 0, 109, 127, 412, NULL, 4),
(41311, 'Động mạch có dấu hiệu xơ vữa, khuyên dùng Aspirin', 'Động mạch có dấu hiệu xơ vữa', 'abcdef', 0, 109, 120, 413, NULL, 9),
(41411, 'Nhịp tim hơi yếu, khuyên dùng Digoxin', 'Nhịp tim hơi yếu', 'abcdef', 0, 109, 120, 414, NULL, 4),
(51111, 'Da trầy, nên dùng Ibuprofen', 'Da trầy', 'abcdef', 0, 108, 119, 511, NULL, 10),
(51112, 'Dạ dày có dấu hiệu loét, nên dùng Omeprazole', 'Dạ dày có dấu hiệu loét', 'abcdef', 0, 108, 119, 511, NULL, 1),
(51211, 'Nổi mẩn vùng tay, nên dùng Chlo20', 'Nổi mẩn vùng tay', 'abcdef', 0, 108, 121, 512, NULL, 10),
(51311, 'Bình thường', 'Bình thường', 'abcdef', 0, 108, 118, 513, NULL, 6),
(51411, 'Bình thường', 'Bình thường', 'abcdef', 0, 108, 120, 514, NULL, 10),
(52111, 'Gầy do nhiễm khuẩn, nên dùng Amoxi', 'Gầy do nhiễm khuẩn', 'abcdef', 0, 107, 122, 521, NULL, 10),
(52211, 'Cơ thể có nhiều vết thương viêm nhiễm, nên dùng Dexam', 'Cơ thể có nhiều vết thương viêm nhiễm', 'abcdef', 0, 107, 127, 522, NULL, 10),
(52311, 'Mạch máu nổi bất thường do di truyền, không có tác hại, huyết áp ổn. ', 'Huyết áp ổn', 'abcdef', 0, 107, 125, 523, NULL, 6),
(52411, 'Dạ dày ổn, không có dấu hiệu kích thích nhu động', 'Bình thường', 'abcdef', 0, 107, 123, 524, NULL, 2),
(61111, 'Nhịp tim ổn, nhịp thở ổn định, không có dấu hiệu bệnh phổi.', 'Bình thường', 'abcdef', 0, 103, 124, 611, NULL, 4),
(61211, 'Huyết áp ổn, khó thở do dị ứng, nên dùng Chlo20', 'Khó thở do dị ứng', 'abcdef', 0, 103, 123, 612, NULL, 6),
(61221, 'Hen suyễn nhẹ, nên dùng Monte', 'Hen suyễn nhẹ', 'abcdef', 0, 103, 121, 612, NULL, 5),
(61311, 'Phổi ổn, nang đều', 'Bình thường', 'abcdef', 0, 103, 120, 613, NULL, 5),
(61411, 'Phổi bình thường, nhưng mũi viêm tuyến nhờn, khuyên dùng Amoxi', 'mũi viêm tuyến nhờn', 'abcdef', 0, 103, 125, 614, NULL, 5),
(71111, 'Da có viêm nhẹ, không có dấu hiệu ung bứu, nên dùng Dexame', 'Da có viêm nhẹ', 'abcdef', 0, 102, 124, 711, NULL, 10),
(71121, 'Ngũ quan không có dấu hiệu viêm', 'Bình thường ', 'abcdef', 0, 102, 123, 711, NULL, 1),
(71211, 'Dạ dày hơi nhu động, cơ thể bình thường', 'Bình thường ', 'abcdef', 0, 102, 119, 712, NULL, 1),
(71311, 'Có dấu hiệu viêm trực tràng, nên dùng Metho', 'Có dấu hiệu viêm trực tràng ', 'abcdef', 0, 102, 120, 713, NULL, 10),
(71411, 'Sức khỏe tạm, nên dùng Metho', 'Sức khỏe tạm', 'abcdef', 0, 102, 125, 714, NULL, 10),
(81111, 'Có dấu hiệu căng thẳng, nên dùng thảo mộc', 'Hơi căng thẳng', 'abcdef', 0, 101, 123, 811, NULL, 10),
(81211, 'Não phản ứng kém nhạy do ngủ mất kiểm soát, nên dùng thảo mộc', 'Não phản ứng kém nhạy do ngủ mất kiểm soát', 'abcdef', 0, 101, 122, 812, NULL, 8),
(81311, 'Phế suy, nội tạng ổn, nên dùng Organ.Cordy', 'Phế suy', 'abcdef', 0, 101, 121, 813, NULL, 10),
(82111, 'Cơ thể yếu do thiếu vận động', 'Cơ thể yếu do thiếu vận động', 'abcdef', 0, 115, 121, 821, NULL, 10),
(82211, 'Cơ thể ổn, lệch cơ thể do vận động', 'Lệch cơ thể do vận động', 'abcdef', 0, 115, 127, 822, NULL, 10),
(82311, 'Cơ thể suy nhược, nên bồi bổ', 'Cơ thể suy nhược', 'abcdef', 0, 115, 124, 823, NULL, 1),
(82411, 'Đã hướng dẫn vật lý, không cần thuốc', 'Bình thường', 'abcdef', 0, 115, 127, 824, NULL, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_examination_doctoc_id` (`doctor_id`),
  ADD KEY `fk_examination_patient_id` (`patient_id`),
  ADD KEY `fk_examination_app_id` (`app_id`),
  ADD KEY `fk_examination_bill_id` (`bill_id`),
  ADD KEY `fk_examination_service_id` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82413;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examination`
--
ALTER TABLE `examination`
  ADD CONSTRAINT `fk_examination_app_id` FOREIGN KEY (`app_id`) REFERENCES `appointment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_examination_bill_id` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_examination_doctoc_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_examination_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_examination_service_id` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
