-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2014 at 03:59 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pickinglist`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `allowed` varchar(255) NOT NULL,
  `iconCls` varchar(255) NOT NULL,
  `type` enum('dialog','messager','tabs','window') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Admin Menu' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parentId`, `uri`, `allowed`, `iconCls`, `type`) VALUES
(1, 'Master', 0, '', '+1+2+', 'icon-master', ''),
(2, 'Transaksi', 0, '', '+1+2+', 'icon-transaksi', ''),
(3, 'Report', 0, '', '+1+2+', 'icon-print', ''),
(4, 'Admin', 0, '', '+1+', 'icon-admin', ''),
(5, 'Setting', 0, '', '+1+2+', 'icon-setup', ''),
(6, 'Admin User', 4, 'admin/user', '+1+', 'icon-user', 'tabs'),
(7, 'Admin Menu', 4, 'admin/menu', '+1+', 'icon-menu', 'tabs'),
(8, 'General', 5, '', '+1+2+', 'icon-general', 'dialog'),
(9, 'Number Sequence', 5, 'setting/number_sequence', '+1+2+', 'icon-sequence', 'tabs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `level` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Master User' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `level`) VALUES
(1, 'Agus Setiawan', 'agus', 'c4ca4238a0b923820dcc509a6f75849b', '+1+'),
(2, 'Yulianah Karta Wijaya', 'yuli', 'c4ca4238a0b923820dcc509a6f75849b', '+2+');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
