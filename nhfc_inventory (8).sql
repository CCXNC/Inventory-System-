-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 03:32 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhfc_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `oic` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `name`, `address`, `oic`, `contact`) VALUES
(1, 'AB', 'ALABANG', '2/F, Villiamante Bldg., National Rd.,Alabang, Muntinlupa City', 'AGUSTINA POLIDO', '(02) 850-0748'),
(2, 'ALB', 'ALAMINOS', 'Rm. 203 Naty Miranda Bldg. Quezon Avenue, Alaminos City 2404, Pangasinan', 'CELEDONIO GEMINO', '(075) 654-1085'),
(3, 'BCB', 'BACLARAN', '314 2/F NHFC Bldg., Quirino Ave. Baclaran, Parañaque City', 'ARTHUR NICOLAS JR', '(02) 552-2552'),
(4, 'BB', 'BAGUIO', 'Rm. 118-119, GP Shopping Arcade, Mabini Street, Baguio City', 'MARLYNE BUGNE', '(074) 443-9653'),
(5, 'BLB', 'BALAGTAS', '2/F Room 201 Dela Cruz Building 1, Rizal Avenue Batangas City', 'JAY MACABATAS', '(044) 769-1349'),
(6, 'BNVB', 'BAMBANG', '2/F Lubong Bldg. Brgy. Banggot, Bambang, Nueva Vizcaya', 'MARITESS ALNAS', '(078) 362-0084'),
(7, 'BGB', 'BANGUED', 'Unit 7, Villamor Townhouse,  cor. Partelo and Peñarrubia Street, Bangued, Abra', 'JULIET D. LABERINTO', '(074) 752-7578'),
(8, 'BTB', 'BATANGAS', '2/F Room 201 Dela Cruz Building 1, Rizal Avenue Batangas City', 'ZARINA MENDOZA', '(043) 723-6328'),
(9, 'PBB', 'BONTOC', '1st Floor Commercial Center, Poblacion Bontoc, Mountain Province', 'JESSICA CHIGWAY', '(074) 602-1105'),
(10, 'CISB', 'CANDON', '2/F De Guia Bldg., San Juan, Candon City, Ilocos Sur', 'ARACELI DOMINGO', '(077) 674-0798'),
(11, 'DGB', 'DAGUPAN', '2/F, Aquino Bldg., No. 1 Burgos Street, Dagupan City, Pangasinan', 'CYNTHIA DAROYA', '(075) 522-5408'),
(12, 'DV', 'DIVISORIA', 'Sampaguita Shopping Center, Stall 905-D8, 907 Juan Luna St. cor. C.M. Recto Ave, Tondo, Manila', 'FERDIE FAJARDO', '(02) 724-2980'),
(13, 'LUV', 'LA UNION', '2/F, Nera Bldg., Quezon Avenue, San Fernando City, La Union', 'MARIBEL VALDEZ', '(072) 888-2078'),
(14, 'LGB', 'LEGAZPI', 'Rm 204 Rañola Bldg., Oro Site, Legazpi City', 'MERIAM MORAL', '(052) 480-8488'),
(15, 'NGB', 'NAGA', '2/F, Prieto Bldg., Panganiban Drive Naga City', 'VILMA REVIDAD', '(054) 472-8444'),
(16, 'NB', 'NOVALICHES', '936 Bonifacio Bldg., Quirino Hi-way Novaliches, Quezon City', 'VANESSA BELDIA', '(02) 939-9203'),
(17, 'RIB', 'ROXAS', '2nd floor, Arca Building Bantug, Roxas, Isabela', 'NOEL DE GUZMAN', '(078) 642-7925'),
(18, 'SJ', 'SAN JUAN', '606 Pinaglabanan Street, San Juan City', 'ANALIZA RAMOS', '(02) 723-5505'),
(19, 'SPB', 'SAN PABLO', '2/F Lina Bldg. JP Rizal Avenue, Cor. A. Mabini St. Brgy. V-B San Pablo City, Laguna', 'PABLO ALDRIN COLOCAR', '049-651-3046'),
(20, 'STGB', 'SANTIAGO', 'RM. # 209 2/F Heritage Commercial Complex, National Hi-way Malvar, Santiago City, Isabela', 'MILAGROS BAUTISTA', '(078) 682-0055'),
(21, 'SNVB', 'SOLANO', '2nd floor, Land Bank Galima Bldg National Hi-way, Solano, Nueva Vizcaya', 'MARINA ALLEGO', '(078) 326-6414'),
(22, 'TBK', 'TABUK', 'Westgate Bldng, Dagupan west, Tabuk City, Kalinga', 'ROLEND ARAÑA', '09175104296'),
(23, 'VGB', 'VIGAN', 'Plaza Maestro Annex PM 202 Plaza Maestro Commercial Complex, Vigan City, Ilocos Sur', 'MYLENE CABARLO', '(077) 632-0619'),
(24, 'SZB', 'ZAMBALES', '259 D Nat\'l. Road, South Poblacion Sta. Cruz, Zambales', 'JOANNE MILLAN', '(047) 602-1956'),
(25, 'SJ-COL', 'Collection Dept', '606 Pinaglabanan Street, San Juan City', 'WARLINDO H. BELDIA', '723-5505'),
(26, 'SJ-AUDIT', 'Audit Dept', '606 Pinaglabanan Street, San Juan City', 'JOSH ESPENIDO', '723-5505'),
(27, 'SJ-ACTNG', 'Accounting Dept', '606 Pinaglabanan Street, San Juan City', 'EMELITA PERTEZ ALCANTARA', '723-5505'),
(28, 'SJ-IT', 'IT Dept', '606 Pinaglabanan Street, San Juan City', 'KENNETH ABILAR', '723-5505'),
(29, 'SJ-SALES', 'Sales Dept', '606 Pinaglabanan Street, San Juan City', 'ANALIZA RAMOS', '723-5505'),
(30, 'SJ-HR', 'HR Dept', '606 Pinaglabanan Street, San Juan City', 'REGGIE BAGTAS', '723-5408');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item`
--

CREATE TABLE `inventory_item` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_arrived` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_item`
--

INSERT INTO `inventory_item` (`id`, `employee_id`, `branch_id`, `item`, `description`, `date_arrived`, `status`) VALUES
(1, 1, 1, 'PC UNIT/LAPTOP', 'PC DESKTOP', '2018', 'OK'),
(2, 1, 1, 'Monitor', 'AOC  ( DYOC51A005948 )', '2018', 'OK'),
(3, 1, 1, 'Keyboard', 'PCX KB MODEL K8050', '2018', 'OK'),
(4, 1, 1, 'Mouse', 'LOGITECH    A4TECH', '2018', 'OK'),
(5, 1, 1, 'AVR/UPS', 'SECURE         ', '2018', 'OK'),
(6, 1, 1, 'Headset', 'A4TECH', '2018', 'OK'),
(7, 1, 1, 'Printer', 'EPSON L120 ( G8NY246505 )', '2018', 'NOT OK'),
(8, 1, 1, 'Scanner', 'CANON L110', '2018', 'OK'),
(9, 1, 1, 'SWITCH HUB', '', '', ''),
(10, 2, 1, 'PC UNIT/LAPTOP', '', '2011', 'OK'),
(11, 2, 1, 'Monitor', 'AOC   ( EQUD31A012947 )', '2011', 'OK'),
(12, 2, 1, 'Keyboard', 'A4TECH MODEL KRS-83', '2011', 'OK'),
(13, 2, 1, 'Mouse', 'RAPOO MODEL:N1162', '2011', 'OK'),
(14, 2, 1, 'AVR/UPS', 'SECURE         ', '2011', 'OK'),
(15, 2, 1, 'Headset', '', '', ''),
(16, 2, 1, 'Printer', 'EPSON L120  ( Q7CY017718 )', '2011', 'OK'),
(17, 2, 1, 'Scanner', '', '', ''),
(18, 2, 1, 'SWITCH HUB', '', '', ''),
(19, 3, 1, 'PC UNIT/LAPTOP', '', '2012', 'OK'),
(20, 3, 1, 'Monitor', 'AOC ( EQUD51A012156 )', '2012', 'OK'),
(21, 3, 1, 'Keyboard', 'A4TECH  MODEL:KPS-83', '2012', 'OK'),
(22, 3, 1, 'Mouse', 'A4TECH  MODEL:OP-620D', '2012', 'OK'),
(23, 3, 1, 'AVR/UPS', 'POWERPRO', '2012', 'OK'),
(24, 3, 1, 'Headset', '', '', ''),
(25, 3, 1, 'Printer', 'EPSON LX310', '2012', 'OK'),
(26, 3, 1, 'Scanner', '', '', ''),
(27, 3, 1, 'SWITCH HUB', '', '', ''),
(28, 4, 1, 'PC UNIT/LAPTOP', '', '2009', 'OK'),
(29, 4, 1, 'Monitor', 'FLATRON  ( 908INCN80627 )', '', 'OK'),
(30, 4, 1, 'Keyboard', 'GENIUSXP11111A8721', '', 'OK'),
(31, 4, 1, 'Mouse', '1304083120206 ', '', 'OK'),
(32, 4, 1, 'AVR/UPS', '2012000026057    ', '', 'OK'),
(33, 4, 1, 'Headset', 'LOGITECH', '', 'OK'),
(34, 4, 1, 'Printer', 'EPSON L220  ( VGWK046627 )', '', 'OK'),
(35, 4, 1, 'Scanner', 'EPSON L220  ( VGWK046627 )', '', 'OK'),
(36, 4, 1, 'SWITCH HUB', 'CDR KING131671005186', '', 'OK'),
(37, 5, 2, 'PC UNIT/LAPTOP', '', '2011', 'OK'),
(38, 5, 2, 'Monitor', 'HANNS G  ( H40G18N-850-2B )', '2011', 'OK'),
(39, 5, 2, 'Keyboard', 'CD-R KING', '2015', 'OK'),
(40, 5, 2, 'Mouse', 'LOGITECH', '2011', 'NOT OK'),
(41, 5, 2, 'AVR/UPS', 'POWER PLUS', '2011', 'OK'),
(42, 5, 2, 'Headset', 'A4TECH', '2011', 'OK'),
(43, 5, 2, 'Printer', 'EPSON LX-300+II  ( G8NY200460 )', '2011', 'OK'),
(44, 5, 2, 'Scanner', 'CANON L110', '2012', 'OK'),
(45, 5, 2, 'SWITCH HUB', 'TP-LINK  138C9601545', '2011', 'OK'),
(46, 6, 2, 'PC UNIT/LAPTOP', '', '2015', 'OK'),
(47, 6, 2, 'Monitor', 'A0C  (HPYE61A030993)', '2015', 'OK'),
(48, 6, 2, 'Keyboard', 'A4TECH', '2015', 'OK'),
(49, 6, 2, 'Mouse', 'A4TECH', '2015', 'OK'),
(50, 6, 2, 'AVR/UPS', 'POWER FRO', '2015', 'OK'),
(51, 6, 2, 'Headset', 'A4TECH', '2015', 'OK'),
(52, 6, 2, 'Printer', 'EPSON LX-310  ( Q7CY052306 )', '2015', 'NOT OK'),
(53, 6, 2, 'Scanner', '', '', ''),
(54, 6, 2, 'SWITCH HUB', '', '', ''),
(55, 7, 3, 'PC UNIT/LAPTOP', '', '', 'NOT OK'),
(56, 7, 3, 'Monitor', 'LG ( 105INUB5F366 )', '', 'OK'),
(57, 7, 3, 'Keyboard', 'LOGITECH', '', 'OK'),
(58, 7, 3, 'Mouse', 'RAPOO', '', 'OK'),
(59, 7, 3, 'AVR/UPS', 'POWERPLUS', '', 'OK'),
(60, 7, 3, 'Headset', 'A4TECH', '', 'NOT OK'),
(61, 7, 3, 'Printer', 'EPSON LX 310 ( Q7CY143882 )', '2017', 'OK'),
(62, 7, 3, 'Scanner', 'CANON LIDE 110', '', 'NOT OK'),
(63, 7, 3, 'SWITCH HUB', '', '', ''),
(64, 8, 3, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(65, 8, 3, 'Monitor', 'SAMSUNG ( V8CFH9NB407130Z )', '2017', 'OK'),
(66, 8, 3, 'Keyboard', 'A4TECH', '2017', 'OK'),
(67, 8, 3, 'Mouse', 'A4TECH', '2017', 'OK'),
(68, 8, 3, 'AVR/UPS', 'SECURE', '2017', 'OK'),
(69, 8, 3, 'Headset', 'A4TECH', '2017', 'OK'),
(70, 8, 3, 'Printer', 'EPSON LX310  ( Q7CY118731 )', '2017', 'OK'),
(71, 8, 3, 'Scanner', '', '', ''),
(72, 8, 3, 'SWITCH HUB', '', '', ''),
(73, 9, 4, 'PC UNIT/LAPTOP', '', '', ''),
(74, 9, 4, 'Monitor', 'AOC ( ANIH31A000520 )', '2018', 'OK'),
(75, 9, 4, 'Keyboard', 'DELUX', '2018', 'OK'),
(76, 9, 4, 'Mouse', 'A4TECH', '2018', 'OK'),
(77, 9, 4, 'AVR/UPS', 'SECURE', '2015', 'OK'),
(78, 9, 4, 'Headset', 'A4TECH', '2018', 'OK'),
(79, 9, 4, 'Printer', 'EPSON  L360  ( VGFK328325 )', '2018', 'OK'),
(80, 9, 4, 'Scanner', 'EPSON  L360  ( VGFK328325 )', '2018', 'OK'),
(81, 9, 4, 'SWITCH HUB', '', '', ''),
(82, 10, 4, 'PC UNIT/LAPTOP', '', '', 'OK'),
(83, 10, 4, 'Monitor', 'AOC ( EQUD51A015707 )', '2016', 'OK'),
(84, 10, 4, 'Keyboard', 'DELUXMODEL-K8050', '2012', 'OK'),
(85, 10, 4, 'Mouse', 'OPTICAL MOUSE MODEL:OP-620D', '2012', 'OK'),
(86, 10, 4, 'AVR/UPS', 'SECURE/UPS-650VA', '2016', 'OK'),
(87, 10, 4, 'Headset', '4TECH', '2012', 'OK'),
(88, 10, 4, 'Printer', 'EPSON LX310 ( Q7CY009843 )', '2016', 'OK'),
(89, 10, 4, 'Scanner', '', '', ''),
(90, 10, 4, 'SWITCH HUB', '', '', ''),
(91, 11, 4, 'PC UNIT/LAPTOP', '', '', 'OK'),
(92, 11, 4, 'Monitor', 'LG FLATRON  ( L177WSB )', '2016', 'OK'),
(93, 11, 4, 'Keyboard', '4TECH ( KR-85 )', '2012', 'OK'),
(94, 11, 4, 'Mouse', 'DELKIN', '2012', 'OK'),
(95, 11, 4, 'AVR/UPS', 'POWER PLUS/220V', '2012', 'OK'),
(96, 11, 4, 'Headset', '', '', ''),
(97, 11, 4, 'Printer', 'EPSON LX30   ( Q7CY009117 )', '2016', 'OK'),
(98, 11, 4, 'Scanner', '', '', ''),
(99, 11, 4, 'SWITCH HUB', '', '', ''),
(100, 12, 4, 'PC UNIT/LAPTOP', '', '2016', 'OK'),
(101, 12, 4, 'Monitor', 'AOC  ( HPYF61A001718 )', '2016', 'NOT OK'),
(102, 12, 4, 'Keyboard', 'A4TECH', '2016', 'OK'),
(103, 12, 4, 'Mouse', 'A4TECH', '2016', 'OK'),
(104, 12, 4, 'AVR/UPS', 'FSP', '2016', 'OK'),
(105, 12, 4, 'Headset', 'A4TECH', '2016', 'OK'),
(106, 12, 4, 'Printer', 'EPSON LX310  ( Q7CY091506 )', '2016', 'OK'),
(107, 12, 4, 'Scanner', 'CANON LIDE 120', '2016', 'OK'),
(108, 12, 4, 'SWITCH HUB', '', '', ''),
(109, 13, 4, 'PC UNIT/LAPTOP', '', '2018', 'NOT OK'),
(110, 13, 4, 'Monitor', 'AOC   ( KCY631A004531 )', '2012', 'OK'),
(111, 13, 4, 'Keyboard', '4TECH (KRS-83)', '2012', 'OK'),
(112, 13, 4, 'Mouse', 'LOGITECH (PID: HC9250F)', '2012', 'OK'),
(113, 13, 4, 'AVR/UPS', 'SECURE/UPS-650VA', '2016', 'OK'),
(114, 13, 4, 'Headset', '', '', ''),
(115, 13, 4, 'Printer', 'EPSON LX310 ( Q7CY009516 )', '2016', 'OK'),
(116, 13, 4, 'Scanner', '', '', ''),
(117, 13, 4, 'SWITCH HUB', '', '', ''),
(118, 14, 5, 'PC UNIT/LAPTOP', '', '', 'OK'),
(119, 14, 5, 'Monitor', 'SN.74000870885', '2018', 'OK'),
(120, 14, 5, 'Keyboard', 'A4TECH', '2017', 'OK'),
(121, 14, 5, 'Mouse', 'A4TECH', '2017', 'OK'),
(122, 14, 5, 'AVR/UPS', 'POWERMAXXX', '2015', 'OK'),
(123, 14, 5, 'Headset', 'A4TECH', '2014', 'OK'),
(124, 14, 5, 'Printer', 'SN. G8NY091735', '2008', 'OK'),
(125, 14, 5, 'Scanner', 'SN. KEFD46454', '2008', 'OK'),
(126, 14, 5, 'SWITCH HUB', '', '', ''),
(127, 15, 5, 'PC UNIT/LAPTOP', '', '2015', 'OK'),
(128, 15, 5, 'Monitor', 'SN. HPYEA1A016749', '2015', 'OK'),
(129, 15, 5, 'Keyboard', 'A4TECH', '2015', 'OK'),
(130, 15, 5, 'Mouse', 'A4TECH', '2015', 'OK'),
(131, 15, 5, 'AVR/UPS', 'POWER PRO', '2015', 'OK'),
(132, 15, 5, 'Headset', '', '', ''),
(133, 15, 5, 'Printer', 'SN. Q7CY064303', '2015', 'OK'),
(134, 15, 5, 'Scanner', '', '', ''),
(135, 15, 5, 'SWITCH HUB', '', '', ''),
(136, 16, 5, 'PC UNIT/LAPTOP', '', '', 'OK'),
(137, 16, 5, 'Monitor', 'SN. 0021NAR6J408', '2008', 'OK'),
(138, 16, 5, 'Keyboard', 'LOGITECH', '2017', 'OK'),
(139, 16, 5, 'Mouse', 'A4TECH', '2017', 'OK'),
(140, 16, 5, 'AVR/UPS', 'POWERPLUS', '2008', 'OK'),
(141, 16, 5, 'Headset', 'A4TECH', '2016', 'OK'),
(142, 16, 5, 'Printer', 'SN. G8NY146508', '2008', 'OK'),
(143, 16, 5, 'Scanner', '', '', ''),
(144, 16, 5, 'SWITCH HUB', '', '', ''),
(145, 17, 6, 'PC UNIT/LAPTOP', '', '2011', 'OK'),
(146, 17, 6, 'Monitor', 'LG-1071NRC4D670', '2011', 'OK'),
(147, 17, 6, 'Keyboard', 'LT-K120', '2011', 'OK'),
(148, 17, 6, 'Mouse', 'LOGITECHB100', '2011', 'OK'),
(149, 17, 6, 'AVR/UPS', 'PROTEC/UPS', '2011', 'OK / NOT OK'),
(150, 17, 6, 'Headset', 'LABSIC-LSDY701', '2011', 'OK'),
(151, 17, 6, 'Printer', 'EPSON LX300  ( G8NY195098 )', '2011', 'OK'),
(152, 17, 6, 'Scanner', 'CANON QC3-5241-DB01-02', '2011', 'OK'),
(153, 17, 6, 'SWITCH HUB', 'JVS-D6104 -S1 JOVICION', '2011', 'OK'),
(154, 18, 6, 'PC UNIT/LAPTOP', '', '2015', 'OK'),
(155, 18, 6, 'Monitor', 'AOC-HPYE61A017048', '2015', 'OK'),
(156, 18, 6, 'Keyboard', 'KRS-85', '2015', 'OK'),
(157, 18, 6, 'Mouse', 'OP 6200', '2015', 'OK'),
(158, 18, 6, 'AVR/UPS', 'SECURE', '2015', 'OK'),
(159, 18, 6, 'Headset', 'HS-66', '2015', 'NOT OK'),
(160, 18, 6, 'Printer', 'EPSON LX-310  ( Q7CY052328 )', '2015', 'OK'),
(161, 18, 6, 'Scanner', 'CANON PLB-SC08 ', '2018', 'OK'),
(162, 18, 6, 'SWITCH HUB', '', '', ''),
(163, 19, 7, 'PC UNIT/LAPTOP', '', '', ''),
(164, 19, 7, 'Monitor', 'AOC ( ANII21A006798 )', '2018', 'OK'),
(165, 19, 7, 'Keyboard', 'A4TECH', '2018', 'OK'),
(166, 19, 7, 'Mouse', 'A4TECH', '2018', 'OK'),
(167, 19, 7, 'AVR/UPS', 'SECURE', '2018', 'OK'),
(168, 19, 7, 'Headset', 'A4TECH', '2018', 'OK'),
(169, 19, 7, 'Printer', 'EPSON LX-310', '2018', 'OK'),
(170, 19, 7, 'Scanner', '', '', ''),
(171, 19, 7, 'SWITCH HUB', '', '', ''),
(172, 20, 7, 'PC UNIT/LAPTOP', '', '', ''),
(173, 20, 7, 'Monitor', 'LG FLATRON ( L177WSB )', '2009', 'NOT OK'),
(174, 20, 7, 'Keyboard', 'A4TECH ', '2009', 'OK'),
(175, 20, 7, 'Mouse', 'OPTICAL MOUSE', '2009', 'OK'),
(176, 20, 7, 'AVR/UPS', 'SECURE', '2009', 'OK'),
(177, 20, 7, 'Headset', '', '', ''),
(178, 20, 7, 'Printer', 'EPSON LX-300II', '2009', 'OK'),
(179, 20, 7, 'Scanner', 'CANON 110 LIDE', '', 'OK'),
(180, 20, 7, 'SWITCH HUB', '', '', ''),
(181, 21, 7, 'PC UNIT/LAPTOP', '', '', ''),
(182, 21, 7, 'Monitor', 'OC LED ( E950SWN )', '2011', 'OK'),
(183, 21, 7, 'Keyboard', 'A4TECH ', '2011', 'OK'),
(184, 21, 7, 'Mouse', 'A4TECH ', '2011', 'OK'),
(185, 21, 7, 'AVR/UPS', 'SECURE', '2011', 'OK'),
(186, 21, 7, 'Headset', '', '', ''),
(187, 21, 7, 'Printer', 'EPSON LX-300II', '2011', 'NOT OK'),
(188, 21, 7, 'Scanner', '', '', ''),
(189, 21, 7, 'SWITCH HUB', '', '', ''),
(190, 22, 8, 'PC UNIT/LAPTOP', '', '', ''),
(191, 22, 8, 'Monitor', 'SAMSUNG  ( V8CFH9NB300655F ) ', '2011', 'OK'),
(192, 22, 8, 'Keyboard', 'A4TECH KR85', '2011', 'OK'),
(193, 22, 8, 'Mouse', 'MUSIC-F', '2016', 'OK'),
(194, 22, 8, 'AVR/UPS', 'PROTEC', '2011', 'OK'),
(195, 22, 8, 'Headset', 'A4TECH', '2016', 'OK'),
(196, 22, 8, 'Printer', 'EPSON LX 310', '2018', 'OK'),
(197, 22, 8, 'Scanner', 'CANON   ( SR3 KEFD46769 )', '2011', 'OK'),
(198, 22, 8, 'SWITCH HUB', 'TL-R402M  ( 2144270000038 )', '2016', 'OK'),
(199, 23, 9, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(200, 23, 9, 'Monitor', 'AOC ( ANIGB1A026030 )', '2017', 'OK'),
(201, 23, 9, 'Keyboard', 'A4TECH', '2017', 'OK'),
(202, 23, 9, 'Mouse', 'A4TECH', '2017', 'OK'),
(203, 23, 9, 'AVR/UPS', 'LOGIC 720 VA', '2018', 'OK'),
(204, 23, 9, 'Headset', 'OVLENG', '2017', 'OK'),
(205, 23, 9, 'Printer', '', '', ''),
(206, 23, 9, 'Scanner', '', '', ''),
(207, 23, 9, 'SWITCH HUB', 'HUAWEI ', '', ''),
(208, 24, 9, 'PC UNIT/LAPTOP', '', '2012', 'NOT OK'),
(209, 24, 9, 'Monitor', 'HANNS.G  (  105XL3BY01039  )', '2012', 'OK'),
(210, 24, 9, 'Keyboard', 'LOGITECH', '2012', 'OK'),
(211, 24, 9, 'Mouse', 'A4TECH', '2012', 'NOT OK'),
(212, 24, 9, 'AVR/UPS', 'POWERPLUS /INTEX(650 VA UPS)', '2012', 'OK / NOT OK'),
(213, 24, 9, 'Headset', 'OVLENG', '2017', 'OK'),
(214, 24, 9, 'Printer', 'EPSON LX300 ( G8NY200388 )', '2012', 'NOT OK'),
(215, 24, 9, 'Scanner', 'CANON L110', '2012', 'OK'),
(216, 24, 9, 'SWITCH HUB', '', '', ''),
(217, 25, 10, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(218, 25, 10, 'Monitor', 'AOC (  FRKE1HA133091 )', '2014', 'OK'),
(219, 25, 10, 'Keyboard', 'A4TECH MODEL KRS-85', '2015', 'OK'),
(220, 25, 10, 'Mouse', 'A4TECH MODEL OP-6200', '2015', 'OK'),
(221, 25, 10, 'AVR/UPS', 'SECURE', '2015', 'OK'),
(222, 25, 10, 'Headset', 'A4TECH', '2014', 'NOT OK'),
(223, 25, 10, 'Printer', 'EPSON LX310  (  Q7CY022410  )', '2013', 'OK'),
(224, 25, 10, 'Scanner', 'CANON LIDE110 ( KEFD60810 )', '2014', 'OK'),
(225, 25, 10, 'SWITCH HUB', '', '', ''),
(226, 26, 10, 'PC UNIT/LAPTOP', '', '', ''),
(227, 26, 10, 'Monitor', 'LG(107INNG4D615)', '2013', 'OK'),
(228, 26, 10, 'Keyboard', 'A4TECH', '2013', 'OK'),
(229, 26, 10, 'Mouse', 'A4TECH', '2013', 'OK'),
(230, 26, 10, 'AVR/UPS', 'SECURE', '2013', 'OK'),
(231, 26, 10, 'Headset', 'A4TECH', '2013', 'NOT OK'),
(232, 26, 10, 'Printer', 'EPSON LX-300+II  ( G8NY205585 )', '2013', 'NOT OK'),
(233, 26, 10, 'Scanner', '', '', ''),
(234, 26, 10, 'SWITCH HUB', '', '', ''),
(235, 27, 11, 'PC UNIT/LAPTOP', '', '2014', 'OK'),
(236, 27, 11, 'Monitor', 'AOC (  768B3BA009250  )', '2011', 'OK'),
(237, 27, 11, 'Keyboard', 'I ROCK', '2009', 'OK'),
(238, 27, 11, 'Mouse', 'I ROCK', '2009', 'OK'),
(239, 27, 11, 'AVR/UPS', 'POWER PLUS', '2011', 'OK'),
(240, 27, 11, 'Headset', 'A4TECH', '2014', 'OK'),
(241, 27, 11, 'Printer', 'EPSON LX300 (  68NY143608  )', '2009', 'NOT OK'),
(242, 27, 11, 'Scanner', '', '', ''),
(243, 27, 11, 'SWITCH HUB', 'TP-LINK  (2148188003494)', '2009', 'OK'),
(244, 28, 11, 'PC UNIT/LAPTOP', '', '2011', 'OK'),
(245, 28, 11, 'Monitor', 'HANNS-G (  105XL3VY00551  )', '2011', 'OK'),
(246, 28, 11, 'Keyboard', 'LOGITECH', '2011', 'OK'),
(247, 28, 11, 'Mouse', 'A4TECH', '2011', 'OK'),
(248, 28, 11, 'AVR/UPS', 'POWERPLUS', '2011', 'OK'),
(249, 28, 11, 'Headset', '', '', ''),
(250, 28, 11, 'Printer', 'EPSON LX-310 (  Q7CY145178  )', '2011', 'OK'),
(251, 28, 11, 'Scanner', '', '', ''),
(252, 28, 11, 'SWITCH HUB', '', '', ''),
(253, 29, 12, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(254, 29, 12, 'Monitor', 'LG (  611INGQ38991  )', '2017', 'OK'),
(255, 29, 12, 'Keyboard', 'A4TECH', '2017', 'OK'),
(256, 29, 12, 'Mouse', 'A4TECH', '2017', 'OK'),
(257, 29, 12, 'AVR/UPS', 'SECURE', '2017', 'OK'),
(258, 29, 12, 'Headset', 'A4TECH', '2017', 'OK'),
(259, 29, 12, 'Printer', '', '', ''),
(260, 29, 12, 'Scanner', '', '', ''),
(261, 29, 12, 'SWITCH HUB', '', '', ''),
(262, 30, 12, 'PC UNIT/LAPTOP', '', '2016', 'OK'),
(263, 30, 12, 'Monitor', 'NOC-HPVE51A001422', '2016', 'OK'),
(264, 30, 12, 'Keyboard', 'A4TECH', '2016', 'OK'),
(265, 30, 12, 'Mouse', 'CD-R KING', '2016', 'OK'),
(266, 30, 12, 'AVR/UPS', 'CD-R KING', '2016', 'OK'),
(267, 30, 12, 'Headset', 'A4TECH', '2016', 'OK'),
(268, 30, 12, 'Printer', 'EPSON LX-310-*Q7CY060892*', '2016', 'OK'),
(269, 30, 12, 'Scanner', '', '', ''),
(270, 30, 12, 'SWITCH HUB', '', '', ''),
(271, 31, 12, 'PC UNIT/LAPTOP', '', '2008', 'OK'),
(272, 31, 12, 'Monitor', 'LG (  1061NJL50236  )', '2016', 'OK'),
(273, 31, 12, 'Keyboard', 'LOGITECH', '2008', 'NOT OK'),
(274, 31, 12, 'Mouse', 'LOGITECH', '2008', 'NOT OK'),
(275, 31, 12, 'AVR/UPS', 'POWER PLUS', '2016', 'OK'),
(276, 31, 12, 'Headset', 'YO-990-MV', '2016', 'OK'),
(277, 31, 12, 'Printer', 'LX-300+II  (  G8NY078501  ) / EPSON L20  (  TP3K327847  )', '2008 / 2017', 'OK'),
(278, 31, 12, 'Scanner', 'CANON LIDE 110', '2016', 'OK'),
(279, 31, 12, 'SWITCH HUB', '', '', ''),
(280, 32, 13, 'PC UNIT/LAPTOP', '', '2010', 'OK'),
(281, 32, 13, 'Monitor', 'AOC(HHVE31A001631)', '2010', ' OK'),
(282, 32, 13, 'Keyboard', 'A4TECH', '2010', ' OK'),
(283, 32, 13, 'Mouse', 'A4TECH', '2010', ' OK'),
(284, 32, 13, 'AVR/UPS', 'POWERPRO', '2010', ' OK'),
(285, 32, 13, 'Headset', 'A4TECH', '2010', 'NOT OK'),
(286, 32, 13, 'Printer', 'EPSON LX 310(Q7CYO78500)', '2010', ' OK'),
(287, 32, 13, 'Scanner', 'CANON LIDE 110', '2010', ' OK'),
(288, 32, 13, 'SWITCH HUB', '', '', ''),
(289, 33, 13, 'PC UNIT/LAPTOP', '', '2010', 'OK'),
(290, 33, 13, 'Monitor', 'LG(107INEW4D636)', '2012', 'OK'),
(291, 33, 13, 'Keyboard', 'A4TECH', '2012', 'OK'),
(292, 33, 13, 'Mouse', 'ACER', '2012', 'OK'),
(293, 33, 13, 'AVR/UPS', 'PROTEC', '2012', 'OK'),
(294, 33, 13, 'Headset', 'A4TECH', '2012', 'OK'),
(295, 33, 13, 'Printer', 'EPSON LX 310+II(G8NY186122)', '2012', 'OK'),
(296, 33, 13, 'Scanner', 'CANON LIDE 110', '2012', 'OK'),
(297, 33, 13, 'SWITCH HUB', '', '', ''),
(298, 34, 14, 'PC UNIT/LAPTOP', '', '', 'OK'),
(299, 34, 14, 'Monitor', 'AOC LCD (  DFHBAHA011157  )', '2013', 'OK'),
(300, 34, 14, 'Keyboard', 'K200 LOGITECH', '2012', 'OK'),
(301, 34, 14, 'Mouse', 'LOGITECH', '', 'OK'),
(302, 34, 14, 'AVR/UPS', 'UPS(KEBOS) / AVR POWERPLUS', '2016', 'NOT OK'),
(303, 34, 14, 'Headset', 'A4TECH', '2015', 'NOT OK'),
(304, 34, 14, 'Printer', 'EPSON LX-310   (  Q7CY105740  ) / EPSON 210  (  SMXK139307  )', '2016 / 2015', 'OK'),
(305, 34, 14, 'Scanner', 'EPSON 210  (  SMXK139307  )', '2015', 'OK'),
(306, 34, 14, 'SWITCH HUB', '', '', ''),
(307, 35, 14, 'PC UNIT/LAPTOP', '', '', 'OK'),
(308, 35, 14, 'Monitor', 'LG LCD (  911INAR57720  )', '', 'OK'),
(309, 35, 14, 'Keyboard', 'IROCK MODELKK-85', '', 'OK'),
(310, 35, 14, 'Mouse', 'TECH  MODEI: OP-720', '', 'OK'),
(311, 35, 14, 'AVR/UPS', 'BOSLINE EA650VA', '', 'OK'),
(312, 35, 14, 'Headset', 'A4TECH ', '', 'OK'),
(313, 35, 14, 'Printer', 'EPSON LX-300=II   (  Q7CY020903  )', '', 'OK'),
(314, 35, 14, 'Scanner', 'CANON LDE110', '', 'OK'),
(315, 35, 14, 'SWITCH HUB', '', '', ''),
(316, 36, 14, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(317, 36, 14, 'Monitor', 'AOC ( HPYF61A002762 )', '', 'OK'),
(318, 36, 14, 'Keyboard', 'A4TECH KRS-83', '2017', 'OK'),
(319, 36, 14, 'Mouse', 'A4TECH ', '2017', 'OK'),
(320, 36, 14, 'AVR/UPS', 'APC', '2017', 'OK'),
(321, 36, 14, 'Headset', 'A4TECH ', '2017', 'NOT OK'),
(322, 36, 14, 'Printer', 'EPSON LX-310 (  Q7CY090951  )', '', 'OK'),
(323, 36, 14, 'Scanner', '', '', ''),
(324, 36, 14, 'SWITCH HUB', '', '', ''),
(325, 37, 15, 'PC UNIT/LAPTOP', '', '', 'OK'),
(326, 37, 15, 'Monitor', 'LG ( 8031NLV5L760 )', '2018', 'OK'),
(327, 37, 15, 'Keyboard', 'NEWMEN MODEL : KB-629P', '', 'OK'),
(328, 37, 15, 'Mouse', 'GENIUS', '2016', 'OK'),
(329, 37, 15, 'AVR/UPS', 'APC', '2016', 'OK'),
(330, 37, 15, 'Headset', 'GENIUS', '2015', 'NOT OK'),
(331, 37, 15, 'Printer', 'EPSON LX-300 +11 (  G8NY103415  )', '', 'OK'),
(332, 37, 15, 'Scanner', 'CANON LIDE 110', '2015', 'OK'),
(333, 37, 15, 'SWITCH HUB', '', '', ''),
(334, 38, 15, 'PC UNIT/LAPTOP', '', '2010', 'OK'),
(335, 38, 15, 'Monitor', 'ViewSonic (RY6100721107)', '2010', 'OK'),
(336, 38, 15, 'Keyboard', 'LOGITECH (1721MG00FU18)', '2017', 'OK'),
(337, 38, 15, 'Mouse', 'LOGITECH ', '2011', 'OK'),
(338, 38, 15, 'AVR/UPS', 'APC ', '2013', 'OK'),
(339, 38, 15, 'Headset', 'A4TECH HS-19', '', 'OK'),
(340, 38, 15, 'Printer', 'EPSON LX-300=II (*G8NY176575*)', '', 'OK'),
(341, 38, 15, 'Scanner', 'CANON G2000 (KKEB09837)', '2016', 'OK'),
(342, 38, 15, 'SWITCH HUB', '', '', ''),
(343, 39, 15, 'PC UNIT/LAPTOP', '', '', 'OK'),
(344, 39, 15, 'Monitor', 'LG FLATRON (909INAR3Y824)', '', 'OK'),
(345, 39, 15, 'Keyboard', 'LOGITECH', '2009', 'NOT OK'),
(346, 39, 15, 'Mouse', 'IROCK', '2009', 'OK'),
(347, 39, 15, 'AVR/UPS', 'APC', '2017', 'OK'),
(348, 39, 15, 'Headset', 'LOGITECH', '', 'NOT OK'),
(349, 39, 15, 'Printer', 'EPSON LX 310 (*Q7CY130544*)', '2017', 'OK'),
(350, 39, 15, 'Scanner', '', '', ''),
(351, 39, 15, 'SWITCH HUB', '', '', ''),
(352, 40, 15, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(353, 40, 15, 'Monitor', 'AOC ( ANIH31A001054 )', '2017', 'NOT OK'),
(354, 40, 15, 'Keyboard', 'A4TECH (PH1705029359)', '2017', 'OK'),
(355, 40, 15, 'Mouse', 'A4TECH ', '2017', 'OK'),
(356, 40, 15, 'AVR/UPS', 'APC', '2017', 'OK'),
(357, 40, 15, 'Headset', 'A4TECH HS-66', '2017', 'OK'),
(358, 40, 15, 'Printer', 'EPSON LX-300+11 ( G8NY138484 )', '2017', 'OK'),
(359, 40, 15, 'Scanner', '', '', ''),
(360, 40, 15, 'SWITCH HUB', '', '', ''),
(361, 41, 15, 'PC UNIT/LAPTOP', '', '', 'OK'),
(362, 41, 15, 'Monitor', 'AOC LED (  FZCD61A001666  )', '', 'OK'),
(363, 41, 15, 'Keyboard', 'LOGITECH ', '', 'OK'),
(364, 41, 15, 'Mouse', 'DELL - BLACK', '', 'OK'),
(365, 41, 15, 'AVR/UPS', 'POWERPLUS - BLACK \\ APC BACK UPS 625', '', 'OK'),
(366, 41, 15, 'Headset', 'LOGITECH H150 - BLUE W/ WHITE', '', 'DEFECTIVE'),
(367, 41, 15, 'Printer', 'EPSON LX 300+11 ( G8NY200255 )', '', 'OK'),
(368, 41, 15, 'Scanner', '', '', ''),
(369, 41, 15, 'SWITCH HUB', '', '', ''),
(370, 42, 16, 'PC UNIT/LAPTOP', '', '2013', 'OK'),
(371, 42, 16, 'Monitor', 'ViewSonic ( VA1912a )', '2014', 'OK'),
(372, 42, 16, 'Keyboard', 'Logitech 1402M60168T8', '2014', 'OK'),
(373, 42, 16, 'Mouse', 'Logitech 1343HS05P5H8', '2014', 'OK'),
(374, 42, 16, 'AVR/UPS', 'Powerplus ', '2014', 'OK'),
(375, 42, 16, 'Headset', 'A4tech ', '2014', 'NOT OK'),
(376, 42, 16, 'Printer', 'Epson L110 Sn# B521D', '2018', 'OK'),
(377, 42, 16, 'Scanner', '', '', ''),
(378, 42, 16, 'SWITCH HUB', '', '', ''),
(379, 43, 16, 'PC UNIT/LAPTOP', '', '2013', 'OK'),
(380, 43, 16, 'Monitor', 'SAMSUNG (  V8A8H9ZA00236N  )', '2013', 'OK'),
(381, 43, 16, 'Keyboard', 'GENIUS M/N#1060C186', '2014', 'OK'),
(382, 43, 16, 'Mouse', 'HYTAC S/N#15043674', '2016', 'OK'),
(383, 43, 16, 'AVR/UPS', 'UNIVERSAL ', '2014', 'OK'),
(384, 43, 16, 'Headset', '', '', ''),
(385, 43, 16, 'Printer', '', '', ''),
(386, 43, 16, 'Scanner', '', '', ''),
(387, 43, 16, 'SWITCH HUB', '', '', ''),
(388, 44, 16, 'PC UNIT/LAPTOP', '', '2018', 'OK'),
(389, 44, 16, 'Monitor', 'HANNS-G (  017NH3XYOO545  )', '', 'OK'),
(390, 44, 16, 'Keyboard', 'LOGTECH-P/N 920-00113', '', 'OK'),
(391, 44, 16, 'Mouse', 'GENIUS-W66013607251', '', 'OK'),
(392, 44, 16, 'AVR/UPS', '', '', ''),
(393, 44, 16, 'Headset', '', '', ''),
(394, 44, 16, 'Printer', 'EPSON LX310  (  Q7CY017005  )', '', 'OK'),
(395, 44, 16, 'Scanner', 'CANON-QC3-5240-DB01-01', '', 'OK'),
(396, 44, 16, 'SWITCH HUB', '', '', ''),
(397, 45, 16, 'PC UNIT/LAPTOP', '', '2018', 'OK'),
(398, 45, 16, 'Monitor', 'AOC (  AKXFA1A004983  )', '2018', 'OK'),
(399, 45, 16, 'Keyboard', 'CD-R KING #KB-C010-ZE', '2018', 'OK'),
(400, 45, 16, 'Mouse', 'CD-R KING ', '2018', 'OK'),
(401, 45, 16, 'AVR/UPS', 'SECURE ', '2018', 'OK'),
(402, 45, 16, 'Headset', '', '', ''),
(403, 45, 16, 'Printer', 'EPSON-LX-300-II', '2008', 'OK'),
(404, 45, 16, 'Scanner', '', '', ''),
(405, 45, 16, 'SWITCH HUB', '', '', ''),
(406, 46, 17, 'PC UNIT/LAPTOP', '', '2011 / 2017', 'OK'),
(407, 46, 17, 'Monitor', 'OAC (SERIAL# ANIH31A000519)(DYOC71a001784)', '2011 / 2017', 'OK'),
(408, 46, 17, 'Keyboard', 'LOGITECH K200 & A4TECH(SERIAL#KRS-83)', '2011 / 2017', 'OK'),
(409, 46, 17, 'Mouse', 'LOGITECH M100 & 4ATECH ( SERIAL# OP-720)', '2011 / 2017', 'OK'),
(410, 46, 17, 'AVR/UPS', 'AVR SECURE/ BACK UPS625', '2011', 'OK'),
(411, 46, 17, 'Headset', 'A4TECH ( SERIAL#HS-5P & HS-66)', '2011 / 2017', 'OK'),
(412, 46, 17, 'Printer', '-', '-', '-'),
(413, 46, 17, 'Scanner', 'CANON ( SERIAL#KEFD62826)', '2011', 'OK'),
(414, 46, 17, 'SWITCH HUB', 'TP-LINK(SERIAL#TL-SF1008D)', '2017', 'OK'),
(415, 47, 17, 'PC UNIT/LAPTOP', '', '2011', 'OK'),
(416, 47, 17, 'Monitor', 'AOC (DYOC71A001784)', '2011', 'OK'),
(417, 47, 17, 'Keyboard', 'LOGITECH', '2011', 'OK'),
(418, 47, 17, 'Mouse', 'A4TECH', '2011', 'OK'),
(419, 47, 17, 'AVR/UPS', 'SECURE', '2011', 'OK'),
(420, 47, 17, 'Headset', 'A4TECH', '2011', 'OK'),
(421, 47, 17, 'Printer', 'EPSON LX-300+II', '2011', 'OK'),
(422, 47, 17, 'Scanner', 'CANON LiDE 110', '2011', 'OK'),
(423, 47, 17, 'SWITCH HUB', '', '', ''),
(424, 48, 19, 'PC UNIT/LAPTOP', '', '', ''),
(425, 48, 19, 'Monitor', 'AOC PYE51A005050', '2014', 'OK'),
(426, 48, 19, 'Keyboard', 'A4TECH', '2014', 'OK'),
(427, 48, 19, 'Mouse', 'A4TECH', '2014', 'OK'),
(428, 48, 19, 'AVR/UPS', 'POWERPRO', '2014', 'OK'),
(429, 48, 19, 'Headset', 'A4TECH', '2014', 'OK'),
(430, 48, 19, 'Printer', 'EPSION LX310', '2014', 'OK'),
(431, 48, 19, 'Scanner', 'NO SCAN LIDE KEFD62467', '2014', 'OK'),
(432, 48, 19, 'SWITCH HUB', '', '', ''),
(433, 49, 19, 'PC UNIT/LAPTOP', '', '2018', 'OK'),
(434, 49, 19, 'Monitor', 'AOC T8FWV42KALGLNIM', '2018', 'OK'),
(435, 49, 19, 'Keyboard', 'PCX', '2018', 'OK'),
(436, 49, 19, 'Mouse', 'A4TECH', '2018', 'OK'),
(437, 49, 19, 'AVR/UPS', 'RADIUS', '2018', 'OK'),
(438, 49, 19, 'Headset', 'A4TECH', '2018', 'OK'),
(439, 49, 19, 'Printer', '', '', ''),
(440, 49, 19, 'Scanner', '', '', ''),
(441, 49, 19, 'SWITCH HUB', '', '', ''),
(442, 50, 19, 'PC UNIT/LAPTOP', '', '2009', 'NOT OK'),
(443, 50, 19, 'Monitor', 'SAFER 17H8UT303104', '2009', 'FOR REPLACEMENT'),
(444, 50, 19, 'Keyboard', 'INTEX', '2009', ''),
(445, 50, 19, 'Mouse', 'A4TECH', '2009', ''),
(446, 50, 19, 'AVR/UPS', 'RADIUS', '2009', ''),
(447, 50, 19, 'Headset', '', '', ''),
(448, 50, 19, 'Printer', 'EPSON LX-300+II ', '2009', ''),
(449, 50, 19, 'Scanner', '', '', ''),
(450, 50, 19, 'SWITCH HUB', '', '', ''),
(451, 51, 20, 'PC UNIT/LAPTOP', '', '', ''),
(452, 51, 20, 'Monitor', 'LG - E194TTX', '2007', 'OK'),
(453, 51, 20, 'Keyboard', 'LOGITECH', '2007', 'OK'),
(454, 51, 20, 'Mouse', 'LOGITECH', '2007', 'OK'),
(455, 51, 20, 'AVR/UPS', 'POWER PLUS/APC', '2007', 'OK'),
(456, 51, 20, 'Headset', 'CD-R-KING', '2007', 'NOT OK'),
(457, 51, 20, 'Printer', 'BROTHERS DCP -T310', '2018', 'OK'),
(458, 51, 20, 'Scanner', 'CANON LIDE110', '2016', 'OK'),
(459, 51, 20, 'SWITCH HUB', '', '', ''),
(460, 52, 20, 'PC UNIT/LAPTOP', '', '2018', 'OK'),
(461, 52, 20, 'Monitor', 'SAMSUNG  ( V8CFH9NB300649L)', '2008', 'OK'),
(462, 52, 20, 'Keyboard', 'A4TECH', '2008', 'OK'),
(463, 52, 20, 'Mouse', 'A4TECH', '2008', 'OK'),
(464, 52, 20, 'AVR/UPS', 'INTEX', '2008', 'OK'),
(465, 52, 20, 'Headset', '', '', ''),
(466, 52, 20, 'Printer', 'EPSON LX-300+II ( 68NY2YY016 )', '2017', 'OK'),
(467, 52, 20, 'Scanner', '', '', ''),
(468, 52, 20, 'SWITCH HUB', '', '', ''),
(469, 53, 20, 'PC UNIT/LAPTOP', '', '', ''),
(470, 53, 20, 'Monitor', 'LG FLATRON (  9091N2Y37861  )', '2009', 'OK'),
(471, 53, 20, 'Keyboard', 'IROCK Model# KK-85', '2009', 'OK'),
(472, 53, 20, 'Mouse', 'LOGITECH', '2009', 'OK'),
(473, 53, 20, 'AVR/UPS', 'POWER PLUS/APC', '2009', 'OK'),
(474, 53, 20, 'Headset', '', '', ''),
(475, 53, 20, 'Printer', 'EPSON LX300-II (  G8NY138466  )', '2009', 'OK'),
(476, 53, 20, 'Scanner', '', '', ''),
(477, 53, 20, 'SWITCH HUB', '', '', ''),
(478, 54, 20, 'PC UNIT/LAPTOP', '', '', ''),
(479, 54, 20, 'Monitor', 'AOC - DFHC1A010430', '2018', 'NOT OK'),
(480, 54, 20, 'Keyboard', 'A4TECH', '2018', 'OK'),
(481, 54, 20, 'Mouse', 'A4TECH', '2018', 'OK'),
(482, 54, 20, 'AVR/UPS', 'RADIUS/INTEX', '2018', 'OK'),
(483, 54, 20, 'Headset', '', '', ''),
(484, 54, 20, 'Printer', 'EPSON LX-300+II', '2007', 'OK'),
(485, 54, 20, 'Scanner', '', '', ''),
(486, 54, 20, 'SWITCH HUB', '', '', ''),
(487, 55, 20, 'PC UNIT/LAPTOP', '', '', ''),
(488, 55, 20, 'Monitor', 'AOC E9705Sw (  HHVE21A001930  )', '2007', 'OK'),
(489, 55, 20, 'Keyboard', 'A4TECH', '2008', 'OK'),
(490, 55, 20, 'Mouse', 'A4TECH', '2008', 'OK'),
(491, 55, 20, 'AVR/UPS', 'SECURE/APC', '2008', 'OK'),
(492, 55, 20, 'Headset', '', '', ''),
(493, 55, 20, 'Printer', 'EPSON LX-300+II (  G8NY894087  )', '2008', 'NOT OK'),
(494, 55, 20, 'Scanner', '', '', ''),
(495, 55, 20, 'SWITCH HUB', '', '', ''),
(496, 56, 21, 'PC UNIT/LAPTOP', '', '', ''),
(497, 56, 21, 'Monitor', 'NOC /DHFBAH011199', '2014', 'OK'),
(498, 56, 21, 'Keyboard', 'A4TECH', '2015', 'OK'),
(499, 56, 21, 'Mouse', 'EUROO', '2014', 'OK'),
(500, 56, 21, 'AVR/UPS', 'POWERPLUS/APC', '2015', 'OK'),
(501, 56, 21, 'Headset', 'A4TECH', '2013', 'NOT OK'),
(502, 56, 21, 'Printer', 'EPSON LX-300+II/*G8NY207530*', '2011', 'OK'),
(503, 56, 21, 'Scanner', 'CANON', '2016', 'OK'),
(504, 56, 21, 'SWITCH HUB', '', '', ''),
(505, 57, 21, 'PC UNIT/LAPTOP', '', '', ''),
(506, 57, 21, 'Monitor', 'LG FLATRON/911INJL56980', '2007', 'NOT OK'),
(507, 57, 21, 'Keyboard', 'LOGITECH ', '2014', 'OK'),
(508, 57, 21, 'Mouse', 'LOGITECH', '2014', 'OK'),
(509, 57, 21, 'AVR/UPS', 'ENVIRO POWER/ATC', '2014', 'OK / NOT OK'),
(510, 57, 21, 'Headset', 'A4TECH', '2015', 'OK'),
(511, 57, 21, 'Printer', 'EPSON LX-300+II/G8NY233770', 'FROM LAGAWE', 'NOT OK'),
(512, 57, 21, 'Scanner', '', '', ''),
(513, 57, 21, 'SWITCH HUB', '', '', ''),
(514, 58, 21, 'PC UNIT/LAPTOP', '', '', ''),
(515, 58, 21, 'Monitor', 'NOC /KCYH21A001488', '2017', 'OK'),
(516, 58, 21, 'Keyboard', 'A4TECH', '2017', 'OK'),
(517, 58, 21, 'Mouse', 'A4TECH', '2017', 'OK'),
(518, 58, 21, 'AVR/UPS', 'SECURE/INTEX', '2017', 'OK'),
(519, 58, 21, 'Headset', '', '', ''),
(520, 58, 21, 'Printer', 'EPSON LX-300+II/G8NY138384', '2017', 'OK'),
(521, 58, 21, 'Scanner', '', '', ''),
(522, 58, 21, 'SWITCH HUB', '', '', ''),
(523, 59, 22, 'PC UNIT/LAPTOP', '', '', ''),
(524, 59, 22, 'Monitor', 'AOC (ANIH31A000485)', '2013', 'OK'),
(525, 59, 22, 'Keyboard', 'A4TECH', '2013', 'OK'),
(526, 59, 22, 'Mouse', 'A4TECH', '2013', 'NOT OK'),
(527, 59, 22, 'AVR/UPS', 'SECURE', '2013', 'OK'),
(528, 59, 22, 'Headset', 'A4TECH', '2013', 'OK'),
(529, 59, 22, 'Printer', 'EPSON LX310 (*Q7CY021544*)', '2013', 'NOT OK'),
(530, 59, 22, 'Scanner', '', '', ''),
(531, 59, 22, 'SWITCH HUB', 'HUAWEI (H8S7S15C25014025', '', ''),
(532, 60, 22, 'PC UNIT/LAPTOP', '', '', ''),
(533, 60, 22, 'Monitor', 'SAMSUNG (V8CFH9NB4071062', '2011', 'NOT OK'),
(534, 60, 22, 'Keyboard', 'A4TECH', '2013', 'OK'),
(535, 60, 22, 'Mouse', 'A4TECH', '2013', 'OK'),
(536, 60, 22, 'AVR/UPS', 'SECURE/ INTEX', '2011', 'OK'),
(537, 60, 22, 'Headset', '', '', ''),
(538, 60, 22, 'Printer', 'EPSON LX 300+11 (*G8NY188408*', '2011', 'OK'),
(539, 60, 22, 'Scanner', 'CANON PIXMA MP 258', '2011', 'OK'),
(540, 60, 22, 'SWITCH HUB', '', '', ''),
(541, 61, 23, 'PC UNIT/LAPTOP', '', '2014', 'OK'),
(542, 61, 23, 'Monitor', 'AOC  (  FRKE1HA133129  )', '2014', 'OK'),
(543, 61, 23, 'Keyboard', '', '2014', 'OK'),
(544, 61, 23, 'Mouse', '', '2014', 'OK'),
(545, 61, 23, 'AVR/UPS', '', '2014', 'OK'),
(546, 61, 23, 'Headset', '', '2014', 'OK'),
(547, 61, 23, 'Printer', 'EPSON  (  Q7CY057906  )', '2014', 'OK'),
(548, 61, 23, 'Scanner', '', '', ''),
(549, 61, 23, 'SWITCH HUB', '', '', ''),
(550, 62, 23, 'PC UNIT/LAPTOP', '', '2010', 'NOT OK'),
(551, 62, 23, 'Monitor', 'FLATRON  (  911INDP57786  )', '2010', 'NOT OK'),
(552, 62, 23, 'Keyboard', '', '2010', 'OK'),
(553, 62, 23, 'Mouse', '', '2010', 'OK'),
(554, 62, 23, 'AVR/UPS', '', '2010', 'OK'),
(555, 62, 23, 'Headset', '', '2010', 'NOT OK'),
(556, 62, 23, 'Printer', 'EPSON (  Q7CY003035  )', '2015', 'OK'),
(557, 62, 23, 'Scanner', '', '2015', 'OK'),
(558, 62, 23, 'SWITCH HUB', '', '', ''),
(559, 63, 24, 'PC UNIT/LAPTOP', '', '2012', 'NOT OK'),
(560, 63, 24, 'Monitor', 'AOC (DFHC21A010119)', '2012', 'OK'),
(561, 63, 24, 'Keyboard', 'A4TECH', '2012', 'OK'),
(562, 63, 24, 'Mouse', 'A4TECH', '2012', 'OK'),
(563, 63, 24, 'AVR/UPS', 'AVR-RADIUS; UPS- APC', '2012', 'NOT OK'),
(564, 63, 24, 'Headset', 'A4TECH', '2012', 'NOT OK'),
(565, 63, 24, 'Printer', 'EPSON LX-300+II (G8NY247076)', '2012', 'OK'),
(566, 63, 24, 'Scanner', 'CANON LIDE110', '2012', 'OK'),
(567, 63, 24, 'SWITCH HUB', '', '', ''),
(568, 64, 24, 'PC UNIT/LAPTOP', '', '2016', 'OK'),
(569, 64, 24, 'Monitor', 'AOC (HNDF51A005488)', '2016', 'OK'),
(570, 64, 24, 'Keyboard', 'A4TECH', '2016', 'OK'),
(571, 64, 24, 'Mouse', 'A4TECH', '2016', 'OK'),
(572, 64, 24, 'AVR/UPS', 'AVR-POWERPRO; UPS-FSP', '2016', 'OK / NOT OK'),
(573, 64, 24, 'Headset', 'A4TECH', '2016', 'NOT OK'),
(574, 64, 24, 'Printer', 'EPSON LX310 (Q7CY099424)', '2016', 'OK'),
(575, 64, 24, 'Scanner', '', '', ''),
(576, 64, 24, 'SWITCH HUB', '', '', ''),
(577, 65, 18, 'PC UNIT/LAPTOP', '', '', ''),
(578, 65, 18, 'Monitor', 'AOC (HNDE71A045149)', '', 'OK'),
(579, 65, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(580, 65, 18, 'Mouse', 'PCX', '', 'OK'),
(581, 65, 18, 'AVR/UPS', 'SECURE', '', 'OK'),
(582, 65, 18, 'Headset', 'A4TECH', '', 'OK'),
(583, 65, 18, 'Printer', 'EPSON L360 (VGFK096821)', '', 'OK'),
(584, 65, 18, 'Scanner', 'EPSON L360 (VGFK096821)', '', 'OK'),
(585, 65, 18, 'SWITCH HUB', '', '', ''),
(586, 66, 18, 'PC UNIT/LAPTOP', '', '', ''),
(587, 66, 18, 'Monitor', 'VIEWSONIC(S10103623155)', '', 'OK'),
(588, 66, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(589, 66, 18, 'Mouse', 'HANJO OPTICAL MOUSE', '', 'OK'),
(590, 66, 18, 'AVR/UPS', 'SECURE UPS', '', 'OK'),
(591, 66, 18, 'Headset', '', '', ''),
(592, 66, 18, 'Printer', '', '', ''),
(593, 66, 18, 'Scanner', 'CANON LIDE 110', '', 'OK'),
(594, 66, 18, 'SWITCH HUB', '', '', ''),
(595, 67, 18, 'PC UNIT/LAPTOP', '', '', ''),
(596, 67, 18, 'Monitor', 'LG 177WSB', '', 'OK'),
(597, 67, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(598, 67, 18, 'Mouse', 'A4TECH', '', 'OK'),
(599, 67, 18, 'AVR/UPS', 'SECURE UPS', '', 'OK'),
(600, 67, 18, 'Headset', 'A4TECH', '', 'NOT OK'),
(601, 67, 18, 'Printer', '', '', ''),
(602, 67, 18, 'Scanner', '', '', ''),
(603, 67, 18, 'SWITCH HUB', '', '', ''),
(604, 68, 18, 'PC UNIT/LAPTOP', '', '', ''),
(605, 68, 18, 'Monitor', 'AOC (KCY631AO11749)', '', 'OK'),
(606, 68, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(607, 68, 18, 'Mouse', 'A4TECH', '', 'OK'),
(608, 68, 18, 'AVR/UPS', 'SECURE UPS', '', 'OK'),
(609, 68, 18, 'Headset', 'A4TECH', '', 'OK'),
(610, 68, 18, 'Printer', '', '', ''),
(611, 68, 18, 'Scanner', '', '', ''),
(612, 68, 18, 'SWITCH HUB', '', '', ''),
(613, 69, 18, 'PC UNIT/LAPTOP', '', '', ''),
(614, 69, 18, 'Monitor', 'VIEW SONIC (RY6100723543)', '', 'OK'),
(615, 69, 18, 'Keyboard', 'A4TECH', '2018', 'OK'),
(616, 69, 18, 'Mouse', 'A4TECH', '2018', 'OK'),
(617, 69, 18, 'AVR/UPS', 'SECURE AVR', '2018', 'OK'),
(618, 69, 18, 'Headset', '', '', ''),
(619, 69, 18, 'Printer', '', '', ''),
(620, 69, 18, 'Scanner', '', '', ''),
(621, 69, 18, 'SWITCH HUB', '', '', ''),
(622, 70, 18, 'PC UNIT/LAPTOP', '', '2018', 'OK'),
(623, 70, 18, 'Monitor', 'AOC (ANII21A007483)', '2018', 'OK'),
(624, 70, 18, 'Keyboard', 'A4TECH', '2018', 'OK'),
(625, 70, 18, 'Mouse', 'A4TECH', '2018', 'OK'),
(626, 70, 18, 'AVR/UPS', 'SECURE AVR', '2018', 'OK'),
(627, 70, 18, 'Headset', 'A4TECH', '2018', 'OK'),
(628, 70, 18, 'Printer', '', '', ''),
(629, 70, 18, 'Scanner', '', '', ''),
(630, 70, 18, 'SWITCH HUB', '', '', ''),
(631, 71, 18, 'PC UNIT/LAPTOP', '', '', ''),
(632, 71, 18, 'Monitor', 'VIEWSONIC (R17092463016)', '', 'OK'),
(633, 71, 18, 'Keyboard', 'GENIUS', '', 'OK'),
(634, 71, 18, 'Mouse', 'A4TECH', '', 'OK'),
(635, 71, 18, 'AVR/UPS', 'SECURE AVR', '', 'OK'),
(636, 71, 18, 'Headset', 'INVONS', '', 'OK'),
(637, 71, 18, 'Printer', '', '', ''),
(638, 71, 18, 'Scanner', '', '', ''),
(639, 71, 18, 'SWITCH HUB', '', '', ''),
(640, 72, 18, 'PC UNIT/LAPTOP', '', '', ''),
(641, 72, 18, 'Monitor', 'VIEWSONIC (RY6100723124)', '', 'OK'),
(642, 72, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(643, 72, 18, 'Mouse', 'A4TECH', '', 'OK'),
(644, 72, 18, 'AVR/UPS', 'UPS SECURE', '', 'OK'),
(645, 72, 18, 'Headset', 'A4TECH', '', 'OK'),
(646, 72, 18, 'Printer', 'L110 EPSON (SMQK015618)', '', 'OK'),
(647, 72, 18, 'Scanner', '', '', ''),
(648, 72, 18, 'SWITCH HUB', '', '', ''),
(649, 73, 18, 'PC UNIT/LAPTOP', '', '', ''),
(650, 73, 18, 'Monitor', 'HANNS.G (Q40620N8501BZA)', '', 'OK'),
(651, 73, 18, 'Keyboard', 'PCX KB', '', 'OK'),
(652, 73, 18, 'Mouse', 'LOGITECH', '', 'OK'),
(653, 73, 18, 'AVR/UPS', 'SECURE', '', 'OK'),
(654, 73, 18, 'Headset', 'A4TECH', '', 'OK'),
(655, 73, 18, 'Printer', '', '', ''),
(656, 73, 18, 'Scanner', '', '', ''),
(657, 73, 18, 'SWITCH HUB', '', '', ''),
(658, 74, 18, 'PC UNIT/LAPTOP', '', '', ''),
(659, 74, 18, 'Monitor', 'AOC (ANII3IA001058)', '', 'OK'),
(660, 74, 18, 'Keyboard', 'PCX', '', 'OK'),
(661, 74, 18, 'Mouse', 'A4TECH', '', 'OK'),
(662, 74, 18, 'AVR/UPS', 'SECURE AVR', '', 'OK'),
(663, 74, 18, 'Headset', '', '', ''),
(664, 74, 18, 'Printer', '', '', ''),
(665, 74, 18, 'Scanner', '', '', ''),
(666, 74, 18, 'SWITCH HUB', '', '', ''),
(667, 75, 18, 'PC UNIT/LAPTOP', '', '', ''),
(668, 75, 18, 'Monitor', 'AOC (DKLBC1A006827)', '', 'OK'),
(669, 75, 18, 'Keyboard', 'LOGITECH', '', 'OK'),
(670, 75, 18, 'Mouse', 'RAPOO', '', 'OK'),
(671, 75, 18, 'AVR/UPS', 'UPS SECURE', '', 'OK'),
(672, 75, 18, 'Headset', '', '', ''),
(673, 75, 18, 'Printer', '', '', ''),
(674, 75, 18, 'Scanner', '', '', ''),
(675, 75, 18, 'SWITCH HUB', '', '', ''),
(676, 76, 18, 'PC UNIT/LAPTOP', '', '', ''),
(677, 76, 18, 'Monitor', 'LG ( 9081NHZ81441 )', '', 'OK'),
(678, 76, 18, 'Keyboard', 'LOGITECH', '', 'OK'),
(679, 76, 18, 'Mouse', '', '', ''),
(680, 76, 18, 'AVR/UPS', 'UPS SECURE', '', 'OK'),
(681, 76, 18, 'Headset', '', '', ''),
(682, 76, 18, 'Printer', '', '', ''),
(683, 76, 18, 'Scanner', '', '', ''),
(684, 76, 18, 'SWITCH HUB', '', '', ''),
(685, 77, 18, 'PC UNIT/LAPTOP', '', '', ''),
(686, 77, 18, 'Monitor', 'AOC (KCYH71A000729)', '', 'OK'),
(687, 77, 18, 'Keyboard', 'PCX KB', '', 'OK'),
(688, 77, 18, 'Mouse', 'LOGITECH', '', 'OK'),
(689, 77, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(690, 77, 18, 'Headset', 'A4TECH', '', 'OK'),
(691, 77, 18, 'Printer', 'L360 (VGFK322923)', '', 'OK'),
(692, 77, 18, 'Scanner', 'L360 (VGFK322923)', '', 'OK'),
(693, 77, 18, 'SWITCH HUB', '', '', ''),
(694, 78, 18, 'PC UNIT/LAPTOP', '', '', ''),
(695, 78, 18, 'Monitor', 'ACER (22401561524)', '', 'OK'),
(696, 78, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(697, 78, 18, 'Mouse', 'A4TECH', '', 'OK'),
(698, 78, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(699, 78, 18, 'Headset', '', '', ''),
(700, 78, 18, 'Printer', '', '', ''),
(701, 78, 18, 'Scanner', '', '', ''),
(702, 78, 18, 'SWITCH HUB', '', '', ''),
(703, 79, 18, 'PC UNIT/LAPTOP', '', '', ''),
(704, 79, 18, 'Monitor', 'AOC (ANIIGB1A025589)', '', 'OK'),
(705, 79, 18, 'Keyboard', 'PCX KB', '', 'OK'),
(706, 79, 18, 'Mouse', 'A4TECH', '', 'OK'),
(707, 79, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(708, 79, 18, 'Headset', 'A4TECH', '', 'OK'),
(709, 79, 18, 'Printer', 'L360 (VGFK121714)', '', 'OK'),
(710, 79, 18, 'Scanner', 'L360 (VGFK121714)', '', 'OK'),
(711, 79, 18, 'SWITCH HUB', '', '', ''),
(712, 80, 18, 'PC UNIT/LAPTOP', '', '', ''),
(713, 80, 18, 'Monitor', 'LG', '', 'OK'),
(714, 80, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(715, 80, 18, 'Mouse', 'A4TECH', '', 'OK'),
(716, 80, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(717, 80, 18, 'Headset', '', '', ''),
(718, 80, 18, 'Printer', '', '', ''),
(719, 80, 18, 'Scanner', '', '', ''),
(720, 80, 18, 'SWITCH HUB', '', '', ''),
(721, 81, 18, 'PC UNIT/LAPTOP', '', '', ''),
(722, 81, 18, 'Monitor', 'LG (0021NBS5W501)', '', 'OK'),
(723, 81, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(724, 81, 18, 'Mouse', 'A4TECH', '', 'OK'),
(725, 81, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(726, 81, 18, 'Headset', 'A4TECH', '', 'OK'),
(727, 81, 18, 'Printer', 'LX310 EPSON', '', 'OK'),
(728, 81, 18, 'Scanner', 'CANON LIDE 110', '', 'OK'),
(729, 81, 18, 'SWITCH HUB', '', '', ''),
(730, 82, 18, 'PC UNIT/LAPTOP', '', '', ''),
(731, 82, 18, 'Monitor', 'SAMSUNG (V8CFH9NB201056F', '', 'OK'),
(732, 82, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(733, 82, 18, 'Mouse', 'A4TECH', '', 'OK'),
(734, 82, 18, 'AVR/UPS', 'UPS SECURE', '', 'OK'),
(735, 82, 18, 'Headset', 'A4TECH', '', 'OK'),
(736, 82, 18, 'Printer', 'LX300II (G8NY133842)', '', 'OK'),
(737, 82, 18, 'Scanner', '', '', ''),
(738, 82, 18, 'SWITCH HUB', '', '', ''),
(739, 83, 18, 'PC UNIT/LAPTOP', '', '', ''),
(740, 83, 18, 'Monitor', 'LG ( 1031NN65Y511)', '', 'OK'),
(741, 83, 18, 'Keyboard', 'A4TECH', '', 'OK'),
(742, 83, 18, 'Mouse', 'A4TECH', '', 'OK'),
(743, 83, 18, 'AVR/UPS', 'AVR SECURE', '', 'OK'),
(744, 83, 18, 'Headset', 'A4TECH', '', 'OK'),
(745, 83, 18, 'Printer', 'LX 310 EPSON', '', 'OK'),
(746, 83, 18, 'Scanner', '', '', ''),
(747, 83, 18, 'SWITCH HUB', '', '', ''),
(748, 84, 18, 'PC UNIT/LAPTOP', 'RED LAPTOP', '', 'OK'),
(749, 84, 18, 'Monitor', '', '', ''),
(750, 84, 18, 'Keyboard', '', '', ''),
(751, 84, 18, 'Mouse', '', '', ''),
(752, 84, 18, 'AVR/UPS', '', '', ''),
(753, 84, 18, 'Headset', '', '', ''),
(754, 84, 18, 'Printer', '', '', ''),
(755, 84, 18, 'Scanner', '', '', ''),
(756, 84, 18, 'SWITCH HUB', '', '', ''),
(757, 85, 18, 'PC UNIT/LAPTOP', 'LENOVO 320-145ISK (Grey) LAPTOP', '2018', 'OK'),
(758, 85, 18, 'Monitor', '', '', ''),
(759, 85, 18, 'Keyboard', '', '', ''),
(760, 85, 18, 'Mouse', 'WIRELESS', '2018', 'OK'),
(761, 85, 18, 'AVR/UPS', '', '', ''),
(762, 85, 18, 'Headset', '', '', ''),
(763, 85, 18, 'Printer', '', '', ''),
(764, 85, 18, 'Scanner', '', '', ''),
(765, 85, 18, 'SWITCH HUB', '', '', ''),
(766, 86, 18, 'PC UNIT/LAPTOP', 'DELL LAPTOP INSPIRON 5', '2018', 'OK'),
(767, 86, 18, 'Monitor', '', '', ''),
(768, 86, 18, 'Keyboard', '', '', ''),
(769, 86, 18, 'Mouse', 'WIRELESS', '2018', 'OK'),
(770, 86, 18, 'AVR/UPS', '', '', ''),
(771, 86, 18, 'Headset', '', '', ''),
(772, 86, 18, 'Printer', '', '', ''),
(773, 86, 18, 'Scanner', '', '', ''),
(774, 86, 18, 'SWITCH HUB', '', '', ''),
(775, 87, 18, 'PC UNIT/LAPTOP', 'ACER Aspire ES1-432-C79F', '2018', 'OK'),
(776, 87, 18, 'Monitor', '', '', ''),
(777, 87, 18, 'Keyboard', '', '', ''),
(778, 87, 18, 'Mouse', 'PCX WIRELESS', '2018', 'OK'),
(779, 87, 18, 'AVR/UPS', '', '', ''),
(780, 87, 18, 'Headset', '', '', ''),
(781, 87, 18, 'Printer', '', '', ''),
(782, 87, 18, 'Scanner', '', '', ''),
(783, 87, 18, 'SWITCH HUB', '', '', ''),
(784, 88, 18, 'PC UNIT/LAPTOP', 'GRAY LAPTOP', '', 'OK'),
(785, 88, 18, 'Monitor', '', '', ''),
(786, 88, 18, 'Keyboard', '', '', ''),
(787, 88, 18, 'Mouse', 'WIRELESS', '', 'OK'),
(788, 88, 18, 'AVR/UPS', '', '', ''),
(789, 88, 18, 'Headset', '', '', ''),
(790, 88, 18, 'Printer', '', '', ''),
(791, 88, 18, 'Scanner', '', '', ''),
(792, 88, 18, 'SWITCH HUB', '', '', ''),
(796, 89, 18, 'PC UNIT/LAPTOP', 'LAPTOP LENOVO BLACK', '2018', 'OK'),
(797, 89, 18, 'Monitor', '', '', ''),
(798, 89, 18, 'Keyboard', '', '', ''),
(799, 89, 18, 'Mouse', 'WIRELESS', '2018', 'OK'),
(800, 89, 18, 'AVR/UPS', '', '', ''),
(801, 89, 18, 'Headset', '', '', ''),
(802, 89, 18, 'Printer', '', '', ''),
(803, 89, 18, 'Scanner', '', '', ''),
(804, 89, 18, 'SWITCH HUB', '', '', ''),
(805, 90, 10, 'PC UNIT/LAPTOP', '', '2017', 'OK'),
(806, 90, 10, 'Monitor', 'AOC  (KCYH21A001524)', '2017', 'OK'),
(807, 90, 10, 'Keyboard', 'A4TECH', '2017', 'OK'),
(808, 90, 10, 'Mouse', 'A4TECH ', '2017', 'OK'),
(809, 90, 10, 'AVR/UPS', 'SECURE', '2017', 'OK'),
(810, 90, 10, 'Headset', 'A4TECH', '2017', 'OK'),
(811, 90, 10, 'Printer', '', '', ''),
(812, 90, 10, 'Scanner', '', '', ''),
(813, 90, 10, 'SWITCH HUB', 'CDR KING 2 PORT VGA SWITCH', '2013', 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `code`, `name`) VALUES
(1, '002.030', 'HARD DISK DRIVE'),
(2, '002.030', 'RAM'),
(3, '002.030', 'PROCESSOR'),
(4, '002.030', 'MOTHERBOARD'),
(5, '002.030', 'CASE'),
(6, '002.060', 'KEYBOARD'),
(7, '002.070', 'MONITOR'),
(8, '002.010', 'AVR'),
(9, '002.040', 'HEADSET'),
(10, '002.160', 'PRINTER'),
(11, '002.120', 'UPS'),
(13, '002.075', 'MOUSE'),
(14, '002.130', 'LAPTOP'),
(15, '002.020', 'Camera'),
(16, '002.140', 'EXTERNAL HARD DRIVE'),
(17, '002.150', 'Flashdrive'),
(18, '002.170', 'INK'),
(19, '002.180', 'Internet Security'),
(20, '180.OTHERS', 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `host_ip` varchar(255) NOT NULL,
  `encode_by` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `message_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `host_ip`, `encode_by`, `url`, `message_title`) VALUES
(1, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-09]'),
(2, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-09]'),
(3, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-13]'),
(4, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-13]'),
(5, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-15]'),
(6, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-15]'),
(7, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-15]'),
(8, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-22]'),
(9, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-22]'),
(10, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-22]'),
(11, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-02-23]'),
(12, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-03-23]'),
(13, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-02]'),
(14, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(15, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(16, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(17, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(18, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(19, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-04]'),
(20, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-12]'),
(21, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-16]'),
(22, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-16]'),
(23, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-16]'),
(24, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-16]'),
(25, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-16]'),
(26, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-23]'),
(27, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(28, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(29, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(30, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(31, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(32, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(33, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(34, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(35, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(36, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(37, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(38, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(39, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(40, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-24]'),
(41, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-25]'),
(42, '::1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-04-27]'),
(44, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added technical_entry [date:2018-05-02]'),
(45, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-02]'),
(46, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(47, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(48, '192.168.1.30', 'nhfc_admin', '/purchase/add_item', 'Added technical_entry [date:2018-05-02]'),
(49, '192.168.1.30', 'nhfc_admin', '/purchase/add_item', 'Added technical_entry [date:2018-05-02]'),
(51, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(52, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(53, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(54, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(55, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(56, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(57, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(58, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-02]'),
(59, '192.168.1.30', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-04]'),
(60, '192.168.1.30', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-04]'),
(61, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(62, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(63, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(64, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(65, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(66, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(67, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-08]'),
(68, '192.168.1.39', 'nhfc_admin', '/purchase/add_item', 'Added technical_entry [date:2018-05-08]'),
(69, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-09]'),
(70, '192.168.1.44', 'nhfc_admin', '/purchase/add_item', 'Added technical_entry [date:2018-05-10]'),
(71, '192.168.1.44', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-10]'),
(72, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(73, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(74, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(75, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(76, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(77, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(78, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(79, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(80, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(81, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(82, '192.168.1.14', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-11]'),
(83, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(84, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(85, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(86, '192.168.1.45', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-11]'),
(87, '192.168.1.33', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-16]'),
(88, '192.168.1.33', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-16]'),
(89, '192.168.1.21', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-21]'),
(90, '192.168.56.1', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-22]'),
(91, '192.168.1.28', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-05-31]'),
(92, '192.168.1.25', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-05-31]'),
(93, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(94, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(95, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(96, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(97, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(98, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(99, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(100, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(101, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(102, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(103, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-04]'),
(104, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-06-05]'),
(105, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-06-06]'),
(106, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-07]'),
(107, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-07]'),
(108, '192.168.1.29', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-07]'),
(109, '192.168.1.20', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-07]'),
(110, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-13]'),
(111, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-13]'),
(112, '192.168.1.16', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-18]'),
(113, '192.168.1.15', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-19]'),
(114, '192.168.1.21', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-06-21]'),
(115, '192.168.1.14', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-06-25]'),
(116, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(117, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(118, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(119, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(120, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(121, '192.168.1.34', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(122, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(123, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-03]'),
(124, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(125, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(126, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(127, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(128, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(129, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(130, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(131, '192.168.1.23', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-05]'),
(132, '192.168.1.6', 'nhfc_admin', '/purchase/add_item', 'Added purchase_entry [date:2018-07-09]'),
(133, '192.168.1.6', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-07-09]'),
(134, '192.168.1.6', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-07-09]'),
(135, '192.168.1.6', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-07-09]'),
(136, '192.168.1.24', 'nhfc_admin', '/purchase/add_item', 'Added transmittal_entry [date:2018-07-10]');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `trans_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `item_name`, `item_code`, `trans_id`, `description`, `price`, `date`, `trans_by`) VALUES
(1, 'MOUSE', '002.075', 1, 'Logitech Wireless M221', '700', '2018-02-06', ''),
(2, 'MOUSE', '002.075', 1, 'Logitech Wireless M221', '700', '2018-02-06', ''),
(3, 'HARD DISK DRIVE', '002.030', 2, '500gb WD Blue Sata3 Hard Disk', '2250', '2018-02-06', ''),
(4, 'PROCESSOR', '002.030', 2, 'AMD A8 7650K Processor', '3100', '2018-02-06', ''),
(5, 'RAM', '002.030', 2, '4GB Kingston 1866 Memory', '2100', '2018-02-06', ''),
(6, 'MOTHERBOARD', '002.030', 2, 'ASROCK A68M-DG3+ Motherboard', '2100', '2018-02-06', ''),
(7, 'CASE', '002.030', 2, 'Neutron Casing', '995', '2018-02-06', ''),
(8, 'MOUSE/KEYBOARD', '002.075,002.060', 2, 'A4Tech KB & Mouse Bundle', '500', '2018-02-06', ''),
(9, 'HEADSET', '002.040', 2, 'A4Tech 66ichat Headset', '330', '2018-02-06', ''),
(10, 'MONITOR', '002.070', 2, 'AOC e970 Monitor 18.5', '3800', '2018-02-06', ''),
(11, 'AVR', '002.010', 2, 'Secure AVR', '230', '2018-02-06', ''),
(12, 'UPS', '002.120', 2, 'Secure UPS', '1550', '2018-02-06', ''),
(13, 'UPS', '002.120', 2, 'Secure UPS', '1550', '2018-02-06', ''),
(14, 'UPS', '002.120', 2, 'Secure UPS', '1550', '2018-02-06', ''),
(15, 'PRINTER', '002.160', 3, 'EPSON L360 PRINTER', '7450', '2018-02-09', 'nhfc_admin'),
(16, 'LAPTOP', '002.130', 4, 'LENOVO 320-145ISK (Grey)', '22000', '2018-02-09', 'nhfc_admin'),
(19, 'EXTERNAL HARD DRIVE', '002.140', 6, 'Western Digital WD 1TB External Drive', '3200', '2018-02-15', 'nhfc_admin'),
(20, 'EXTERNAL HARD DRIVE', '002.140', 7, 'Western Digital WD 1TB External Drive', '3200', '2018-02-22', 'nhfc_admin'),
(21, 'Flashdrive', '002.150', 7, 'SanDisk Cruzer Blade 32GB USB Flash Drive (Black)', '500', '2018-02-22', 'nhfc_admin'),
(22, 'Flashdrive', '002.150', 7, 'SanDisk Cruzer Blade 32GB USB Flash Drive (Black)', '500', '2018-02-22', 'nhfc_admin'),
(23, 'PRINTER', '002.160', 8, 'Epson L120', '4950', '2018-03-23', 'nhfc_admin'),
(24, 'INK', '002.170', 9, 'Epson Ink T664 (Magenta)', '270', '2018-04-04', 'nhfc_admin'),
(25, 'INK', '002.170', 9, 'Epson Ink T664 (Magenta)', '270', '2018-04-04', 'nhfc_admin'),
(26, 'INK', '002.170', 9, 'Epson Ink T664 (Cyan)', '270', '2018-04-04', 'nhfc_admin'),
(27, 'INK', '002.170', 9, 'Epson Ink T664 (Yellow)', '270', '2018-04-04', 'nhfc_admin'),
(28, 'INK', '002.170', 9, 'Epson Ink T664 (Yellow)', '270', '2018-04-04', 'nhfc_admin'),
(29, 'Internet Security', '002.180', 10, 'Kaspersky (Internet Security)', '1288', '2018-04-04', 'nhfc_admin'),
(30, 'LAPTOP', '002.130', 11, 'Acer Aspire ES 13 (2nd Hand)', '13000', '2018-04-12', 'nhfc_admin'),
(31, 'CASE', '002.030', 12, 'Neutron Casing', '995', '2018-04-24', 'nhfc_admin'),
(32, 'KEYBOARD', '002.060', 12, 'A4Tech KB', '250', '2018-04-24', 'nhfc_admin'),
(33, 'MOUSE', '002.075', 12, 'A4Tech Mouse', '250', '2018-04-24', 'nhfc_admin'),
(34, 'HEADSET', '002.040', 12, 'A4Tech 66ichat Headset', '350', '2018-04-24', 'nhfc_admin'),
(35, 'MONITOR', '002.070', 12, 'AOC e970 Monitor 18.5', '3400', '2018-04-24', 'nhfc_admin'),
(36, 'AVR', '002.010', 12, 'Secure AVR', '230', '2018-04-24', 'nhfc_admin'),
(37, 'HARD DISK DRIVE', '002.030', 12, '500gb WD Blue Sata3 Hard Disk', '2200', '2018-04-24', 'nhfc_admin'),
(38, 'PROCESSOR', '002.030', 12, 'AMD A8 7650K Processor', '3200', '2018-04-24', 'nhfc_admin'),
(39, 'RAM', '002.030', 12, '4GB Kingston 1866 Memory', '1730', '2018-04-24', 'nhfc_admin'),
(40, 'MOTHERBOARD', '002.030', 12, 'MSI A68M-DG3+ Motherboard', '2500', '2018-04-24', 'nhfc_admin'),
(41, 'OTHERS', '180.OTHERS', 13, 'Blower Vacuum', '3500', '2018-04-25', 'nhfc_admin'),
(42, 'PRINTER', '002.160', 14, 'EPSON LX310 Dot Matrix', '9200', '2018-04-27', 'nhfc_admin'),
(52, 'AVR', '002.010', 21, 'Secure AVR 4Pcs', '920', '2018-05-02', 'nhfc_admin'),
(53, 'OTHERS', '180.OTHERS', 22, '2 pcs kyocera Toner', '14600', '2018-05-04', 'nhfc_admin'),
(54, 'KEYBOARD', '002.060', 23, '2 pcs A4tech Keyboard', '500', '2018-05-08', 'nhfc_admin'),
(55, 'MOUSE', '002.075', 23, '2 pcs A4tech Mouse', '500', '2018-05-08', 'nhfc_admin'),
(56, 'OTHERS', '180.OTHERS', 23, '2pcs VGA Cable', '200', '2018-05-08', 'nhfc_admin'),
(57, 'OTHERS', '180.OTHERS', 23, '2pcs Power Cabler', '200', '2018-05-08', 'nhfc_admin'),
(58, 'OTHERS', '180.OTHERS', 23, '2 pcs 700w Power Supply', '1600', '2018-05-08', 'nhfc_admin'),
(59, 'CASE', '002.030', 24, 'Neutron Casing', '995', '2018-05-11', 'nhfc_admin'),
(60, 'KEYBOARD', '002.060', 24, 'A4Tech KB', '250', '2018-05-11', 'nhfc_admin'),
(61, 'MOUSE', '002.075', 24, 'A4Tech Mouse', '250', '2018-05-11', 'nhfc_admin'),
(62, 'HEADSET', '002.040', 24, 'A4Tech 66ichat Headset', '350', '2018-05-11', 'nhfc_admin'),
(63, 'MONITOR', '002.070', 24, 'AOC e970 Monitor 18.5', '3400', '2018-05-11', 'nhfc_admin'),
(64, 'AVR', '002.010', 24, 'Secure AVR', '230', '2018-05-11', 'nhfc_admin'),
(65, 'HARD DISK DRIVE', '002.030', 24, '500gb WD Blue Sata3 Hard Disk', '2200', '2018-05-11', 'nhfc_admin'),
(66, 'PROCESSOR', '002.030', 24, 'AMD A8 7650K Processor', '3200', '2018-05-11', 'nhfc_admin'),
(67, 'RAM', '002.030', 24, '4GB Kingston 1866 Memory', '1730', '2018-05-11', 'nhfc_admin'),
(68, 'MOTHERBOARD', '002.030', 24, 'MSI A68M-DG3+ Motherboard', '2500', '2018-05-11', 'nhfc_admin'),
(69, 'INK', '002.170', 25, '4pcs Epson Ink t6641 (black)', '980', '2018-05-11', 'nhfc_admin'),
(70, 'INK', '002.170', 25, '2pcs Epson Ink t6642 (cyan)', '490', '2018-05-11', 'nhfc_admin'),
(71, 'INK', '002.170', 25, '2pcs Epson Ink t6643 (magenta)', '490', '2018-05-11', 'nhfc_admin'),
(72, 'INK', '002.170', 25, '2pcs Epson Ink t6644 (yellow)', '490', '2018-05-11', 'nhfc_admin'),
(74, 'PRINTER', '002.160', 27, 'EPSON LX310 Dot Matrix', '8900', '2018-05-16', 'nhfc_admin'),
(75, 'UPS', '002.120', 28, 'Secure UPS', '1550', '2018-05-31', 'nhfc_admin'),
(76, 'UPS', '002.120', 28, 'Secure UPS', '1550', '2018-05-31', 'nhfc_admin'),
(82, 'LAPTOP', '002.130', 29, 'Acer Aspire ES1-432-C79F', '17000', '2018-06-04', 'nhfc_admin'),
(83, 'MOUSE', '002.075', 31, 'A4TECH Mouse', '250', '2018-06-04', 'nhfc_admin'),
(84, 'MOUSE', '002.075', 31, 'A4TECH Mouse', '250', '2018-06-04', 'nhfc_admin'),
(85, 'KEYBOARD', '002.060', 31, 'A4TECH KB', '250', '2018-06-04', 'nhfc_admin'),
(86, 'KEYBOARD', '002.060', 31, 'A4TECH KB', '250', '2018-06-04', 'nhfc_admin'),
(87, 'LAPTOP', '002.130', 32, 'Acer Aspire ES1-432-C79F', '17000', '2018-06-04', 'nhfc_admin'),
(88, 'PRINTER', '002.160', 33, 'EPSON LX310 Dot Matrix', '8900', '2018-06-07', 'nhfc_admin'),
(89, 'HARD DISK DRIVE', '002.030', 34, 'western blue 500gb', '3200', '2018-06-13', 'nhfc_admin'),
(90, 'KEYBOARD', '002.060', 34, 'A4TECH KB', '250', '2018-06-13', 'nhfc_admin'),
(91, 'PRINTER', '002.160', 35, 'EPSON L120 Printer', '5000', '2018-06-18', 'nhfc_admin'),
(92, 'INK', '002.170', 36, '4pcs Epson Ink t6641 (black)', '980', '2018-06-19', 'nhfc_admin'),
(93, 'PRINTER', '002.160', 37, 'EPSON Printer L360', '7450', '2018-06-25', 'nhfc_admin'),
(94, 'OTHERS', '180.OTHERS', 38, '2pcs Telephone', '2000', '2018-07-03', 'nhfc_admin'),
(95, 'OTHERS', '180.OTHERS', 38, '2pcs Power Supply', '1600', '2018-07-03', 'nhfc_admin'),
(96, 'AVR', '002.010', 38, '2pcs Secure AVR', '460', '2018-07-03', 'nhfc_admin'),
(97, 'OTHERS', '180.OTHERS', 39, '2pcs TP-Link TL-MR3420 3G/4G Wireless N Router', '3300', '2018-07-03', 'nhfc_admin'),
(99, 'OTHERS', '180.OTHERS', 41, 'Laptop HP Repair', '1500', '2018-07-05', 'nhfc_admin'),
(100, 'HARD DISK DRIVE', '002.030', 42, '500GB WD Blue', '2150', '2018-07-05', 'nhfc_admin'),
(101, 'RAM', '002.030', 42, '4GB Kingston 1866 Memory', '1800', '2018-07-05', 'nhfc_admin'),
(102, 'PROCESSOR', '002.030', 42, 'AMD A8 7650K', '3350', '2018-07-05', 'nhfc_admin'),
(103, 'MOTHERBOARD', '002.030', 42, 'MSI A68M-DG3+', '2500', '2018-07-05', 'nhfc_admin'),
(104, 'CASE', '002.030', 42, 'Neutron Casing', '995', '2018-07-05', 'nhfc_admin'),
(105, 'PRINTER', '002.160', 43, 'EPSON L120', '4950', '2018-07-09', 'nhfc_admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `corp` varchar(20) NOT NULL,
  `position` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `branch_id`, `name`, `corp`, `position`, `date`) VALUES
(1, 1, 'SIBAL , RODRIGO GAVILENO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(2, 1, 'MENDOZA , ZARINA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(3, 1, 'JADLONG, ANTHONY ALGADO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(4, 1, 'POLIDO , AGUSTINA LIBOON', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(5, 2, 'GEMINO , CELEDONIO DIOQUINO', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(6, 2, 'FONTANILLA , VBLYN MENDOZA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(7, 3, 'NICOLAS, ARTHUR E. JR.', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(8, 3, 'FORFEIDA , NENITA BETARMOS', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(9, 4, 'BUGNE , MARLYNE PUMIHIC', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(10, 4, 'PINKIHAN , COREEN MADDAWAT', 'NHFC', 'SALES STAFF', '2018-05-25'),
(11, 4, 'EMPERADOR , ROWEL DASALLA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(12, 4, 'CHIGWAY , JESSICA BUMACAS', 'NHFC', 'SALES STAFF', '2018-05-25'),
(13, 4, 'GUMPAC , MARLYNE TIWAKEN', 'NHFC', 'SALES STAFF', '2018-05-25'),
(14, 5, 'MACABATAS , JAY SAN MIGUEL', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(15, 5, 'VALERIANO , ZHARINA ZANDRA LAZARO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(16, 5, 'MONICIT , RAYMOND JOHN SACUEZA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(17, 6, 'ALNAS, MARITESS V.', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(18, 6, 'BAUZON,VIOLETA N.', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(19, 7, 'LABERINTO , JULIETA DARIA', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(20, 7, 'AGNES , WINDEL VASQUEZ', 'NHFC', 'SALES STAFF', '2018-05-25'),
(21, 7, 'BORILLO , DIANE V.', 'NHFC', 'SALES STAFF', '2018-05-25'),
(22, 8, 'CABIO , ROMEDA', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(23, 9, 'POLAWES , FRANCINE', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(24, 9, 'KHENSAY , BLESILA GALO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(25, 10, 'FAGARAGAN ,  MAYLYN GAMOSO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(26, 10, 'BARNACHEA , JINKY GORDON', 'NHFC', 'SALES STAFF', '2018-05-25'),
(27, 11, 'BESA CRUZ , MARGIE DIOQUINO', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(28, 11, 'DAROYA , CYNTHIA DIOQUINO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(29, 12, 'MANALO , MARIA ROJANI', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(30, 12, 'FAJARDO , FERDIE FRANCISCO', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(31, 12, 'MADEA , ERWIN C.', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(32, 13, 'VALDEZ , MARIBEL BAÑES', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(33, 13, 'DULAY , EDLYN URSUA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(34, 14, 'AGASINO , MERIAM MORAL', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(35, 14, 'RAÑON , HELEN RECOSO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(36, 14, 'RELENTE , JONA LOMA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(37, 15, 'REVIDAD , VILMA DELA CRUZ', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(38, 15, 'LABORTE , SHERYL HERMOSO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(39, 15, 'RENTORIA , MARIANE RECHA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(40, 15, 'ALMAZAN , MECHELLE CHAVEZ', 'NHFC', 'SALES STAFF', '2018-05-25'),
(41, 15, 'NEPTUNO , JENNIFER TOSOC', 'NHFC', 'SALES STAFF', '2018-05-25'),
(42, 16, 'BELDIA , VANESSA CAMBA', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(43, 16, 'VIBA , ROMALYN MAGMOYAO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(44, 16, 'JIMENEZ , ENRIQUE BAUTISTA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(45, 16, 'DOMINGO , ROLAND TILO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(46, 17, 'DE GUZMAN , NOEL DINGLE', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(47, 17, 'CARIAZO , SHEILA MAE', 'NHFC', 'SALES STAFF', '2018-05-25'),
(48, 19, 'COLOCAR , PABLO ALDRIN HAMWAT', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(49, 19, 'PANALIGAN , LYMUEL SALIDO', 'NHFC', 'SALES STAFF', '2018-05-25'),
(50, 19, 'OLD PC', 'NHFC', '', '2018-05-25'),
(51, 20, 'ALLEGO , MARINA NABOLNAG', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(52, 20, 'CABALBAG , IVY - JOYCE', 'NHFC', 'SALES STAFF', '2018-05-25'),
(53, 20, 'DE GUZMAN , MARVIN JAVIER', 'NHFC', 'SALES STAFF', '2018-05-25'),
(54, 20, 'VENTURA , ROSALYN HERBAS', 'NHFC', 'SALES STAFF', '2018-05-25'),
(55, 20, 'FABRO , MARY ANNE II RIGOR', 'NHFC', 'SALES STAFF', '2018-05-25'),
(56, 21, 'DERILO , SANITA T.', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(57, 21, 'SANCHEZ , CJANNENH P.', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(58, 21, 'BICERA , JANICE M.', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(59, 22, 'ARAÑA , ROLEND BUADO', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(60, 22, 'BATAWANG , EDMARIE LEOCADIO', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(61, 23, 'CABARLO , MYLENE SONGCUAN', 'NHFC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(62, 23, 'CABANTING , JEANE LOERAINE DIGA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(63, 24, 'MILLAN , JOANNE R.', 'GTLIC', 'OFFICER-IN-CHARGE', '2018-05-25'),
(64, 24, 'MADRIAGA , SHERRYLENE A.', 'GTLIC', 'SALES STAFF', '2018-05-25'),
(65, 18, 'BACCAY , MARK DAVIS', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(66, 18, 'BONDOC , GAZEL JAMES SILVESTRE', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(67, 18, 'CARAMAT , SHARRA JANE TELA', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(68, 18, 'CRISOSTOMO , ALLAN FRANCIS FLORA', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(69, 18, 'WENDY', 'NHFC', 'OJT ACCOUNTING', '2018-05-25'),
(70, 18, 'ANGELES , ADRIAN CHENG', 'NHFC', 'HEAD ACCOUNTING', '2018-05-25'),
(71, 18, 'CRUZ , PAUL JOHN CALIMON', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(72, 18, 'ARROYO , FRANCIS MALUBAY', 'NHFC', 'ACCOUNTING STAFF', '2018-05-25'),
(73, 18, 'PAUSO , KEITH FRANCIS', 'NHFC', 'IT STAFF', '2018-05-25'),
(74, 18, 'GUARIN , CHRISTIAN RAMOS', 'NHFC', 'IT STAFF', '2018-05-25'),
(75, 18, 'ABILAR , KENNETH CHING', 'NHFC', 'HEAD IT', '2018-05-25'),
(76, 18, 'OLD SERVER', 'NHFC', '', '2018-05-25'),
(77, 18, 'ALCAZAREN , MELCHI BALBERONA', 'NHFC', 'HR STAFF', '2018-05-25'),
(78, 18, 'BIHASA , CLAIRE ANTONNETE', 'NHFC', 'HR STAFF', '2018-05-25'),
(79, 18, 'SAURE , IMELDA C.', 'NHFC', 'AUDIT STAFF', '2018-05-25'),
(80, 18, 'ANNA', 'NHFC', 'OJT AUDIT', '2018-05-25'),
(81, 18, 'DIMAGUILA , MAR HENRIA CEBANES', 'NHFC', 'SALES STAFF', '2018-05-25'),
(82, 18, 'BETARMOS , MARIKRIZ', 'NHFC', 'CASHIER', '2018-05-25'),
(83, 18, 'MORTIZ , BABELYN PERNIA', 'NHFC', 'SALES STAFF', '2018-05-25'),
(84, 18, 'MENDOZA, CECILIA A.', 'NHFC', 'MANAGER', '2018-06-05'),
(85, 18, 'ESPENIDO, JOSELITO JR.', 'NHFC', 'HEAD AUDIT', '2018-06-05'),
(86, 18, 'PANALIGAN, RAYNNERE BAJESTA', 'NHFC', 'AUDIT STAFF', '2018-06-05'),
(87, 18, 'ESPAÑOLA , JOSEPH', 'NHFC', 'AUDIT STAFF', '2018-06-05'),
(88, 18, 'BAGTAS, REGGIE', 'NHFC', 'HEAD HR', '2018-06-05'),
(89, 18, 'FRANCISO, RAYMART AZUL', 'NHFC', 'AUDIT STAFF', '2018-06-05'),
(90, 10, 'DOMINGO, ARACELI LEONIN', 'NHFC', 'OFFICER-IN-CHARGE', '2018-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `technical`
--

CREATE TABLE `technical` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `trans_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical`
--

INSERT INTO `technical` (`id`, `branch_id`, `name`, `start_date`, `end_date`, `description`, `trans_by`) VALUES
(14, 16, 'Vanessa C. Beldia', '2018-04-18', '2018-04-20', 'DEFECTIVE PC', 'nhfc_admin'),
(15, 1, 'AGUSTINA POLIDO', '2018-04-25', '2018-04-26', '1 UNIT PC (Reformatted)', 'nhfc_admin'),
(16, 24, 'JOANNE MILLAN', '2018-05-08', '2018-05-09', 'Cleaned and Reformatted', 'nhfc_admin'),
(17, 22, 'ROLEND ARAÑA', '2018-05-10', '2018-05-10', 'Cleaned and Reformatted', 'nhfc_admin');

-- --------------------------------------------------------

--
-- Table structure for table `temp_items`
--

CREATE TABLE `temp_items` (
  `id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `price` varchar(255) NOT NULL,
  `trans_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_items`
--

INSERT INTO `temp_items` (`id`, `trans_id`, `item_id`, `description`, `date`, `price`, `trans_by`) VALUES
(1, 33, 10, 'EPSON LX310 Dot Matrix', '2018-05-16', '8900', 'nhfc_admin'),
(2, 33, 10, 'EPSON LX310 Dot Matrix', '2018-05-16', '8900', 'nhfc_admin'),
(3, 33, 1, 'test', '2018-05-16', 'tets', 'nhfc_admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `trans_by` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `branch_id`, `date`, `trans_by`, `total`) VALUES
(1, 26, '2018-02-06', 'nhfc_admin', '1400'),
(2, 25, '2018-02-06', 'nhfc_admin', '20055'),
(3, 29, '2018-02-09', 'nhfc_admin', '7450'),
(4, 26, '2018-02-09', 'nhfc_admin', '22000'),
(6, 26, '2018-02-15', 'nhfc_admin', '3200'),
(7, 30, '2018-02-22', 'nhfc_admin', '4200'),
(8, 18, '2018-03-23', 'nhfc_admin', '4950'),
(9, 28, '2018-04-04', 'nhfc_admin', '1350'),
(10, 18, '2018-04-04', 'nhfc_admin', '1288'),
(11, 18, '2018-04-12', 'nhfc_admin', '13000'),
(12, 7, '2018-04-24', 'nhfc_admin', '15105'),
(13, 28, '2018-04-25', 'nhfc_admin', '3500'),
(14, 7, '2018-04-27', 'nhfc_admin', '9200'),
(21, 28, '2018-05-02', 'nhfc_admin', '920'),
(22, 18, '2018-05-04', 'nhfc_admin', '14600'),
(23, 28, '2018-05-08', 'nhfc_admin', '3000'),
(24, 27, '2018-05-11', 'nhfc_admin', '15105'),
(25, 28, '2018-05-11', 'nhfc_admin', '2450'),
(27, 8, '2018-05-16', 'nhfc_admin', '8900'),
(28, 24, '2018-05-31', 'nhfc_admin', '3100'),
(31, 28, '2018-06-04', 'nhfc_admin', '1000'),
(32, 26, '2018-06-04', 'nhfc_admin', '17000'),
(33, 17, '2018-06-07', 'nhfc_admin', '8900'),
(34, 18, '2018-06-13', 'nhfc_admin', '3450'),
(35, 3, '2018-06-18', 'nhfc_admin', '5000'),
(36, 28, '2018-06-19', 'nhfc_admin', '980'),
(37, 18, '2018-06-25', 'nhfc_admin', '7450'),
(38, 28, '2018-07-03', 'nhfc_admin', '4060'),
(39, 28, '2018-07-03', 'nhfc_admin', '3300'),
(41, 28, '2018-07-05', 'nhfc_admin', '1500'),
(42, 29, '2018-07-05', 'nhfc_admin', '10795'),
(43, 16, '2018-07-09', 'nhfc_admin', '4950');

-- --------------------------------------------------------

--
-- Table structure for table `transmittal`
--

CREATE TABLE `transmittal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `corp` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `trans_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transmittal`
--

INSERT INTO `transmittal` (`id`, `name`, `branch_id`, `corp`, `date`, `description`, `trans_by`) VALUES
(1, 'JOSH ESPENIDO', 26, 'NHFC', '2018-02-15', '1 Laptop w/ free bag and wireless mouse, 2 wireless mouse', 'nhfc_admin'),
(2, 'JOSH ESPENIDO', 26, 'NHFC', '2018-02-15', '1 External Hard Drive w/ usb cord', 'nhfc_admin'),
(3, 'Reggie Bagtas', 30, 'NHFC', '2018-02-19', '1 Laptop w/ free bag and wireless mouse', 'nhfc_admin'),
(4, 'MELCHI ALCAZAREN', 30, 'NHFC', '2018-02-19', '1 UNIT PC w/ accessories (2nd Hand)', 'nhfc_admin'),
(5, 'EDGAR ALBAY', 30, 'NHFC', '2018-02-19', '1 UNIT PC w/ accessories (2nd Hand)', 'nhfc_admin'),
(6, 'MELCHI ALCAZAREN', 30, 'NHFC', '2018-02-22', '1TB External Drive and 2 32gb Flashdrive', 'nhfc_admin'),
(7, 'PABLO ALDRIN COLOCAR', 19, 'NHFC', '2018-03-16', '1 UNIT PC (Reformatted)', 'nhfc_admin'),
(8, 'AGUSTINA POLIDO', 1, 'NHFC', '2018-04-16', '1 AVR,MOUSE/KEYBOARD', 'nhfc_admin'),
(9, 'Vanessa C. Beldia', 16, 'NHFC', '2018-04-20', '1 UNIT PC (Reformatted)', 'nhfc_admin'),
(10, 'MARITESS ALNAS', 6, 'GTLIC', '2018-04-24', '1 CPU ( 2nd hand)', 'nhfc_admin'),
(11, 'MARIBEL VALDEZ', 13, 'NHFC', '2018-04-26', '1pc Bundy Clock (2nd Hand)', 'nhfc_admin'),
(12, 'VILMA REVIDAD', 15, 'NHFC', '2018-04-26', '1 router and wifi adapter (2nd hand)', 'nhfc_admin'),
(13, 'JULIET D. LABERINTO', 7, 'NHFC', '2018-05-04', '1 complete Unit w/ Monitor , Printer and Accessories', 'nhfc_admin'),
(14, 'JOANNE MILLAN', 24, 'GTLIC', '2018-05-09', '1 CPU (2nd hand) Reformatted', 'nhfc_admin'),
(15, 'ROLEND ARAÑA', 22, 'NHFC', '2018-05-10', '1CPU Cleaned and Reformatted', 'nhfc_admin'),
(16, 'Rolend b. Arana', 22, 'NHFC', '2018-05-11', '1 Unit PC (Cleaned and Reformatted)', 'nhfc_admin'),
(17, 'Romeda F. Cabio', 8, 'GTLIC', '2018-05-21', 'EPSON LX-310', 'nhfc_admin'),
(18, 'SANITA T DERILO', 21, 'GTLIC', '2018-05-22', '1pc Lan Card (2nd Hand)', 'nhfc_admin'),
(19, 'JOANNE MILLAN', 24, 'GTLIC', '2018-05-31', '1 UNIT PC ( New Power Supply )', 'nhfc_admin'),
(20, 'JOSH ESPENIDO', 26, 'NHFC', '2018-06-05', '1 Acer Laptop Black w/ free bag and wireless mouse', 'nhfc_admin'),
(21, 'NOEL D. DE GUZMAN', 17, 'NHFC', '2018-06-06', 'EPSON LX-310 + BLUE CABLE', 'nhfc_admin'),
(22, 'ARTHUR NICOLAS JR', 3, 'GTLIC', '2018-06-21', '1 Epson L120 Printer', 'nhfc_admin'),
(23, 'Meriam M. Agasino', 14, 'NHFC', '2018-07-09', 'HUAWEI LTE CPEB315 with Globe simcard', 'nhfc_admin'),
(24, 'CELEDONIO GEMINO', 2, 'NHFC', '2018-07-09', 'TP link 3G/4G wireless n router with smartbroadband post paid sim', 'nhfc_admin'),
(25, 'MYLENE CABARLO', 23, 'NHFC', '2018-07-09', 'TP link 3G/4G wireless n router with unlocked Broadband', 'nhfc_admin'),
(26, 'VANESSA BELDIA', 16, 'NHFC', '2018-07-10', 'L120 Epson Printer', 'nhfc_admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'ADMIN', 'nhfc_admin', '13602df4af99c4ed29a6af65ee5cb49c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_item`
--
ALTER TABLE `inventory_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical`
--
ALTER TABLE `technical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_items`
--
ALTER TABLE `temp_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transmittal`
--
ALTER TABLE `transmittal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `inventory_item`
--
ALTER TABLE `inventory_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=814;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `technical`
--
ALTER TABLE `technical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `temp_items`
--
ALTER TABLE `temp_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `transmittal`
--
ALTER TABLE `transmittal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
