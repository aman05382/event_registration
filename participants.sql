-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 12:08 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `ID` int(11) NOT NULL,
  `FIRST-NAME` varchar(255) NOT NULL,
  `LAST-NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  `ID-CARD` varchar(255) NOT NULL,
  `REGISTRATION-TYPE` varchar(255) NOT NULL,
  `NO_OF_TICKETS` varchar(255) NOT NULL,
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `TIME` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`ID`, `FIRST-NAME`, `LAST-NAME`, `EMAIL`, `PHONE`, `ID-CARD`, `REGISTRATION-TYPE`, `NO_OF_TICKETS`, `DATE`, `TIME`) VALUES
(1, 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'Aman  Logo.jpg', 'others', '1', '2020-05-15', '13:47:11'),
(2, 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'Aman  Logo.jpg', 'group', '1', '2020-05-15', '13:51:54'),
(3, 'madhulata', 'sharma', 'aman05382@gmail.com', '9172322652', 'Aman  Logo.jpg', 'corporate', '10', '2020-05-15', '14:09:51'),
(7, 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'Aman  Logo.jpg', 'group', '2', '2020-05-15', '15:06:57'),
(8, 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'Aman  Logo.jpg', 'self', '1', '2020-05-15', '15:08:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
