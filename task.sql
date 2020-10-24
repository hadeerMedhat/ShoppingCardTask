-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 23, 2020 at 06:53 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
CREATE TABLE IF NOT EXISTS `customerorder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(300) NOT NULL,
  `ProductPrice` double NOT NULL,
  `ProductDescription` varchar(300) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `Discount` double NOT NULL,
  `Seen` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`ID`, `ProductName`, `ProductPrice`, `ProductDescription`, `Quantity`, `image`, `Discount`, `Seen`) VALUES
(1, 'T-shirt', 10.99, 'BASIC  T-SHIRT WITH FRONT CUTS', 50, 'images\\TJF432686_01.jfif', 0, 1),
(2, 'Shoes', 24.99, ' Dress Shoes', 50, 'images\\Rebecca_Cinder.jpg', 10, 1),
(3, 'Jacket', 19.99, 'COMLION  Spring Jacket', 150, 'images\\KJ1293_Welk_Puffer_Jacket_Black_01_900x.jpg', 0, 1),
(4, 'Pants', 14.99, 'GRACE KARIN Women', 200, 'images\\9P7704_6077_MODEL_3.jfif', 0, 1),
(5, 'Cap', 10.2, 'Red Cap', 50, 'images\\sportswear-heritage-86-cap-7bN7K8.jpg', 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `Name`) VALUES
(1, 'Visa'),
(2, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `userorder`
--

DROP TABLE IF EXISTS `userorder`;
CREATE TABLE IF NOT EXISTS `userorder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(300) NOT NULL,
  `LastName` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Payment` varchar(300) NOT NULL,
  `Taxes` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userorder`
--

INSERT INTO `userorder` (`ID`, `FirstName`, `LastName`, `Address`, `Payment`, `Taxes`) VALUES
(1, 'Hadeer', 'medhat', 'banitay', 'visa', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
