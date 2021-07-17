-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 07:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE IF NOT EXISTS `bookingtable` (
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `customerid` int(100) NOT NULL AUTO_INCREMENT,
  `tablenumber` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`name`, `phone`, `customerid`, `tablenumber`, `date`) VALUES
('Paarth', '+91-3333333333', 14, '1,103,102,202', '2017-08-27'),
('Simar', '+91-4444444444', 15, '3,104', '2017-08-27'),
('paarth', '+91-3333333333', 16, '101,105', '2017-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `dishtable`
--

CREATE TABLE IF NOT EXISTS `dishtable` (
  `meal` varchar(100) NOT NULL,
  `mealtype` varchar(100) NOT NULL,
  `dish` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `meal` (`meal`,`mealtype`),
  KEY `mealtype` (`mealtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dishtable`
--

INSERT INTO `dishtable` (`meal`, `mealtype`, `dish`, `price`, `id`) VALUES
('Breakfast', 'Buffet', 'BreakFast Thali', '500', 1),
('Dinner', 'Drinks', 'Cold Coffee', '250', 2),
('Dinner', 'Drinks', 'Blueberry Shake', '250', 3),
('Dinner', 'Drinks', 'Hot Chocolate With Choco Chips', '300', 4),
('Dinner', 'Starter', 'Crispy Veg', '300', 5),
('Dinner', 'Starter', 'Honey Chilli Potato', '350', 6),
('Dinner', 'Starter', 'Manchurian(Dry)', '400', 7),
('Dinner', 'Starter', 'Veg Bullets(12 pcs)', '400', 8),
('Dinner', 'Starter', 'American Choupsey', '400', 9),
('Dinner', 'Starter', 'French Fries', '300', 10),
('Dinner', 'Dessert', 'Chocolate Fudge With Raspberry Sauce', '500', 11),
('Dinner', 'Dessert', 'Chocolate Pan', '80', 12),
('Dinner', 'Dessert', 'Cream Cheese Cake', '400', 13),
('Dinner', 'Dessert', 'Jalebi with Rabri', '600', 14);

-- --------------------------------------------------------

--
-- Table structure for table `employeetable`
--

CREATE TABLE IF NOT EXISTS `employeetable` (
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(400) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeetable`
--

INSERT INTO `employeetable` (`name`, `phone`, `dob`, `address`, `gender`, `post`, `salary`, `image`) VALUES
('prth', '255542', '2017-09-01', 'ppppppppp', 'Male', 'Waiter', '50000', '1504903181382Car-Engine-1.jpg'),
('paarth', '55542', '2017-09-01', 'ppppppppp', 'Female', 'Waiter', '50000', '1504903181382Car-Engine-1.jpg'),
('Simarjot', '555555555', '2017-09-01', 'ppppppppp', 'Male', 'Manager', '50000', '1504300957780@daska_in_pakistan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE IF NOT EXISTS `logintable` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`name`, `username`, `password`, `usertype`) VALUES
('Abhinav', 'abhi', '123', 'Admin'),
('Simarjot--Manager', 'sonu', '123', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `mealtable`
--

CREATE TABLE IF NOT EXISTS `mealtable` (
  `meal` varchar(100) NOT NULL,
  PRIMARY KEY (`meal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealtable`
--

INSERT INTO `mealtable` (`meal`) VALUES
('Breakfast'),
('Dinner'),
('Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `mealtypetable`
--

CREATE TABLE IF NOT EXISTS `mealtypetable` (
  `mealtype` varchar(200) NOT NULL,
  PRIMARY KEY (`mealtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealtypetable`
--

INSERT INTO `mealtypetable` (`mealtype`) VALUES
('Buffet'),
('Dessert'),
('Drinks'),
('Main Course'),
('Starter');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE IF NOT EXISTS `ordertable` (
  `customerid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tablenumber` varchar(200) NOT NULL,
  `billnumber` varchar(100) NOT NULL,
  `meal` varchar(100) NOT NULL,
  `mealtype` varchar(100) NOT NULL,
  `dish` varchar(400) NOT NULL,
  `price` varchar(400) NOT NULL,
  `quantity` varchar(400) NOT NULL,
  `tcost` varchar(400) NOT NULL,
  `netbill` varchar(100) NOT NULL,
  `gst` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`billnumber`),
  KEY `customerid` (`customerid`,`name`),
  KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`customerid`, `name`, `tablenumber`, `billnumber`, `meal`, `mealtype`, `dish`, `price`, `quantity`, `tcost`, `netbill`, `gst`, `total`, `paid`, `date`) VALUES
(15, 'Simar', '3,10', '1001', 'Dinner', 'Dessert,Dessert,Starter,Starter,Starter', 'Chocolate Fudge With Raspberry Sauce,Cream Cheese Cake,Crispy Veg,Honey Chilli Potato,Veg Bullets(12 pcs)', '500,400,300,350,400', '2,5,2,3,3', '1000,2000,600,1050,1200', '5850.0', '1053.0', '6903.0', 'YES', '2017-08-27'),
(16, 'paarth', '101,10', '1002', 'Dinner', 'Dessert,Dessert', 'Chocolate Fudge With Raspberry Sauce,Cream Cheese Cake', '500,400', '20,20', '10000,8000', '18000.0', '3240.0', '21240.0', 'YES', '2017-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `ttable`
--

CREATE TABLE IF NOT EXISTS `ttable` (
  `tablenumber` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `type` int(100) NOT NULL,
  PRIMARY KEY (`tablenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttable`
--

INSERT INTO `ttable` (`tablenumber`, `status`, `type`) VALUES
('1', 'Booked', 2),
('101', 'Vacant', 4),
('102', 'Booked', 4),
('103', 'Booked', 4),
('104', 'Booked', 4),
('105', 'Booked', 4),
('106', 'Vacant', 4),
('2', 'Vacant', 2),
('201', 'Vacant', 8),
('202', 'Booked', 8),
('203', 'Vacant', 8),
('204', 'Vacant', 8),
('205', 'Vacant', 8),
('3', 'Vacant', 2),
('4', 'Vacant', 2),
('5', 'Vacant', 2),
('6', 'Vacant', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishtable`
--
ALTER TABLE `dishtable`
  ADD CONSTRAINT `mealconstraint` FOREIGN KEY (`meal`) REFERENCES `mealtable` (`meal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mealtypeconstraint` FOREIGN KEY (`mealtype`) REFERENCES `mealtypetable` (`mealtype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD CONSTRAINT `idconstarint` FOREIGN KEY (`customerid`) REFERENCES `bookingtable` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
