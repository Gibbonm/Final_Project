-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2016 at 05:39 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order number` int(30) NOT NULL,
  `Quantity` int(30) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `cost` int(30) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `total` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`order number`, `Quantity`, `item_name`, `cost`, `subtotal`, `total`) VALUES
(55, 1, 'Deep Tissue Massage', 50, 50, 300),
(56, 1, 'Swedish Massage', 50, 50, 300),
(57, 1, 'Aromatherapy', 50, 50, 300),
(58, 1, 'Physical Therapy', 50, 50, 300),
(59, 1, 'Dry Needling', 50, 50, 300),
(60, 1, 'Sports Injuries', 50, 50, 300),
(61, 1, 'Deep Tissue Massage', 50, 50, 300),
(62, 1, 'Swedish Massage', 50, 50, 300),
(63, 1, 'Aromatherapy', 50, 50, 300),
(64, 1, 'Physical Therapy', 50, 50, 300),
(65, 1, 'Dry Needling', 50, 50, 300),
(66, 1, 'Sports Injuries', 50, 50, 300);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(6) UNSIGNED NOT NULL,
  `sender_name` varchar(30) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `send_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender_name`, `sender_email`, `message`, `send_date`) VALUES
(1, 'angela', 'angelacahir@gmail.com', 'hi how are you ', '2016-11-19 14:11:00'),
(2, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:09:24'),
(3, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:13:14'),
(4, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:13:38'),
(5, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:15:50'),
(6, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:17:52'),
(7, 'martin', 'martin@gmail.com', 'hi how are you', '2016-11-19 20:18:12'),
(8, 'kbljhbjhbjhb', 'ht@examplr.com', 'kblbjhbjhbjhbjhb', '2016-12-14 12:18:03'),
(9, 'kbljhbjhbjhb', 'ht@examplr.com', 'kblbjhbjhbjhbjhb', '2016-12-14 12:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `join_date`) VALUES
(1, 'gibbonnm', '$2y$10$84foEDa9f/U5iizqxoUQh.0o7t6JZQAaKd33JxTvl6bWvxrYDWARO', 'gibbonm@gmail.com', '2016-11-19 13:01:58'),
(5, 'martin', '$2y$10$BKHa9Kzkjsbg/dsQWilhLedbmMnjmhmGHQ.Gtb3TEFldtpJgDnpo2', 'martin@gmail.com', '2016-11-19 20:03:19'),
(6, 'test', '$2y$10$KFPbG3NxZpgqs1zqgJd6KunOLonUClW7T9Ymdt1U2YcS1yjp/mW9C', 'test@example.com', '2016-12-10 15:17:40'),
(8, 'gibbonm', '$2y$10$F32JVeGMjJhYQSMhaRABs.01ngXv1Eae.Ize3.pslaL0Z6peEQcK6', 'gibbonm@yahoo.com', '2016-12-15 16:37:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order number`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order number` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
