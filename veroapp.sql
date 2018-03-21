-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 01:19 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veroapp`
--
CREATE DATABASE IF NOT EXISTS `veroapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `veroapp`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `countLikesComments`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `countLikesComments` (IN `pid` INT)  NO SQL
BEGIN
select COUNT(comments.commentId) as comments FROM posts,comments WHERE comments.postId=posts.postId AND posts.postId=pid;
SELECT COUNT(likes.likeId) as likes FROM likes,posts WHERE likes.postId=posts.postId and posts.postId=pid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `commentText` text NOT NULL,
  `userId` varchar(13) NOT NULL,
  `postId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `commentText`, `userId`, `postId`, `createdAt`, `modifiedAt`, `deletedAt`, `isDeleted`) VALUES
(1, 'good one', '916523874591', 1, '2018-03-05 14:15:19', '2018-03-05 14:15:19', '0000-00-00 00:00:00', 0),
(2, 'nice', '918154012696', 1, '2018-03-05 17:06:18', '2018-03-05 17:06:18', NULL, 0),
(3, 'omg this is really good..!!', '918154012696', 2, '2018-03-06 10:13:39', '2018-03-06 10:13:39', NULL, 0),
(4, 'Good', '918154012696', 1, '2018-03-06 10:18:21', '2018-03-06 10:18:21', NULL, 0),
(5, 'welcome to the this app', '911233211230', 6, '2018-03-13 12:13:30', '2018-03-13 12:13:30', NULL, 0),
(6, 'anotyher comesdfasdf', '911233211470', 6, '2018-03-14 13:47:19', '2018-03-14 13:47:19', NULL, 0),
(7, 'this is comment', '918238730884', 6, '2018-03-19 12:32:34', '2018-03-19 12:32:34', NULL, 0),
(8, 'undefined', '918154012696', 8, '2018-03-19 12:40:56', '2018-03-19 12:40:56', NULL, 0),
(9, 'undefined', '918154012696', 8, '2018-03-19 12:43:23', '2018-03-19 12:43:23', NULL, 0),
(10, 'undefined', '918154012696', 8, '2018-03-19 12:46:47', '2018-03-19 12:46:47', NULL, 0),
(11, 'this is comment', '918238730884', 6, '2018-03-19 12:48:06', '2018-03-19 12:48:06', NULL, 0),
(12, 'this is comment', '918238730884', 6, '2018-03-19 12:48:15', '2018-03-19 12:48:15', NULL, 0),
(13, 'this is comment', '918238730884', 8, '2018-03-19 12:49:04', '2018-03-19 12:49:04', NULL, 0),
(14, 'this is comment', '918238730884', 8, '2018-03-19 13:01:40', '2018-03-19 13:01:40', NULL, 0),
(15, 'Hello its nice image', '918154012696', 8, '2018-03-19 13:03:40', '2018-03-19 13:03:40', NULL, 0),
(16, 'Hello ', '918154012696', 8, '2018-03-19 13:03:50', '2018-03-19 13:03:50', NULL, 0),
(17, 'Yeh', '918154012696', 8, '2018-03-19 13:04:12', '2018-03-19 13:04:12', NULL, 0),
(18, 'this is comment', '918238730884', 8, '2018-03-19 13:04:17', '2018-03-19 13:04:17', NULL, 0),
(19, 'ya I know this is comment', '918154012696', 8, '2018-03-19 13:07:25', '2018-03-19 13:07:25', NULL, 0),
(20, '', '918154012696', 8, '2018-03-19 13:09:43', '2018-03-19 13:09:43', NULL, 0),
(21, 'Hello', '918154012696', 1, '2018-03-19 13:25:23', '2018-03-19 13:25:23', NULL, 0),
(22, 'Yeh', '918154012696', 7, '2018-03-19 13:27:35', '2018-03-19 13:27:35', NULL, 0),
(23, 'that’s nice', '918154012696', 7, '2018-03-19 13:29:20', '2018-03-19 13:29:20', NULL, 0),
(24, 'jhfgjfvhj', '918154012696', 1, '2018-03-19 14:21:09', '2018-03-19 14:21:09', NULL, 0),
(25, 'this is comment', '918238730884', 8, '2018-03-19 14:37:16', '2018-03-19 14:37:16', NULL, 0),
(26, '123', '918238730884', 6, '2018-03-19 15:38:48', '2018-03-19 15:38:48', NULL, 0),
(27, 'hello', '918238730884', 1, '2018-03-19 15:43:21', '2018-03-19 15:43:21', NULL, 0),
(28, 'kem cho', '918238730884', 1, '2018-03-19 15:44:11', '2018-03-19 15:44:11', NULL, 0),
(29, '123456', '918238730884', 1, '2018-03-19 15:44:34', '2018-03-19 15:44:34', NULL, 0),
(30, '14256397870', '918238730884', 1, '2018-03-19 15:44:49', '2018-03-19 15:44:49', NULL, 0),
(31, 'Hello everyone', '918154012696', 5, '2018-03-19 17:04:26', '2018-03-19 17:04:26', NULL, 0),
(32, 'Nice pic of nature', '916523874591', 4, '2018-03-19 17:17:53', '2018-03-19 17:17:53', NULL, 0),
(33, 'nice click', '916523874591', 4, '2018-03-19 17:19:32', '2018-03-19 17:19:32', NULL, 0),
(35, 'Hello', '916523874591', 5, '2018-03-19 17:24:18', '2018-03-19 17:24:18', NULL, 0),
(36, 'hello', '916523874591', 1, '2018-03-19 17:35:34', '2018-03-19 17:35:34', NULL, 0),
(37, '1234567890', '916523874591', 1, '2018-03-19 17:36:48', '2018-03-19 17:36:48', NULL, 0),
(38, 'fgsd', '918238730884', 8, '2018-03-20 10:39:48', '2018-03-20 10:39:48', NULL, 0),
(39, 'sfdg', '918238730884', 8, '2018-03-20 10:39:57', '2018-03-20 10:39:57', NULL, 0),
(40, 'hii', '918238730884', 1, '2018-03-20 11:42:44', '2018-03-20 11:42:44', NULL, 0),
(41, 'hiii', '918238730884', 1, '2018-03-20 11:42:55', '2018-03-20 11:42:55', NULL, 0),
(42, 'It’s nice', '918154012696', 20, '2018-03-20 15:58:10', '2018-03-20 15:58:10', NULL, 0),
(43, 'new comment for this post ', '916523874591', 8, '2018-03-21 17:25:55', '2018-03-21 17:25:55', NULL, 0),
(53, 'hello', '916523874591', 2, '2018-03-21 17:30:17', '2018-03-21 17:30:17', NULL, 0);

--
-- Triggers `comments`
--
DROP TRIGGER IF EXISTS `countPostComment`;
DELIMITER $$
CREATE TRIGGER `countPostComment` BEFORE INSERT ON `comments` FOR EACH ROW update posts SET posts.coments=posts.coments+1 WHERE posts.postId=new.postId
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `faviourateposts`
--

DROP TABLE IF EXISTS `faviourateposts`;
CREATE TABLE `faviourateposts` (
  `id` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `userId` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faviourateposts`
--

INSERT INTO `faviourateposts` (`id`, `postId`, `userId`) VALUES
(1, 1, '916523874591'),
(2, 1, '919876543210'),
(3, 19, '916525874591'),
(4, 8, '916525874591');

-- --------------------------------------------------------

--
-- Table structure for table `friendlist`
--

DROP TABLE IF EXISTS `friendlist`;
CREATE TABLE `friendlist` (
  `frienduserId` int(4) NOT NULL,
  `userId` varchar(13) NOT NULL,
  `fuserId` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friendlist`
--

INSERT INTO `friendlist` (`frienduserId`, `userId`, `fuserId`) VALUES
(4, '916523874591', '911233211230'),
(2, '916523874591', '918154012696'),
(8, '916523874591', '919876543210'),
(1, '918154012696', '916523874591');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `likeId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `userId` varchar(13) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeId`, `postId`, `userId`, `createdAt`, `modifiedAt`, `deletedAt`, `isDeleted`) VALUES
(1, 1, '916523874591', '2018-03-05 14:16:00', '2018-03-05 14:16:00', NULL, 0),
(2, 2, '918154012696', '2018-03-05 17:02:00', '2018-03-05 17:02:00', NULL, 0),
(3, 1, '918154012696', '2018-03-05 17:02:26', '2018-03-05 17:02:26', NULL, 0),
(4, 1, '911234567890', '2018-03-08 12:51:50', '2018-03-08 12:51:50', NULL, 0),
(5, 1, '918154012696', '2018-03-09 14:30:50', '2018-03-09 14:30:50', NULL, 0),
(6, 1, '918154012696', '2018-03-09 14:40:10', '2018-03-09 14:40:10', NULL, 0),
(7, 1, '918154012696', '2018-03-09 14:42:11', '2018-03-09 14:42:11', NULL, 0),
(8, 1, '918154012696', '2018-03-09 16:01:46', '2018-03-09 16:01:46', NULL, 0),
(9, 2, '918154012696', '2018-03-09 16:02:45', '2018-03-09 16:02:45', NULL, 0),
(10, 2, '918154012696', '2018-03-09 16:04:32', '2018-03-09 16:04:32', NULL, 0),
(11, 2, '918154012696', '2018-03-09 16:05:36', '2018-03-09 16:05:36', NULL, 0),
(12, 2, '918154012696', '2018-03-09 16:05:56', '2018-03-09 16:05:56', NULL, 0),
(13, 2, '918154012696', '2018-03-09 16:07:22', '2018-03-09 16:07:22', NULL, 0),
(14, 1, '918154012696', '2018-03-10 12:23:24', '2018-03-10 12:23:24', NULL, 0),
(15, 4, '918154012696', '2018-03-10 17:26:39', '2018-03-10 17:26:39', NULL, 0),
(16, 4, '918154012696', '2018-03-10 17:26:40', '2018-03-10 17:26:40', NULL, 0),
(17, 1, '916523874591', '2018-03-12 12:33:18', '2018-03-12 12:33:18', NULL, 0),
(18, 1, '916523874591', '2018-03-12 12:34:25', '2018-03-12 12:34:25', NULL, 0),
(19, 2, '916523874591', '2018-03-12 12:45:31', '2018-03-12 12:45:31', NULL, 0),
(20, 3, '916523874591', '2018-03-12 12:45:54', '2018-03-12 12:45:54', NULL, 0),
(21, 3, '916523874591', '2018-03-12 12:47:04', '2018-03-12 12:47:04', NULL, 0),
(22, 4, '916523874591', '2018-03-12 12:48:25', '2018-03-12 12:48:25', NULL, 0),
(23, 3, '916523874591', '2018-03-12 12:49:26', '2018-03-12 12:49:26', NULL, 0),
(24, 3, '916523874591', '2018-03-12 12:52:20', '2018-03-12 12:52:20', NULL, 0),
(25, 4, '916523874591', '2018-03-12 13:28:10', '2018-03-12 13:28:10', NULL, 0),
(26, 4, '916523874591', '2018-03-12 13:28:38', '2018-03-12 13:28:38', NULL, 0),
(27, 6, '911233211470', '2018-03-13 12:14:02', '2018-03-13 12:14:02', NULL, 0),
(28, 6, '911233211230', '2018-03-13 12:14:57', '2018-03-13 12:14:57', NULL, 0),
(29, 6, '911233211230', '2018-03-13 12:15:05', '2018-03-13 12:15:05', NULL, 0),
(30, 5, '918154012696', '2018-03-13 16:16:49', '2018-03-13 16:16:49', NULL, 0),
(31, 5, '918154012696', '2018-03-13 16:18:07', '2018-03-13 16:18:07', NULL, 0),
(32, 5, '918154012696', '2018-03-13 16:18:33', '2018-03-13 16:18:33', NULL, 0),
(33, 5, '918154012696', '2018-03-13 16:18:44', '2018-03-13 16:18:44', NULL, 0),
(34, 5, '918154012696', '2018-03-13 16:19:32', '2018-03-13 16:19:32', NULL, 0),
(35, 4, '918154012696', '2018-03-13 16:21:17', '2018-03-13 16:21:17', NULL, 0),
(36, 5, '918154012696', '2018-03-13 16:29:19', '2018-03-13 16:29:19', NULL, 0),
(37, 3, '918154012696', '2018-03-13 16:35:21', '2018-03-13 16:35:21', NULL, 0),
(38, 5, '918154012696', '2018-03-13 16:36:43', '2018-03-13 16:36:43', NULL, 0),
(40, 6, '918238730884', '2018-03-13 17:23:49', '2018-03-13 17:23:49', NULL, 0),
(42, 6, '918238730884', '2018-03-13 17:27:04', '2018-03-13 17:27:04', NULL, 0),
(43, 5, '918154012696', '2018-03-13 17:34:32', '2018-03-13 17:34:32', NULL, 0),
(44, 6, '918238730884', '2018-03-13 17:34:40', '2018-03-13 17:34:40', NULL, 0),
(45, 6, '918238730884', '2018-03-13 17:39:10', '2018-03-13 17:39:10', NULL, 0),
(46, 1, '918238730884', '2018-03-13 17:39:13', '2018-03-13 17:39:13', NULL, 0),
(47, 1, '918238730884', '2018-03-13 17:39:14', '2018-03-13 17:39:14', NULL, 0),
(48, 1, '918238730884', '2018-03-13 17:39:15', '2018-03-13 17:39:15', NULL, 0),
(49, 1, '918238730884', '2018-03-13 17:39:17', '2018-03-13 17:39:17', NULL, 0),
(50, 1, '918238730884', '2018-03-13 17:39:19', '2018-03-13 17:39:19', NULL, 0),
(51, 6, '918238730884', '2018-03-13 17:39:21', '2018-03-13 17:39:21', NULL, 0),
(52, 1, '918238730884', '2018-03-13 17:39:32', '2018-03-13 17:39:32', NULL, 0),
(53, 6, '918238730884', '2018-03-13 17:39:33', '2018-03-13 17:39:33', NULL, 0),
(54, 6, '918238730884', '2018-03-13 17:55:22', '2018-03-13 17:55:22', NULL, 0),
(55, 6, '918238730884', '2018-03-13 17:55:22', '2018-03-13 17:55:22', NULL, 0),
(56, 6, '918238730884', '2018-03-13 17:55:22', '2018-03-13 17:55:22', NULL, 0),
(57, 1, '918238730884', '2018-03-13 17:55:24', '2018-03-13 17:55:24', NULL, 0),
(58, 6, '918238730884', '2018-03-13 17:55:28', '2018-03-13 17:55:28', NULL, 0),
(59, 6, '918238730884', '2018-03-13 17:55:29', '2018-03-13 17:55:29', NULL, 0),
(60, 6, '918238730884', '2018-03-13 17:55:30', '2018-03-13 17:55:30', NULL, 0),
(61, 6, '918238730884', '2018-03-13 17:55:31', '2018-03-13 17:55:31', NULL, 0),
(62, 6, '918238730884', '2018-03-13 17:55:31', '2018-03-13 17:55:31', NULL, 0),
(63, 6, '918238730884', '2018-03-13 17:55:31', '2018-03-13 17:55:31', NULL, 0),
(64, 6, '918238730884', '2018-03-13 17:55:32', '2018-03-13 17:55:32', NULL, 0),
(65, 6, '918238730884', '2018-03-13 17:55:34', '2018-03-13 17:55:34', NULL, 0),
(66, 1, '918238730884', '2018-03-13 17:55:35', '2018-03-13 17:55:35', NULL, 0),
(67, 1, '918238730884', '2018-03-13 17:57:06', '2018-03-13 17:57:06', NULL, 0),
(68, 1, '918238730884', '2018-03-13 17:57:08', '2018-03-13 17:57:08', NULL, 0),
(69, 6, '918238730884', '2018-03-13 17:57:11', '2018-03-13 17:57:11', NULL, 0),
(70, 6, '918238730884', '2018-03-13 17:57:13', '2018-03-13 17:57:13', NULL, 0),
(71, 6, '918238730884', '2018-03-13 17:57:14', '2018-03-13 17:57:14', NULL, 0),
(72, 6, '918238730884', '2018-03-13 17:57:14', '2018-03-13 17:57:14', NULL, 0),
(73, 6, '918238730884', '2018-03-13 17:57:15', '2018-03-13 17:57:15', NULL, 0),
(74, 6, '918238730884', '2018-03-13 17:57:15', '2018-03-13 17:57:15', NULL, 0),
(75, 6, '918238730884', '2018-03-13 17:57:15', '2018-03-13 17:57:15', NULL, 0),
(76, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(77, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(78, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(79, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(80, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(81, 6, '918238730884', '2018-03-13 17:57:16', '2018-03-13 17:57:16', NULL, 0),
(82, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(83, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(84, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(85, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(86, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(87, 6, '918238730884', '2018-03-13 17:57:17', '2018-03-13 17:57:17', NULL, 0),
(88, 6, '918238730884', '2018-03-13 17:57:18', '2018-03-13 17:57:18', NULL, 0),
(89, 6, '918238730884', '2018-03-13 17:57:18', '2018-03-13 17:57:18', NULL, 0),
(90, 6, '918238730884', '2018-03-13 17:57:18', '2018-03-13 17:57:18', NULL, 0),
(91, 6, '918238730884', '2018-03-14 11:17:30', '2018-03-14 11:17:30', NULL, 0),
(92, 1, '918238730884', '2018-03-14 11:17:34', '2018-03-14 11:17:34', NULL, 0),
(93, 1, '918238730884', '2018-03-14 11:17:34', '2018-03-14 11:17:34', NULL, 0),
(94, 6, '918238730884', '2018-03-14 11:17:36', '2018-03-14 11:17:36', NULL, 0),
(95, 6, '918238730884', '2018-03-14 11:17:38', '2018-03-14 11:17:38', NULL, 0),
(96, 1, '918238730884', '2018-03-14 11:17:40', '2018-03-14 11:17:40', NULL, 0),
(97, 1, '918238730884', '2018-03-14 11:17:41', '2018-03-14 11:17:41', NULL, 0),
(98, 6, '918238730884', '2018-03-14 11:17:42', '2018-03-14 11:17:42', NULL, 0),
(99, 6, '918238730884', '2018-03-14 11:17:43', '2018-03-14 11:17:43', NULL, 0),
(100, 6, '918238730884', '2018-03-14 11:17:43', '2018-03-14 11:17:43', NULL, 0),
(101, 6, '918238730884', '2018-03-14 11:17:44', '2018-03-14 11:17:44', NULL, 0),
(102, 1, '918238730884', '2018-03-14 11:17:45', '2018-03-14 11:17:45', NULL, 0),
(103, 1, '918238730884', '2018-03-14 11:17:47', '2018-03-14 11:17:47', NULL, 0),
(104, 6, '918238730884', '2018-03-14 11:17:51', '2018-03-14 11:17:51', NULL, 0),
(105, 6, '918238730884', '2018-03-14 11:17:55', '2018-03-14 11:17:55', NULL, 0),
(106, 6, '918238730884', '2018-03-14 11:17:57', '2018-03-14 11:17:57', NULL, 0),
(107, 1, '918238730884', '2018-03-14 11:18:09', '2018-03-14 11:18:09', NULL, 0),
(108, 6, '918238730884', '2018-03-14 11:18:11', '2018-03-14 11:18:11', NULL, 0),
(109, 1, '918238730884', '2018-03-14 12:17:47', '2018-03-14 12:17:47', NULL, 0),
(110, 1, '918238730884', '2018-03-14 12:17:48', '2018-03-14 12:17:48', NULL, 0),
(111, 1, '918238730884', '2018-03-14 12:17:48', '2018-03-14 12:17:48', NULL, 0),
(112, 1, '918238730884', '2018-03-14 12:17:48', '2018-03-14 12:17:48', NULL, 0),
(113, 1, '918238730884', '2018-03-14 12:17:49', '2018-03-14 12:17:49', NULL, 0),
(114, 1, '918238730884', '2018-03-14 12:17:50', '2018-03-14 12:17:50', NULL, 0),
(115, 1, '918238730884', '2018-03-14 12:17:50', '2018-03-14 12:17:50', NULL, 0),
(116, 1, '918238730884', '2018-03-14 12:17:50', '2018-03-14 12:17:50', NULL, 0),
(117, 1, '918238730884', '2018-03-14 12:17:51', '2018-03-14 12:17:51', NULL, 0),
(118, 1, '918238730884', '2018-03-14 12:17:51', '2018-03-14 12:17:51', NULL, 0),
(119, 1, '918238730884', '2018-03-14 12:17:51', '2018-03-14 12:17:51', NULL, 0),
(120, 1, '918238730884', '2018-03-14 12:17:54', '2018-03-14 12:17:54', NULL, 0),
(121, 1, '918238730884', '2018-03-14 12:17:54', '2018-03-14 12:17:54', NULL, 0),
(122, 1, '918238730884', '2018-03-14 12:17:54', '2018-03-14 12:17:54', NULL, 0),
(123, 1, '918238730884', '2018-03-14 12:17:54', '2018-03-14 12:17:54', NULL, 0),
(124, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(125, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(126, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(127, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(128, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(129, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(130, 1, '918238730884', '2018-03-14 12:17:55', '2018-03-14 12:17:55', NULL, 0),
(131, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(132, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(133, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(134, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(135, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(136, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(137, 1, '918238730884', '2018-03-14 12:17:56', '2018-03-14 12:17:56', NULL, 0),
(138, 1, '918238730884', '2018-03-14 12:17:57', '2018-03-14 12:17:57', NULL, 0),
(139, 1, '918238730884', '2018-03-14 12:17:57', '2018-03-14 12:17:57', NULL, 0),
(140, 1, '918238730884', '2018-03-14 12:17:57', '2018-03-14 12:17:57', NULL, 0),
(141, 1, '918238730884', '2018-03-14 12:17:57', '2018-03-14 12:17:57', NULL, 0),
(142, 6, '918238730884', '2018-03-14 13:37:44', '2018-03-14 13:37:44', NULL, 0),
(143, 1, '918238730884', '2018-03-14 13:37:46', '2018-03-14 13:37:46', NULL, 0),
(144, 1, '918238730884', '2018-03-14 13:37:47', '2018-03-14 13:37:47', NULL, 0),
(145, 8, '919876543210', '2018-03-14 17:51:52', '2018-03-14 17:51:52', NULL, 0),
(146, 1, '919876543210', '2018-03-14 17:54:15', '2018-03-14 17:54:15', NULL, 0),
(147, 1, '916523874591', '2018-03-14 17:56:41', '2018-03-14 17:56:41', NULL, 0),
(148, 8, '919876543210', '2018-03-14 17:58:15', '2018-03-14 17:58:15', NULL, 0),
(149, 2, '919876543210', '2018-03-15 15:49:29', '2018-03-15 15:49:29', NULL, 0),
(150, 6, '918238730884', '2018-03-15 16:15:07', '2018-03-15 16:15:07', NULL, 0),
(151, 8, '918238730884', '2018-03-15 16:21:18', '2018-03-15 16:21:18', NULL, 0),
(152, 8, '918238730884', '2018-03-15 16:22:33', '2018-03-15 16:22:33', NULL, 0),
(153, 8, '918238730884', '2018-03-15 16:22:33', '2018-03-15 16:22:33', NULL, 0),
(154, 8, '918238730884', '2018-03-15 16:22:33', '2018-03-15 16:22:33', NULL, 0),
(155, 8, '918238730884', '2018-03-15 16:22:33', '2018-03-15 16:22:33', NULL, 0),
(156, 8, '918238730884', '2018-03-15 16:22:33', '2018-03-15 16:22:33', NULL, 0),
(157, 8, '918238730884', '2018-03-15 16:22:34', '2018-03-15 16:22:34', NULL, 0),
(158, 8, '918238730884', '2018-03-15 16:22:34', '2018-03-15 16:22:34', NULL, 0),
(159, 8, '918238730884', '2018-03-15 16:22:34', '2018-03-15 16:22:34', NULL, 0),
(160, 8, '918238730884', '2018-03-15 16:22:34', '2018-03-15 16:22:34', NULL, 0),
(161, 8, '918238730884', '2018-03-15 16:22:34', '2018-03-15 16:22:34', NULL, 0),
(162, 8, '918238730884', '2018-03-15 16:22:36', '2018-03-15 16:22:36', NULL, 0),
(163, 8, '918238730884', '2018-03-15 16:22:36', '2018-03-15 16:22:36', NULL, 0),
(164, 8, '918238730884', '2018-03-15 16:22:36', '2018-03-15 16:22:36', NULL, 0),
(165, 8, '918238730884', '2018-03-15 16:22:36', '2018-03-15 16:22:36', NULL, 0),
(166, 8, '918238730884', '2018-03-15 16:22:36', '2018-03-15 16:22:36', NULL, 0),
(167, 8, '918238730884', '2018-03-15 16:22:37', '2018-03-15 16:22:37', NULL, 0),
(168, 8, '918238730884', '2018-03-15 16:22:37', '2018-03-15 16:22:37', NULL, 0),
(169, 6, '918238730884', '2018-03-15 16:22:51', '2018-03-15 16:22:51', NULL, 0),
(170, 8, '918238730884', '2018-03-16 14:38:57', '2018-03-16 14:38:57', NULL, 0),
(171, 1, '916523874591', '2018-03-16 15:33:52', '2018-03-16 15:33:52', NULL, 0),
(172, 2, '916523874591', '2018-03-16 15:34:01', '2018-03-16 15:34:01', NULL, 0),
(173, 1, '916523874591', '2018-03-16 15:35:59', '2018-03-16 15:35:59', NULL, 0),
(174, 1, '916523874591', '2018-03-16 15:37:19', '2018-03-16 15:37:19', NULL, 0),
(175, 1, '916523874591', '2018-03-16 15:37:52', '2018-03-16 15:37:52', NULL, 0),
(176, 2, '916523874591', '2018-03-16 15:39:58', '2018-03-16 15:39:58', NULL, 0),
(177, 3, '916523874591', '2018-03-16 15:42:03', '2018-03-16 15:42:03', NULL, 0),
(178, 2, '916523874591', '2018-03-16 18:20:58', '2018-03-16 18:20:58', NULL, 0),
(179, 7, '916523874591', '2018-03-16 18:26:01', '2018-03-16 18:26:01', NULL, 0),
(180, 8, '916523874591', '2018-03-16 18:28:03', '2018-03-16 18:28:03', NULL, 0),
(181, 8, '918154012696', '2018-03-19 12:16:04', '2018-03-19 12:16:04', NULL, 0),
(182, 8, '918154012696', '2018-03-19 12:21:19', '2018-03-19 12:21:19', NULL, 0),
(183, 7, '918154012696', '2018-03-19 12:27:42', '2018-03-19 12:27:42', NULL, 0),
(184, 4, '918154012696', '2018-03-19 12:28:38', '2018-03-19 12:28:38', NULL, 0),
(185, 8, '918154012696', '2018-03-19 12:29:02', '2018-03-19 12:29:02', NULL, 0),
(186, 7, '918154012696', '2018-03-19 12:29:51', '2018-03-19 12:29:51', NULL, 0),
(187, 3, '918154012696', '2018-03-19 12:31:27', '2018-03-19 12:31:27', NULL, 0),
(188, 8, '918154012696', '2018-03-19 12:33:36', '2018-03-19 12:33:36', NULL, 0),
(189, 7, '918154012696', '2018-03-19 12:33:55', '2018-03-19 12:33:55', NULL, 0),
(190, 1, '918000103425', '2018-03-19 14:37:43', '2018-03-19 14:37:43', NULL, 0),
(192, 19, '918154012696', '2018-03-20 15:52:53', '2018-03-20 15:52:53', NULL, 0),
(193, 13, '918154012696', '2018-03-20 15:53:06', '2018-03-20 15:53:06', NULL, 0),
(194, 20, '918154012696', '2018-03-20 15:55:27', '2018-03-20 15:55:27', NULL, 0),
(195, 35, '916523874591', '2018-03-20 16:30:12', '2018-03-20 16:30:12', NULL, 0),
(196, 32, '916523874591', '2018-03-20 16:30:59', '2018-03-20 16:30:59', NULL, 0),
(197, 32, '916523874591', '2018-03-20 16:31:01', '2018-03-20 16:31:01', NULL, 0),
(198, 24, '916523874591', '2018-03-20 16:33:03', '2018-03-20 16:33:03', NULL, 0),
(199, 24, '916523874591', '2018-03-20 16:33:04', '2018-03-20 16:33:04', NULL, 0),
(200, 24, '916523874591', '2018-03-20 16:33:04', '2018-03-20 16:33:04', NULL, 0),
(201, 19, '916523874591', '2018-03-20 16:35:16', '2018-03-20 16:35:16', NULL, 0),
(202, 13, '916523874591', '2018-03-20 16:37:21', '2018-03-20 16:37:21', NULL, 0),
(203, 35, '916523874591', '2018-03-20 16:38:05', '2018-03-20 16:38:05', NULL, 0),
(204, 20, '916523874591', '2018-03-20 17:33:19', '2018-03-20 17:33:19', NULL, 0),
(205, 19, '918154012696', '2018-03-21 10:08:23', '2018-03-21 10:08:23', NULL, 0),
(206, 32, '916523874591', '2018-03-21 10:16:00', '2018-03-21 10:16:00', NULL, 0),
(207, 1, '916523874591', '2018-03-21 10:34:54', '2018-03-21 10:34:54', NULL, 0),
(208, 1, '916523874591', '2018-03-21 10:34:55', '2018-03-21 10:34:55', NULL, 0),
(209, 1, '916523874591', '2018-03-21 10:34:56', '2018-03-21 10:34:56', NULL, 0),
(210, 1, '916523874591', '2018-03-21 10:34:56', '2018-03-21 10:34:56', NULL, 0),
(211, 1, '916523874591', '2018-03-21 10:34:56', '2018-03-21 10:34:56', NULL, 0),
(212, 1, '916523874591', '2018-03-21 10:34:56', '2018-03-21 10:34:56', NULL, 0),
(213, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(214, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(215, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(216, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(217, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(218, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(219, 1, '916523874591', '2018-03-21 10:34:57', '2018-03-21 10:34:57', NULL, 0),
(220, 5, '916523874591', '2018-03-21 16:29:58', '2018-03-21 16:29:58', NULL, 0);

--
-- Triggers `likes`
--
DROP TRIGGER IF EXISTS `countPostLikes`;
DELIMITER $$
CREATE TRIGGER `countPostLikes` BEFORE INSERT ON `likes` FOR EACH ROW update posts SET posts.likes=posts.likes+1 WHERE posts.postId=new.postId
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `postType` varchar(30) NOT NULL,
  `postText` text,
  `postUrl` text,
  `userId` varchar(13) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `coments` int(11) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `postType`, `postText`, `postUrl`, `userId`, `createdAt`, `modifiedAt`, `deletedAt`, `isDeleted`, `privacy`, `coments`, `likes`) VALUES
(1, 'text', 'hello', '', '916523874591', '2018-03-05 14:14:32', '2018-03-05 14:14:32', '2018-03-13 00:00:00', 0, 0, 12, 72),
(2, 'text', 'Hello how r u..?', '', '918154012696', '2018-03-05 16:23:44', '2018-03-05 16:23:44', NULL, 0, 1, 11, 4),
(3, 'text/img', 'This is my first post from the iOS', '918154012696_1520601309877.png', '918154012696', '2018-03-09 18:44:10', '2018-03-09 18:44:10', NULL, 0, 1, 0, 3),
(4, 'text/img', 'This is my first post from the iOS', '918154012696_1520601309877.png', '918154012696', '2018-03-09 18:45:09', '2018-03-09 18:45:09', NULL, 0, 1, 2, 2),
(5, 'text/img', 'Hello', '918154012696_1520921594831.png', '918154012696', '2018-03-13 11:43:15', '2018-03-13 11:43:15', NULL, 0, 1, 2, 9),
(6, 'text', 'this is an my new post', '918154012696_1520921594831.png', '918238730884', '2018-03-13 19:12:09', '2018-03-13 12:12:09', NULL, 0, 1, 7, 55),
(7, 'text/img', 'This is public post from my iOS device', '918154012696_1521028823053.png', '918154012696', '2018-03-14 17:30:23', '2018-03-14 17:30:23', NULL, 0, 1, 2, 4),
(8, 'image', '', '918154012696_1521029054922.png', '911234567890', '2018-03-14 17:34:15', '2018-03-14 17:34:15', NULL, 0, 0, 15, 26),
(11, 'text', 'post testing', 'undefined', '916523874591', '2018-03-20 14:08:59', '2018-03-20 14:08:59', NULL, 0, 0, 0, 0),
(13, 'text/img', '', '916523874591_1521539077657.png', '916523874591', '2018-03-20 15:14:37', '2018-03-20 15:14:37', NULL, 0, 0, 0, 2),
(19, 'text', 'hello everyone', '916523874591_1521540685480.png', '916523874591', '2018-03-20 15:51:53', '2018-03-20 15:51:53', NULL, 0, 1, 0, 3),
(20, 'text/img', 'hiiii good morning', '916523874591_1521541388279.png', '916523874591', '2018-03-20 15:53:08', '2018-03-20 15:53:08', NULL, 0, 0, 1, 2),
(24, 'text/img', 'Hello every one this post is from iPhone 6s Plus', '918154012696_1521542203857.png', '918154012696', '2018-03-20 16:06:43', '2018-03-20 16:06:43', NULL, 0, 0, 0, 3),
(32, 'text', 'hiii', 'undefined', '916523874591', '2018-03-20 16:20:50', '2018-03-20 16:20:50', NULL, 0, 0, 0, 3),
(35, 'image', '', '918154012696_1521543283226.png', '918154012696', '2018-03-20 16:24:43', '2018-03-20 16:24:43', NULL, 0, 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(13) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userProfilePhoto` varchar(50) NOT NULL,
  `status` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `displayName` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userProfilePhoto`, `status`, `email`, `displayName`, `createdAt`, `modifiedAt`, `deletedAt`, `isDeleted`) VALUES
('911111111111', 'hmh.bjb.j1521532506135', 'undefined.undefined', 'Available', 'gb@gb.bb', 'hmh bjb j', '2018-03-20 13:25:06', '2018-03-20 13:25:06', NULL, 0),
('911233211230', 'newuser', '', '', 'newuser@gmail.com', 'new user', '2018-03-09 16:57:00', '2018-03-09 16:57:00', NULL, 0),
('911233211470', '', '', '', 'hp@gmail.com', 'hardik ghanshyam patel', '2018-03-10 10:37:40', '2018-03-10 10:37:40', NULL, 0),
('911234567890', 'test.user@123', '911234567890.png', 'Available', 'kelvin@gmail.com', 'Kelvin', '2018-03-05 16:22:53', '2018-03-05 16:22:53', NULL, 0),
('916523874591', 'VMahesheari', '916523874591.png', 'Available ', 'varsha@gmail.com', 'Varsha Maheshwari ', '2018-03-05 14:12:25', '2018-03-05 14:12:25', NULL, 0),
('916525874591', 'bvl', '916525874591.png', '', 'vladha@gmail.com', 'varsha ladha', '2018-03-09 15:55:21', '2018-03-09 15:55:21', NULL, 0),
('918000103425', 'Kartik ', '918000103425.png', 'Available', 'kartik.aryan@gmail.com', 'Kartik Aryan', '2018-03-19 14:24:22', '2018-03-19 14:24:22', NULL, 0),
('918154012696', 'arjun.dobaria@123', '918154012696.png', 'Available', 'arjun.dobaria@gmail.com', 'Arjun', '2018-03-05 16:01:15', '2018-03-05 16:01:15', NULL, 0),
('918238730884', 'hardikpatel0884', '918238730884.png', 'Available', 'h@h.cc', 'hardik g patel', '2018-03-10 16:30:01', '2018-03-10 16:30:01', NULL, 0),
('918238730889', 'hppatel', '918238730889.png', 'Available', 'ha1@gm.com', 'hp', '2018-03-10 16:49:36', '2018-03-10 16:49:36', NULL, 0),
('919876543210', 'kelvinKelvin', '919876543210.png', 'Available', 'abc@gmail.com', 'Kelvin Gomes', '2018-03-09 11:22:10', '2018-03-09 11:22:10', NULL, 0),
('919890695342', 'alokSaboo', '919890695342.png', 'Available', 'alok@yahoo.com', 'Alok Saboo', '2018-03-16 12:53:08', '2018-03-16 12:53:08', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `faviourateposts`
--
ALTER TABLE `faviourateposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `friendlist`
--
ALTER TABLE `friendlist`
  ADD PRIMARY KEY (`frienduserId`),
  ADD UNIQUE KEY `fu` (`userId`,`fuserId`),
  ADD KEY `fuserId` (`fuserId`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeId`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `faviourateposts`
--
ALTER TABLE `faviourateposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `friendlist`
--
ALTER TABLE `friendlist`
  MODIFY `frienduserId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `faviourateposts`
--
ALTER TABLE `faviourateposts`
  ADD CONSTRAINT `faviourateposts_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`),
  ADD CONSTRAINT `faviourateposts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `friendlist`
--
ALTER TABLE `friendlist`
  ADD CONSTRAINT `friendlist_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `friendlist_ibfk_2` FOREIGN KEY (`fuserId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
