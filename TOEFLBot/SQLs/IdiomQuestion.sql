-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 12:04 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `annotator`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `idiomQuestion_all` ()  BEGIN
Select * From IdiomQuestion;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `IdiomQuestion` (
  `id` bigint(20) NOT NULL,
  `iid` bigint(20) NOT NULL,
  `ques` varchar(30) DEFAULT NULL,
  `a1` varchar(30) DEFAULT NULL,
  `a2` varchar(30) DEFAULT NULL,
  `a3` varchar(30) DEFAULT NULL,
  `a4` varchar(30) DEFAULT NULL,
  `ans` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Question`
--
ALTER TABLE `IdiomQuestion`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`iid`) REFERENCES `Idiom`(`id`),
  ADD UNIQUE KEY `ques_UNIQUE` (`ques`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
