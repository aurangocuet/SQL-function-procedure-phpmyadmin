-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2019 at 08:12 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getResult` ()  NO SQL
SELECT * FROM user$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getResultWithInput` (IN `sid` INT)  NO SQL
SELECT * FROM user WHERE id=sid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getResultWithInputMultipleOutput` (IN `sid` INT, OUT `sname` VARCHAR(100), OUT `sdept` VARCHAR(100))  NO SQL
SELECT name,dept INTO sname,sdept FROM user WHERE id=sid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getResultWithInputOutput` (IN `sid` INT, OUT `sname` VARCHAR(100))  NO SQL
SELECT name INTO sname FROM user WHERE id=sid$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getUserCountWithFunction` () RETURNS INT(11) NO SQL
RETURN(SELECT COUNT(*) AS user_count FROM user)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `dept`) VALUES
(1, 'sab1', 'cse'),
(2, 'sab1', 'eee'),
(3, 'sab2', 'cse'),
(4, 'sab3', 'eee'),
(5, 'sab4', 'cse'),
(6, 'sab5', 'eee'),
(7, 'sab6', 'cse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
