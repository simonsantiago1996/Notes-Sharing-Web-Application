-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 04, 2019 at 05:48 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(59, 'willusantaigo', 'Code nicely', 'pdf', 'willusantiago', '2019-09-04 15:34:57', 'Computer Science', '473092.pdf', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$UExd.f8vQXogrZELXF8KGulQJKUn32p8x4B5SVQ7V/D6.mrSAkAjW', 'Computer Science', 'profile.jpg', '2000-01-01'),
(28, 'simon', 'SIMON SANTIAGO', 'N/A', 'student', 'simonsantiago1996@gmail.com', '619a9df27352d3fc69ee5651a0a0d69d', 'Male', '$2y$10$I5O9f7/oc0qq/9iyekniL.fqGAlkAAwMa.WAYjMyJPfdAHOXGLuhq', 'Computer Science', 'profile.jpg', 'September 3, 2019'),
(29, 'simon', 'SIMON SANTIAGO', 'N/A', 'teacher', 'simonsantiago19961@gmail.com', '', 'Male', '$2y$10$HERANddrLqCMUB2fNWgsTOwb1NDoy4f8lGcQFAyQRtVc2AwHj5zPC', 'Computer Science', 'profile.jpg', 'September 3, 2019'),
(31, 'willusantiago', 'SIMON SANTIAGO', 'N/A', 'student', 'willusantiago@gmail.com', '', 'Male', '$2y$10$qq55VUl1OciD1hjPVyupC.8QLNET2TghsttPw8h7TIIYJ8Q07nBtm', 'Computer Science', 'profile.jpg', 'September 4, 2019');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
