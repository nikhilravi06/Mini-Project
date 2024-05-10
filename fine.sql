-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 02:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fine`
--

-- --------------------------------------------------------

--
-- Table structure for table `challan`
--

CREATE TABLE `challan` (
  `cid` int(11) NOT NULL,
  `challan_no` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cor`
--

CREATE TABLE `cor` (
  `corid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issuechallen`
--

CREATE TABLE `issuechallen` (
  `challan_no` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `lisc_no` varchar(10) NOT NULL,
  `place` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` time(6) NOT NULL,
  `rule` varchar(10) NOT NULL,
  `vehicleno` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuechallen`
--

INSERT INTO `issuechallen` (`challan_no`, `name`, `lisc_no`, `place`, `date`, `time`, `rule`, `vehicleno`, `amount`, `status`) VALUES
(1, 'Joshuvaal', 'KL10', 'MknrPO', '2001/12/21', '12:24:00.000000', 'Seat Belt', '200', 1230, 2),
(2, 'Pauljo', 'KL201', 'Goa', '2001/12/12', '12:12:00.000000', 'SeatBelt', '123', 5000, 2),
(3, 'Paul', 'KL201', 'Goa', '2001/12/12', '12:12:00.000000', 'SeatBelt', '123', 5000, 2),
(4, 'Joshual', 'KL10', 'Mknr', '2001/12/21', '12:24:00.000000', 'Seat Belt', '200', 1000, 2),
(5, 'Joshual', 'KL10', 'dgahjadfh', '2001/12/21', '12:24:00.000000', 'Seat Belt', '20', 1000, 2),
(6, 'Joshual', 'KL10', 'ekm', '2001/12/21', '12:24:00.000000', 'Seat Belt', '20', 10001, 3),
(7, 'Joyal', '2009', 'Koratty', '2001/12/21', '12:15:00.000000', 'Helmet', 'KL05', 149, 3),
(8, 'job', '888', 'njlkr', '2001/12/14', '12:10:00.000000', 'Helmet', '1234', 160, 3),
(9, 'ALEX', '100', 'MKNR', '2021/12/12', '03:15:00.000000', 'Over speed', 'KL05', 150, 2),
(10, 'Aswath', 'AS123', 'Kochi', '12-01-2022', '12:34:00.000000', 'No Helmet', '123466', 60000, 3),
(11, 'Annwin', 'KL101', 'Karayamapa', '12-01-2020', '12:31:00.000000', 'No Helmet', '12341', 6000, 3),
(12, 'Joshual', 'KL010', 'Krkty', '12-1-2001', '12:56:00.000000', 'No Helmet', 'KL100', 100, 2),
(13, 'Joyal', 'LK100', 'Goa', '2023-02-02', '12:15:00.000000', 'Over speed', 'KL057072', 16000, 3),
(14, 'Megu', 'LK101', 'Goa', '2023-02-04', '03:15:00.000000', 'SeatBelt', 'KL057074', 15000, 3),
(15, 'Emil', 'LK10123', 'Goa', '2023-02-03', '03:15:00.000000', 'Helmet', 'KL05AC7072', 14999, 3),
(16, 'Nevin', 'KL0192', 'Kochi', '2023-02-10', '12:20:00.000000', 'No Helmet', 'KL01AC2001', 15000, 3),
(17, 'Nevin', 'KL0192', 'Kochi', '2023-02-11', '12:20:00.000000', 'No Helmet', 'KL01AC2001', 12300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `rid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cpassword` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`rid`, `fname`, `lname`, `email`, `phone`, `password`, `cpassword`, `status`) VALUES
(5, 'paul', 'joeee', 'paul@gmail.com', '1234567890', '123', '', 1),
(6, 'Paul', 'Tom', 'puul@rtr.com', '1234567800', '123', '', 1),
(7, 'Joe', 'job', 'puuul@rtr.com', '0987654321', '123', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challan`
--
ALTER TABLE `challan`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`corid`);

--
-- Indexes for table `issuechallen`
--
ALTER TABLE `issuechallen`
  ADD PRIMARY KEY (`challan_no`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challan`
--
ALTER TABLE `challan`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cor`
--
ALTER TABLE `cor`
  MODIFY `corid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuechallen`
--
ALTER TABLE `issuechallen`
  MODIFY `challan_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
