-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 11:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `status`) VALUES
(1, 2, 'Los Angales', 1),
(2, 1, 'New York', 1),
(3, 4, 'Toranto', 1),
(4, 3, 'Vancovour', 1),
(5, 2, 'db', 1),
(6, 2, 'cd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`) VALUES
(1, 'USA', 1),
(2, 'Canada', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(10) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zipCode` varchar(30) NOT NULL,
  `natureOfBusiness` varchar(30) NOT NULL,
  `accname` varchar(50) NOT NULL,
  `accsize` varchar(50) NOT NULL,
  `bln` varchar(50) NOT NULL,
  `bweb` text NOT NULL,
  `btype` varchar(50) NOT NULL,
  `empsize` varchar(30) NOT NULL,
  `annrev` varchar(30) NOT NULL,
  `ctype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custId`, `email`, `name`, `contact`, `designation`, `address`, `district`, `state`, `zipCode`, `natureOfBusiness`, `accname`, `accsize`, `bln`, `bweb`, `btype`, `empsize`, `annrev`, `ctype`) VALUES
(1, '', '', '', '', '', '', '', '', 'Manufacturer', '', 'Enterprise', '', '', 'btype', '0 - 50', '0 - 50cr', 'Influencer');

-- --------------------------------------------------------

--
-- Table structure for table `potentials`
--

CREATE TABLE `potentials` (
  `appId` int(11) NOT NULL,
  `mksource` varchar(30) NOT NULL,
  `contperson` varchar(30) NOT NULL,
  `rank` varchar(30) NOT NULL,
  `potname` varchar(50) NOT NULL,
  `estdealvalue` varchar(30) NOT NULL,
  `exclosuredate` varchar(30) NOT NULL,
  `parentcat` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL,
  `nsdd` varchar(30) NOT NULL,
  `NOT` varchar(30) NOT NULL,
  `bvertical` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `requirements` text NOT NULL,
  `accname` varchar(30) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potentials`
--

INSERT INTO `potentials` (`appId`, `mksource`, `contperson`, `rank`, `potname`, `estdealvalue`, `exclosuredate`, `parentcat`, `product`, `nsdd`, `NOT`, `bvertical`, `region`, `state`, `city`, `requirements`, `accname`, `stage`, `amount`, `status`) VALUES
(1, 'Website Enquiry', '', 'Hot', '', '', '', 'UdyogERP', '1', '', '0 - 20000', 'Metal & Alloys', 'East', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `status`) VALUES
(1, 1, 'New York', 1),
(2, 1, 'Los Angeles', 1),
(3, 2, 'British Columbia', 1),
(4, 2, 'Torentu', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custId`);

--
-- Indexes for table `potentials`
--
ALTER TABLE `potentials`
  ADD PRIMARY KEY (`appId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `potentials`
--
ALTER TABLE `potentials`
  MODIFY `appId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
