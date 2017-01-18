-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2017 at 10:55 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(22) NOT NULL,
  `from_id` varchar(200) NOT NULL,
  `to_id` varchar(200) NOT NULL,
  `timestamp` varchar(200) NOT NULL,
  `con_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `from_id`, `to_id`, `timestamp`, `con_id`) VALUES
(1, '1', '2', '1484729119', 0),
(2, '1', '2', '1484729122', 0),
(3, '1', '2', '1484729141', 0),
(4, '2', '1', '1484729144', 0),
(5, '2', '1', '1484729159', 0),
(6, '1', '3', '1484732503', 1);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_reply`
--

CREATE TABLE `conversation_reply` (
  `id` int(255) NOT NULL,
  `reply` text NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `timestamp` varchar(500) NOT NULL,
  `con_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation_reply`
--

INSERT INTO `conversation_reply` (`id`, `reply`, `from_id`, `to_id`, `timestamp`, `con_id`) VALUES
(1, 'hello', 1, 2, '1484729119', 0),
(2, 'hello', 1, 2, '1484729122', 0),
(3, 'message aya', 1, 2, '1484729141', 0),
(4, 'kaam kr le', 2, 1, '1484729144', 0),
(5, 'vella saala', 2, 1, '1484729159', 0),
(6, 'hello\n', 1, 3, '1484732503', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(22) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `p_photo` varchar(200) NOT NULL,
  `timestamp` int(255) NOT NULL,
  `online` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `p_photo`, `timestamp`, `online`) VALUES
(1, 'karan', 'asp@net12345', '/uploads/1484728803456Untitled.png', 1484728803, 'N'),
(2, 'nishanttgarg.27@gmail.com', 'nishant', '/uploads/1484729110069dancing-cat-smiley-emoticon.gif', 1484729110, 'Y'),
(3, 'vipin', 'vipin12', '/uploads/1484729341495tiger.png', 1484729341, 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
