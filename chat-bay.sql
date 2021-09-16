-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 11:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat-bay`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `room_id`, `message`, `sender`) VALUES
(1, 1, 'General Text', 'Mike'),
(2, 1, 'General Text 2', 'John'),
(3, 1, 'send', 'Anonymous'),
(4, 1, 'send', 'Anonymous'),
(5, 1, 'text', 'Anonymous'),
(6, 1, 'Mike', 'Anonymous'),
(7, 1, 'alert(\"HI\");', 'Anonymous'),
(8, 1, 'wqd', 'Anonymous'),
(9, 1, 'wed', 'Anonymous'),
(10, 1, 'wed', 'Anonymous'),
(11, 1, 'wed', 'Anonymous'),
(12, 1, 'edwed', 'Anonymous'),
(13, 1, 'wedwed', 'Anonymous'),
(14, 1, 'qeqweqwe', 'Anonymous'),
(15, 1, 'd', 'Anonymous'),
(16, 1, 'csdfd', 'Anonymous'),
(17, 1, 'dsfsd', 'Anonymous'),
(18, 1, 'sdffsd', 'Anonymous'),
(19, 1, 'sdffsd', 'Anonymous'),
(20, 1, 'hi', 'Anonymous'),
(21, 1, 'wedwed', 'Anonymous'),
(22, 1, 'qweqwe', 'Anonymous'),
(23, 1, 'asdasdas', 'Anonymous'),
(24, 1, 'asdasd', 'Anonymous'),
(25, 1, 'tgrtgrtg', 'Anonymous'),
(26, 1, 'tgrtgrtg', 'Anonymous'),
(27, 1, 'tgrtgrtg', 'Anonymous'),
(28, 1, 'tgrtgrtg', 'Anonymous'),
(29, 1, 'tgrtgrtg', 'Anonymous'),
(30, 1, 'tgrtgrtg', 'Anonymous'),
(31, 1, 'tgrtgrtg', 'Anonymous'),
(32, 1, 'tgrtgrtg', 'Anonymous'),
(33, 1, 'tgrtgrtg', 'Anonymous'),
(34, 1, 'edwedwed', 'Anonymous'),
(35, 1, 'weffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferf', 'Anonymous'),
(36, 1, 'weffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferfweffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferf', 'Anonymous'),
(37, 1, 'weffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferfweffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferf', 'Anonymous'),
(38, 1, 'weffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferfweffjernjerfnerRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidRnvalidjferf', 'Anonymous'),
(39, 1, 'edwedw', 'Anonymous'),
(40, 1, 'a', 'Anonymous'),
(41, 1, 'scrdc', 'Anonymous'),
(42, 1, 'sacxdsc', 'Anonymous'),
(43, 1, 'ferf', 'Anonymous'),
(44, 1, 'adewded', 'Anonymous'),
(45, 1, 'edesd', 'Anonymous'),
(46, 1, 'edesd', 'Anonymous'),
(47, 1, 'edesd', 'Anonymous'),
(48, 1, 'qwdqwsqwdsqwd', 'Anonymous'),
(49, 1, 'cde', 'Anonymous'),
(50, 1, 'ead', 'Anonymous'),
(51, 2, 'hi', 'Anonymous'),
(52, 2, 'e', 'sdcsdc'),
(53, 2, 'Hi', 'sdcsdc'),
(54, 2, 'Hi', 'sdcsdc'),
(55, 2, 'Hi', 'sdcsdc'),
(56, 2, 'e', 'sdcsdc'),
(57, 2, 'alert(\"Hi\");', 'CodeMonkey'),
(58, 2, 'dqwdqwd', 'wqdqw'),
(59, 2, 'qwdqw', 'wqdqw'),
(60, 2, 'qdqwd', 'wqdqw'),
(61, 2, 'qdqwd', 'wqdqw'),
(62, 2, 'hi', 'wqdqw'),
(63, 2, 'desd', 'wqdqw'),
(64, 2, 'alert(\"dwedw\");', 'wqdqw');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `date_created`) VALUES
(1, 'General Chat', '2021-09-15 23:48:59'),
(2, 'Programing Chat', '2021-09-15 23:49:08'),
(3, 'News Chat', '2021-09-15 23:48:59'),
(4, 'Buy & Sell Chat', '2021-09-15 23:49:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
