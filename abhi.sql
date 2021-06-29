-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2021 at 12:52 AM
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
-- Database: `abhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `accno` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `phno ` numeric(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `balance` double(10,2) NOT NULL,
  PRIMARY KEY (`accno`),
  unique KEY(`phno`)
) ;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `acno`, `fname`, `lname`,`pnumber`, `dob`, `gender`, `balance`) VALUES
(1, '1234', 'Shiva', 'kumar', '90234587','2021-06-17', 'Male', 1000.00),
(2, '123456', 'Chiudary', 'kumar','5436892487', '2021-06-03', 'Male', 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `abhi`;
CREATE TABLE IF NOT EXISTS `abhi` (
  `pnumber` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phno ` numeric(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`pnumber`),
  unique KEY (`phno`)
);

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`pnumber`, `fname`, `lname`,`phno`, `dob`, `gender`) VALUES
(1, '1234', 'Naveen', 'kumar','8722014859', '2021-06-17', 'Male');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
