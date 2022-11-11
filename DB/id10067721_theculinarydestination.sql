-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2022 at 06:35 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10067721_theculinarydestination`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakery_feedback`
--

CREATE TABLE `bakery_feedback` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext NOT NULL,
  `EMAIL` mediumtext NOT NULL,
  `MESSAGE` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`ID`, `NAME`, `EMAIL`, `MESSAGE`) VALUES
(11, 'Naresh Shende', 'nareshshende16@gmail.com', 'Good service'),
(12, 'Aditya Barve', 'adityabarve28@gmail.com', 'TEST'),
(13, 'Aditya Barve', 'adityabarve28@gmail.com', 'Nice'),
(14, 'Aditya Barve', 'adityabarve28@gmail.com', 'Nice');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `IMAGENAME` mediumtext NOT NULL,
  `IMAGEPATH` mediumtext NOT NULL,
  `NAME` mediumtext NOT NULL,
  `COST` bigint(20) NOT NULL,
  `TYPE` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `IMAGENAME`, `IMAGEPATH`, `NAME`, `COST`, `TYPE`) VALUES
(1, 'bread-burlap-close-up-1600711.jpg', 'img/bread-burlap-close-up-1600711.jpg', 'bread burlap', 110, 'SNACK'),
(2, 'burrito-chicken-close-up-461198.jpg', 'img/burrito-chicken-close-up-461198.jpg', 'burrito chicken', 300, 'SNACK'),
(3, 'close-up-dinner-fish-46239.jpg', 'img/close-up-dinner-fish-46239.jpg', 'fish dinner', 3500, 'MAINCOURSE'),
(4, '.jpg', 'img/.jpg', 'Veg Indian thali', 3000, 'MIANCOURSE'),
(5, 'pexels-photo-2092906.jpeg', 'img/pexels-photo-2092906.jpeg', 'Prawn noodles', 175, 'MAINCOURSE'),
(18, 'images.jpg', 'img/images.jpg', 'Cafe latte', 150, 'DESSERT'),
(20, 'fishfillet.jpg', 'img/fishfillet.jpg', 'Fish Fillet', 990, 'MAINCOURSE'),
(21, 'prawnbiryani.jpg', 'img/prawnbiryani.jpg', 'Prawns biryani', 1500, 'MAINCOURSE'),
(22, 'prawnsfry.jpg', 'img/prawnsfry.jpg', 'prawns fry', 390, 'STARTERS'),
(25, 'pomfretfry.jpg', 'img/pomfretfry.jpg', 'pomfret fry', 990, 'STARTERS'),
(26, 'lobster.jpg', 'img/lobster.jpg', 'Lobester', 1880, 'MAINCOURSE'),
(27, 'dessert.jpg', 'img/dessert.jpg', 'Dessert', 450, 'DESSERT'),
(28, 'paratha.jpg', 'img/paratha.jpg', 'Paratha', 450, 'SNACK');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `ORDERNO` mediumtext NOT NULL,
  `NAME` mediumtext NOT NULL,
  `PHONE` bigint(20) NOT NULL,
  `PINCODE` mediumtext NOT NULL,
  `ADDRESS` longtext NOT NULL,
  `ORDERS` longtext NOT NULL,
  `STATUS` mediumtext NOT NULL,
  `COSTS` mediumtext NOT NULL,
  `QUANTITY` mediumtext NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `ORDERNO`, `NAME`, `PHONE`, `PINCODE`, `ADDRESS`, `ORDERS`, `STATUS`, `COSTS`, `QUANTITY`, `TOTAL`) VALUES
(1, '2860b764b49bdaa', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'bread burlap,', 'COMPLETED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '5 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , ', 550),
(2, '2860b765189646e', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'Lobester,Paratha,', 'COMPLETED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 3 , 0 , 4 , ', 7440),
(3, '2860b892676ccaa', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'bread burlap,Paratha,', 'COMPLETED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '3 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 5 , ', 2580),
(4, '2860b8b59fab436', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'prawns fry,pomfret fry,Dessert,', 'DISPATCHED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 5 , 5 , 0 , 5 , 0 , ', 9150),
(5, '2860dac121a66f5', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'Cafe latte,Fish Fillet,', 'DISPATCHED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '0 , 0 , 0 , 0 , 0 , 2 , 3 , 0 , 0 , 0 , 0 , 0 , 0 , ', 3270),
(6, '2861e84f854e1f9', 'Aditya Barve', 9137818209, '421605', 'GAYATRI DHAM C-5/13, GANESH MANDIR ROAD,\r\nMANDA TITWALA(E), AMBIVILI TARAF VASUNDARI,', 'prawns fry,pomfret fry,Dessert,Paratha,', 'COMPLETED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 2 , 4 , 0 , 4 , 5 , ', 8790),
(7, '2862d90b0961e91', 'aditya barve', 9137818209, '421605', 'GAYATRI DHAM C-5/13, GANESH MANDIR ROAD,\r\nMANDA TITWALA(E), AMBIVILI TARAF VASUNDARI,', 'bread burlap,', 'PENDING', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , ', 110),
(8, '2862da480e1100e', 'aditya barve', 9137818209, '421605', 'GAYATRI DHAM C-5/13, GANESH MANDIR ROAD,\r\nMANDA TITWALA(E), AMBIVILI TARAF VASUNDARI,', 'bread burlap,', 'CONFIRMED', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '2 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , ', 220),
(9, '2862dd455e455dc', 'Sakshi Anuse', 9699270514, '421605', 'Thakurwadi, Dombivli.', 'bread burlap,', 'PENDING', '110,300,3500,3000,175,150,990,1500,390,990,1880,450,450,', '1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , ', 110);

-- --------------------------------------------------------

--
-- Table structure for table `special`
--

CREATE TABLE `special` (
  `ID` int(11) NOT NULL,
  `IMAGENAME` mediumtext NOT NULL,
  `IMAGEPATH` mediumtext NOT NULL,
  `DISHNAME` mediumtext NOT NULL,
  `DISHCOST` float DEFAULT NULL,
  `DISCOST` float DEFAULT NULL,
  `DISCRIPTION` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special`
--

INSERT INTO `special` (`ID`, `IMAGENAME`, `IMAGEPATH`, `DISHNAME`, `DISHCOST`, `DISCOST`, `DISCRIPTION`) VALUES
(6, 'close-up-dinner-fish-46239.jpg', 'img/close-up-dinner-fish-46239.jpg', 'fish dinner', 3500, 1750, 'get the fish dinner at half of its cost only for today');

-- --------------------------------------------------------

--
-- Table structure for table `suborder`
--

CREATE TABLE `suborder` (
  `ID` int(11) NOT NULL,
  `ORDERNO` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `QUANTITY` mediumint(9) NOT NULL,
  `COST` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext NOT NULL,
  `PASSWORD` mediumtext NOT NULL,
  `EMAIL` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `PASSWORD`, `EMAIL`) VALUES
(13, 'Aditya Barve', '$2y$10$WCQsI0OJ.8D4E.HvFUuqS.hs8EamG3QpsK9Sd4BhOu8uh/lv04LF6', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakery_feedback`
--
ALTER TABLE `bakery_feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suborder`
--
ALTER TABLE `suborder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakery_feedback`
--
ALTER TABLE `bakery_feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suborder`
--
ALTER TABLE `suborder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
