-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 09:51 AM
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
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `whatsapp` bigint(12) DEFAULT NULL,
  `pincode` varchar(11) DEFAULT NULL,
  `aadharnumber` bigint(12) DEFAULT NULL,
  `pan_number` varchar(255) NOT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `aadharfront` varchar(255) DEFAULT NULL,
  `aadharback` varchar(255) DEFAULT NULL,
  `pancard` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `dob`, `country`, `district`, `whatsapp`, `pincode`, `aadharnumber`, `pan_number`, `Gender`, `fathername`, `profession`, `state`, `Address`, `email`, `profile`, `aadharfront`, `aadharback`, `pancard`) VALUES
(16, 'Rahul Singh', '2023-08-14', 'India', 'kjqbdkqwd', 95656568566, '4564', 543765965686, '', NULL, 'fyfgyydwe', 'sfwfwe', 'hgch', 'qdvqwghdwq', 'rahul@gmail', '1692008880_finallogo.png', '1692008880_akvbg2.jpg', '1692008880_akvbg3.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
