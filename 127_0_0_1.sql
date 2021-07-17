-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 07:44 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `hotelmanagement`
--
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=93 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'practice', 'sdata', 'name', '', '', '_', ''),
(2, 'practice', 'sdata', 'phone', '', '', '_', ''),
(76, 'restaurant', 'ordertable', 'date', '', '', '_', ''),
(77, 'restaurant', 'ordertable', 'gst', '', '', '_', ''),
(75, 'restaurant', 'bookingtable', 'date', '', '', '_', ''),
(67, 'restaurant', 'ordertable', 'mealtype', '', '', '_', ''),
(61, 'restaurant', 'bookingtable', 'customerid', '', '', '_', ''),
(59, 'restaurant', 'bookingtable', 'name', '', '', '_', ''),
(57, 'restaurant', 'ttable', 'status', '', '', '_', ''),
(58, 'restaurant', 'ttable', 'type', '', '', '_', ''),
(62, 'restaurant', 'bookingtable', 'tablenumber', '', '', '_', ''),
(63, 'restaurant', 'ordertable', 'customerid', '', '', '_', ''),
(64, 'restaurant', 'ordertable', 'name', '', '', '_', ''),
(65, 'restaurant', 'ordertable', 'billnumber', '', '', '_', ''),
(66, 'restaurant', 'ordertable', 'meal', '', '', '_', ''),
(36, 'restaurant', 'logintable', 'username', '', '', '_', ''),
(71, 'restaurant', 'ordertable', 'netbill', '', '', '_', ''),
(72, 'restaurant', 'ordertable', 'paid', '', '', '_', ''),
(73, 'restaurant', 'ordertable', 'tablenumber', '', '', '_', ''),
(74, 'restaurant', 'ordertable', 'price', '', '', '_', ''),
(69, 'restaurant', 'ordertable', 'quantity', '', '', '_', ''),
(70, 'restaurant', 'ordertable', 'tcost', '', '', '_', ''),
(68, 'restaurant', 'ordertable', 'dish', '', '', '_', ''),
(37, 'restaurant', 'logintable', 'password', '', '', '_', ''),
(38, 'restaurant', 'logintable', 'usertype', '', '', '_', ''),
(81, 'restaurant', 'dishtable', 'dish', '', '', '_', ''),
(60, 'restaurant', 'bookingtable', 'phone', '', '', '_', ''),
(41, 'restaurant', 'mealtable', 'meal', '', '', '_', ''),
(42, 'restaurant', 'dishtable', 'meal', '', '', '_', ''),
(43, 'restaurant', 'dishtable', 'mealtype', '', '', '_', ''),
(56, 'restaurant', 'ttable', 'tablenumber', '', '', '_', ''),
(46, 'restaurant', 'dishtable', 'price', '', '', '_', ''),
(48, 'restaurant', 'mealtypetable', 'mealtype', '', '', '_', ''),
(82, 'restaurant', 'dishtable', 'id', '', '', '_', ''),
(79, 'restaurant', 'ordertable', 'total', '', '', '_', ''),
(83, 'restaurant', 'employeetable', 'name', '', '', '_', ''),
(84, 'restaurant', 'employeetable', 'phone', '', '', '_', ''),
(85, 'restaurant', 'employeetable', 'dob', '', '', '_', ''),
(86, 'restaurant', 'employeetable', 'address', '', '', '_', ''),
(87, 'restaurant', 'employeetable', 'gender', '', '', '_', ''),
(88, 'restaurant', 'employeetable', 'post', '', '', '_', ''),
(89, 'restaurant', 'employeetable', 'salary', '', '', '_', ''),
(90, 'restaurant', 'employeetable', 'image', '', '', '_', ''),
(92, 'restaurant', 'logintable', 'name', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"restaurant","table":"logintable"},{"db":"restaurant","table":"employeetable"},{"db":"restaurant","table":"bookingtable"},{"db":"restaurant","table":"ordertable"},{"db":"restaurant","table":"dishtable"},{"db":"restaurant","table":"mealtypetable"},{"db":"restaurant","table":"ttable"},{"db":"restaurant","table":"mealtable"},{"db":"restaurant","table":"table"},{"db":"hotelmanagement","table":"logintable"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'restaurant', 'bookingtable', '{"sorted_col":"`bookingtable`.`tablenumber` DESC"}', '2017-09-01 15:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-07-01 07:12:05', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `sdata`
--

CREATE TABLE IF NOT EXISTS `sdata` (
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `restaurant`
--

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
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
