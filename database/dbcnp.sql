-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 02:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `name`, `contact`, `email`, `username`, `password`) VALUES
(1, 'Shubhra', '1234567890', 'admin@admin.admin', 'admin', 'admin123');



CREATE TABLE `tblcnp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `prize` float DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblcnp` (`id`, `name`, `prize`, `description`, `image`, `status`) VALUES
(1, 'Baltimore Oriole', 350, 'The rich, whistling song of the Baltimore Oriole, ', 'images/e.jpg', 'Available'),
(2, 'Maltese', 500, 'A dog breed whoâ€™s gentle and fearless, the Malte', 'images/2.jpg', 'Available'),
(3, 'Bulldog', 550, 'Bulldogs originally were used to drive cattle to m', 'images/3.jpg', 'Available'),
(4, 'Gordon Setter', 600, 'The Gordon Setter, the black avenger of the Highla', 'images/5.jpg', 'Available'),
(5, 'Bedlington Terrier', 500, 'Bedlingtons are lithe, energetic Englishmen. The c', 'images/9.JPG', 'Available');


CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `cnpoid` int(11) DEFAULT NULL,
  `oqty` int(11) DEFAULT NULL,
  `ostatus` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otype` varchar(50) DEFAULT NULL,
  `datepickup` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblorders` (`id`, `cname`, `address`, `contact`, `cnpoid`, `oqty`, `ostatus`, `timestamp`, `otype`, `datepickup`) VALUES
(10, 'AA', 'ABC', '1234567890', 4, 1, 'new', '2024-09-04 20:39:46', 'Pick-up', '2024-09-04'),
(11, 'BB', 'ABC', '1234567890', 3, 3, 'new', '2024-09-04 20:39:46', 'Pick-up', '2024-09-04'),
(12, 'CC', 'ABC', '1234567890', 5, 3, 'new', '2024-09-04 20:39:46', 'Pick-up', '2024-09-04'),
(13, 'DD', 'ABC', '1234567890', 5, 4, 'new', '2024-09-04 20:39:46', 'Pick-up', '2024-09-04');


ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcnp`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tblcnp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

