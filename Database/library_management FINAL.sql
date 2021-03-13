-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 07:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `book_author` varchar(20) NOT NULL,
  `book_edition` varchar(20) NOT NULL,
  `book_publisher` varchar(20) NOT NULL,
  `book_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `book_author`, `book_edition`, `book_publisher`, `book_status`) VALUES
(1, 'Chirakodinja kinavuk', 'jobin', '1', 'anganennum illa', 1),
(3, 'charithram', 'jobin', '3', 'vaiga', 0),
(4, 'hacking', 'hacker', '45', 'auto generated', 0),
(5, 'sathyam', 'njan', '34', 'kgf', 1),
(6, 'thoolika', 'nadodi', '12', 'audiotion', 0),
(7, 'loham', 'mammmotty', '4', 'mohanlal', 0),
(8, 'loham', 'mammmotty', '4', 'mohanlal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

CREATE TABLE `book_issue` (
  `book_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `issue_date` varchar(20) NOT NULL,
  `return_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`book_id`, `user_name`, `issue_date`, `return_date`, `status`, `no`) VALUES
(1, 'hacker', '1/1/1', '2/2/2', 0, 10),
(4, 'hacker', '2/2/2', '4/4/4', 0, 11),
(1, 'hacker', '3/3/3', '5/5/5', 0, 12),
(1, 'hacker', '12/13/12', '', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_approve`
--

CREATE TABLE `user_approve` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `pid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_approve`
--

INSERT INTO `user_approve` (`name`, `email`, `mobile`, `user`, `pwd`, `pid`) VALUES
('hnghjgh', 'jobinjofficial@gmail', '1111111111', 'dark', 'admin', '454');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`name`, `email`, `mobile`, `user`) VALUES
('sdsd', 'jobinjofficial@gmail', 'er', 'admin3'),
('fgh', 'jobinjofficial@gmail', 'er', 'admin5'),
('jhj', 'jobinjofficial@gmail', '1111111', 'admin6'),
('fgh', 'jobinjofficial@gmail', 'admin1', 'fgh'),
('fghd', 'jobinjofficial@gmail', 'admin2', 'fghd'),
('hacker', 'hacker@gmail.com', '1234567890', 'hacker'),
('karthik', 'jobinjofficial@gmail', '1111111111', 'karthik'),
('sdsd', 'jobinjofficial@gmail', 'admin3', 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_passid` varchar(20) NOT NULL,
  `user_athorization` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_password`, `user_passid`, `user_athorization`) VALUES
('', '', '', '1001'),
('admin', 'admin', 'admin', '0110'),
('admin3', 'admin', 'sd', '1001'),
('admin5', 'admin', 'd', '1001'),
('admin6', 'admin', 'g', '1001'),
('fgh', 'admin', 'd', '1001'),
('fghd', 'admin', '123', '1001'),
('hacker', 'hacker', 'hacker', '1001'),
('jobin', 'jobin', 'jobin', '1001'),
('karthik', 'karthik', 'karthik', '1001'),
('sdsd', 'admin', 'sd', '1001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_issue`
--
ALTER TABLE `book_issue`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user_approve`
--
ALTER TABLE `user_approve`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book_issue`
--
ALTER TABLE `book_issue`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
