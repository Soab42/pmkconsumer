-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 06:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consumer`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumer_bill_paids`
--

CREATE TABLE `consumer_bill_paids` (
  `id` int(3) NOT NULL,
  `Branch_name` varchar(12) DEFAULT NULL,
  `Paid_Date` varchar(10) DEFAULT NULL,
  `Bill_Paid_ID` int(7) DEFAULT NULL,
  `Order_Code` int(8) DEFAULT NULL,
  `Distributor` varchar(6) DEFAULT NULL,
  `Bank_Name` varchar(32) DEFAULT NULL,
  `Checque_No` varchar(20) DEFAULT NULL,
  `Paid_Amount` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_bill_paids`
--

INSERT INTO `consumer_bill_paids` (`id`, `Branch_name`, `Paid_Date`, `Bill_Paid_ID`, `Order_Code`, `Distributor`, `Bank_Name`, `Checque_No`, `Paid_Amount`) VALUES
(1, 'Badda', '2022-05-31', 220009, 2200002, 'Singer', 'Non Cash', 'Non Cash', 29112),
(2, 'Badda', '2020-05-31', 220008, 2200001, 'Singer', 'Non Cash', 'Non Cash', 25017),
(3, 'Badda', '2022-05-22', 220007, 2200003, 'Singer', 'UCB', 'BEFTN', 24774),
(4, 'Badda', '2022-12-13', 220006, 2200009, 'Walton', 'UCB', '4631810', 21400),
(5, 'Badda', '2022-09-11', 220005, 2200005, 'Singer', 'UCB', '4631732', 27452),
(6, 'Badda', '2022-09-11', 220004, 2200004, 'Singer', 'UCB', '4631810', 27452),
(7, 'Badda', '2023-01-16', 220003, 2200007, 'Singer', 'UCB', '4641356', 48935),
(8, 'Badda', '2023-01-16', 220002, 2200006, 'Singer', 'UCB', '4641356', 37612),
(9, 'Badda', '2023-07-16', 220001, 2200008, 'Singer', 'UCB', '63460', 63460),
(10, 'Konapara', '2020-05-31', 240009, 2400003, 'Singer', 'Non Cash', 'Non Cash', 29102),
(11, 'Konapara', '2022-09-11', 240008, 2400006, 'Singer', 'Fsibl', '1203032', 27452),
(12, 'Konapara', '2022-09-11', 240007, 2400007, 'Singer', 'Fsibl', '1203032', 27452),
(13, 'Konapara', '2022-11-08', 240006, 2400008, 'Walton', 'Fsibl', '1203035', 21400),
(14, 'Konapara', '2022-05-11', 240005, 2400005, 'Singer', 'Fsibl', '1203030', 24774),
(15, 'Konapara', '2020-05-31', 240003, 2400004, 'Singer', 'Non Cash', 'Non Cash', 25027),
(16, 'Konapara', '2020-05-31', 240002, 2400001, 'Singer', 'Non Cash', 'Non Cash', 39078),
(17, 'Konapara', '2020-05-31', 240001, 2400002, 'Singer', 'Non Cash', 'Non Cash', 9491),
(18, 'Sabuzbag', '2021-02-15', 260011, 2600006, 'Singer', 'Non Cash', 'Non Cash', 39078),
(19, 'Sabuzbag', '2021-02-15', 260010, 2600005, 'Singer', 'Non Cash', 'Non Cash', 23187),
(20, 'Sabuzbag', '2022-05-29', 260009, 2600007, 'Singer', 'Fsibl', 'RTGS', 24774),
(21, 'Sabuzbag', '2022-12-14', 260008, 2600012, 'Walton', 'Fsibl', '4295964', 21400),
(22, 'Sabuzbag', '2022-11-09', 260007, 2600008, 'Singer', 'Fsibl', '4295956', 54904),
(23, 'Sabuzbag', '2023-01-16', 260006, 2600010, 'Singer', 'Fsibl', '4295965', 36129),
(24, 'Sabuzbag', '2023-01-16', 260005, 2600009, 'Singer', 'Fsibl', '4295965', 50418),
(25, 'Sabuzbag', '2023-07-06', 260004, 2600011, 'Singer', 'Fsibl', '4295970', 35100),
(26, 'Sabuzbag', '2020-05-31', 260003, 2600003, 'Singer', 'Non Cash', 'Non Cash', 25017),
(27, 'Sabuzbag', '2020-05-31', 260002, 2600004, 'Singer', 'Non Cash', 'Non Cash', 29112),
(28, 'Sabuzbag', '2020-05-31', 260001, 2600001, 'Singer', 'Non Cash', 'Non Cash', 12878),
(29, 'Jatrabari', '2022-09-07', 400010, 4000005, 'Singer', 'Uttara Bank', '6258808', 68193),
(30, 'Jatrabari', '2023-01-16', 400009, 4000006, 'Singer', 'Uttara Bank', '6258816', 71565),
(31, 'Jatrabari', '2023-07-16', 400008, 4000008, 'Singer', 'Uttara Bank', '6258825', 36263),
(32, 'Jatrabari', '2023-07-16', 400007, 4000007, 'Singer', 'Uttara Bank', '6258825', 34437),
(33, 'Jatrabari', '2022-05-19', 400005, 4000004, 'Singer', 'Uttara Bank', 'BEFTN', 24774),
(34, 'Jatrabari', '2022-12-12', 400004, 4000009, 'Walton', 'Uttara Bank', '6258811', 21400),
(35, 'Jatrabari', '2019-09-29', 400003, 4000001, 'Singer', 'Non Cash', 'Non Cash', 32130),
(36, 'Jatrabari', '2019-09-29', 400002, 4000002, 'Singer', 'Non Cash', 'Non Cash', 39078),
(37, 'Jatrabari', '2019-09-29', 400001, 4000003, 'Singer', 'Non Cash', 'Non Cash', 16382),
(38, 'Postogola', '2020-05-31', 690010, 6900010, 'Singer', 'Non Cash', 'Non Cash', 23730),
(39, 'Postogola', '2020-05-31', 690009, 6900001, 'Singer', 'NonCash', 'NonCash', 30339),
(40, 'Postogola', '2020-05-31', 690008, 6900003, 'Singer', 'NonCash', 'NonCash', 29112),
(41, 'Postogola', '2020-05-31', 690007, 6900002, 'Singer', 'NonCash', 'NonCash', 25017),
(42, 'Postogola', '2022-05-12', 690006, 6900004, 'Singer', 'Dhaka Bank Ltd', 'BFTN', 24774),
(43, 'Postogola', '2022-12-29', 690005, 6900009, 'Walton', 'Dhaka Bank Ltd', '1106747', 21400),
(44, 'Postogola', '2022-09-07', 690004, 6900006, 'Singer', 'Dhaka Bank Ltd', '1106746', 27452),
(45, 'Postogola', '2022-09-07', 690003, 6900005, 'Singer', 'Dhaka Bank Ltd', '1106746', 27452),
(46, 'Postogola', '2023-01-22', 690002, 6900007, 'Singer', 'Dhaka Bank Ltd', '1106748', 49912),
(47, 'Postogola', '2023-07-06', 690001, 6900008, 'Singer', 'Dhaka Bank Ltd', '1106750', 70199),
(48, 'Azampur', '2020-05-31', 100014, 1000014, 'Singer', 'Non Cash', 'Non Cash', 14546),
(49, 'Azampur', '2022-09-18', 100013, 1000007, 'Singer', 'FSIBL Bank', '1378109', 38727),
(50, 'Azampur', '2022-09-18', 100012, 1000006, 'Singer', 'FSIBL Bank', '1378109', 51637),
(51, 'Azampur', '2022-05-22', 100011, 1000005, 'Singer', 'FSIBL Bank', 'BEFTEN', 24774),
(52, 'Azampur', '2023-07-18', 100010, 1000012, 'Singer', 'FSIBL Bank', '1378117', 34600),
(53, 'Azampur', '2023-07-18', 100009, 1000011, 'Singer', 'FSIBL Bank', '1378117', 22317),
(54, 'Azampur', '2023-01-18', 100008, 1000010, 'Singer', 'FSIBL Bank', '1378113', 60213),
(55, 'Azampur', '2023-01-18', 100007, 1000009, 'Singer', 'FSIBL Bank', '1378113', 26166),
(56, 'Azampur', '2023-01-18', 100006, 1000008, 'Singer', 'FSIBL Bank', '1378113', 31027),
(57, 'Azampur', '2022-12-21', 100003, 1000013, 'Walton', 'FSIBL Bank', '137811', 31400),
(58, 'Azampur', '2020-05-31', 100002, 1000001, 'Singer', 'Non Cash', 'Non Cash', 25017),
(59, 'Azampur', '2020-05-31', 100001, 1000002, 'Singer', 'Non Cash', 'Non Cash', 29112),
(60, 'Uttara', '2020-05-31', 1030022, 10300003, 'Singer', 'Non Cash', 'Non Cash', 26756),
(61, 'Uttara', '2020-05-31', 1030021, 10300018, 'Singer', 'Non Cash', 'Non Cash', 2278),
(62, 'Uttara', '2020-05-31', 1030019, 10300019, 'Singer', 'Non Cash', 'Non Cash', 21730),
(63, 'Uttara', '2020-10-27', 1030016, 10300004, 'Singer', 'Non Cash', 'Non Cash', 30339),
(64, 'Uttara', '2020-10-27', 1030015, 10300009, 'Singer', 'Non Cash', 'Non Cash', 1908),
(65, 'Uttara', '2020-10-27', 1030014, 10300005, 'Singer', 'Non Cash', 'Non Cash', 43634),
(66, 'Uttara', '2020-10-27', 1030013, 10300006, 'Singer', 'Non Cash', 'Non Cash', 4328),
(67, 'Uttara', '2020-10-27', 1030012, 10300007, 'Singer', 'Non Cash', 'Non Cash', 849),
(68, 'Uttara', '2020-10-27', 1030011, 10300008, 'Singer', 'Non Cash', 'Non Cash', 548),
(69, 'Uttara', '2022-05-19', 1030010, 10300010, 'Singer', 'National Bank', '311805', 24774),
(70, 'Uttara', '2022-09-11', 1030009, 10300011, 'Singer', 'National Bank', '311806', 59182),
(71, 'Uttara', '2023-02-09', 1030008, 10300015, 'Singer', 'National Bank', '311811', 24956),
(72, 'Uttara', '2023-01-18', 1030007, 10300013, 'Singer', 'National Bank', '311809', 74120),
(73, 'Uttara', '2023-01-18', 1030006, 10300014, 'Singer', 'National Bank', '311809', 37383),
(74, 'Uttara', '2023-01-18', 1030005, 10300012, 'Singer', 'National Bank', '311809', 24527),
(75, 'Uttara', '2022-12-13', 1030004, 10300016, 'Walton', 'National Bank', '311807', 31400),
(76, 'Uttara', '2020-05-31', 1030003, 10300002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(77, 'Uttara', '2020-05-31', 1030002, 10300001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(78, 'Dakkhin Khan', '2022-09-08', 630011, 6300007, 'Singer', 'Stnadard Bank Limited', '7664531', 39225),
(79, 'Dakkhin Khan', '2022-09-08', 630010, 6300006, 'Singer', 'Stnadard Bank Limited', '7664532', 29418),
(80, 'Dakkhin Khan', '2023-06-06', 630009, 6300008, 'Singer', 'Stnadard Bank Limited', '7664542', 35100),
(81, 'Dakkhin Khan', '2023-07-16', 630008, 6300010, 'Singer', 'Stnadard Bank Limited', '7664545', 22317),
(82, 'Dakkhin Khan', '2023-07-16', 630007, 6300009, 'Singer', 'Stnadard Bank Limited', '7664545', 34600),
(83, 'Dakkhin Khan', '2022-12-12', 630006, 6300011, 'Walton', 'Stnadard Bank Limited', '7664533', 21400),
(84, 'Dakkhin Khan', '2020-05-31', 630005, 6300004, 'Singer', 'Non Cash', 'Non Cash', 29112),
(85, 'Dakkhin Khan', '2020-05-31', 630004, 6300005, 'Singer', 'Non Cash', 'Non Cash', 25017),
(86, 'Dakkhin Khan', '2020-05-31', 630003, 6300001, 'Singer', 'Non Cash', 'Non Cash', 22406),
(87, 'Dakkhin Khan', '2020-05-31', 630002, 6300002, 'Singer', 'Non Cash', 'Non Cash', 30339),
(88, 'Dakkhin Khan', '2020-05-31', 630001, 6300003, 'Singer', 'Non Cash', 'Non Cash', 78165),
(89, 'Fotulla-1', '2023-07-13', 160016, 1600009, 'Singer', 'IFIC', '3987882', 91612),
(90, 'Fotulla-1', '2022-12-11', 160015, 1600019, 'Walton', 'IFIC', '3987875/3987877', 42800),
(91, 'Fotulla-1', '2022-12-12', 160014, 1600020, 'Walton', 'IFIC', '3987876', 31400),
(92, 'Fotulla-1', '2021-02-14', 160013, 1600018, 'Singer', 'Non Cash', 'Non Cash', 33678),
(93, 'Fotulla-1', '2023-07-13', 160011, 1600011, 'Singer', 'IFIC Bank', '3987882', 126920),
(94, 'Fotulla-1', '2023-07-13', 160010, 1600010, 'Singer', 'IFIC Bank', '3987882', 74851),
(95, 'Fotulla-1', '2023-06-04', 160008, 1600007, 'Singer', 'IFIC Bank', '3987881', 23230),
(96, 'Fotulla-1', '2023-06-04', 160007, 1600008, 'Singer', 'IFIC Bank', '3987881', 32567),
(97, 'Fotulla-1', '2022-08-03', 160006, 1600006, 'Singer', 'IFIC Bank', '3987873', 68643),
(98, 'Fotulla-1', '2022-08-03', 160005, 1600005, 'Singer', 'IFIC Bank', '3987873', 68643),
(99, 'Fotulla-1', '2022-06-21', 160004, 1600004, 'Singer', 'IFIC Bank', '3987872', 31947),
(100, 'Fotulla-1', '2022-05-19', 160003, 1600003, 'Singer', 'IFIC Bank', '3987870', 18600),
(101, 'Fotulla-1', '2020-05-31', 160002, 1600001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(102, 'Fotulla-1', '2020-05-31', 160001, 1600002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(103, 'Fotulla-2', '2023-08-16', 730007, 7300007, 'Singer', 'AB Bank', '20671301', 34437),
(104, 'Fotulla-2', '2023-08-16', 730006, 7300006, 'Singer', 'AB Bank', '20671301', 34437),
(105, 'Fotulla-2', '2023-08-16', 730005, 7300005, 'Singer', 'AB Bank', '20671301', 44634),
(106, 'Fotulla-2', '2022-09-07', 730004, 7300003, 'Singer', 'AB Bank', '7552615', 54904),
(107, 'Fotulla-2', '2023-01-17', 730003, 7300004, 'Singer', 'AB Bank', '7552617', 49912),
(108, 'Fotulla-2', '2022-05-12', 730002, 7300002, 'Singer', 'AB Bank', '7552614', 24774),
(109, 'Fotulla-2', '2020-05-31', 730001, 7300001, 'Singer', 'Non Cash', 'Non Cash', 30947),
(110, 'Panchaboti', '2023-07-16', 570011, 5700009, 'Singer', 'Union Bank LtD', '885908', 74851),
(111, 'Panchaboti', '2023-07-16', 570010, 5700010, 'Singer', 'Union Bank LtD', '885908', 91612),
(112, 'Panchaboti', '2023-06-11', 570009, 5700008, 'Singer', 'Union Bank LtD', '885907', 70199),
(113, 'Panchaboti', '2023-01-17', 570008, 5700007, 'Singer', 'Union Bank LtD', '498724', 49912),
(114, 'Panchaboti', '2022-09-08', 570007, 5700006, 'Singer', 'Union Bank LtD', '498721', 27452),
(115, 'Panchaboti', '2022-09-08', 570006, 5700005, 'Singer', 'Union Bank LtD', '498721', 27452),
(116, 'Panchaboti', '2022-12-12', 570005, 5700011, 'Walton', 'Union Bank LtD', '498723', 31400),
(117, 'Panchaboti', '2022-05-12', 570004, 5700004, 'Singer', 'Union Bank LtD', 'EFT', 24774),
(118, 'Panchaboti', '2020-05-31', 570003, 5700002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(119, 'Panchaboti', '2020-05-31', 570002, 5700003, 'Singer', 'Non Cash', 'Non Cash', 29112),
(120, 'Panchaboti', '2020-05-31', 570001, 5700001, 'Singer', 'Non Cash', 'Non Cash', 32130),
(121, 'Lalbag', '2023-01-16', 440010, 4400006, 'Singer', 'Janata Bank', '7158313', 73268),
(122, 'Lalbag', '2022-05-12', 440009, 4400003, 'Singer', 'Janata Bank', '6477767', 24774),
(123, 'Lalbag', '2022-09-08', 440008, 4400005, 'Singer', 'Janata Bank', '6477864', 27452),
(124, 'Lalbag', '2022-09-08', 440007, 4400004, 'Singer', 'Janata Bank', '6477864', 27452),
(125, 'Lalbag', '2022-12-14', 440006, 4400010, 'Walton', 'Janata Bank', '7158284', 21400),
(126, 'Lalbag', '2023-06-06', 440005, 4400007, 'Singer', 'Janata Bank', '1581703', 32567),
(127, 'Lalbag', '2023-07-12', 440004, 4400009, 'Singer', 'Janata Bank', '1581704', 37426),
(128, 'Lalbag', '2023-07-12', 440003, 4400008, 'Singer', 'Janata Bank', '1581704', 45806),
(129, 'Lalbag', '2020-05-31', 440002, 4400001, 'Singer', 'Non Cash', 'Non Cash', 25017),
(130, 'Lalbag', '2020-05-31', 440001, 4400002, 'Singer', 'Non Cash', 'Non Cash', 29112),
(131, 'Dhanmondi', '2022-12-12', 200009, 2000014, 'Walton', 'Uttara Bank Ltd.(Satmasjid Road)', '7296716', 21400),
(132, 'Dhanmondi', '2022-05-11', 200008, 2000005, 'Singer', 'Uttara Bank', 'BFTN', 24774),
(133, 'Dhanmondi', '2023-02-12', 200007, 2000009, 'Singer', 'Uttara Bank(Satmoszid)', '7296719', 73269),
(134, 'Dhanmondi', '2020-05-31', 200006, 2000001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(135, 'Dhanmondi', '2020-05-31', 200005, 2000004, 'Singer', 'Non Cash', 'Non Cash', 25017),
(136, 'Dhanmondi', '2022-12-12', 200004, 2000013, 'Walton', 'Uttara Bank Ltd.(Satmasjid Road)', '7296717', 21400),
(137, 'Dhanmondi', '2023-06-04', 200003, 2000010, 'Singer', 'Uttara Bank Ltd.(Satmasjid Road)', '7296722', 23230),
(138, 'Dhanmondi', '2023-07-13', 200002, 2000012, 'Singer', 'Uttara Bank Ltd.(Satmasjid Road)', '7296723', 31730),
(139, 'Dhanmondi', '2023-07-13', 200001, 2000011, 'Singer', 'Uttara Bank Ltd.(Satmasjid Road)', '7296723', 22317),
(140, 'Shamoly', '2022-05-11', 530007, 5300003, 'Singer', 'Uttara Bank', 'BFTN', 25112),
(141, 'Shamoly', '2022-05-11', 530006, 5300004, 'Singer', 'Uttara Bank', 'BEFTN', 1752),
(142, 'Shamoly', '2022-09-11', 530005, 5300005, 'Singer', 'Uttora Bank', '7596725', 68643),
(143, 'Shamoly', '2022-12-15', 530004, 5300007, 'Walton', 'Uttora Bank', '7596726', 21400),
(144, 'Shamoly', '2020-05-31', 530003, 5300001, 'Singer', 'Non Cash Transaction', 'Non Cash Transaction', 29112),
(145, 'Shamoly', '2020-05-31', 530002, 5300002, 'Singer', 'Non Cash Transaction', 'Non Cash Transaction', 25017),
(146, 'Shamoly', '2023-01-17', 530001, 5300006, 'Singer', 'Uttora Bank', '7596728', 49912),
(147, 'Armanitola', '2023-01-17', 140009, 1400007, 'Singer', 'Agrani Bank Ltd', '3664064', 44197),
(148, 'Armanitola', '2023-01-17', 140008, 1400006, 'Singer', 'Agrani Bank Ltd', '3664064', 42350),
(149, 'Armanitola', '2022-09-18', 140007, 1400005, 'Singer', 'Agrani Bank Ltd', '3664061', 27452),
(150, 'Armanitola', '2022-09-18', 140006, 1400004, 'Singer', 'Agrani Bank Ltd', '3664061', 27452),
(151, 'Armanitola', '2022-07-03', 140005, 1400003, 'Singer', 'Agrani Bank Ltd', 'BFTEN', 24774),
(152, 'Armanitola', '2023-06-08', 140004, 1400008, 'Singer', 'Agrani Bank Ltd', '3664067', 35100),
(153, 'Armanitola', '2022-12-27', 140003, 1400009, 'Walton', 'Agrani Bank Ltd', '3664062', 21400),
(154, 'Armanitola', '2020-05-31', 140002, 1400001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(155, 'Armanitola', '2020-05-05', 140001, 1400002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(156, 'Noyabazar-1', '2022-05-22', 120011, 1200006, 'Singer', 'UCBL Bank', 'BEFTEN', 74321),
(157, 'Noyabazar-1', '2022-05-22', 120010, 1200005, 'Singer', 'UCBL Bank', 'BEFTEN', 37383),
(158, 'Noyabazar-1', '2022-09-21', 120009, 1200007, 'Singer', 'UCBL Bank', '1227912', 27452),
(159, 'Noyabazar-1', '2020-09-15', 120008, 1200008, 'Singer', 'UCBL Bank', '1227912', 27452),
(160, 'Noyabazar-1', '2023-01-22', 120007, 1200009, 'Singer', 'UCBL Bank', '1227916', 49912),
(161, 'Noyabazar-1', '2023-06-13', 120006, 1200010, 'Singer', 'UCBL Bank', '1227919', 35100),
(162, 'Noyabazar-1', '2023-07-20', 120005, 1200012, 'Singer', 'UCBL Bank', '1227920', 37427),
(163, 'Noyabazar-1', '2023-07-20', 120004, 1200011, 'Singer', 'UCBL Bank', '1227920', 37426),
(164, 'Noyabazar-1', '2020-12-20', 120003, 1200013, 'Walton', 'UCBL Bank', '1227915', 31400),
(165, 'Noyabazar-1', '2020-05-31', 120002, 1200003, 'Singer', 'Non Cash', 'Non Cash', 25017),
(166, 'Noyabazar-1', '2020-05-31', 120001, 1200004, 'Singer', 'Non Cash', 'Non Cash', 29112),
(167, 'Noyabazar-2', '2020-05-31', 1250009, 12500007, 'Singer', 'Non Cash', 'Non Cash', 56339),
(168, 'Noyabazar-2', '2020-05-31', 1250008, 12500002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(169, 'Noyabazar-2', '2020-05-31', 1250007, 12500001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(170, 'Noyabazar-2', '2023-01-22', 1250006, 12500004, 'Singer', 'Brack Bank', '2288427', 49164),
(171, 'Noyabazar-2', '2023-01-22', 1250005, 12500005, 'Singer', 'Brack Bank', '2288427', 37383),
(172, 'Noyabazar-2', '2022-10-18', 1250004, 12500003, 'Singer', 'Pay Order', 'Non Cash', 27452),
(173, 'Noyabazar-2', '2022-12-20', 1250003, 12500006, 'Walton', 'Brack Bank', '2288426', 21400),
(174, 'Noyabazar-3', '2022-05-31', 900008, 9000002, 'Singer', 'Non Cash', 'Non Cash', 25017),
(175, 'Noyabazar-3', '2020-05-31', 900007, 9000001, 'Singer', 'Non Cash', 'Non Cash', 29112),
(176, 'Noyabazar-3', '2022-10-18', 900006, 9000004, 'Singer', 'Brack Bank', 'Pay Order', 27452),
(177, 'Noyabazar-3', '2020-10-18', 900005, 9000003, 'Singer', 'Brack Bank', 'Pay Order', 27452),
(178, 'Noyabazar-3', '2023-01-22', 900004, 9000005, 'Singer', 'Brack Bank', '2288452', 49912),
(179, 'Noyabazar-3', '2022-12-20', 900003, 9000006, 'Walton', 'Brack Bank', '2288451', 21400);

-- --------------------------------------------------------

--
-- Table structure for table `consumer_orders`
--

CREATE TABLE `consumer_orders` (
  `id` int(11) NOT NULL,
  `Order ID` int(8) DEFAULT NULL,
  `Branch name` varchar(12) DEFAULT NULL,
  `Order Date` date DEFAULT NULL,
  `Distributor Name` varchar(6) DEFAULT NULL,
  `Product Name` varchar(15) DEFAULT NULL,
  `Model No` varchar(24) DEFAULT NULL,
  `Order Status` varchar(14) DEFAULT NULL,
  `Product Price` int(5) DEFAULT NULL,
  `Order Quantity` int(5) DEFAULT NULL,
  `Shiped Quantity` int(5) DEFAULT NULL,
  `Received Quantity` int(5) DEFAULT NULL,
  `Purchase Price` int(6) DEFAULT NULL,
  `Status Change Date` date DEFAULT NULL,
  `Bill Pay` varchar(6) DEFAULT NULL,
  `Remarks` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_orders`
--

INSERT INTO `consumer_orders` (`id`, `Order ID`, `Branch name`, `Order Date`, `Distributor Name`, `Product Name`, `Model No`, `Order Status`, `Product Price`, `Order Quantity`, `Shiped Quantity`, `Received Quantity`, `Purchase Price`, `Status Change Date`, `Bill Pay`, `Remarks`) VALUES
(1, 2200008, 'Badda', '2023-05-22', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 2, 2, 2, 63460, '2023-05-22', 'Paid', 'Migration Product'),
(2, 2200006, 'Badda', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-29', 'Paid', 'Migration Product'),
(3, 2200007, 'Badda', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(4, 2200004, 'Badda', '2022-06-07', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-07', 'Paid', 'Migration Product'),
(5, 2200005, 'Badda', '2022-06-07', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-07', 'Paid', 'Migration Product'),
(6, 2200009, 'Badda', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(7, 2200003, 'Badda', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(8, 2200001, 'Badda', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-28', 'Paid', 'Migration Product'),
(9, 2200002, 'Badda', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-28', 'Paid', 'Migration Product'),
(10, 2400006, 'Konapara', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(11, 2400007, 'Konapara', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(12, 2400008, 'Konapara', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(13, 2400005, 'Konapara', '2022-01-18', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-18', 'Paid', 'Migration Product'),
(14, 2400003, 'Konapara', '2019-12-05', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-05', 'Paid', 'Migration Product'),
(15, 2400004, 'Konapara', '2019-12-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-05', 'Paid', 'Migration Product'),
(16, 2400001, 'Konapara', '2019-07-13', 'Singer', 'Smart TV', 'SRTV-SLE43A7000STC', 'All Prod Rec.', 0, 1, 1, 1, 39078, '2019-07-13', 'Paid', 'Migration Product'),
(17, 2400002, 'Konapara', '2019-07-13', 'Singer', 'Microwave Oven', 'SRMO-SMW-G30G6', 'All Prod Rec.', 0, 1, 1, 1, 9491, '2019-07-13', 'Paid', 'Migration Product'),
(18, 2600011, 'Sabuzbag', '2023-03-20', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 35100, '2023-03-20', 'Paid', 'Migration Product'),
(19, 2600009, 'Sabuzbag', '2022-11-30', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-30', 'Paid', 'Migration Product'),
(20, 2600010, 'Sabuzbag', '2022-11-30', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-30', 'Paid', 'Migration Product'),
(21, 2600008, 'Sabuzbag', '2022-06-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 2, 2, 2, 46559, '2022-06-08', 'Paid', 'Migration Product'),
(22, 2600012, 'Sabuzbag', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(23, 2600007, 'Sabuzbag', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(24, 2600005, 'Sabuzbag', '2020-10-08', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 23187, '2020-10-08', 'Paid', 'Migration Product'),
(25, 2600006, 'Sabuzbag', '2020-10-08', 'Singer', 'Smart TV', 'SRTV-SLE43A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 39078, '2020-10-08', 'Paid', 'Migration Product'),
(26, 2600003, 'Sabuzbag', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(27, 2600004, 'Sabuzbag', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(28, 2600002, 'Sabuzbag', '2019-07-25', 'Singer', 'Air Conditioner', 'SRAC-SAS18AURVM', 'Product Shiped', 0, 1, 1, 0, 56339, '2019-07-25', 'Unpaid', 'Migration Product'),
(29, 2600001, 'Sabuzbag', '2019-07-15', 'Singer', 'Microwave Oven', 'SRMO-SMW-30GCB6', 'All Prod Rec.', 0, 1, 1, 1, 12878, '2019-07-15', 'Paid', 'Migration Product'),
(30, 4000007, 'Jatrabari', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'All Prod Rec.', 0, 1, 1, 1, 34437, '2019-06-17', 'Paid', 'Migration Product'),
(31, 4000008, 'Jatrabari', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-RG', 'All Prod Rec.', 0, 1, 1, 1, 36263, '2023-05-23', 'Paid', 'Migration Product'),
(32, 4000006, 'Jatrabari', '2022-11-06', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 2, 2, 2, 60611, '2022-11-06', 'Paid', 'Migration Product'),
(33, 4000005, 'Jatrabari', '2022-06-01', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'All Prod Rec.', 0, 2, 2, 2, 57708, '2022-06-01', 'Paid', 'Migration Product'),
(34, 4000009, 'Jatrabari', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(35, 4000010, 'Jatrabari', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'Product Shiped', 0, 1, 1, 0, 21400, '2022-04-12', 'Unpaid', 'Migration Product'),
(36, 4000004, 'Jatrabari', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(37, 4000001, 'Jatrabari', '2019-06-17', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-273R-RG', 'All Prod Rec.', 0, 1, 1, 1, 32130, '2019-06-17', 'Paid', 'Migration Product'),
(38, 4000002, 'Jatrabari', '2019-06-17', 'Singer', 'Smart TV', 'SRTV-SLE43A7000STC', 'All Prod Rec.', 0, 1, 1, 1, 39078, '2019-06-17', 'Paid', 'Migration Product'),
(39, 4000003, 'Jatrabari', '2019-06-17', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 1, 1, 1, 16382, '2019-06-17', 'Paid', 'Migration Product'),
(40, 6900008, 'Postogola', '2023-03-18', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 2, 2, 2, 70199, '2023-03-18', 'Paid', 'Migration Product'),
(41, 6900007, 'Postogola', '2022-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-28', 'Paid', 'Migration Product'),
(42, 6900005, 'Postogola', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(43, 6900006, 'Postogola', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(44, 6900009, 'Postogola', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(45, 6900004, 'Postogola', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(46, 6900002, 'Postogola', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(47, 6900003, 'Postogola', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(48, 6900010, 'Postogola', '2019-07-22', 'Singer', 'LED TV', 'SLE32W5STV', 'All Prod Rec.', 25990, 1, 1, 1, 0, '2019-07-22', 'Paid', ''),
(49, 6900001, 'Postogola', '2019-07-22', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'All Prod Rec.', 0, 1, 1, 1, 30339, '2019-07-22', 'Paid', 'Migration Product'),
(50, 1000011, 'Azampur', '2023-05-23', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 22317, '2023-05-23', 'Paid', 'Migration Product'),
(51, 1000012, 'Azampur', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'All Prod Rec.', 0, 1, 1, 1, 34600, '2023-05-23', 'Paid', 'Migration Product'),
(52, 1000008, 'Azampur', '2022-11-30', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-30', 'Paid', 'Migration Product'),
(53, 1000009, 'Azampur', '2022-11-30', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'All Prod Rec.', 0, 1, 1, 1, 26166, '2022-11-30', 'Paid', 'Migration Product'),
(54, 1000010, 'Azampur', '2022-11-30', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-30', 'Paid', 'Migration Product'),
(55, 1000006, 'Azampur', '2022-06-15', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BUG', 'All Prod Rec.', 0, 2, 2, 2, 51637, '2022-06-15', 'Paid', 'Migration Product'),
(56, 1000007, 'Azampur', '2022-06-15', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'All Prod Rec.', 0, 1, 1, 1, 25818, '2022-06-15', 'Paid', 'Migration Product'),
(57, 1000013, 'Azampur', '2022-04-12', 'Walton', 'Smart TV', 'W43D210EG1', 'All Prod Rec.', 0, 1, 1, 1, 31400, '2022-04-12', 'Paid', 'Migration Product'),
(58, 1000005, 'Azampur', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(59, 1000001, 'Azampur', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-28', 'Paid', 'Migration Product'),
(60, 1000002, 'Azampur', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-28', 'Paid', 'Migration Product'),
(61, 1000003, 'Azampur', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Product Shiped', 0, 1, 1, 0, 25017, '2019-11-28', 'Unpaid', 'Migration Product'),
(62, 1000004, 'Azampur', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Product Shiped', 0, 2, 2, 0, 29112, '2019-11-28', 'Unpaid', 'Migration Product'),
(63, 1000014, 'Azampur', '2019-06-19', 'Singer', 'LED TV', 'SLE28D1620TC', 'All Prod Rec.', 16590, 1, 1, 1, 0, '2019-06-23', 'Paid', 'SCS-R23730/3530191'),
(64, 10300015, 'Uttara', '2022-12-12', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 1, 1, 1, 21175, '2022-12-12', 'Paid', 'Migration Product'),
(65, 10300013, 'Uttara', '2022-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 3, 3, 3, 63524, '2022-11-28', 'Paid', 'Migration Product'),
(66, 10300014, 'Uttara', '2022-11-28', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-28', 'Paid', 'Migration Product'),
(67, 10300012, 'Uttara', '2022-11-06', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 20811, '2022-11-06', 'Paid', 'Migration Product'),
(68, 10300011, 'Uttara', '2022-06-02', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'All Prod Rec.', 0, 2, 2, 2, 50185, '2022-06-02', 'Paid', 'Migration Product'),
(69, 10300016, 'Uttara', '2022-04-12', 'Walton', 'Smart TV', 'W43D210EG1', 'All Prod Rec.', 0, 1, 1, 1, 31400, '2022-04-12', 'Paid', 'Migration Product'),
(70, 10300017, 'Uttara', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'Product Shiped', 0, 1, 1, 0, 21400, '2022-04-12', 'Unpaid', 'Migration Product'),
(71, 10300010, 'Uttara', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(72, 10300009, 'Uttara', '2020-03-02', 'Singer', 'Sewing Machine', 'SRSM-STAND-METAL-STEEL', 'All Prod Rec.', 0, 1, 1, 1, 1908, '2020-03-02', 'Paid', 'Migration Product'),
(73, 10300004, 'Uttara', '2020-02-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-GG', 'All Prod Rec.', 0, 1, 1, 1, 30339, '2020-02-23', 'Paid', 'Migration Product'),
(74, 10300005, 'Uttara', '2020-02-23', 'Singer', 'Smart TV', 'SRTV-SLE32A7000STC', 'All Prod Rec.', 0, 2, 2, 2, 43634, '2020-02-23', 'Paid', 'Migration Product'),
(75, 10300006, 'Uttara', '2020-02-23', 'Singer', 'Sewing Machine', 'SRSM-SS-HEAD-15CH1', 'All Prod Rec.', 0, 1, 1, 1, 4328, '2020-02-23', 'Paid', 'Migration Product'),
(76, 10300007, 'Uttara', '2020-02-23', 'Singer', 'Sewing Machine', 'SRSM-TABLE-NEW', 'All Prod Rec.', 0, 1, 1, 1, 849, '2020-02-23', 'Paid', 'Migration Product'),
(77, 10300008, 'Uttara', '2020-02-23', 'Singer', 'Sewing Machine', 'SRSM-WOODEN-COVER-NEW', 'All Prod Rec.', 0, 1, 1, 1, 548, '2020-02-23', 'Paid', 'Migration Product'),
(78, 10300018, 'Uttara', '2020-01-14', 'Singer', 'Rice Cooker', 'Singer-SRCFN1730DRRC', 'All Prod Rec.', 2400, 1, 1, 1, 0, '2020-01-14', 'Paid', 'SCS-R28509/3866096'),
(79, 10300019, 'Uttara', '2020-01-14', 'Singer', 'Smart TV', 'Singer-SLE32A7000STC', 'All Prod Rec.', 24990, 1, 1, 1, 0, '2020-01-14', 'Paid', 'SCS-R28509/3866096'),
(80, 10300003, 'Uttara', '2019-12-10', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-BG', 'All Prod Rec.', 0, 1, 1, 1, 26756, '2019-12-10', 'Paid', 'Migration Product'),
(81, 10300001, 'Uttara', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-28', 'Paid', 'Migration Product'),
(82, 10300002, 'Uttara', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-28', 'Paid', 'Migration Product'),
(83, 6300009, 'Dakkhin Khan', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'All Prod Rec.', 0, 1, 1, 1, 34600, '2023-05-23', 'Paid', 'Migration Product'),
(84, 6300010, 'Dakkhin Khan', '2023-05-23', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 22317, '2023-05-23', 'Paid', 'Migration Product'),
(85, 6300008, 'Dakkhin Khan', '2023-03-18', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 35100, '2023-03-18', 'Paid', 'Migration Product'),
(86, 6300006, 'Dakkhin Khan', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'All Prod Rec.', 0, 1, 1, 1, 29418, '2022-06-05', 'Paid', 'Migration Product'),
(87, 6300007, 'Dakkhin Khan', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'All Prod Rec.', 0, 1, 1, 1, 29418, '2022-06-05', 'Paid', 'Migration Product'),
(88, 6300011, 'Dakkhin Khan', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-08-31', 'Paid', 'Migration Product'),
(89, 6300004, 'Dakkhin Khan', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-28', 'Paid', 'Migration Product'),
(90, 6300005, 'Dakkhin Khan', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-28', 'Paid', 'Migration Product'),
(91, 6300001, 'Dakkhin Khan', '2019-07-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-175F-RG', 'All Prod Rec.', 0, 1, 1, 1, 22406, '2019-07-23', 'Paid', 'Migration Product'),
(92, 6300002, 'Dakkhin Khan', '2019-07-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'All Prod Rec.', 0, 1, 1, 1, 30339, '2019-07-23', 'Paid', 'Migration Product'),
(93, 6300003, 'Dakkhin Khan', '2019-07-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-FF2-66', 'All Prod Rec.', 0, 1, 1, 1, 78165, '2019-07-23', 'Paid', 'Migration Product'),
(94, 1600009, 'Fotulla-1', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'All Prod Rec.', 0, 2, 2, 2, 91612, '2023-05-23', 'Paid', 'Migration Product'),
(95, 1600010, 'Fotulla-1', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'All Prod Rec.', 0, 2, 2, 2, 74851, '2023-05-23', 'Paid', 'Migration Product'),
(96, 1600011, 'Fotulla-1', '2023-05-23', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 4, 4, 4, 126920, '2023-05-23', 'Paid', 'Migration Product'),
(97, 1600012, 'Fotulla-1', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS155-RG', 'Product Shiped', 0, 1, 1, 0, 29208, '2023-05-23', 'Unpaid', 'Migration Product'),
(98, 1600013, 'Fotulla-1', '2023-05-23', 'Singer', 'Sewing Machine', 'SRSM-SS-HEAD-15CH1', 'Product Shiped', 0, 2, 2, 0, 11851, '2023-05-23', 'Unpaid', 'Migration Product'),
(99, 1600014, 'Fotulla-1', '2023-05-23', 'Singer', 'Sewing Machine', 'SRSM-TABLE-NEW', 'Product Shiped', 0, 2, 2, 0, 1881, '2023-05-23', 'Unpaid', 'Migration Product'),
(100, 1600015, 'Fotulla-1', '2023-05-23', 'Singer', 'Sewing Machine', 'SRSM-STAND-METAL-STEEL', 'Product Shiped', 0, 2, 2, 0, 4474, '2023-05-23', 'Unpaid', 'Migration Product'),
(101, 1600016, 'Fotulla-1', '2023-05-23', 'Singer', 'Sewing Machine', 'SRSM-WOODEN-COVER-NEW', 'Product Shiped', 0, 2, 2, 0, 1370, '2023-05-23', 'Unpaid', 'Migration Product'),
(102, 1600007, 'Fotulla-1', '2023-03-18', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 23230, '2023-03-18', 'Paid', 'Migration Product'),
(103, 1600008, 'Fotulla-1', '2023-03-18', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 32567, '2023-03-18', 'Paid', 'Migration Product'),
(104, 1600019, 'Fotulla-1', '2022-08-31', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 27900, 2, 2, 2, 0, '2020-10-08', 'Paid', ''),
(105, 1600020, 'Fotulla-1', '2022-08-31', 'Walton', 'Smart TV', 'W43D210EG1', 'All Prod Rec.', 38990, 1, 1, 1, 0, '2020-10-08', 'Paid', ''),
(106, 1600005, 'Fotulla-1', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'All Prod Rec.', 0, 2, 2, 2, 58837, '2022-06-05', 'Paid', 'Migration Product'),
(107, 1600006, 'Fotulla-1', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'All Prod Rec.', 0, 2, 2, 2, 58837, '2022-06-05', 'Paid', 'Migration Product'),
(108, 1600017, 'Fotulla-1', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Unpaid', 'Migration Product'),
(109, 1600004, 'Fotulla-1', '2022-04-03', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'All Prod Rec.', 0, 1, 1, 1, 27383, '2022-04-03', 'Paid', 'Migration Product'),
(110, 1600003, 'Fotulla-1', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE32E3AHDTV', 'All Prod Rec.', 0, 1, 1, 1, 15810, '2022-01-13', 'Paid', 'Migration Product'),
(111, 1600018, 'Fotulla-1', '2020-10-08', 'Singer', 'LED TV', 'SLE32E20HDTV', 'All Prod Rec.', 18990, 2, 2, 2, 0, '2020-10-08', 'Paid', 'SCS-R33561/4326719'),
(112, 1600001, 'Fotulla-1', '2019-11-27', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-27', 'Paid', 'Migration Product'),
(113, 1600002, 'Fotulla-1', '2019-11-27', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-27', 'Paid', 'Migration Product'),
(114, 7300005, 'Fotulla-2', '2023-05-23', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 2, 2, 2, 44634, '2023-05-23', 'Paid', 'Migration Product'),
(115, 7300006, 'Fotulla-2', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'All Prod Rec.', 0, 1, 1, 1, 34437, '2023-05-23', 'Paid', 'Migration Product'),
(116, 7300007, 'Fotulla-2', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-BG', 'All Prod Rec.', 0, 1, 1, 1, 34437, '2023-05-23', 'Paid', 'Migration Product'),
(117, 7300004, 'Fotulla-2', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(118, 7300003, 'Fotulla-2', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 2, 2, 2, 46559, '2022-06-05', 'Paid', 'Migration Product'),
(119, 7300008, 'Fotulla-2', '2022-04-12', 'Walton', 'Smart TV', 'W43D210EG1', 'Product Shiped', 0, 1, 1, 0, 31400, '2022-04-12', 'Unpaid', 'Migration Product'),
(120, 7300002, 'Fotulla-2', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-13', 'Paid', 'Migration Product'),
(121, 7300001, 'Fotulla-2', '2019-07-22', 'Singer', 'Refrigerator', 'SRREF-SINGER-DD2-29-BG', 'All Prod Rec.', 0, 1, 1, 1, 30947, '2019-07-22', 'Paid', 'Migration Product'),
(122, 5700009, 'Panchaboti', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'All Prod Rec.', 0, 2, 2, 2, 74851, '2023-05-23', 'Paid', 'Migration Product'),
(123, 5700010, 'Panchaboti', '2023-05-23', 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'All Prod Rec.', 0, 2, 2, 2, 91612, '2023-05-23', 'Paid', 'Migration Product'),
(124, 5700008, 'Panchaboti', '2023-03-18', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 2, 2, 2, 70199, '2023-03-18', 'Paid', 'Migration Product'),
(125, 5700007, 'Panchaboti', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(126, 5700005, 'Panchaboti', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(127, 5700006, 'Panchaboti', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(128, 5700011, 'Panchaboti', '2022-04-12', 'Walton', 'Smart TV', 'W43D210EG1', 'All Prod Rec.', 0, 1, 1, 1, 31400, '2022-04-12', 'Paid', 'Migration Product'),
(129, 5700004, 'Panchaboti', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-13', 'Paid', 'Migration Product'),
(130, 5700002, 'Panchaboti', '2019-11-27', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-27', 'Paid', 'Migration Product'),
(131, 5700003, 'Panchaboti', '2019-11-27', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-27', 'Paid', 'Migration Product'),
(132, 5700001, 'Panchaboti', '2019-07-15', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-273R-BG', 'All Prod Rec.', 0, 1, 1, 1, 32130, '2019-07-15', 'Paid', 'Migration Product'),
(133, 4400008, 'Lalbag', '2023-05-22', 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'All Prod Rec.', 0, 1, 1, 1, 45806, '2023-05-22', 'Paid', 'Migration Product'),
(134, 4400009, 'Lalbag', '2023-05-22', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'All Prod Rec.', 0, 1, 1, 1, 37426, '2023-05-22', 'Paid', 'Migration Product'),
(135, 4400007, 'Lalbag', '2023-03-18', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 32567, '2023-03-18', 'Paid', 'Migration Product'),
(136, 4400006, 'Lalbag', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 2, 2, 2, 62055, '2022-11-29', 'Paid', 'Migration Product'),
(137, 4400004, 'Lalbag', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(138, 4400005, 'Lalbag', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(139, 4400010, 'Lalbag', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(140, 4400003, 'Lalbag', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(141, 4400001, 'Lalbag', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(142, 4400002, 'Lalbag', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(143, 2000011, 'Dhanmondi', '2023-05-22', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 22317, '2023-05-22', 'Paid', 'Migration Product'),
(144, 2000012, 'Dhanmondi', '2023-05-22', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31730, '2023-05-22', 'Paid', 'Migration Product'),
(145, 2000010, 'Dhanmondi', '2023-03-18', 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'All Prod Rec.', 0, 1, 1, 1, 23230, '2023-03-18', 'Paid', 'Migration Product'),
(146, 2000009, 'Dhanmondi', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 2, 2, 2, 62055, '2022-11-29', 'Paid', 'Migration Product'),
(147, 2000014, 'Dhanmondi', '2022-08-31', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 27900, 1, 1, 1, 0, '2022-08-31', 'Paid', ''),
(148, 2000006, 'Dhanmondi', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Product Shiped', 0, 1, 1, 0, 23279, '2022-06-05', 'Unpaid', 'Migration Product'),
(149, 2000007, 'Dhanmondi', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'Product Shiped', 0, 1, 1, 0, 23279, '2022-06-05', 'Unpaid', 'Migration Product'),
(150, 2000008, 'Dhanmondi', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-RG', 'Product Shiped', 0, 1, 1, 0, 33879, '2022-06-05', 'Unpaid', 'Migration Product'),
(151, 2000013, 'Dhanmondi', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-08-31', 'Paid', 'Migration Product'),
(152, 2000005, 'Dhanmondi', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(153, 2000001, 'Dhanmondi', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-11-28', 'Paid', 'Migration Product'),
(154, 2000002, 'Dhanmondi', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Product Shiped', 0, 1, 1, 0, 25017, '2019-11-28', 'Unpaid', 'Migration Product'),
(155, 2000003, 'Dhanmondi', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Product Shiped', 0, 2, 2, 0, 29112, '2019-11-28', 'Unpaid', 'Migration Product'),
(156, 2000004, 'Dhanmondi', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-11-28', 'Paid', 'Migration Product'),
(157, 5300006, 'Shamoly', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(158, 5300005, 'Shamoly', '2022-06-07', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'All Prod Rec.', 0, 2, 2, 2, 58837, '2022-06-07', 'Paid', 'Migration Product'),
(159, 5300007, 'Shamoly', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-09-12', 'Paid', 'Migration Product'),
(160, 5300003, 'Shamoly', '2022-01-12', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-12', 'Paid', 'Migration Product'),
(161, 5300004, 'Shamoly', '2022-01-12', 'Singer', 'Sewing Machine', 'SRSM-STAND-METAL-STEEL', 'All Prod Rec.', 0, 1, 1, 1, 1792, '2022-01-12', 'Paid', 'Migration Product'),
(162, 5300001, 'Shamoly', '2019-11-28', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-01', 'Paid', 'Migration Product'),
(163, 5300002, 'Shamoly', '2019-11-28', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-01', 'Paid', 'Migration Product'),
(164, 1400008, 'Armanitola', '2023-03-19', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 35100, '2023-03-19', 'Paid', 'Migration Product'),
(165, 1400006, 'Armanitola', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(166, 1400007, 'Armanitola', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-29', 'Paid', 'Migration Product'),
(167, 1400004, 'Armanitola', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(168, 1400005, 'Armanitola', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(169, 1400009, 'Armanitola', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(170, 1400003, 'Armanitola', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 21058, '2022-01-13', 'Paid', 'Migration Product'),
(171, 1400001, 'Armanitola', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(172, 1400002, 'Armanitola', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(173, 1200011, 'Noyabazar-1', '2023-05-24', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'All Prod Rec.', 0, 1, 1, 1, 37426, '2023-05-24', 'Paid', 'Migration Product'),
(174, 1200012, 'Noyabazar-1', '2023-05-24', 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-BUG', 'All Prod Rec.', 0, 1, 1, 1, 37426, '2023-05-24', 'Paid', 'Migration Product'),
(175, 1200010, 'Noyabazar-1', '2023-03-19', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 35100, '2023-03-19', 'Paid', 'Migration Product'),
(176, 1200009, 'Noyabazar-1', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(177, 1200007, 'Noyabazar-1', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(178, 1200008, 'Noyabazar-1', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(179, 1200013, 'Noyabazar-1', '2022-04-12', 'Walton', 'Smart TV', 'W43D210EG1', 'All Prod Rec.', 0, 1, 1, 1, 31400, '2022-04-12', 'Paid', 'Migration Product'),
(180, 1200005, 'Noyabazar-1', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE43A7000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31775, '2022-01-13', 'Paid', 'Migration Product'),
(181, 1200006, 'Noyabazar-1', '2022-01-13', 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'All Prod Rec.', 0, 3, 3, 3, 63173, '2022-01-13', 'Paid', 'Migration Product'),
(182, 1200003, 'Noyabazar-1', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(183, 1200004, 'Noyabazar-1', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(184, 1200001, 'Noyabazar-1', '2019-07-25', 'Singer', 'Air Conditioner', 'SRAC-SAS18AURVM', 'Product Shiped', 0, 1, 1, 0, 56339, '2019-07-25', 'Unpaid', 'Migration Product'),
(185, 1200002, 'Noyabazar-1', '2019-07-25', 'Singer', 'Air Conditioner', 'SRAC-SAS24AURVM', 'Product Shiped', 0, 1, 1, 0, 74513, '2019-07-25', 'Unpaid', 'Migration Product'),
(186, 12500004, 'Noyabazar-2', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(187, 12500005, 'Noyabazar-2', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'All Prod Rec.', 0, 1, 1, 1, 31027, '2022-11-29', 'Paid', 'Migration Product'),
(188, 12500003, 'Noyabazar-2', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(189, 12500006, 'Noyabazar-2', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(190, 12500001, 'Noyabazar-2', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(191, 12500002, 'Noyabazar-2', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(192, 12500007, 'Noyabazar-2', '2019-07-25', 'Singer', 'Air Conditioner', 'SRAC-SAS18AURVM', 'All Prod Rec.', 56339, 1, 1, 1, 0, '2019-07-25', 'Paid', 'Extra'),
(193, 9000005, 'Noyabazar-3', '2022-11-29', 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'All Prod Rec.', 0, 2, 2, 2, 42350, '2022-11-29', 'Paid', 'Migration Product'),
(194, 9000003, 'Noyabazar-3', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(195, 9000004, 'Noyabazar-3', '2022-06-05', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'All Prod Rec.', 0, 1, 1, 1, 23279, '2022-06-05', 'Paid', 'Migration Product'),
(196, 9000006, 'Noyabazar-3', '2022-04-12', 'Walton', 'Smart TV', 'W32D120HG3', 'All Prod Rec.', 0, 1, 1, 1, 21400, '2022-04-12', 'Paid', 'Migration Product'),
(197, 9000001, 'Noyabazar-3', '2019-12-08', 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'All Prod Rec.', 0, 2, 2, 2, 29112, '2019-12-08', 'Paid', 'Migration Product'),
(198, 9000002, 'Noyabazar-3', '2019-12-08', 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'All Prod Rec.', 0, 1, 1, 1, 25017, '2019-12-08', 'Paid', 'Migration Product'),
(199, 9000007, 'Noyabazar-3', '2019-12-08', 'Singer', 'Refrigerator', 'SCS-R27429', 'Product Shiped', 24774, 1, 1, 0, 0, '0000-00-00', 'Unpaid', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `consumer_products`
--

CREATE TABLE `consumer_products` (
  `id` int(3) NOT NULL,
  `idcode` int(4) DEFAULT NULL,
  `Branch name` varchar(12) DEFAULT NULL,
  `Product Recieved Date` date DEFAULT NULL,
  `Challan/Bill No` varchar(20) DEFAULT NULL,
  `Order ID` varchar(8) DEFAULT NULL,
  `Recieved ID` int(7) DEFAULT NULL,
  `Distributor Name` varchar(6) DEFAULT NULL,
  `Product Name` varchar(15) DEFAULT NULL,
  `Model No` varchar(24) DEFAULT NULL,
  `Product Status` varchar(10) DEFAULT NULL,
  `Product Purchase Price` int(5) DEFAULT NULL,
  `Product Salable Price` int(5) DEFAULT NULL,
  `Staff Comission` int(3) DEFAULT NULL,
  `Purchase/Transfer` varchar(10) DEFAULT NULL,
  `Sale` varchar(4) DEFAULT NULL,
  `Return` varchar(6) DEFAULT NULL,
  `Transfer` varchar(8) DEFAULT NULL,
  `Service Req` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_products`
--

INSERT INTO `consumer_products` (`id`, `idcode`, `Branch name`, `Product Recieved Date`, `Challan/Bill No`, `Order ID`, `Recieved ID`, `Distributor Name`, `Product Name`, `Model No`, `Product Status`, `Product Purchase Price`, `Product Salable Price`, `Staff Comission`, `Purchase/Transfer`, `Sale`, `Return`, `Transfer`, `Service Req`) VALUES
(1, 6316, 'Badda', '2019-06-22', '3520762/SCS-R23729', '', 220013, 'Singer', 'Smart TV', 'SRTV-SLE43A7000STC', 'Soldout', 39122, 44990, 500, 'Transfered', '', '', '', 'Service Req'),
(2, 6135, 'Badda', '2019-11-28', 'SCS-R27338/3812337', '2200002', 220012, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(3, 6130, 'Badda', '2019-11-28', 'SCS-R27338/3812337', '2200002', 220011, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(4, 6118, 'Badda', '2019-11-28', 'SCS-R27338/3812337', '2200001', 220010, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(5, 6096, 'Badda', '2022-01-12', 'SCS-R46452/5009018', '2200003', 220009, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(6, 6076, 'Badda', '2022-04-12', '623035075', '2200009', 220008, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(7, 6052, 'Badda', '2022-06-07', 'SCS-R52110/5233615', '2200005', 220007, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(8, 6028, 'Badda', '2022-06-07', 'SCS-R52110/5233615', '2200004', 220006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Stock in', 27817, 31990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(9, 5976, 'Badda', '2022-11-29', 'SCS-R58206/5536846', '2200007', 220005, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25208, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(10, 5931, 'Badda', '2022-11-29', 'SCS-R58206/5536846', '2200007', 220004, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(11, 5914, 'Badda', '2022-11-29', 'SCS-R58206/5536846', '2200006', 220003, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37383, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(12, 5880, 'Badda', '2023-05-22', 'SCS-R65474/5783907', '2200008', 220002, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 32600, 37490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(13, 5856, 'Badda', '2023-05-22', 'scs-r65474/5783907', '2200008', 220001, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 32500, 37490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(14, 6044, 'Konapara', '2022-06-05', 'SCS-R52080/5230347', '2400006', 240009, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(15, 6029, 'Konapara', '2022-06-05', 'SCS-R52080/5230347', '2400007', 240008, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(16, 5981, 'Konapara', '2022-04-12', '623035075', '2400008', 240007, 'Walton', 'Smart TV', 'W32D120HG3', 'Stock in', 21400, 27900, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(17, 5967, 'Konapara', '2022-01-18', 'SCS-R46454/5016178', '2400005', 240006, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 21774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(18, 5943, 'Konapara', '2019-12-05', 'SCS-R27403/3819756', '2400003', 240005, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Stock in', 14339, 16490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(19, 5924, 'Konapara', '2019-12-05', 'SCS-R27403/3819756', '2400003', 240004, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 17490, 500, 'Purchase', '', '', '', 'Service Req'),
(20, 5891, 'Konapara', '2019-12-05', 'SCS-R27403/3819756', '2400004', 240003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(21, 5869, 'Konapara', '2019-07-13', 'SCS-R24487/3559001', '2400001', 240002, 'Singer', 'Smart TV', 'SRTV-SLE43A7000STC', 'Soldout', 39122, 44990, 0, 'Purchase', '', '', '', 'Service Req'),
(22, 5862, 'Konapara', '2019-07-13', 'SCS-R24487/3559001', '2400002', 240001, 'Singer', 'Microwave Oven', 'SRMO-SMW-G30G6', 'Soldout', 9991, 11490, 0, 'Purchase', '', '', '', 'Service Req'),
(23, 6103, 'Sabuzbag', '2019-07-15', 'SCS-R24481/3558995', '2600001', 260015, 'Singer', 'Microwave Oven', 'SRMO-SMW-30GCB6', 'Soldout', 13217, 15200, 0, 'Purchase', '', '', '', 'Service Req'),
(24, 6079, 'Sabuzbag', '2019-12-08', 'SCS-R 27407/3821629', '2600004', 260013, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(25, 6068, 'Sabuzbag', '2019-12-08', 'SCS-R 27407/3821629', '2600004', 260012, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(26, 6053, 'Sabuzbag', '2019-12-08', 'SCS-R 27407/3821629', '2600003', 260011, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(27, 6034, 'Sabuzbag', '2020-10-08', 'SCS-R33643/4327382', '2600006', 260010, 'Singer', 'Smart TV', 'SRTV-SLE43A7000GOTV', 'Soldout', 39122, 44990, 500, 'Purchase', '', '', '', 'Service Req'),
(28, 6016, 'Sabuzbag', '2020-10-08', 'SCS-R33643/4327382', '2600005', 260009, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 23035, 26490, 500, 'Purchase', '', '', '', 'Service Req'),
(29, 5988, 'Sabuzbag', '2022-01-12', 'SCS-R16151', '2600007', 260008, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Stock in', 24774, 28490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(30, 5970, 'Sabuzbag', '2022-04-12', '0', '2600012', 260007, 'Walton', 'Smart TV', 'W32D120HG3', 'Stock in', 21400, 27900, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(31, 5956, 'Sabuzbag', '2022-06-08', 'SCS-R52078/5234561', '2600008', 260006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27818, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(32, 5930, 'Sabuzbag', '2022-06-08', 'SCS-R52078', '2600008', 260005, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(33, 5895, 'Sabuzbag', '2022-11-30', 'SCS-R58205/5538448', '2600010', 260004, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 37383, 42990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(34, 5885, 'Sabuzbag', '2022-11-30', 'SCS-R58205/5538448', '2600009', 260003, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(35, 5868, 'Sabuzbag', '2022-11-30', 'SCS-R58205/5538448', '2600009', 260002, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25208, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(36, 5852, 'Sabuzbag', '2023-03-20', 'SCS-R 62101/5676586', '2600011', 260001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Stock in', 33904, 38990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(37, 6089, 'Jatrabari', '2019-06-17', '3520762/SCS-R23729', '4000003', 400011, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 16078, 18490, 500, 'Purchase', '', '', '', 'Service Req'),
(38, 6083, 'Jatrabari', '2019-06-17', '3520762/SCS-R23729', '4000002', 400010, 'Singer', 'Smart TV', 'SRTV-SLE43A7000STC', 'Transfered', 39122, 44990, 500, 'Purchase', '', '', '', 'Service Req'),
(39, 6066, 'Jatrabari', '2019-06-17', '3520762/SCS-R23729', '4000001', 400009, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-273R-RG', 'Transfered', 32165, 36990, 500, 'Purchase', '', '', '', 'Service Req'),
(40, 6047, 'Jatrabari', '2022-01-12', '5009411', '4000004', 400008, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(41, 5997, 'Jatrabari', '2022-04-12', 'o', '4000009', 400007, 'Walton', 'Smart TV', 'W32D120HG3', 'Stock in', 21400, 27900, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(42, 5986, 'Jatrabari', '2022-06-01', '5225252/SCS-R52052', '4000005', 400006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'Soldout', 34948, 41490, 500, 'Purchase', '', '', '', 'Service Req'),
(43, 5964, 'Jatrabari', '2022-06-01', '5225252/SCS-R52052', '4000005', 400005, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'Soldout', 34948, 40490, 500, 'Purchase', '', '', '', 'Service Req'),
(44, 5921, 'Jatrabari', '2022-11-06', '5501793/SCS-R57079', '4000006', 400004, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 36513, 41990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(45, 5913, 'Jatrabari', '2022-11-06', '5501793/SCS-R57079', '4000006', 400003, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 36513, 41990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(46, 5879, 'Jatrabari', '2023-05-23', '5785509.SCS-R65176', '4000008', 400002, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-RG', 'Soldout', 34774, 39990, 500, 'Purchase', '', '', '', 'Service Req'),
(47, 5848, 'Jatrabari', '2019-06-17', '5785509', '4000007', 400001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'Stock in', 33035, 37990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(48, 9459, 'Postogola', '2019-07-22', 'SCS-R25264/3579071', '6900010', 690014, 'Singer', 'LED TV', 'SLE32W5STV', 'Soldout', 22600, 25990, 500, 'Purchase', '', '', '', 'Service Req'),
(49, 8387, 'Postogola', '2022-10-08', 'SCS-R466157/5010331', '', 690013, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Transfered', '', '', '', 'Service Req'),
(50, 7967, 'Postogola', '2019-07-22', 'SCS-R25264/3579071', '6900001', 690012, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'Soldout', 30426, 34990, 500, 'Purchase', '', '', '', 'Service Req'),
(51, 7966, 'Postogola', '2019-12-08', 'SCS-R27421/3821596', '6900003', 690011, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(52, 7965, 'Postogola', '2019-12-08', 'SCS-R27421/3821596', '6900003', 690010, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(53, 7964, 'Postogola', '2019-12-08', 'SCS-R27421/3821596', '6900002', 690009, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(54, 7963, 'Postogola', '2022-01-12', 'SCS-R46459/5009419', '6900004', 690008, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(55, 7962, 'Postogola', '2022-06-05', 'SCS-R52084/5230309', '6900006', 690007, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(56, 7961, 'Postogola', '2022-06-05', 'SCS-R52084', '6900005', 690006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(57, 7957, 'Postogola', '2022-04-12', '623035075', '6900009', 690005, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(58, 7955, 'Postogola', '2022-11-28', 'SCS-R58189/5535762', '6900007', 690004, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(59, 7953, 'Postogola', '2022-11-28', 'SCS-R58189/5535762', '6900007', 690003, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(60, 7952, 'Postogola', '2023-03-18', 'SCS-R62106/5674205', '6900008', 690002, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Stock in', 33904, 38990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(61, 7940, 'Postogola', '2023-03-18', 'SCS-R62106/5674205', '6900008', 690001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Stock in', 33904, 38990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(62, 9332, 'Azampur', '2019-06-23', 'SCS-R23730/3530191', '1000014', 100017, 'Singer', 'LED TV', 'SLE28D1620TC', 'Soldout', 14426, 16590, 500, 'Purchase', '', '', '', 'Service Req'),
(63, 8003, 'Azampur', '2022-11-30', 'SCS-R58208/5538161', '1000010', 100016, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Transfered', 25208, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(64, 8001, 'Azampur', '2022-11-30', 'SCS-R58208/5538161', '1000010', 100015, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Transfered', 25208, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(65, 6167, 'Azampur', '2022-04-12', '623035075', '1000013', 100014, 'Walton', 'Smart TV', 'W43D210EG1', 'Soldout', 31400, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(66, 6152, 'Azampur', '2019-11-28', 'SCS-R27370/3812346', '1000002', 100013, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(67, 6142, 'Azampur', '2019-11-28', 'SCS-R27370/3812346', '1000002', 100012, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(68, 6129, 'Azampur', '2019-11-28', 'SCS-R27370/3812346', '1000001', 100011, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(69, 6115, 'Azampur', '2022-01-12', 'SCS-R46460/5009488', '1000005', 100010, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(70, 6100, 'Azampur', '2022-06-15', 'SCS-R53143/5247544', '1000006', 100009, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BUG', 'Soldout', 28686, 32990, 500, 'Purchase', '', '', '', 'Service Req'),
(71, 6091, 'Azampur', '2022-06-15', 'SCS-R53143/5247544', '1000006', 100008, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BUG', 'Soldout', 28686, 32990, 500, 'Purchase', '', '', '', 'Service Req'),
(72, 6067, 'Azampur', '2022-06-15', 'SCS-R53143/5247544', '1000007', 100007, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'Soldout', 28689, 32990, 500, 'Purchase', '', '', '', 'Service Req'),
(73, 5977, 'Azampur', '2022-11-30', 'SCS-R58208/5538161', '1000009', 100004, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'Soldout', 31295, 35990, 500, 'Purchase', '', '', '', 'Service Req'),
(74, 5948, 'Azampur', '2022-11-30', 'SCS-R58208/5538161', '1000008', 100003, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37383, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(75, 5904, 'Azampur', '2023-05-23', 'SCS-R65458 5784980', '1000012', 100002, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(76, 5887, 'Azampur', '2023-05-23', 'SCS-R65458/5784980', '1000011', 100001, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(77, 9860, 'Uttara', '2020-01-14', 'SCSR-28509/3866096', '10300019', 1030025, 'Singer', 'Smart TV', 'Singer-SLE32A7000STC', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(78, 9339, 'Uttara', '2020-01-14', 'SCS-R28509/3866096', '10300018', 1030024, 'Singer', 'Rice Cooker', 'Singer-SRCFN1730DRRC', 'Soldout', 2087, 2400, 0, 'Purchase', '', '', '', 'Service Req'),
(79, 7450, 'Uttara', '2022-12-12', 'SCS-R58506', '10300015', 1030023, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(80, 7448, 'Uttara', '2020-03-02', 'SCS-R29644/3930647', '10300009', 1030022, 'Singer', 'Sewing Machine', 'SRSM-STAND-METAL-STEEL', 'Soldout', 1818, 2090, 0, 'Purchase', '', '', '', 'Service Req'),
(81, 7445, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300008', 1030021, 'Singer', 'Sewing Machine', 'SRSM-WOODEN-COVER-NEW', 'Soldout', 522, 600, 0, 'Purchase', '', '', '', 'Service Req'),
(82, 7444, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300007', 1030020, 'Singer', 'Sewing Machine', 'SRSM-TABLE-NEW', 'Soldout', 809, 930, 0, 'Purchase', '', '', '', 'Service Req'),
(83, 7439, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300006', 1030019, 'Singer', 'Sewing Machine', 'SRSM-SS-HEAD-15CH1', 'Soldout', 4174, 4800, 0, 'Purchase', '', '', '', 'Service Req'),
(84, 7433, 'Uttara', '2022-11-28', 'SCS-R58193/5535544', '10300014', 1030018, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37383, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(85, 7425, 'Uttara', '2022-11-28', 'SCS-R58193/5535544', '10300013', 1030017, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(86, 7388, 'Uttara', '2022-11-28', 'SCS-R58193/5535544', '10300013', 1030016, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(87, 7383, 'Uttara', '2022-11-28', 'SCS-R58193/5535544', '10300013', 1030015, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Transfered', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(88, 7370, 'Uttara', '2022-04-12', '623035075', '10300016', 1030014, 'Walton', 'Smart TV', 'W43D210EG1', 'Soldout', 31400, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(89, 7368, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300005', 1030013, 'Singer', 'Smart TV', 'SRTV-SLE32A7000STC', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(90, 7367, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300005', 1030012, 'Singer', 'Smart TV', 'SRTV-SLE32A7000STC', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(91, 7363, 'Uttara', '2020-02-23', 'SCS-R29434/3918145', '10300004', 1030011, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-GG', 'Soldout', 30426, 34990, 500, 'Purchase', '', '', '', 'Service Req'),
(92, 7353, 'Uttara', '2019-12-10', 'SCS-R27878/3825248', '10300003', 1030010, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-BG', 'Soldout', 26948, 30990, 500, 'Purchase', '', '', '', 'Service Req'),
(93, 7348, 'Uttara', '2019-11-28', 'SCS-R27360/3812340', '10300001', 1030009, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(94, 7341, 'Uttara', '2019-11-28', 'SCS-R27360/3812340', '10300001', 1030008, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(95, 7331, 'Uttara', '2019-11-28', 'SCS-R27360/3812340', '10300002', 1030007, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(96, 7317, 'Uttara', '2022-01-12', 'SCS-R46462/5009484', '10300010', 1030006, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(97, 7305, 'Uttara', '2022-11-06', 'SCS-R57080/5501505', '10300012', 1030005, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(98, 7299, 'Uttara', '2022-06-02', 'SCS-R52094/5226468', '10300011', 1030004, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'Soldout', 29991, 34490, 500, 'Purchase', '', '', '', 'Service Req'),
(99, 7290, 'Uttara', '2022-06-02', 'SCS-R52094/5226468', '10300011', 1030003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'Soldout', 29991, 34490, 500, 'Purchase', '', '', '', 'Service Req'),
(100, 8009, 'Dakkhin Khan', '2023-05-16', 'SCS-R58208/5538161', '', 630014, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Transfered', '', '', '', 'Service Req'),
(101, 8008, 'Dakkhin Khan', '2023-03-20', 'SCS-R58208/5538161', '', 630013, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Transfered', '', '', '', 'Service Req'),
(102, 6169, 'Dakkhin Khan', '2019-07-23', 'SCS-R25287/3581757', '6300003', 630012, 'Singer', 'Refrigerator', 'SRREF-SINGER-FF2-66', 'Soldout', 25843, 29720, 500, 'Purchase', '', '', '', 'Service Req'),
(103, 6165, 'Dakkhin Khan', '2019-07-23', 'SCS-R25297/3581756', '6300002', 630011, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-243R-BG', 'Soldout', 30426, 34990, 500, 'Purchase', '', '', '', 'Service Req'),
(104, 6156, 'Dakkhin Khan', '2019-07-23', 'SCS-R25312/3581753', '6300001', 630010, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-175F-RG', 'Soldout', 78252, 89990, 500, 'Purchase', '', '', '', 'Service Req'),
(105, 6145, 'Dakkhin Khan', '2019-11-28', 'SCS-R27347/3812338', '6300005', 630009, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(106, 6127, 'Dakkhin Khan', '2019-11-28', 'SCS-R273447/3812338', '6300004', 630008, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(107, 6110, 'Dakkhin Khan', '2019-11-28', 'SCS-R27347/3812338', '6300004', 630007, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(108, 6061, 'Dakkhin Khan', '2022-08-31', '623035075', '6300011', 630006, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 22900, 500, 'Purchase', '', '', '', 'Service Req'),
(109, 5963, 'Dakkhin Khan', '2022-06-05', 'SCS-R52093/5230457', '6300007', 630005, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'Soldout', 32686, 37590, 500, 'Purchase', '', '', '', 'Service Req'),
(110, 5944, 'Dakkhin Khan', '2022-06-05', 'SCS-R52093/5230457', '6300006', 630004, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'Soldout', 32686, 37590, 500, 'Purchase', '', '', '', 'Service Req'),
(111, 5909, 'Dakkhin Khan', '2023-03-18', 'SCS-R62102/5673968', '6300008', 630003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(112, 5877, 'Dakkhin Khan', '2023-05-23', 'SCS-R65457/578497', '6300010', 630002, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(113, 5854, 'Dakkhin Khan', '2023-05-23', 'SCS-R65457/5784979', '6300009', 630001, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS185-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(114, 9473, 'Fotulla-1', '2020-10-08', '623035075', '1600019', 160027, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(115, 9472, 'Fotulla-1', '2020-10-08', '623035075', '1600019', 160026, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(116, 9471, 'Fotulla-1', '2020-10-08', '623035075', '1600020', 160025, 'Walton', 'Smart TV', 'W43D210EG1', 'Soldout', 31400, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(117, 9463, 'Fotulla-1', '2020-10-08', '432619/SCS-R33561', '1600018', 160024, 'Singer', 'LED TV', 'SLE32E20HDTV', 'Soldout', 16513, 18990, 500, 'Purchase', '', '', '', 'Service Req'),
(118, 9462, 'Fotulla-1', '2020-10-08', '432619/SCS-R33561', '1600018', 160023, 'Singer', 'LED TV', 'SLE32E20HDTV', 'Soldout', 16513, 18990, 500, 'Purchase', '', '', '', 'Service Req'),
(119, 7400, 'Fotulla-1', '2023-03-09', 'SCS-R52096/5230300', '', 160022, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 31990, 500, 'Transfered', '', '', '', 'Service Req'),
(120, 7182, 'Fotulla-1', '2023-03-09', 'SCS-R58209/5537249', '', 160021, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 31990, 500, 'Transfered', '', '', '', 'Service Req'),
(121, 7180, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600011', 160020, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 32600, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(122, 7176, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600011', 160019, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 32600, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(123, 7173, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600011', 160018, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 32600, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(124, 7169, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600011', 160017, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 32600, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(125, 7165, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600010', 160016, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Soldout', 35643, 40990, 500, 'Purchase', '', '', '', 'Service Req'),
(126, 7164, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600010', 160015, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Soldout', 35643, 40990, 500, 'Purchase', '', '', '', 'Service Req'),
(127, 7161, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600009', 160014, 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'Stock in', 44339, 50990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(128, 7158, 'Fotulla-1', '2023-05-23', 'SCS-R65467/5784990', '1600009', 160013, 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'Soldout', 44339, 50990, 500, 'Purchase', '', '', '', 'Service Req'),
(129, 7151, 'Fotulla-1', '2023-03-18', 'SCS-R62103/5674219', '1600008', 160012, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 31730, 36490, 500, 'Purchase', '', '', '', 'Service Req'),
(130, 7147, 'Fotulla-1', '2023-03-18', 'SCS-R62103/5674219', '1600007', 160011, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 22600, 25990, 500, 'Purchase', '', '', '', 'Service Req'),
(131, 7143, 'Fotulla-1', '2022-06-05', 'SCS-R52490/5230759', '1600006', 160010, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(132, 7142, 'Fotulla-1', '2022-06-05', 'SCS-R52490/5230759', '1600006', 160009, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(133, 7140, 'Fotulla-1', '2022-06-05', 'SCS-R52490/5230759', '1600005', 160008, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(134, 7139, 'Fotulla-1', '2022-06-05', 'SCS-R52490/5230759', '1600005', 160007, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(135, 7130, 'Fotulla-1', '2022-04-03', 'SCS-R49331/5127407', '1600004', 160006, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-BG', 'Soldout', 30426, 34990, 500, 'Purchase', '', '', '', 'Service Req'),
(136, 7129, 'Fotulla-1', '2022-01-13', 'SCS-R46484/5010348', '1600003', 160005, 'Singer', 'Smart TV', 'SRTV-SLE32E3AHDTV', 'Soldout', 18600, 21390, 500, 'Purchase', '', '', '', 'Service Req'),
(137, 7125, 'Fotulla-1', '2022-04-12', '623035075', '1600017', 160004, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(138, 7113, 'Fotulla-1', '2019-11-27', 'SCS-R27397/3811142', '1600001', 160003, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(139, 7111, 'Fotulla-1', '2019-11-27', 'SCS-R27397/3811142', '1600001', 160002, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(140, 7108, 'Fotulla-1', '2019-11-27', 'SCS-R27397/3811142', '1600002', 160001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(141, 8475, 'Fotulla-2', '2022-06-05', 'SCS-R52096/5230300', '7300003', 730011, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(142, 5974, 'Fotulla-2', '2019-07-22', 'BD06T02126/3579079', '7300001', 730010, 'Singer', 'Refrigerator', 'SRREF-SINGER-DD2-29-BG', 'Soldout', 30426, 34990, 500, 'Purchase', '', '', '', 'Service Req'),
(143, 5955, 'Fotulla-2', '2022-01-13', 'SCS-R466157/5010331', '7300002', 730009, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Transfered', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(144, 5928, 'Fotulla-2', '2022-11-29', 'SCS-R58209/5537249', '7300004', 730008, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28980, 500, 'Purchase', '', '', '', 'Service Req'),
(145, 5906, 'Fotulla-2', '2022-11-29', 'SCS-R58209/5537249', '7300004', 730007, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Transfered', 25209, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(146, 5875, 'Fotulla-2', '2022-06-05', 'SCS-R52096/5230300', '7300003', 730005, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Transfered', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(147, 5860, 'Fotulla-2', '2023-05-23', 'SCS-R655470/5785504', '7300007', 730004, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-BG', 'Stock in', 33034, 37990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(148, 5857, 'Fotulla-2', '2023-05-23', 'SCS-R65570', '7300006', 730003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-208R-RG', 'Soldout', 33034, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(149, 5845, 'Fotulla-2', '2023-05-23', 'SCS-R65470/5785504', '7300005', 730002, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Stock in', 21730, 24990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(150, 5841, 'Fotulla-2', '2023-05-23', 'SCS-R65470/578550', '7300005', 730001, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Stock in', 21730, 24990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(151, 6098, 'Panchaboti', '2019-07-15', 'SCS-R24486/3564811', '5700001', 570016, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-273R-BG', 'Soldout', 32165, 36990, 500, 'Purchase', '', '', '', 'Service Req'),
(152, 6087, 'Panchaboti', '2019-11-27', 'SCS-R27415/3811214', '5700003', 570015, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(153, 6080, 'Panchaboti', '2019-11-27', 'SCS-R65463/5784988', '5700003', 570014, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(154, 6055, 'Panchaboti', '2019-11-27', 'SCS-R27415/3811214', '5700002', 570013, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(155, 6041, 'Panchaboti', '2022-01-13', 'SCS-R46158', '5700004', 570012, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Stock in', 24774, 28490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(156, 6012, 'Panchaboti', '2022-04-12', '623035075', '5700011', 570011, 'Walton', 'Smart TV', 'W43D210EG1', 'Soldout', 31400, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(157, 5993, 'Panchaboti', '2022-06-05', 'SCS-R52098/5230467', '5700006', 570010, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(158, 5980, 'Panchaboti', '2022-06-05', 'SCS-R52098/5230467', '5700005', 570009, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'Soldout', 27817, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(159, 5960, 'Panchaboti', '2022-11-29', 'SCS-R58211/5537256', '5700007', 570008, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(160, 5950, 'Panchaboti', '2022-11-29', 'SCS-R58211/5537256', '5700007', 570007, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(161, 5908, 'Panchaboti', '2023-03-18', 'SCS-R62104/5674212', '5700008', 570006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(162, 5897, 'Panchaboti', '2023-03-18', 'SCS-R62104/5674212', '5700008', 570005, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(163, 5876, 'Panchaboti', '2023-05-23', 'SCS-R65463/5784988', '5700010', 570004, 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'Soldout', 44339, 50990, 500, 'Purchase', '', '', '', 'Service Req'),
(164, 5866, 'Panchaboti', '2023-05-23', 'SCS-R65463/5784988', '5700010', 570003, 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'Soldout', 44339, 50990, 500, 'Purchase', '', '', '', 'Service Req'),
(165, 5858, 'Panchaboti', '2023-05-23', 'SCS-R65463/5784988', '5700009', 570002, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Stock in', 35644, 40990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(166, 5849, 'Panchaboti', '2023-05-23', 'SCS-R65463/5784988', '5700009', 570001, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Stock in', 35644, 40990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(167, 8647, 'Lalbag', '2019-12-08', 'SCS-R27411', '4400001', 440012, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(168, 8646, 'Lalbag', '2019-12-08', 'SCS-R27411', '4400002', 440011, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14556, 18990, 500, 'Purchase', '', '', '', 'Service Req'),
(169, 8645, 'Lalbag', '2019-12-08', 'SCS-R27411', '4400002', 440010, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14556, 18890, 500, 'Purchase', '', '', '', 'Service Req'),
(170, 6234, 'Lalbag', '2022-01-12', 'SCS-R46471/5009009', '4400003', 440009, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(171, 5966, 'Lalbag', '2022-04-12', '0', '4400010', 440008, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(172, 5951, 'Lalbag', '2022-06-05', 'SCS-R52090/5230681', '4400005', 440007, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-NG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(173, 5940, 'Lalbag', '2022-06-05', 'SCS-R52090', '4400004', 440006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(174, 5918, 'Lalbag', '2022-11-29', 'SCS-R58214/5536885', '4400006', 440005, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37382, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(175, 5912, 'Lalbag', '2022-11-29', 'SCS-R58214/5536885', '4400006', 440004, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37382, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(176, 5874, 'Lalbag', '2023-03-18', 'SCS-R62109', '4400007', 440003, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 31730, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(177, 5859, 'Lalbag', '2023-05-22', 'SCS-R 65508/5783828', '4400009', 440002, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Stock in', 35644, 40991, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(178, 5853, 'Lalbag', '2023-05-22', 'SCS-R 65508/5783828', '4400008', 440001, 'Singer', 'Refrigerator', 'SRREF-SS500-FBDS260Z-BG', 'Soldout', 44339, 50990, 500, 'Purchase', '', '', '', 'Service Req'),
(179, 9347, 'Dhanmondi', '2022-08-31', '623035075/0', '2000014', 200011, 'Walton', 'Smart TV', 'W32D120HG3', 'Stock in', 21400, 27900, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(180, 6043, 'Dhanmondi', '2019-11-28', 'SCS-R27379/3812319', '2000001', 200010, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 17490, 500, 'Purchase', '', '', '', 'Service Req'),
(181, 6030, 'Dhanmondi', '2019-11-28', 'SCS-R27379/3812319', '2000001', 200009, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 18490, 500, 'Purchase', '', '', '', 'Service Req'),
(182, 5987, 'Dhanmondi', '2019-11-28', 'SCS-R27379/3812319', '2000004', 200008, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(183, 5973, 'Dhanmondi', '2022-08-31', '623035075/0', '2000013', 200007, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(184, 5941, 'Dhanmondi', '2022-01-12', 'SCS-R46467/5009010', '2000005', 200006, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(185, 5916, 'Dhanmondi', '2022-11-29', 'SCS-R58213/5536814', '2000009', 200005, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37382, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(186, 5901, 'Dhanmondi', '2022-11-29', 'SCS-R58213/5536814', '2000009', 200004, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37382, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(187, 5882, 'Dhanmondi', '2023-03-18', 'SCS-R62108/5674301', '2000010', 200003, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 22600, 27990, 500, 'Purchase', '', '', '', 'Service Req'),
(188, 5867, 'Dhanmondi', '2023-05-22', 'SCS-R65479/5783809', '2000012', 200002, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 32600, 37490, 500, 'Purchase', '', '', '', 'Service Req'),
(189, 5851, 'Dhanmondi', '2023-05-22', 'SCS-R65479/5783809', '2000011', 200001, 'Singer', 'Smart TV', 'SRTV-SLE32D6100GOTV', 'Soldout', 21730, 24990, 500, 'Purchase', '', '', '', 'Service Req'),
(190, 6010, 'Shamoly', '2022-11-29', 'SCS-R58212 / 5536816', '5300006', 530010, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(191, 6002, 'Shamoly', '2022-11-29', 'SCS-R58212 / 5536816', '5300006', 530009, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(192, 5995, 'Shamoly', '2022-06-07', 'SCS-R52112 / 5234128', '5300005', 530008, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(193, 5984, 'Shamoly', '2022-06-07', 'SCS-R52112 / 5234128', '5300005', 530007, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS230-RG', 'Soldout', 32687, 37990, 500, 'Purchase', '', '', '', 'Service Req'),
(194, 5969, 'Shamoly', '2022-09-12', 'o', '5300007', 530006, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(195, 5954, 'Shamoly', '2022-01-12', 'SCS-R46464 / 5009216', '5300003', 530005, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(196, 5936, 'Shamoly', '2022-01-12', 'SCS-R46464 / 5009216', '5300004', 530004, 'Singer', 'Sewing Machine', 'SRSM-STAND-METAL-STEEL', 'Transfered', 1991, 1991, 0, 'Purchase', '', '', '', 'Service Req'),
(197, 5900, 'Shamoly', '2019-12-01', 'SCS-R27343 /3812314', '5300001', 530003, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(198, 5894, 'Shamoly', '2019-12-01', 'SCS-R27343 /3812314', '5300001', 530002, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(199, 5870, 'Shamoly', '2019-12-01', 'SCS-R27343 /3812314', '5300002', 530001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(200, 9211, 'Armanitola', '2023-01-10', 'SCS-R58201/5536797', '12500005', 140016, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37382, 42990, 500, 'Transfered', '', '', '', 'Service Req'),
(201, 9207, 'Armanitola', '2022-05-07', 'SCS-R52065/5228748', '1200008', 140015, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 31990, 500, 'Transfered', '', '', '', 'Service Req'),
(202, 8409, 'Armanitola', '2022-04-12', '623035075', '1400009', 140014, 'Walton', 'Smart TV', 'W32D120HG3', 'Stock in', 21400, 27900, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(203, 8408, 'Armanitola', '2022-01-13', 'SCS-R16150/5010252', '1400003', 140013, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Stock in', 24774, 28490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(204, 8407, 'Armanitola', '2019-12-08', 'SCS-R27395/3822372', '1400001', 140012, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(205, 5957, 'Armanitola', '2019-12-08', 'SCS-R27395/3822372', '1400001', 140011, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(206, 5952, 'Armanitola', '2019-12-08', 'SCS-R27395/3822372', '1400002', 140010, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(207, 5920, 'Armanitola', '2022-06-05', 'SCS-R52075/5228779', '1400005', 140006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(208, 5915, 'Armanitola', '2022-06-05', 'SCS-R52075/5228779', '1400004', 140005, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(209, 5907, 'Armanitola', '2022-11-29', 'SCS-R58203/5536804', '1400007', 140004, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Soldout', 37383, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(210, 5902, 'Armanitola', '2022-11-29', 'SCS-R58203/5536804', '1400006', 140003, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(211, 5896, 'Armanitola', '2022-11-29', 'SCS-R58203/5536804', '1400006', 140002, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(212, 5890, 'Armanitola', '2023-03-19', 'SCS-R62100/5676026', '1400008', 140001, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(213, 9205, 'Noyabazar-1', '2022-06-05', 'SCS-R52065/5228748', '1200008', 120016, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Transfered', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(214, 6081, 'Noyabazar-1', '2019-12-08', 'SCS-R27396/382233', '1200004', 120015, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(215, 6078, 'Noyabazar-1', '2019-12-08', 'SCS-R27396/382233', '1200004', 120014, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(216, 6069, 'Noyabazar-1', '2019-12-08', 'SCS-R27396/382233', '1200003', 120013, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24774, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(217, 6060, 'Noyabazar-1', '2022-01-13', 'SCS-R46449/5010245', '1200006', 120012, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Transfered', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(218, 6057, 'Noyabazar-1', '2022-01-13', 'SCS-R46449/5010245', '1200006', 120011, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(219, 6056, 'Noyabazar-1', '2022-01-13', 'SCS-R46449/5010245', '1200006', 120010, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Transfered', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(220, 6037, 'Noyabazar-1', '2022-01-13', 'SCS-R46449/5010245', '1200005', 120009, 'Singer', 'Smart TV', 'SRTV-SLE43A7000GOTV', 'Soldout', 37382, 42990, 500, 'Purchase', '', '', '', 'Service Req'),
(221, 6018, 'Noyabazar-1', '2022-04-12', '623035075', '1200013', 120008, 'Walton', 'Smart TV', 'W43D210EG1', 'Soldout', 31400, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(222, 5998, 'Noyabazar-1', '2022-06-05', 'SCS-R52065', '1200007', 120006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(223, 5982, 'Noyabazar-1', '2022-11-29', 'SCS-R58197/5536795', '1200009', 120005, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 28990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(224, 5979, 'Noyabazar-1', '2022-11-29', 'SCS-R58197/5536795', '1200009', 120004, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req'),
(225, 5959, 'Noyabazar-1', '2023-03-19', 'SCS-R52065/5676022', '1200010', 120003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 33904, 38990, 500, 'Purchase', '', '', '', 'Service Req'),
(226, 5910, 'Noyabazar-1', '2023-05-24', 'SS-R65461/5786359', '1200012', 120002, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-BUG', 'Stock in', 35643, 40991, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(227, 5899, 'Noyabazar-1', '2023-05-24', 'SS-R65461/5786359', '1200011', 120001, 'Singer', 'Refrigerator', 'SRREF-SS300-FTDS200-RG', 'Stock in', 35643, 40991, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(228, 9895, 'Noyabazar-2', '2019-07-25', 'scs-r2426/(1-15680)', '12500007', 1250011, 'Singer', 'Air Conditioner', 'SRAC-SAS18AURVM', 'Soldout', 56313, 64990, 0, 'Purchase', '', '', '', 'Service Req'),
(229, 9780, 'Noyabazar-2', '2022-01-13', 'SCS-R46449/5010245', '1200006', 1250010, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Soldout', 24773, 28490, 500, 'Transfered', '', '', '', 'Service Req'),
(230, 9208, 'Noyabazar-2', '2022-11-29', 'SCS-R58201/5536797', '12500005', 1250009, 'Singer', 'Smart TV', 'SRTV-SLE43A5000GOTV', 'Stock in', 37382, 42990, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(231, 6108, 'Noyabazar-2', '2022-11-29', 'SCS-R58201/5536797', '12500004', 1250008, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 57980, 500, 'Purchase', '', '', '', 'Service Req'),
(232, 6090, 'Noyabazar-2', '2019-12-08', 'SCS-R27431/3822369', '12500001', 1250007, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 32980, 500, 'Purchase', '', '', '', 'Service Req'),
(233, 6071, 'Noyabazar-2', '2019-12-08', 'SCS-R27431/3822369', '12500002', 1250006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 24773, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(234, 6051, 'Noyabazar-2', '2019-12-08', 'SCS-R27431', '12500001', 1250005, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 32980, 500, 'Purchase', '', '', '', 'Service Req'),
(235, 6032, 'Noyabazar-2', '2022-04-12', '623035075', '12500006', 1250004, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(236, 5991, 'Noyabazar-2', '2022-06-05', 'SCS-R52070', '12500003', 1250003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27817, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(237, 5968, 'Noyabazar-2', '2022-11-29', 'SCS-R58201', '12500004', 1250002, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Stock in', 25209, 57980, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(238, 8532, 'Noyabazar-3', '2019-12-08', 'SCS-R27429/3822368', '9000001', 900010, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(239, 8520, 'Noyabazar-3', '2022-01-13', 'SCS-R46449/5010245', '', 900009, 'Singer', 'Smart TV', 'SRTV-SLE32A7000GOTV', 'Stock in', 24773, 28490, 500, 'Transfered', 'Sale', 'Return', 'Transfer', 'Service Req'),
(240, 6133, 'Noyabazar-3', '2022-11-29', 'SCS-R8202/5536799', '9000005', 900008, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28490, 500, 'Purchase', '', '', '', 'Service Req'),
(241, 6113, 'Noyabazar-3', '2019-12-08', 'SCS-R27429/3822368', '9000001', 900007, 'Singer', 'Smart TV', 'SRTV-SLE32D1200TC', 'Soldout', 14339, 16490, 500, 'Purchase', '', '', '', 'Service Req'),
(242, 6102, 'Noyabazar-3', '2019-12-08', 'SCS-R27429/3822368', '9000002', 900006, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Stock in', 14339, 16490, 500, 'Purchase', 'Sale', 'Return', 'Transfer', 'Service Req'),
(243, 6045, 'Noyabazar-3', '2022-04-12', '623035075', '9000006', 900004, 'Walton', 'Smart TV', 'W32D120HG3', 'Soldout', 21400, 27900, 500, 'Purchase', '', '', '', 'Service Req'),
(244, 6024, 'Noyabazar-3', '2022-06-05', 'SCS-R52073', '9000004', 900003, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-BG', 'Soldout', 27817, 32490, 500, 'Purchase', '', '', '', 'Service Req'),
(245, 5972, 'Noyabazar-3', '2022-06-05', 'SCS-R52073/5228772', '9000003', 900002, 'Singer', 'Refrigerator', 'SRREF-SINGER-BCD-198R-RG', 'Soldout', 27818, 31990, 500, 'Purchase', '', '', '', 'Service Req'),
(246, 5932, 'Noyabazar-3', '2022-11-29', 'SCS-R58202/5536799', '9000005', 900001, 'Singer', 'Smart TV', 'SRTV-SLE32E3AGOTV', 'Soldout', 25209, 28990, 500, 'Purchase', '', '', '', 'Service Req');

-- --------------------------------------------------------

--
-- Table structure for table `consumer_soldouts`
--

CREATE TABLE `consumer_soldouts` (
  `id` int(3) DEFAULT NULL,
  `Branch name` varchar(12) DEFAULT NULL,
  `Soldout Date` varchar(11) DEFAULT NULL,
  `Soldout ID` int(7) DEFAULT NULL,
  `Product ID` int(7) DEFAULT NULL,
  `Order ID` varchar(8) DEFAULT NULL,
  `Customer Name` varchar(28) DEFAULT NULL,
  `Customer ID` varchar(13) DEFAULT NULL,
  `Product Price` varchar(11) DEFAULT NULL,
  `Payment Method` varchar(6) DEFAULT NULL,
  `Salable Price` int(5) DEFAULT NULL,
  `Purchase Price` int(5) DEFAULT NULL,
  `Staff Comission` int(3) DEFAULT NULL,
  `Distrivutor Name` varchar(6) DEFAULT NULL,
  `Product Name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_soldouts`
--

INSERT INTO `consumer_soldouts` (`id`, `Branch name`, `Soldout Date`, `Soldout ID`, `Product ID`, `Order ID`, `Customer Name`, `Customer ID`, `Product Price`, `Payment Method`, `Salable Price`, `Purchase Price`, `Staff Comission`, `Distrivutor Name`, `Product Name`) VALUES
(1, 'Badda', '2023-06-03', 220005, 220008, '2200009', 'Josna', '22120122', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(2, 'Badda', '2023-02-23', 220003, 220005, '2200007', 'Nupur Akter', '22118211', '28990', 'Credit', 28990, 25208, 500, 'Singer', 'Smart TV'),
(3, 'Badda', '2022-12-01', 220006, 220009, '2200003', 'Habib', '6272', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(4, 'Badda', '2022-08-08', 220004, 220007, '2200005', 'Taslima Begum', '22086214', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(5, 'Badda', '2022-07-12', 220002, 220003, '2200006', 'Shurna Akter', '22050227', '28990', 'Credit', 42990, 37383, 500, 'Singer', 'Smart TV'),
(6, 'Badda', '2022-07-12', 220001, 220004, '2200007', 'Mst.Sabia Akter', '22050228', '42990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(7, 'Badda', '2020-01-15', 220007, 220010, '2200001', 'Parvin', '22143015', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(8, 'Badda', '2020-01-12', 220009, 220011, '2200002', 'Nazmol', '5343', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(9, 'Badda', '2020-01-12', 220008, 220012, '2200002', '22078087', '22078087', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(10, 'Badda', '2019-01-26', 220010, 220013, '', 'Parvin', '22086001', '44990', 'Credit', 44990, 39122, 500, 'Singer', 'Smart TV'),
(11, 'Konapara', '2022-09-11', 240007, 240009, '2400006', 'Aleya Begum', '24031467', '37990', 'Credit', 37990, 27817, 500, 'Singer', 'Refrigerator'),
(12, 'Konapara', '2022-05-29', 240005, 240006, '2400005', 'Md. Saiful Islam', '1991', '28490', 'Credit', 28490, 21774, 500, 'Singer', 'Smart TV'),
(13, 'Konapara', '2021-02-20', 240004, 240003, '2400004', 'Lima Begum', '24120249', '28890', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(14, 'Konapara', '2020-10-17', 240003, 240004, '2400003', 'Kamrunnahar', '24163005', '17490', 'Credit', 17490, 14339, 500, 'Singer', 'Smart TV'),
(15, 'Konapara', '2020-08-16', 240006, 240008, '2400007', 'Mst Moriom Akter', '24136262', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(16, 'Konapara', '2019-08-29', 240001, 240001, '2400002', 'Mst. Morjina', '24021295', '11490', 'Credit', 11490, 9991, 0, 'Singer', 'Microwave Oven'),
(17, 'Konapara', '2019-07-20', 240002, 240002, '2400001', 'Nigar Suraiya Islam', '24163008', '44990', 'Credit', 44990, 39122, 0, 'Singer', 'Smart TV'),
(18, 'Sabuzbag', '2022-07-29', 260002, 260005, '2600008', 'Vodro Mohon', '3345', '32490', 'Credit', 32490, 27817, 500, 'Singer', 'Refrigerator'),
(19, 'Sabuzbag', '2022-07-28', 260001, 260006, '2600008', 'Srimoti Konika Rani Das', '26094255', '32490', 'Credit', 32490, 27818, 500, 'Singer', 'Refrigerator'),
(20, 'Sabuzbag', '2021-01-13', 260006, 260011, '2600003', 'Momotaj', '26142105', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(21, 'Sabuzbag', '2020-11-17', 260007, 260013, '2600004', 'Hasina', '26069212', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(22, 'Sabuzbag', '2020-11-10', 260003, 260010, '2600006', 'Roksana Begum', '2626159', '44990', 'Credit', 44990, 39122, 500, 'Singer', 'Smart TV'),
(23, 'Sabuzbag', '2020-11-10', 260004, 260009, '2600005', 'Hena', '2626210', '26490', 'Credit', 26490, 23035, 500, 'Singer', 'Smart TV'),
(24, 'Sabuzbag', '2020-02-18', 260005, 260012, '2600004', 'Hasina', '2669138', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(25, 'Sabuzbag', '2019-11-30', 260008, 260015, '2600001', 'Nargis', '26129154', '15200', 'Credit', 15200, 13217, 0, 'Singer', 'Microwave Oven'),
(26, 'Jatrabari', '2023-06-05', 400001, 400002, '4000008', 'Jayeda Begum', '40040282', '39990', 'Credit', 39990, 34774, 500, 'Singer', 'Refrigerator'),
(27, 'Jatrabari', '2022-12-05', 400002, 400006, '4000005', 'Jahanara Begum', '40135049', '41490', 'Credit', 41490, 34948, 500, 'Singer', 'Refrigerator'),
(28, 'Jatrabari', '2022-08-28', 400004, 400008, '4000004', 'Jahanara Begum', '40040286', '28990', 'Cash', 28990, 24774, 500, 'Singer', 'Smart TV'),
(29, 'Jatrabari', '2022-07-19', 400003, 400005, '4000005', 'Sonia Akter', '40002164', '40490', 'Credit', 40490, 34948, 500, 'Singer', 'Refrigerator'),
(30, 'Jatrabari', '2019-06-17', 400005, 400011, '4000003', 'Parul', '40043239', '18490', 'Credit', 18490, 16078, 500, 'Singer', 'Smart TV'),
(31, 'Postogola', '2022-11-10', 690006, 690005, '6900009', 'Mst Rasheda Begum', '69060349', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(32, 'Postogola', '2022-10-08', 690009, 690013, '', 'Moriom Aktar', '69059284', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(33, 'Postogola', '2022-08-07', 690002, 690011, '6900003', 'Mst Shiha Begum', '69034374', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(34, 'Postogola', '2022-08-07', 690007, 690007, '6900006', 'Mst Shiha Begum', '69034374', '32490', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(35, 'Postogola', '2022-06-29', 690008, 690006, '6900005', 'Nasima', '69012238', '32490', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(36, 'Postogola', '2022-06-27', 690005, 690008, '6900004', 'Nasrin Akter', '1006', '28990', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(37, 'Postogola', '2021-11-15', 690003, 690010, '6900003', 'Satara Begum', '69034373', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(38, 'Postogola', '2019-07-23', 690010, 690014, '6900010', 'Sheoli', '69072076', '26990', 'Credit', 25990, 22600, 500, 'Singer', 'LED TV'),
(39, 'Postogola', '2019-07-23', 690004, 690009, '6900002', 'Satara Begum', '69034373', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(40, 'Postogola', '2019-07-23', 690001, 690012, '6900001', 'mrs Nasrin Rahman', '69076142', '36990', 'Credit', 34990, 30426, 500, 'Singer', 'Refrigerator'),
(41, 'Azampur', '2023-06-27', 100002, 100002, '1000012', 'Salina', '10208069', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(42, 'Azampur', '2023-05-07', 100001, 100001, '1000011', 'Mina', '10208058', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(43, 'Azampur', '2023-04-17', 100003, 100004, '1000009', 'Nasima', '10077276', '35990', 'Credit', 35990, 31295, 500, 'Singer', 'Refrigerator'),
(44, 'Azampur', '2023-02-12', 100004, 100003, '1000008', 'Asma Begum', '10200097', '42990', 'Credit', 42990, 37383, 500, 'Singer', 'Smart TV'),
(45, 'Azampur', '2022-12-23', 100008, 100011, '1000001', 'Monowara Begum', '[010133214', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Refrigerator'),
(46, 'Azampur', '2022-12-06', 100007, 100007, '1000007', 'Fahima', '010109273]', '32990', 'Credit', 32990, 28689, 500, 'Singer', 'Refrigerator'),
(47, 'Azampur', '2022-09-20', 100009, 100014, '1000013', 'Babi Akter', '10075296', '38990', 'Credit', 38990, 31400, 500, 'Walton', 'Smart TV'),
(48, 'Azampur', '2022-07-07', 100006, 100008, '1000006', 'Ahiton Nosa', '10109251', '32990', 'Credit', 32990, 28686, 500, 'Singer', 'Refrigerator'),
(49, 'Azampur', '2022-06-07', 100005, 100009, '1000006', 'Mst Johora Aktar', '10109189', '32990', 'Credit', 32990, 28686, 500, 'Singer', 'Refrigerator'),
(50, 'Azampur', '2022-04-25', 100010, 100010, '1000005', 'Mina Begum', '10133239', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Smart TV'),
(51, 'Azampur', '2021-08-31', 100011, 100013, '1000002', 'Hasina', '10133199', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(52, 'Azampur', '2021-08-26', 100012, 100012, '1000002', 'Hashe Khatun', '10133227', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(53, 'Azampur', '2019-07-11', 100013, 100017, '1000014', 'Hasina', '10133199', '16590', 'Credit', 16590, 14426, 500, 'Singer', 'LED TV'),
(54, 'Uttara', '2023-03-15', 1030018, 1030018, '10300014', 'Shimu', '103085028', '42990', 'Credit', 42990, 37383, 500, 'Singer', 'Smart TV'),
(55, 'Uttara', '2022-12-09', 1030012, 1030014, '10300016', 'Amena', '103014059', '38990', 'Credit', 38990, 31400, 500, 'Walton', 'Smart TV'),
(56, 'Uttara', '2022-11-08', 1030017, 1030016, '10300013', 'Jamal', '103035140', '28490', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(57, 'Uttara', '2022-07-07', 1030015, 1030003, '10300011', 'Golapi', '103023099', '34490', 'Credit', 34490, 29991, 500, 'Singer', 'Refrigerator'),
(58, 'Uttara', '2022-06-19', 1030014, 1030004, '10300011', 'Shilpi', '103014151', '34490', 'Credit', 34490, 29991, 500, 'Singer', 'Refrigerator'),
(59, 'Uttara', '2022-02-24', 1030009, 1030019, '10300006', 'Asadul', '103068037', '4800', 'Credit', 4800, 4174, 0, 'Singer', 'Sewing Machine'),
(60, 'Uttara', '2022-02-24', 1030008, 1030021, '10300008', 'Asadul', '103068037', '600', 'Credit', 600, 522, 0, 'Singer', 'Sewing Machine'),
(61, 'Uttara', '2022-02-24', 1030007, 1030020, '10300007', 'Asadul', '103068037', '930', 'Credit', 930, 809, 0, 'Singer', 'Sewing Machine'),
(62, 'Uttara', '2022-02-24', 1030006, 1030022, '10300009', 'Asadul', '103068037', '2090', 'Credit', 2090, 1818, 0, 'Singer', 'Sewing Machine'),
(63, 'Uttara', '2022-02-06', 1030016, 1030005, '10300012', 'Nur Mohammad', '103008162', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(64, 'Uttara', '2020-07-13', 1030022, 1030007, '10300002', 'Yesmin', '103023068', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(65, 'Uttara', '2020-03-18', 1030003, 1030009, '10300001', 'Nargis', '103014052', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(66, 'Uttara', '2020-03-11', 1030021, 1030011, '10300004', 'Ripon', '103014132', '34990', 'Credit', 34990, 30426, 500, 'Singer', 'Refrigerator'),
(67, 'Uttara', '2020-02-25', 1030019, 1030006, '10300010', 'kamrunnahar', '103009122', '24990', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(68, 'Uttara', '2020-02-24', 1030010, 1030013, '10300005', 'Asadul', '103068037', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(69, 'Uttara', '2020-01-16', 1030024, 1030025, '10300019', 'Md. Aiub Ali', '103076050', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(70, 'Uttara', '2020-01-16', 1030023, 1030024, '10300018', 'Ayub Ali', '0', '2400', 'Cash', 2400, 2087, 0, 'Singer', 'Rice Cooker'),
(71, 'Uttara', '2020-01-16', 1030005, 1030012, '10300005', 'Aiub Ali', '103076050', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(72, 'Uttara', '2019-12-11', 1030020, 1030010, '10300003', 'Khurshida', '103068035', '30990', 'Credit', 30990, 26948, 500, 'Singer', 'Refrigerator'),
(73, 'Uttara', '2019-12-02', 1030001, 1030008, '10300001', 'Fulesha', '103090018', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(74, 'Dakkhin Khan', '2023-06-21', 630002, 630002, '6300010', 'Md Solaiman', '63036205', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(75, 'Dakkhin Khan', '2023-06-21', 630014, 630013, '', 'Solaiman', '6336205', '28990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(76, 'Dakkhin Khan', '2023-06-07', 630001, 630001, '6300009', 'Ismotara', '63038181', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(77, 'Dakkhin Khan', '2023-05-23', 630006, 630008, '6300004', 'Rojia Akter', '63073145', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(78, 'Dakkhin Khan', '2023-05-16', 630012, 630006, '6300011', 'Shirin Akter', '63102185', '22900', 'Credit', 22900, 21400, 500, 'Walton', 'Smart TV'),
(79, 'Dakkhin Khan', '2023-05-16', 630013, 630014, '', 'Sirin Akter', '63102185', '28990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(80, 'Dakkhin Khan', '2023-05-05', 630003, 630003, '6300008', 'Rojia Akter', '63073145', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(81, 'Dakkhin Khan', '2023-02-19', 630010, 630004, '6300006', 'Mst Amina Begum', '63015175', '37590', 'Credit', 37590, 32686, 500, 'Singer', 'Refrigerator'),
(82, 'Dakkhin Khan', '2022-07-03', 630015, 630005, '6300007', 'Nigar Sultana', '63102185', '37590', 'Credit', 37590, 32686, 500, 'Singer', 'Refrigerator'),
(83, 'Dakkhin Khan', '2021-03-21', 630005, 630009, '6300005', 'Halima Begum', '63069121', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Refrigerator'),
(84, 'Dakkhin Khan', '2021-01-28', 630004, 630007, '6300004', 'Mst Rashida Begum', '63106042', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(85, 'Dakkhin Khan', '2019-07-27', 630009, 630011, '6300002', 'Tania Begum', '63102093', 'Tania Begum', 'Credit', 34990, 30426, 500, 'Singer', 'Refrigerator'),
(86, 'Dakkhin Khan', '2019-07-25', 630007, 630010, '6300001', 'Ferdousi', '63099091', '89990', 'Credit', 89990, 78252, 500, 'Singer', 'Refrigerator'),
(87, 'Dakkhin Khan', '2019-07-24', 630008, 630012, '6300003', 'Aleya Begum', '63089171', '29720', 'Credit', 29720, 25843, 500, 'Singer', 'Refrigerator'),
(88, 'Fotulla-1', '2023-06-21', 160009, 160020, '1600011', 'Siddka Bithi', '16146173', '37490', 'Credit', 37490, 32600, 500, 'Singer', 'Smart TV'),
(89, 'Fotulla-1', '2023-06-14', 160019, 160013, '1600009', 'Moty Begum', '16074167', '50990', 'Credit', 50990, 44339, 500, 'Singer', 'Refrigerator'),
(90, 'Fotulla-1', '2023-06-14', 160018, 160015, '1600010', 'SUMI BEGUM', '16087239', '40990', 'Credit', 40990, 35643, 500, 'Singer', 'Refrigerator'),
(91, 'Fotulla-1', '2023-06-07', 160008, 160018, '1600011', 'Mst Lovey Akter', '16146206', '37490', 'Credit', 37490, 32600, 500, 'Singer', 'Smart TV'),
(92, 'Fotulla-1', '2023-05-29', 160017, 160016, '1600010', 'Shahera Begum', '16108284', '40990', 'Credit', 40990, 35643, 500, 'Singer', 'Refrigerator'),
(93, 'Fotulla-1', '2023-05-28', 160007, 160017, '1600011', 'Mst Akhiee Akter', '16146201', '37490', 'Credit', 37490, 32600, 500, 'Singer', 'Smart TV'),
(94, 'Fotulla-1', '2023-03-27', 160004, 160011, '1600007', 'Ranu Beggum', '16137395', '25990', 'Credit', 25990, 22600, 500, 'Singer', 'Smart TV'),
(95, 'Fotulla-1', '2023-03-23', 160006, 160012, '1600008', 'Nurjahan Begum', '16137391', '36490', 'Credit', 36490, 31730, 500, 'Singer', 'Smart TV'),
(96, 'Fotulla-1', '2023-03-09', 160005, 160021, '', 'Nasrin', '16030321', '28990', 'Credit', 31990, 25209, 500, 'Singer', 'Smart TV'),
(97, 'Fotulla-1', '2023-03-07', 160010, 160022, '', 'Miss Mhamuda Akter', '16146241', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(98, 'Fotulla-1', '2022-12-19', 160027, 160026, '1600019', 'Salma', '16024303', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(99, 'Fotulla-1', '2022-11-20', 160026, 160027, '1600019', 'Sufia', '16060242', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(100, 'Fotulla-1', '2022-10-03', 160025, 160025, '1600020', 'Lavli', '16062377', '38990', 'Credit', 38990, 31400, 500, 'Walton', 'Smart TV'),
(101, 'Fotulla-1', '2022-09-25', 160012, 160004, '1600017', 'Mst Kalpona Akter', '16146227', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(102, 'Fotulla-1', '2022-06-28', 160016, 160008, '1600005', 'Mst Taslima Begum', '16002298', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(103, 'Fotulla-1', '2022-06-12', 160015, 160010, '1600006', 'Mst Lovey Akter', '16146206', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(104, 'Fotulla-1', '2022-06-06', 160013, 160009, '1600006', 'Fatema', '16002136', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(105, 'Fotulla-1', '2022-06-06', 160014, 160007, '1600005', 'Yesmin', '16068159', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(106, 'Fotulla-1', '2022-05-16', 160003, 160005, '1600003', 'Solama Khatun', '16089294', '21390', 'Credit', 21390, 18600, 500, 'Singer', 'Smart TV'),
(107, 'Fotulla-1', '2022-04-04', 160011, 160006, '1600004', 'SAWLI BEGUM', '16089272', '34990', 'Credit', 34990, 30426, 500, 'Singer', 'Refrigerator'),
(108, 'Fotulla-1', '2021-10-26', 160024, 160019, '1600011', 'Maksuda', '16085253', '18990', 'Credit', 37490, 32600, 500, 'Singer', 'Smart TV'),
(109, 'Fotulla-1', '2021-10-26', 160029, 160024, '1600018', 'Nilofa', '16085252', '18990', 'Credit', 18990, 16513, 500, 'Singer', 'LED TV'),
(110, 'Fotulla-1', '2021-10-26', 160028, 160023, '1600018', 'Maksuda', '16085253', '18990', 'Credit', 18990, 16513, 500, 'Singer', 'LED TV'),
(111, 'Fotulla-1', '2021-10-19', 160001, 160002, '1600001', 'Mst Rokshana Begum', '16002268', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(112, 'Fotulla-1', '2020-01-14', 160002, 160003, '1600001', 'SONIA BEGUM', '16001310', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(113, 'Fotulla-1', '2019-12-24', 160020, 160001, '1600002', 'Fatema Akter', '16102187', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(114, 'Fotulla-2', '2023-06-11', 730007, 730003, '7300006', 'Mst.Sheuli Alter', '73061283', '37990', 'Credit', 37990, 33034, 500, 'Singer', 'Refrigerator'),
(115, 'Fotulla-2', '2022-12-08', 730008, 730008, '7300004', 'Md.Firoj Ali', '3460', '28990', 'Credit', 28980, 25209, 500, 'Singer', 'Smart TV'),
(116, 'Fotulla-2', '2022-06-14', 730005, 730011, '7300003', 'Beauty Begum', '73143080', '32490', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(117, 'Fotulla-2', '2019-07-24', 730006, 730010, '7300001', 'Rabia Akter', '73131114', '34990', 'Credit', 34990, 30426, 500, 'Singer', 'Refrigerator'),
(118, 'Panchaboti', '2023-10-04', 570007, 570011, '5700011', 'Taslima', '57108167', '38990', 'Credit', 38990, 31400, 500, 'Walton', 'Smart TV'),
(119, 'Panchaboti', '2023-08-03', 570012, 570003, '5700010', 'Abdur Rahim', '105233', '50990', 'Credit', 50990, 44339, 500, 'Singer', 'Refrigerator'),
(120, 'Panchaboti', '2023-06-22', 570001, 570004, '5700010', 'Jannatul', '57041303', '50990', 'Credit', 50990, 44339, 500, 'Singer', 'Refrigerator'),
(121, 'Panchaboti', '2023-03-27', 570002, 570006, '5700008', 'Moyna', '57064181', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(122, 'Panchaboti', '2023-03-23', 570003, 570005, '5700008', 'Noyon', '57001268', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(123, 'Panchaboti', '2023-03-02', 570004, 570007, '5700007', 'Sharmin', '57087181', '28490', 'Credit', 28490, 25209, 500, 'Singer', 'Smart TV'),
(124, 'Panchaboti', '2022-07-25', 570005, 570009, '5700005', 'Rabeya', '57068199', '32490', 'Credit', 32490, 27817, 500, 'Singer', 'Refrigerator'),
(125, 'Panchaboti', '2022-07-17', 570006, 570010, '5700006', 'Kamrunnahar Mukta', '57108130', '32490', 'Credit', 32490, 27817, 500, 'Singer', 'Refrigerator'),
(126, 'Panchaboti', '2021-07-17', 570008, 570015, '5700003', 'Shahida', '57084158', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(127, 'Panchaboti', '2020-11-17', 570009, 570014, '5700003', 'Delower', '2724', '16490', 'Cash', 16490, 14339, 500, 'Singer', 'Smart TV'),
(128, 'Panchaboti', '2020-10-05', 570010, 570013, '5700002', 'Sajeda', '57031279', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(129, 'Panchaboti', '2019-07-18', 570011, 570016, '5700001', 'Tamanna', '57108046', '36990', 'Credit', 36990, 32165, 500, 'Singer', 'Refrigerator'),
(130, 'Lalbag', '2023-07-25', 440012, 440003, '4400007', 'Monowara Begum', '44108209', '37490', 'Credit', 37490, 31730, 500, 'Singer', 'Smart TV'),
(131, 'Lalbag', '2023-05-24', 440001, 440001, '4400008', 'Mili Begum', '44003279', '50990', 'Credit', 50990, 44339, 500, 'Singer', 'Refrigerator'),
(132, 'Lalbag', '2023-02-06', 440003, 440004, '4400006', 'Momtaz Begum', '44031264', '42990', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(133, 'Lalbag', '2023-01-04', 440005, 440006, '4400004', 'Sayada Shafat Hossain Shawon', '44108209', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(134, 'Lalbag', '2022-12-01', 440004, 440005, '4400006', 'Nasima Akter Zosna', '44031257', '42990', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(135, 'Lalbag', '2022-11-27', 440007, 440008, '4400010', 'Mst. Salma', '44108213', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(136, 'Lalbag', '2022-08-11', 440006, 440007, '4400005', 'Monowara Begum', '44108209', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(137, 'Lalbag', '2022-05-12', 440008, 440009, '4400003', 'Lota', '44003272', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(138, 'Lalbag', '2021-09-27', 440010, 440011, '4400002', 'Nazma', '44108226', '18990', 'Credit', 18990, 14556, 500, 'Singer', 'Smart TV'),
(139, 'Lalbag', '2021-07-18', 440009, 440010, '4400002', 'Liton Kumar', '3675', '18890', 'Credit', 18890, 14556, 500, 'Singer', 'Smart TV'),
(140, 'Lalbag', '2020-09-22', 440011, 440012, '4400001', 'Aiub Ali', '5388', '32051', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(141, 'Dhanmondi', '2023-12-02', 200003, 200004, '2000009', 'Aysha Akter', '20116202', '42990', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(142, 'Dhanmondi', '2023-12-02', 200004, 200005, '2000009', 'Sarna Akter Asha', '20116203', '42990', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(143, 'Dhanmondi', '2023-07-09', 200001, 200001, '2000011', 'Md.Sha Alam Mredha', '20110205', '24990', 'Credit', 24990, 21730, 500, 'Singer', 'Smart TV'),
(144, 'Dhanmondi', '2023-04-11', 200002, 200003, '2000010', 'Selina Begum', '20025271', '27990', 'Credit', 27990, 22600, 500, 'Singer', 'Smart TV'),
(145, 'Dhanmondi', '20220-12-31', 200009, 200008, '2000004', 'Helena Begum', '20091137', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(146, 'Dhanmondi', '2022-08-07', 200010, 200002, '2000012', 'Md.Ramzan', '20021369', '37490', 'Credit', 37490, 32600, 500, 'Singer', 'Smart TV'),
(147, 'Dhanmondi', '2022-04-25', 200006, 200006, '2000005', 'Mst.Jarina', '20021255', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(148, 'Dhanmondi', '2022-03-11', 200005, 200007, '2000013', 'Halima', '20014314', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(149, 'Dhanmondi', '2021-06-15', 200007, 200010, '2000001', 'Md.Asabul Islam', '5019', '17490', 'Credit', 17490, 14339, 500, 'Singer', 'Smart TV'),
(150, 'Dhanmondi', '2021-02-02', 200008, 200009, '2000001', 'Miss Amina Khatun', '20025271', '18490', 'Credit', 18490, 14339, 500, 'Singer', 'Smart TV'),
(151, 'Shamoly', '2023-01-15', 530008, 530009, '5300006', 'Rojina Akter', '53088342', '28490', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(152, 'Shamoly', '2022-12-15', 530009, 530010, '5300006', 'Shanta Begum', '53054226', '28490', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(153, 'Shamoly', '2022-09-15', 530007, 530006, '5300007', 'Minu Akter', '53109215', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(154, 'Shamoly', '2022-07-24', 530005, 530008, '5300005', 'Mst. Dulali Begum', '53093397', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(155, 'Shamoly', '2022-07-21', 530006, 530007, '5300005', 'Josna', '53103254', '37990', 'Credit', 37990, 32687, 500, 'Singer', 'Refrigerator'),
(156, 'Shamoly', '2022-04-18', 530004, 530005, '5300003', 'Sabina Yesmin', '53113159', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Smart TV'),
(157, 'Shamoly', '2021-03-14', 530002, 530003, '5300001', 'Kamrun Nahar', '53100230', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(158, 'Shamoly', '2021-01-28', 530001, 530002, '5300001', 'Samsunnahar', '53100175', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(159, 'Shamoly', '2020-11-30', 530003, 530001, '5300002', 'Firoza Begum', '53036146', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(160, 'Armanitola', '2023-06-08', 140001, 140001, '1400008', 'Jobeda Begum', '14053312', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(161, 'Armanitola', '2023-04-05', 140003, 140003, '1400006', 'Mazada Begum', '14036309', '28990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(162, 'Armanitola', '2023-01-10', 140009, 140016, '12500005', 'Md. Sohel', '14015209', '42990', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(163, 'Armanitola', '2022-12-22', 140002, 140004, '1400007', 'Shana Ahmed', '14131166', '42990', 'Credit', 42990, 37383, 500, 'Singer', 'Smart TV'),
(164, 'Armanitola', '2022-07-03', 140004, 140006, '1400005', 'Mst. Shema', '14083322', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(165, 'Armanitola', '2022-07-03', 140010, 140015, '1200008', 'Mst. Shema', '14083321', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(166, 'Armanitola', '2022-06-28', 140005, 140005, '1400004', 'Nargis Begum', '14083320', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(167, 'Armanitola', '2020-12-31', 140007, 140011, '1400001', 'Sohel Molla', '5117', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(168, 'Armanitola', '2020-12-31', 140008, 140012, '1400001', 'BIlkis Akter', '4628', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(169, 'Armanitola', '2020-10-28', 140006, 140010, '1400002', 'Md. Akhlak Bepary', '3008', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(170, 'Noyabazar-1', '2023-07-27', 120004, 120008, '1200013', 'Aktary Jahan', '12024197', '38990', 'Credit', 38990, 31400, 500, 'Walton', 'Smart TV'),
(171, 'Noyabazar-1', '2023-03-22', 120010, 120003, '1200010', 'Mina AKter', '12057313', '38990', 'Credit', 38990, 33904, 500, 'Singer', 'Refrigerator'),
(172, 'Noyabazar-1', '2023-01-25', 120002, 120004, '1200009', 'Mst. Nopour', '12010234', '28990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(173, 'Noyabazar-1', '2022-09-30', 120008, 120014, '1200004', 'Md. Abu Kalam Azad', '700', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(174, 'Noyabazar-1', '2022-07-06', 120005, 120009, '1200005', 'Srabanti Sarker', '12151209', '37383', 'Credit', 42990, 37382, 500, 'Singer', 'Smart TV'),
(175, 'Noyabazar-1', '2022-06-21', 120003, 120006, '1200007', 'Afroja Sultana Mina', '12281114', '32490', 'Credit', 32490, 27817, 500, 'Singer', 'Refrigerator'),
(176, 'Noyabazar-1', '2022-05-22', 120006, 120011, '1200006', 'Nahida Akter', '12037253', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Smart TV'),
(177, 'Noyabazar-1', '2020-09-30', 120009, 120013, '1200003', 'Md. Nazrul Islam', '5597', '28490', 'Credit', 28490, 24774, 500, 'Singer', 'Refrigerator'),
(178, 'Noyabazar-1', '2020-09-30', 120007, 120015, '1200004', 'Md. Nazrul Islam', '2050', '28490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(179, 'Noyabazar-2', '2022-11-29', 1250001, 1250008, '12500004', 'kolpona Begum', '125013149', '28990', 'Credit', 57980, 25209, 500, 'Singer', 'Smart TV'),
(180, 'Noyabazar-2', '2022-06-12', 1250008, 1250010, '1200006', 'Shahnaj', '125005169', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Smart TV'),
(181, 'Noyabazar-2', '2022-06-05', 1250002, 1250003, '12500003', 'Nurzahan Akter Nipa', '125033098', '31990', 'Credit', 31990, 27817, 500, 'Singer', 'Refrigerator'),
(182, 'Noyabazar-2', '2022-04-12', 1250003, 1250004, '12500006', 'Setu Gosh', '125048132', '29990', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(183, 'Noyabazar-2', '2020-11-05', 1250006, 1250006, '12500002', 'Akhi Akter', '125005150', '28490', 'Credit', 28490, 24773, 500, 'Singer', 'Refrigerator'),
(184, 'Noyabazar-2', '2020-09-30', 1250005, 1250007, '12500001', 'Md. Aminul Islam', '5594', '16490', 'Credit', 32980, 14339, 500, 'Singer', 'Smart TV'),
(185, 'Noyabazar-2', '2020-08-26', 1250004, 1250005, '12500001', 'Md. Shohidul', '2735', '16490', 'Credit', 32980, 14339, 500, 'Singer', 'Smart TV'),
(186, 'Noyabazar-2', '2019-07-25', 1250009, 1250011, '12500007', 'Bracnh Office', 'Bracnh Office', '56339', 'Cash', 64990, 56313, 0, 'Singer', 'Air Conditioner'),
(187, 'Noyabazar-3', '2023-06-22', 900001, 900001, '9000005', 'Nurunnahar', '90059129', '28990', 'Credit', 28990, 25209, 500, 'Singer', 'Smart TV'),
(188, 'Noyabazar-3', '2022-11-10', 900005, 900004, '9000006', 'Farzana', '90061206', '27900', 'Credit', 27900, 21400, 500, 'Walton', 'Smart TV'),
(189, 'Noyabazar-3', '2022-07-05', 900003, 900003, '9000004', 'moina', '90311075', '32490', 'Credit', 32490, 27817, 500, 'Singer', 'Refrigerator'),
(190, 'Noyabazar-3', '2022-06-19', 900002, 900008, '9000005', 'Runu Begum', '90306044', '28490', 'Credit', 28490, 25209, 500, 'Singer', 'Smart TV'),
(191, 'Noyabazar-3', '2022-06-16', 900004, 900002, '9000003', 'sova', '90079266', '31990', 'Credit', 31990, 27818, 500, 'Singer', 'Refrigerator'),
(192, 'Noyabazar-3', '2019-12-08', 900008, 900010, '9000001', 'Suruzzaman', '5765', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV'),
(193, 'Noyabazar-3', '2019-08-12', 900006, 900007, '9000001', 'Shibpada Mondal', '5684', '16490', 'Credit', 16490, 14339, 500, 'Singer', 'Smart TV');

-- --------------------------------------------------------

--
-- Table structure for table `consumer_trans_from_branches`
--

CREATE TABLE `consumer_trans_from_branches` (
  `id` int(2) DEFAULT NULL,
  `Transfer Date` date DEFAULT NULL,
  `Transfer Code` int(7) DEFAULT NULL,
  `Product Code` int(7) DEFAULT NULL,
  `Order ID` int(8) DEFAULT NULL,
  `Model No` varchar(24) DEFAULT NULL,
  `Transfer to Branch` varchar(12) DEFAULT NULL,
  `Transfer From Branch` varchar(11) DEFAULT NULL,
  `Bank Name and Branch` varchar(27) DEFAULT NULL,
  `Check No` varchar(8) DEFAULT NULL,
  `Check Amount` int(5) DEFAULT NULL,
  `Transfer Status` varchar(8) DEFAULT NULL,
  `Product quantity` int(1) DEFAULT NULL,
  `Product Purchase Price` int(5) DEFAULT NULL,
  `Distributor Name` varchar(6) DEFAULT NULL,
  `Product Category` varchar(12) DEFAULT NULL,
  `transfer details` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_trans_from_branches`
--

INSERT INTO `consumer_trans_from_branches` (`id`, `Transfer Date`, `Transfer Code`, `Product Code`, `Order ID`, `Model No`, `Transfer to Branch`, `Transfer From Branch`, `Bank Name and Branch`, `Check No`, `Check Amount`, `Transfer Status`, `Product quantity`, `Product Purchase Price`, `Distributor Name`, `Product Category`, `transfer details`) VALUES
(1, '0000-00-00', 400002, 400010, 4000002, 'SRTV-SLE43A7000STC', 'Badda', 'Jatrabari', 'UCB Bank', 'B4463697', 39122, 'Received', 1, 39122, 'Singer', 'Smart TV', 'From Branch'),
(2, '0000-00-00', 730003, 730009, 7300002, 'SRTV-SLE32A7000GOTV', 'Postogola', 'Fotulla-2', 'Dhaka Bank', '1106745', 24774, 'Received', 1, 24774, 'Singer', 'Smart TV', 'From Branch'),
(3, '0000-00-00', 100002, 100016, 1000010, 'SRTV-SLE32E3AGOTV', 'Dakkhin Khan', 'Azampur', 'Standard Bank', '7664538', 25209, 'Received', 1, 25208, 'Singer', 'Smart TV', 'From Branch'),
(4, '0000-00-00', 100001, 100015, 1000010, 'SRTV-SLE32E3AGOTV', 'Dakkhin Khan', 'Azampur', 'Standard Bank', '7664536', 25209, 'Received', 1, 25208, 'Singer', 'Smart TV', 'From Branch'),
(5, '0000-00-00', 730002, 730007, 7300004, 'SRTV-SLE32E3AGOTV', 'Fotulla-1', 'Fotulla-2', 'IFIC', '3987878', 25209, 'Received', 1, 25209, 'Singer', 'Smart TV', 'From Branch'),
(6, '0000-00-00', 730001, 730005, 7300003, 'SRREF-SINGER-BCD-198R-RG', 'Fotulla-1', 'Fotulla-2', 'IFIC', '3987878', 27817, 'Received', 1, 27817, 'Singer', 'Refrigerator', 'From Branch'),
(7, '0000-00-00', 1250001, 1250009, 12500005, 'SRTV-SLE43A5000GOTV', 'Armanitola', 'Noyabazar-2', 'Agrani Bank & Becharamdewri', '3664063', 37383, 'Received', 1, 37382, 'Singer', 'Smart TV', 'From Branch'),
(8, '0000-00-00', 120003, 120016, 1200008, 'SRREF-SINGER-BCD-198R-BG', 'Armanitola', 'Noyabazar-1', 'Agrani Bank & Becharamdewri', '3664060', 27817, 'Received', 1, 27817, 'Singer', 'Refrigerator', 'From Branch'),
(9, '0000-00-00', 120004, 120012, 1200006, 'SRTV-SLE32A7000GOTV', 'Noyabazar-2', 'Noyabazar-1', '0', '0', 0, 'Received', 1, 24773, 'Singer', 'Smart TV', 'From Branch'),
(10, '0000-00-00', 120001, 120010, 1200006, 'SRTV-SLE32A7000GOTV', 'Noyabazar-3', 'Noyabazar-1', '0', '0', 0, 'Received', 1, 24773, 'Singer', 'Smart TV', 'From Branch');

-- --------------------------------------------------------

--
-- Table structure for table `consumer_trans_this_branches`
--

CREATE TABLE `consumer_trans_this_branches` (
  `id` int(2) NOT NULL,
  `Transfer Date` date DEFAULT NULL,
  `Transfer Code` int(7) DEFAULT NULL,
  `Product Code` int(7) DEFAULT NULL,
  `Order ID` int(8) DEFAULT NULL,
  `Transfer to Branch` varchar(17) DEFAULT NULL,
  `Transfer From Branch` varchar(11) DEFAULT NULL,
  `Bank Name and Branch` varchar(27) DEFAULT NULL,
  `Check No` varchar(8) DEFAULT NULL,
  `Check Amount` int(5) DEFAULT NULL,
  `Transfer Status` varchar(8) DEFAULT NULL,
  `Product Quantity` int(1) DEFAULT NULL,
  `Product Purchase Price` int(5) DEFAULT NULL,
  `Distributor Name` varchar(6) DEFAULT NULL,
  `Product Category` varchar(14) DEFAULT NULL,
  `transfer details` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `consumer_trans_this_branches`
--

INSERT INTO `consumer_trans_this_branches` (`id`, `Transfer Date`, `Transfer Code`, `Product Code`, `Order ID`, `Transfer to Branch`, `Transfer From Branch`, `Bank Name and Branch`, `Check No`, `Check Amount`, `Transfer Status`, `Product Quantity`, `Product Purchase Price`, `Distributor Name`, `Product Category`, `transfer details`) VALUES
(1, '2019-10-07', 400001, 400009, 4000001, 'Narayongonj Sadar', 'Jatrabari', 'Jumona Bank', 'B4463696', 32165, 'Received', 1, 32165, 'Singer', 'Refrigerator', 'From Branch'),
(2, '2019-10-07', 400002, 400010, 4000002, 'Badda', 'Jatrabari', 'UCB Bank', 'B4463697', 39122, 'Received', 1, 39122, 'Singer', 'Smart TV', 'From Branch'),
(3, '2023-05-16', 100002, 100016, 1000010, 'Dakkhin Khan', 'Azampur', 'Standard Bank', '7664538', 25209, 'Received', 1, 25208, 'Singer', 'Smart TV', 'From Branch'),
(4, '2023-03-20', 100001, 100015, 1000010, 'Dakkhin Khan', 'Azampur', 'Standard Bank', '7664536', 25209, 'Received', 1, 25208, 'Singer', 'Smart TV', 'From Branch'),
(5, '2023-03-09', 730002, 730007, 7300004, 'Fotulla-1', 'Fotulla-2', 'IFIC', '3987878', 25209, 'Received', 1, 25209, 'Singer', 'Smart TV', 'From Branch'),
(6, '2023-03-07', 730001, 730005, 7300003, 'Fotulla-1', 'Fotulla-2', 'IFIC', '3987878', 27817, 'Received', 1, 27817, 'Singer', 'Refrigerator', 'From Branch'),
(7, '2022-08-10', 730003, 730009, 7300002, 'Postogola', 'Fotulla-2', 'Dhaka Bank', '1106745', 24774, 'Received', 1, 24774, 'Singer', 'Smart TV', 'From Branch'),
(8, '2023-03-15', 1030001, 1030015, 10300013, 'Uttara-NEED', 'Uttara', 'Stnadard Bank Limited', '7962463', 25209, 'Received', 1, 25209, 'Singer', 'Smart TV', 'From Branch'),
(9, '2022-02-10', 530001, 530004, 5300004, 'Pallobi-NEED', 'Shamoly', 'SIBL-Pallabi Branch', '3', 1991, 'Received', 1, 1991, 'Singer', 'Sewing Machine', 'From Branch'),
(10, '2022-05-07', 120003, 120016, 1200008, 'Armanitola', 'Noyabazar-1', 'Agrani Bank & Becharamdewri', '3664060', 27817, 'Received', 1, 27817, 'Singer', 'Refrigerator', 'From Branch'),
(11, '2022-01-13', 120001, 120010, 1200006, 'Noyabazar-3', 'Noyabazar-1', '0', '0', 0, 'Received', 1, 24773, 'Singer', 'Smart TV', 'From Branch'),
(12, '2022-01-13', 120004, 120012, 1200006, 'Noyabazar-2', 'Noyabazar-1', '0', '0', 0, 'Received', 1, 24773, 'Singer', 'Smart TV', 'From Branch'),
(13, '2023-01-10', 1250001, 1250009, 12500005, 'Armanitola', 'Noyabazar-2', 'Agrani Bank & Becharamdewri', '3664063', 37383, 'Received', 1, 37382, 'Singer', 'Smart TV', 'From Branch');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_22_145311_create_customer_order', 1),
(6, '2023_09_22_152142_add_columns_to_coustomer_order', 1),
(8, '2023_09_23_132631_create_consumer__orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `report`
-- (See below for the actual view)
--
CREATE TABLE `report` (
`Product Name` varchar(15)
,`product_count` bigint(21)
,`Purchase_Value` decimal(32,0)
,`cmSalesCount` bigint(21)
,`cmSalesPrice` decimal(32,0)
,`cmPurchasePrice` decimal(32,0)
,`cmStaffComission` decimal(32,0)
,`cmNet Profit` decimal(34,0)
,`SalesCount` bigint(21)
,`SalesPrice` decimal(32,0)
,`PurchasePrice` decimal(32,0)
,`StaffComission` decimal(32,0)
,`Net Profit` decimal(34,0)
,`InStockCount` bigint(22)
,`InStockValue` decimal(33,0)
,`totalPaidCount` decimal(32,0)
,`TotalPaidAmount` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'syfuddhin', 'syfuddhin@gmail.com', NULL, '$2y$10$G74zRRX0r/Wa0crjKvp9/egGkTv0mK3v4nhqYBK1/4M2hdSoSF2rO', NULL, '2023-09-23 06:45:59', '2023-09-23 06:45:59');

-- --------------------------------------------------------

--
-- Structure for view `report`
--
DROP TABLE IF EXISTS `report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`report`@`%` SQL SECURITY DEFINER VIEW `report`  AS SELECT `cp`.`Product Name` AS `Product Name`, count(`cp`.`Product Name`) AS `product_count`, sum(`cp`.`Product Purchase Price`) AS `Purchase_Value`, count(`tms`.`Product ID`) AS `cmSalesCount`, sum(`tms`.`Salable Price`) AS `cmSalesPrice`, sum(`tms`.`Purchase Price`) AS `cmPurchasePrice`, sum(`tms`.`Staff Comission`) AS `cmStaffComission`, sum(`tms`.`Salable Price` - `tms`.`Purchase Price` - `tms`.`Staff Comission`) AS `cmNet Profit`, count(`cs`.`Product Name`) AS `SalesCount`, sum(`cs`.`Salable Price`) AS `SalesPrice`, sum(`cs`.`Purchase Price`) AS `PurchasePrice`, sum(`cs`.`Staff Comission`) AS `StaffComission`, sum(`cs`.`Salable Price` - `cs`.`Purchase Price` - `cs`.`Staff Comission`) AS `Net Profit`, count(`cp`.`Product Name`) - count(`cs`.`Product Name`) AS `InStockCount`, sum(`cp`.`Product Purchase Price`) - coalesce(sum(`cs`.`Purchase Price`),0) AS `InStockValue`, coalesce(`billpaid`.`totalPaidCount`,0) AS `totalPaidCount`, coalesce(`billpaid`.`TotalPaidAmount`,0) AS `TotalPaidAmount` FROM (((`consumer_products` `cp` left join (select `consumer_soldouts`.`Distrivutor Name` AS `Distrivutor Name`,`consumer_soldouts`.`Product ID` AS `Product ID`,`consumer_soldouts`.`Soldout Date` AS `Soldout Date`,`consumer_soldouts`.`Salable Price` AS `Salable Price`,`consumer_soldouts`.`Purchase Price` AS `Purchase Price`,`consumer_soldouts`.`Staff Comission` AS `Staff Comission` from `consumer_soldouts` where `consumer_soldouts`.`Soldout Date` between 2019 - 6 - 1 and 2023 - 9 - 30 union select `consumer_trans_this_branches`.`Distributor Name` AS `Distributor Name`,`consumer_trans_this_branches`.`Product Code` AS `Product Code`,`consumer_trans_this_branches`.`Transfer Date` AS `Transfer Date`,`consumer_trans_this_branches`.`Product Purchase Price` AS `Product Purchase Price`,`consumer_trans_this_branches`.`Check Amount` AS `Check Amount`,0 AS `Staff Comission` from `consumer_trans_this_branches` where `consumer_trans_this_branches`.`Transfer Date` between 2019 - 6 - 1 and 2023 - 9 - 30) `tms` on(`cp`.`Recieved ID` = `tms`.`Product ID`)) left join (select `consumer_soldouts`.`Branch name` AS `Branch name`,`consumer_soldouts`.`Product ID` AS `Product ID`,`consumer_soldouts`.`Salable Price` AS `Salable Price`,`consumer_soldouts`.`Purchase Price` AS `Purchase Price`,`consumer_soldouts`.`Staff Comission` AS `Staff Comission`,`consumer_soldouts`.`Distrivutor Name` AS `Distrivutor Name`,`consumer_soldouts`.`Product Name` AS `Product Name` from `consumer_soldouts` where `consumer_soldouts`.`Soldout Date` between '2019-01-01' and 2023 - 9 - 30 union select `consumer_trans_this_branches`.`Transfer From Branch` AS `Transfer From Branch`,`consumer_trans_this_branches`.`Product Code` AS `Product Code`,`consumer_trans_this_branches`.`Product Purchase Price` AS `Product Purchase Price`,`consumer_trans_this_branches`.`Check Amount` AS `Check Amount`,0 AS `Staff Comission`,`consumer_trans_this_branches`.`Distributor Name` AS `Distributor Name`,`consumer_trans_this_branches`.`Product Category` AS `Product Category` from `consumer_trans_this_branches` where `consumer_trans_this_branches`.`Transfer Date` between '2019-01-01' and 2023 - 9 - 30) `cs` on(`cp`.`Recieved ID` = `cs`.`Product ID`)) left join (select `co`.`Product Name` AS `Product Name`,`co`.`Branch name` AS `Branch name`,sum(case when `co`.`Bill Pay` = 'paid' then `co`.`Received Quantity` else 0 end) AS `totalPaidCount`,sum(`bp`.`Paid_Amount`) AS `TotalPaidAmount` from (`consumer_orders` `co` left join `consumer_bill_paids` `bp` on(`co`.`Order ID` = `bp`.`Order_Code`)) where `co`.`Distributor Name` = 'singer' group by `co`.`Product Name`,`co`.`Branch name`) `billpaid` on(`cp`.`Branch name` = `billpaid`.`Branch name` and `cp`.`Product Name` = `billpaid`.`Product Name`)) WHERE `cp`.`Branch name` = 'Azampur' AND `cp`.`Distributor Name` = 'singer' GROUP BY `cp`.`Product Name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer_bill_paids`
--
ALTER TABLE `consumer_bill_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumer_orders`
--
ALTER TABLE `consumer_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumer_products`
--
ALTER TABLE `consumer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumer_trans_this_branches`
--
ALTER TABLE `consumer_trans_this_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumer_bill_paids`
--
ALTER TABLE `consumer_bill_paids`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `consumer_orders`
--
ALTER TABLE `consumer_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `consumer_products`
--
ALTER TABLE `consumer_products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `consumer_trans_this_branches`
--
ALTER TABLE `consumer_trans_this_branches`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
