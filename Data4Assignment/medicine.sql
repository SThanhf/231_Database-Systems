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
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `serial_num` varchar(50) NOT NULL,
  `_name` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `_desc` varchar(50) DEFAULT NULL
) ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`serial_num`, `_name`, `cost`, `_desc`) VALUES
('01', 'Aspirin', 36000, 'Trị xơ vữa động mạch, điều trị đau sốt'),
('02', 'Clopidogrel', 91000, 'Trợ tim, bổ tim'),
('03', 'Organika Cordyceps', 650000, 'Bổ phổi'),
('04', 'Siro ho Bảo Thanh', 44000, 'Bổ đường hô hấp'),
('05', 'Omega-3', 200000, 'Bổ mắt, nhiều vitaminA'),
('06', 'Hoạt huyết 1-1', 100000, 'Tăng cường máu lên não'),
('07', 'CumaGold', 135000, 'Trị đại tràng'),
('08', 'Rohto Antibacterial', 54000, 'Bổ mắt, kháng viêm mắt'),
('09', 'V.Rohto Vitamin', 53000, 'Bổ mắt, chậm tăng độ'),
('10', 'Digoxin', 300000, 'Tốt cho tim mạch'),
('11', 'Amoxicillin', 20000, 'Thuốc kháng sinh diệt khuẩn phổ rộng'),
('12', 'Paracetamol', 10000, 'Thuốc giảm đau hạ sốt'),
('13', 'Ibuprofen', 20000, 'Thuốc giảm đau hạ sốt, chống viêm không steroid'),
('14', 'Omeprazole', 20000, 'Thuốc ức chế bơm proton'),
('15', 'Atenololol', 20000, 'Thuốc chẹn beta'),
('16', 'Insulin', 500000, 'Thuốc điều trị đái tháo đường'),
('17', 'Dexamethasone', 30000, 'Thuốc kháng viêm corticosteroid'),
('18', 'Montelukast', 20000, 'Thuốc kháng viêm không steroid điều trị hen suyễn,'),
('19', 'Methotrexate', 500000, 'Thuốc chống ung thư'),
('20', 'Chlorpheniramine', 10000, 'Thuốc kháng histamine điều trị dị ứng, ngứa,...'),
('21', 'Trà xanh', 75000, 'Thuốc thảo dược'),
('22', 'Sâm Hàn Quốc', 10000000, 'Thuốc thảo dược bồi bổ'),
('23', 'Vitamin C', 23000, 'Thuốc bổ sung vitamin'),
('24', 'Protein', 80000, 'Thuốc bổ sung protein'),
('25', 'Collagen', 350000, 'Thuốc bổ sung collagen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`serial_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
