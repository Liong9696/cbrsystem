-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 03:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphpsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(20) NOT NULL,
  `contact_name` varchar(256) NOT NULL,
  `contact_email` varchar(256) NOT NULL,
  `contact_phone` char(20) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`, `contact_date`) VALUES
(1, 'customer 2', 'mail3@gmail.com', '0167673055', 'I have some issue cannot settle.', '2020-06-14 21:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `p_id` int(20) NOT NULL,
  `p_title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`p_id`, `p_title`) VALUES
(1, 'Internet connection problem'),
(2, 'Internet connection issue'),
(4, 'Internet connection problem'),
(5, 'No internet access');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `searchID` int(20) NOT NULL,
  `searchTitle` varchar(256) NOT NULL,
  `searchDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`searchID`, `searchTitle`, `searchDate`) VALUES
(1, 'Internet connection problem', '2020-06-08 00:43:58'),
(2, 'Internet connection problem', '2020-06-08 10:39:38'),
(3, 'No internet access', '2020-06-08 10:39:48'),
(4, 'Internet connection problem', '2020-06-08 15:22:45'),
(5, 'Internet connection problem', '2020-06-08 15:23:09'),
(6, 'Internet connection issue', '2020-06-08 15:23:18'),
(7, 'No internet access', '2020-06-08 15:38:38'),
(8, 'Internet connection problem', '2020-06-08 22:28:05'),
(13, 'Internet connection problem', '2020-06-09 21:16:01'),
(14, 'Internet connection issue', '2020-06-09 21:16:05'),
(15, 'Internet connection problem', '2020-06-09 21:50:52'),
(16, 'internet connection problem', '2020-06-09 21:52:29'),
(17, 'No internet access', '2020-06-09 21:53:28'),
(18, 'internet connection problem', '2020-06-09 21:57:14'),
(19, 'No internet access', '2020-06-09 21:57:43'),
(22, 'No internet access', '2020-06-09 22:08:38'),
(31, 'Internet connection problem', '2020-06-14 15:52:01'),
(40, 'Internet connection problem', '2020-06-14 16:07:20'),
(42, 'Internet connection problem', '2020-06-14 16:08:27'),
(49, 'Internet connection problem', '2020-06-14 16:11:40'),
(50, 'Internet connection problem', '2020-06-14 16:11:59'),
(51, 'Internet connection problem', '2020-06-14 16:12:06'),
(52, 'Internet connection problem', '2020-06-14 16:12:36'),
(53, 'No internet access', '2020-06-14 16:24:20'),
(54, 'Internet connection issue', '2020-06-14 16:28:29'),
(55, 'Internet connection problem', '2020-06-14 16:30:16'),
(56, 'Internet connection issue', '2020-06-14 16:31:10'),
(57, 'Internet connection issue', '2020-06-14 16:39:08'),
(58, 'Internet connection issue', '2020-06-14 16:39:13'),
(59, 'Internet connection problem', '2020-06-14 16:45:53'),
(60, 'Internet connection issue', '2020-06-14 16:46:56'),
(68, 'No internet access', '2020-06-14 17:19:13'),
(78, 'No internet access', '2020-06-14 17:26:52'),
(79, 'No internet access', '2020-06-14 17:27:35'),
(83, 'Internet connection issue', '2020-06-14 17:40:26'),
(84, 'Internet connection issue', '2020-06-14 17:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `s_id` int(20) NOT NULL,
  `p_title` varchar(256) NOT NULL,
  `s_text` text NOT NULL,
  `s_text1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`s_id`, `p_title`, `s_text`, `s_text1`) VALUES
(1, 'Internet connection problem', 'Check the wired settings:\r\n', 'If you\'re connected via CAT5 or CAT6 network cables, you should check the cables to ensure that they aren\'t unplugged or damaged.'),
(2, 'Internet connection issue', 'Reset the router:', 'If instructed by the network troubleshooter (or if you\'ve completed the steps above) you\'ll need to ensure that the problem isn\'t with your router.'),
(4, 'Internet connection problem', 'Check your network connection:', 'If you are not getting an internet connection on only one device, like your phone or your laptop, but you are getting an internet connection on others, check your Wi-Fi connection. If you are connected to a network, but you still do not have internet, it is time check your computers Network via the System Preferences -> Network (on a Mac) or Right-click on the Network Icon -> select Trouble Shooting to run a diagnostic check (on a PC).'),
(5, 'No internet access', 'Check the cables connection:', 'Check the connections at both ends of all the wires. This may sound silly, but things get pulled or simply break. Check the connection to the cable jack or phone line as well as the CAT5 or CAT6 network cables between the modem and/or router as well as the computers.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`searchID`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `p_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `searchID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `solution`
--
ALTER TABLE `solution`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
