-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 07:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'aman05382@gmail.com', 'Aman1234');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `ID` int(11) NOT NULL,
  `REGISTRATION-ID` varchar(255) NOT NULL,
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

INSERT INTO `participants` (`ID`, `REGISTRATION-ID`, `FIRST-NAME`, `LAST-NAME`, `EMAIL`, `PHONE`, `ID-CARD`, `REGISTRATION-TYPE`, `NO_OF_TICKETS`, `DATE`, `TIME`) VALUES
(22, '', 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'README.md', 'self', '1', '2020-05-15', '23:34:49'),
(23, '', 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'index.html', 'corporate', '10', '2020-05-15', '23:37:02'),
(24, '', 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'index.html', 'others', '9', '2020-05-15', '23:37:26'),
(25, '', 'Aman', 'sharma', 'aman05382@gmail.com', '9172322652', 'index.html', 'group', '6', '2020-05-15', '23:37:53'),
(26, '', 'fgfgf', '', '', '', '', '', '1', '2020-05-16', '00:06:23'),
(27, '', '', '', '', '', '', '', '1', '2020-05-16', '00:49:46'),
(28, 'ROSHAN-1743648025', 'Aman', 'sharma', 'rohitramteke15399@gmail.com', '9172322652', 'SPARK SQL.docx', 'Group', '1', '2020-06-04', '16:06:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
