-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 07:38 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `un` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `un`, `pw`) VALUES
(1, 'admin', 'ISMvKXpXpadDiUoOSoAfww=='),
(2, 'fdf', 'GptWz5bLs0mi0iK8MimykA=='),
(3, 'efdfgyg', 'HudJikSB4tsCxWokJq7p6g=='),
(4, 'dhfffdf', 'C7Acvz/O61DJo7jhDNz7oA=='),
(6, 'jhon', 'ICy5YqxZB1uWSwcVLSNLcA=='),
(7, 'Sandun', 'ICy5YqxZB1uWSwcVLSNLcA=='),
(8, 'prabuddha', 'ICy5YqxZB1uWSwcVLSNLcA=='),
(9, 'sathya', 'ICy5YqxZB1uWSwcVLSNLcA=='),
(10, 'sandali', 'ICy5YqxZB1uWSwcVLSNLcA==');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `pName` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `un` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `pName`, `date`, `un`) VALUES
(23, 'HTC Desire 816 3G', '2015-04-19 13:12:10', 'ijobs'),
(24, 'Nokia Lumia 735', '2015-04-19 13:12:10', 'ijobs'),
(25, 'Sony Xperia E3 Dual', '2015-04-19 13:12:11', 'ijobs'),
(26, 'Samsung Galaxy Note Edge', '2015-04-19 13:12:11', 'ijobs');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(100) NOT NULL,
  `band` varchar(200) NOT NULL,
  `annc` varchar(200) NOT NULL,
  `die` varchar(200) NOT NULL,
  `sim` varchar(200) NOT NULL,
  `scrn` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `memry` varchar(200) NOT NULL,
  `cam` varchar(200) NOT NULL,
  `btry` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `band`, `annc`, `die`, `sim`, `scrn`, `os`, `memry`, `cam`, `btry`) VALUES
(1, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(2, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(3, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(4, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(5, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(6, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(7, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(8, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(9, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(10, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(11, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(12, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(13, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(14, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(15, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(16, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(17, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(18, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(19, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(20, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(21, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(22, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(23, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(24, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(25, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(26, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(27, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(28, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(29, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(30, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(31, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)'),
(32, 'GSM 850 / 900 / 1800 / 1900, HSDPA 850 / 900 / 2100 , LTE band 1(2100), 3(1800), 7(2600), 8(900) - Asia version', '2014, February', '156.6 x 78.7 x 7.9 mm (6.17 x 3.10 x 0.31 in)', 'Nano-SIM', 'Super LCD2 capacitive touchscreen, 16M colors, 5.5 inches , 720 x 1280 pixels (~267 ppi pixel density)', 'Android OS, v4.4.2 (KitKat)', '1.5 GB RAM, microSD - up to 128 GB , Internal - 8 GB ', 'Primary - 13 MP , Secondary - 5 MP', 'Standby - Up to 737 h (3G), Talk time - Up to 21 h (3G)');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `imagName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `brand`, `name`, `price`, `imagName`) VALUES
(1, 'HTC', 'HTC Desire 816 3G', 43350, 'htc-desire-816.jpg'),
(2, 'HTC', 'HTC One Max', 31000, 'htc-desire-616-dual-sim.jpg'),
(3, 'HTC', 'HTC Desire X', 43000, 'htc-desire-816.jpg'),
(4, 'HTC', 'HTC One M8', 72500, 'htc-desire-610.jpg'),
(5, 'HTC', 'HTC Desire 616 dual sim', 31800, 'htc-desire-510.jpg'),
(6, 'HTC', 'HTC One mini 2', 50000, 'htc-desire-210-dual-sim.jpg'),
(7, 'HTC', 'HTC Desire 610', 32850, 'htc-one-mini-2.jpg'),
(8, 'HTC', 'HTC Desire 310 Dual SIM', 22100, 'htc-desire-310-dual-sim.jpg'),
(9, 'Nokia', 'Nokia Lumia 735', 44900, 'nokia-lumia-735.jpg'),
(10, 'Nokia', 'Nokia 225 Dual SIM', 8050, 'nokia-225-dual-sim.jpg'),
(11, 'Nokia', 'Nokia Lumia 830', 59650, 'nokia-lumia-830.jpg'),
(12, 'Nokia', ' Nokia Lumia 730 Dual SIM', 37450, 'nokia-lumia-730-dual-sim.jpg'),
(13, 'Nokia', 'Nokia Lumia 530 Dual SIM', 10500, 'nokia-lumia-530-dual-sim.jpg'),
(14, 'Nokia', 'Nokia X2 Dual SIM', 16500, 'nokia-x2-dual-sim.jpg'),
(15, 'Nokia', 'Nokia XL Dual SIM', 17500, 'nokia-xl-dual-sim.jpg'),
(16, 'Nokia', 'Nokia Lumia 630 Dual SIM', 16900, 'nokia-lumia-630.jpg'),
(17, 'Samsung', 'Samsung Galaxy Note Edge', 141800, 'samsung-galaxy-note-edge.jpg'),
(18, 'Samsung', 'Samsung Galaxy Grand Prime Duo', 29050, 'samsung-galaxy-grand-prime-sm-g530h.jpg'),
(19, 'Samsung', 'Samsung Galaxy Ace 4', 15870, 'samsung-galaxy-ace-4-sm-g313f.jpg'),
(20, 'Samsung', 'Samsung Galaxy Alpha SM-G850Y', 99500, 'samsung-galaxy-alpha.jpg'),
(21, 'Samsung ', 'Samsung Rex 60 C3312R', 9800, 'samsung-rex-60-c3312r.jpg'),
(22, 'Samsung', 'Samsung E2252', 7000, 'samsung-e2252.jpg'),
(23, 'Samsung', 'Samsung S5 LTE', 68850, 'samsung-galaxy-s5-sm-g900.jpg'),
(24, 'Samsung', 'Samsung Galaxy Note N7000', 29100, 'samsung-galaxy-note-n7000.jpg'),
(25, 'Sony', 'Sony Xperia E3 Dual', 28000, 'sony-xperia-e3-dual.jpg'),
(26, 'Sony', 'Sony Xperia C3 LTE', 43000, 'sony-xperia-c3-lte.jpg'),
(27, 'Sony', 'Sony Xperia Z1 Compact', 48500, 'sony-xperia-z1-compact.jpg'),
(28, 'Sony', 'Sony Xperia Z Ultra', 84800, 'sony-xperia-z-ultra.jpg'),
(29, 'Sony', 'Sony Xperia L', 24000, 'sony-xperia-l.jpg'),
(30, 'Sony', 'Sony Xperia M2', 27850, 'sony-xperia-m2-dual.jpg'),
(31, 'Sony', 'Sony Xperia Tipo', 16650, 'sony-xperia-tipo.jpg'),
(46, 'sony', 'xperia xz ultra', 55000, '');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `rating` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `count`, `points`, `rating`) VALUES
(1, 28, 111, 3.96),
(2, 6, 27, 4.5),
(3, 0, 0, 0),
(4, 1, 4, 4),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 7, 22, 3.14),
(8, 3, 11, 3.67),
(9, 0, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 0),
(12, 0, 0, 0),
(13, 0, 0, 0),
(14, 0, 0, 0),
(15, 0, 0, 0),
(16, 0, 0, 0),
(17, 0, 0, 0),
(18, 1, 5, 5),
(19, 0, 0, 0),
(20, 0, 0, 0),
(21, 0, 0, 0),
(22, 0, 0, 0),
(23, 0, 0, 0),
(24, 0, 0, 0),
(25, 0, 0, 0),
(26, 0, 0, 0),
(27, 0, 0, 0),
(28, 0, 0, 0),
(29, 0, 0, 0),
(30, 0, 0, 0),
(31, 0, 0, 0),
(32, 11, 39, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `fN` varchar(20) NOT NULL,
  `mN` varchar(20) NOT NULL,
  `lN` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mNo` varchar(10) NOT NULL,
  `lNo` varchar(10) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `password`, `fN`, `mN`, `lN`, `email`, `mNo`, `lNo`, `addr`, `country`) VALUES
(39, 0, 'ijobs', 'jtgrDh0KUOMGaI7HmGd6Xw==', 'Steve', '', 'Anderson', 'ijobs@gmail.com', '1234567890', '1234567890', 'Abc', 'United'),
(40, 1, 'pasindu', 'ICy5YqxZB1uWSwcVLSNLcA==', 'pasindu', 'madushan', 'bandara', 'pasinud@gmail.com', '0714457558', '0382291409', '154/b weedagama bandaragama', 'sri lanka'),
(41, 0, 'abc', 'ICy5YqxZB1uWSwcVLSNLcA==', 'abc', 'abc', 'abc', 'pasinudasf@gmail.com', '0714457558', '0382291409', '154/b weedagama bandaragama', 'sri lanka'),
(42, 0, 'sandun', 'ICy5YqxZB1uWSwcVLSNLcA==', 'sandun', 'sandun', 'sandun', 'sandun@gmail.com', '0714457558', '0382291409', '154/b weedagama bandaragama', 'sri lanka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
