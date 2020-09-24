-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 07:31 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL COMMENT 'auto increament',
  `name` varchar(100) NOT NULL COMMENT 'name of the package',
  `price` varchar(10) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1-active, 2-inactive, 3-expired, 4-deleted',
  `created_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `duration`, `description`, `status`, `created_time`) VALUES
(1, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '2020-09-22 16:00:00'),
(2, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(3, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(4, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(5, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(6, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(7, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(8, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(9, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(10, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(11, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(12, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-22 16:00:00'),
(13, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(14, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(15, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(16, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(17, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(18, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(19, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(20, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(21, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(22, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(23, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(24, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(25, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(26, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(27, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(28, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(29, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(30, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(31, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(32, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(33, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(34, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(35, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(36, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(37, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(38, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(39, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(40, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(41, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(42, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(43, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(44, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(45, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(46, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(47, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(48, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(49, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(50, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(51, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(52, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(53, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(54, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(55, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(56, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(57, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(58, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(59, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(60, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(61, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(62, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(63, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(64, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(65, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(66, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(67, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(68, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(69, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(70, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(71, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(72, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(73, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(74, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(75, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(76, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(77, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(78, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(79, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(80, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(81, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(82, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(83, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(84, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(85, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(86, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(87, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(88, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(89, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(90, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(91, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(92, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(93, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(94, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(95, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(96, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '0000-00-00 00:00:00'),
(97, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '0000-00-00 00:00:00'),
(98, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-24 08:35:34'),
(99, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-24 08:40:08'),
(100, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-24 08:46:31'),
(101, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '2020-09-24 08:48:53'),
(102, 'Holiday Packages', '150', '3 Days 2 Nigts', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 4, '2020-09-24 08:49:58'),
(103, 'Holiday Packages', '155', '3 Days 5 Nigts', 'Pay On Arrival, Flexible Check-In &amp; Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book &amp; Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-24 09:37:15'),
(104, 'Tune Packages', '149', '5 Days 4 Nights', 'Pay On Arrival, Flexible Check-In & Check-out when you book direct. Now until 31 Dec 2020. A Deal For Malaysians, By Malaysians. Book & Stay From Now Until 31 December 2020. All Inclusive Rates. Lowest Price in KLIA2. Free Superspeed Wifi. Connected To KLIA2.', 1, '2020-09-24 14:22:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto increament', AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;