-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2019 at 11:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fenixemployee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fenixemployee`
--

DROP TABLE IF EXISTS `fenixemployee`;
CREATE TABLE IF NOT EXISTS `fenixemployee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(20) NOT NULL,
  `start_date` date NOT NULL,
  `months` int(50) NOT NULL,
  `seniority_level` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `points` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fenixemployee`
--

INSERT INTO `fenixemployee` (`id`, `employee_id`, `start_date`, `months`, `seniority_level`, `role`, `points`) VALUES
(1, 23, '2019-02-10', 3, 'B', 'Mnager', 10),
(2, 2, '2018-09-02', 8, 'B', 'Employee', 10),
(3, 2, '2019-04-02', 1, 'D', 'Manager', 20),
(4, 1, '2018-11-23', 6, 'D', 'Employee', 20),
(5, 1, '2019-01-02', 4, 'E', 'Finance', 25),
(6, 3, '2019-05-01', 0, 'A', 'Employee', 5),
(7, 4, '2018-12-12', 5, 'B', 'Employee', 10),
(8, 10, '2018-11-01', 6, 'C', 'Employee', 15),
(9, 10, '2019-04-23', 1, 'E', 'Finance', 25),
(10, 4, '2018-12-01', 5, 'D', 'Employee', 20),
(11, 3, '2019-03-04', 2, 'B', 'Employee', 10),
(12, 12, '2018-09-04', 8, 'E', 'Manager', 25),
(13, 4, '2019-03-05', 2, 'B', 'Employee', 10);

-- --------------------------------------------------------

--
-- Table structure for table `redeemrequest`
--

DROP TABLE IF EXISTS `redeemrequest`;
CREATE TABLE IF NOT EXISTS `redeemrequest` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `employee_id` int(20) NOT NULL,
  `redeem_request` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redeemrequest`
--

INSERT INTO `redeemrequest` (`id`, `employee_id`, `redeem_request`, `status`) VALUES
(11, 1, 'Gym Membership', 'Approved'),
(10, 4445, 'Extra PTO Days', 'Pending'),
(9, 5, 'Gym Membership', 'Pending'),
(8, 2, 'Gym Membership', 'Approved'),
(7, 1, 'Extra PTO Days', 'Pending'),
(6, 11, 'Gym Membership', 'Pending'),
(12, 3, 'Extra PTO Days', 'Approved');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
