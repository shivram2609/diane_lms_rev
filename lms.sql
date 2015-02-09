-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2015 at 04:59 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms`
--
CREATE DATABASE IF NOT EXISTS `lms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lms`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `passwordstatus` tinyint(1) NOT NULL,
  `remembertoken` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `passwordstatus`, `remembertoken`, `created`, `modified`) VALUES
(1, 'admin@admin.com', '9a2ce73bde64af02061df81ec8b6c0cb', 1, 0, 'db6269382b517db72e72bc0e16f1aba4', '2013-04-26 00:00:00', '2013-09-13 10:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `backupdbs`
--

CREATE TABLE IF NOT EXISTS `backupdbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumbs`
--

CREATE TABLE IF NOT EXISTS `breadcrumbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `keyval` varchar(255) DEFAULT NULL,
  `keycontroller` varchar(255) DEFAULT NULL,
  `keyaction` varchar(255) DEFAULT NULL,
  `keylink` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cmsemails`
--

CREATE TABLE IF NOT EXISTS `cmsemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailsubject` varchar(255) DEFAULT NULL,
  `mailcontent` longtext,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cmsemails`
--

INSERT INTO `cmsemails` (`id`, `mailfrom`, `mailsubject`, `mailcontent`, `status`, `created`, `modified`) VALUES
(1, 'shivamsharma586@gmail.com', 'Registration  Confirmation', '<p>\n	Dear <strong>{USER}</strong>,</p>\n<p>\n	Your registration with LMS has been successful.</p>\n<p>\n	Please {LINK} to activate your account.</p>\n', 1, '2013-04-29 10:54:50', '2013-11-28 07:44:46'),
(2, 'shivamsharma586@gmail.com', 'Forgot Password', '<p>\n	Dear <strong>{USER}</strong>,</p>\n<p>\n	<br />\n	It happens to the best of us. We all forget our password sometimes.</p>\n<p>\n	So here&#39;s a new password for you: {PASSWORD}</p>\n<p>\n	You can use this password from now onwards.</p>\n<p>\n	If you didn&#39;t request this, please ignore this email.</p>\n', 1, '2013-05-06 11:31:14', '2013-11-28 07:41:03'),
(11, 'shivamsharma586@gmail.com', 'Message', '<p>\n	<strong>{SENDER}</strong> has sent a message via LMS :</p>\n<p>\n	&nbsp;</p>\n<p>\n	{MESSAGE}</p>\n', 1, '2013-08-06 00:00:00', '2013-11-28 07:42:10'),
(12, 'shivamsharma586@gmail.com', 'Successfull Enrolled to Course', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	You have successfully enrolled to course: {COURSE}.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '2013-08-23 17:10:03', '2013-11-28 07:46:28'),
(13, 'shivamsharma586@gmail.com', 'New Enrollment to Course', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	This is to inform you that a new student has been enrolled for a course you created on 1337 Institute of Technology.</p>\r\n<p>\r\n	Below are the enrollment details:</p>\r\n<p>\r\n	Student Name&nbsp; : <strong>{STUDENT}</strong></p>\r\n<p>\r\n	Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <strong>{COURSE}</strong></p>\r\n<p>\r\n	Please view the site to get additional information regarding your account.</p>\r\n', 0, '2013-08-24 12:42:01', '2013-11-28 07:43:09'),
(14, 'shivamsharma586@gmail.com', 'User Follow Notification', '<p>\n	Dear <strong>{USER}</strong>,</p>\n<p>\n	This mail is to to notify you that {FOLLOWER} has started following your profile.</p>\n', 0, '2013-09-17 12:45:19', '2013-11-28 07:49:09'),
(15, 'shivamsharma586@gmail.com', 'New Question Notification', '<p>\n	Dear <strong>{USER}</strong>,</p>\n<p>\n	This is to inform you that {ASKEDBY} has aked a new question from course {COURSE} :</p>\n<p>\n	{QUESTION}.</p>\n', 0, '2013-09-17 12:48:00', '2013-11-28 07:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `cmspages`
--

CREATE TABLE IF NOT EXISTS `cmspages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `metadesc` text,
  `metakeyword` text,
  `status` tinyint(1) NOT NULL,
  `showinfooter` tinyint(1) NOT NULL,
  `showinleft` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `default_header` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created`, `modified`) VALUES
(1, 'United Kingdom', 'GB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(2, 'United States', 'US', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(3, 'Afghanistan', 'AF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(4, 'Albania', 'AL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(5, 'Algeria', 'DZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(6, 'American Samoa', 'AS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(7, 'Andorra', 'AD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(8, 'Angola', 'AO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(9, 'Anguilla', 'AI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(10, 'Antarctica', 'AQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(11, 'Antigua And Barbuda', 'AG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(12, 'Argentina', 'AR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(13, 'Armenia', 'AM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(14, 'Aruba', 'AW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(15, 'Australia', 'AU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(16, 'Austria', 'AT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(17, 'Azerbaijan', 'AZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(18, 'Bahamas', 'BS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(19, 'Bangladesh', 'BD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(20, 'Barbados', 'BB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(21, 'Belarus', 'BY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(22, 'Belgium', 'BE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(23, 'Belize', 'BZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(24, 'Benin', 'BJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(25, 'Bermuda', 'BM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(26, 'Bhutan', 'BT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(27, 'Bolivia', 'BO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(28, 'Bosnia And Herzegowina', 'BA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(29, 'Botswana', 'BW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(30, 'Bouvet Island', 'BV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(31, 'Brazil', 'BR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(32, 'British Indian Ocean Territory', 'IO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(33, 'Brunei Darussalam', 'BN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(34, 'Bulgaria', 'BG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(35, 'Burkina Faso', 'BF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(36, 'Burundi', 'BI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(37, 'Cambodia', 'KH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(38, 'Cameroon', 'CM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(39, 'Canada', 'CA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(40, 'Cape Verde', 'CV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(41, 'Cayman Islands', 'KY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(42, 'Central African Republic', 'CF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(43, 'Chad', 'TD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(44, 'Chile', 'CL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(45, 'China', 'CN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(46, 'Christmas Island', 'CX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(47, 'Cocos (Keeling) Islands', 'CC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(48, 'Colombia', 'CO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(49, 'Comoros', 'KM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(50, 'Congo', 'CG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(51, 'Congo, The Democratic Republic Of The', 'CD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(52, 'Cook Islands', 'CK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(53, 'Costa Rica', 'CR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(54, 'Cote D''Ivoire', 'CI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(55, 'Croatia (Local Name: Hrvatska)', 'HR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(56, 'Cuba', 'CU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(57, 'Cyprus', 'CY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(58, 'Czech Republic', 'CZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(59, 'Denmark', 'DK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(60, 'Djibouti', 'DJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(61, 'Dominica', 'DM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(62, 'Dominican Republic', 'DO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(63, 'East Timor', 'TP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(64, 'Ecuador', 'EC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(65, 'Egypt', 'EG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(66, 'El Salvador', 'SV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(67, 'Equatorial Guinea', 'GQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(68, 'Eritrea', 'ER', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(69, 'Estonia', 'EE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(70, 'Ethiopia', 'ET', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(71, 'Falkland Islands (Malvinas)', 'FK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(72, 'Faroe Islands', 'FO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(73, 'Fiji', 'FJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(74, 'Finland', 'FI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(75, 'France', 'FR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(76, 'France, Metropolitan', 'FX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(77, 'French Guiana', 'GF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(78, 'French Polynesia', 'PF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(79, 'French Southern Territories', 'TF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(80, 'Gabon', 'GA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(81, 'Gambia', 'GM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(82, 'Georgia', 'GE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(83, 'Germany', 'DE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(84, 'Ghana', 'GH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(85, 'Gibraltar', 'GI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(86, 'Greece', 'GR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(87, 'Greenland', 'GL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(88, 'Grenada', 'GD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(89, 'Guadeloupe', 'GP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(90, 'Guam', 'GU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(91, 'Guatemala', 'GT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(92, 'Guinea', 'GN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(93, 'Guinea-Bissau', 'GW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(94, 'Guyana', 'GY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(95, 'Haiti', 'HT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(96, 'Heard And Mc Donald Islands', 'HM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(97, 'Holy See (Vatican City State)', 'VA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(98, 'Honduras', 'HN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(99, 'Hong Kong', 'HK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(100, 'Hungary', 'HU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(101, 'Iceland', 'IS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(102, 'India', 'IN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(103, 'Indonesia', 'ID', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(104, 'Iran (Islamic Republic Of)', 'IR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(105, 'Iraq', 'IQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(106, 'Ireland', 'IE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(107, 'Israel', 'IL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(108, 'Italy', 'IT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(109, 'Jamaica', 'JM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(110, 'Japan', 'JP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(111, 'Jordan', 'JO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(112, 'Kazakhstan', 'KZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(113, 'Kenya', 'KE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(114, 'Kiribati', 'KI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(115, 'Korea, Democratic People''s Republic Of', 'KP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(116, 'Korea, Republic Of', 'KR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(117, 'Kuwait', 'KW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(118, 'Kyrgyzstan', 'KG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(119, 'Lao People''s Democratic Republic', 'LA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(120, 'Latvia', 'LV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(121, 'Lebanon', 'LB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(122, 'Lesotho', 'LS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(123, 'Liberia', 'LR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(124, 'Libyan Arab Jamahiriya', 'LY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(125, 'Liechtenstein', 'LI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(126, 'Lithuania', 'LT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(127, 'Luxembourg', 'LU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(128, 'Macau', 'MO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(129, 'Macedonia, Former Yugoslav Republic Of', 'MK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(130, 'Madagascar', 'MG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(131, 'Malawi', 'MW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(132, 'Malaysia', 'MY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(133, 'Maldives', 'MV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(134, 'Mali', 'ML', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(135, 'Malta', 'MT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(136, 'Marshall Islands', 'MH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(137, 'Martinique', 'MQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(138, 'Mauritania', 'MR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(139, 'Mauritius', 'MU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(140, 'Mayotte', 'YT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(141, 'Mexico', 'MX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(142, 'Micronesia', 'FM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(143, 'Moldova, Republic Of', 'MD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(144, 'Monaco', 'MC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(145, 'Mongolia', 'MN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(146, 'Montserrat', 'MS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(147, 'Morocco', 'MA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(148, 'Mozambique', 'MZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(149, 'Myanmar', 'MM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(150, 'Namibia', 'NA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(151, 'Nauru', 'NR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(152, 'Nepal', 'NP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(153, 'Netherlands', 'NL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(154, 'Netherlands Antilles', 'AN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(155, 'New Caledonia', 'NC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(156, 'New Zealand', 'NZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(157, 'Nicaragua', 'NI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(158, 'Niger', 'NE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(159, 'Nigeria', 'NG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(160, 'Niue', 'NU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(161, 'Norfolk Island', 'NF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(162, 'Northern Mariana Islands', 'MP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(163, 'Norway', 'NO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(164, 'Oman', 'OM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(165, 'Pakistan', 'PK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(166, 'Palau', 'PW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(167, 'Panama', 'PA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(168, 'Papua New Guinea', 'PG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(169, 'Paraguay', 'PY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(170, 'Peru', 'PE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(171, 'Philippines', 'PH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(172, 'Pitcairn', 'PN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(173, 'Poland', 'PL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(174, 'Portugal', 'PT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(175, 'Puerto Rico', 'PR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(176, 'Qatar', 'QA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(177, 'Reunion', 'RE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(178, 'Romania', 'RO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(179, 'Russian Federation', 'RU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(180, 'Rwanda', 'RW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(181, 'Saint Kitts And Nevis', 'KN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(182, 'Saint Lucia', 'LC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(183, 'Saint Vincent And The Grenadines', 'VC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(184, 'Samoa', 'WS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(185, 'San Marino', 'SM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(186, 'Sao Tome And Principe', 'ST', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(187, 'Saudi Arabia', 'SA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(188, 'Senegal', 'SN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(189, 'Seychelles', 'SC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(190, 'Sierra Leone', 'SL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(191, 'Singapore', 'SG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(192, 'Slovakia (Slovak Republic)', 'SK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(193, 'Slovenia', 'SI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(194, 'Solomon Islands', 'SB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(195, 'Somalia', 'SO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(196, 'South Africa', 'ZA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(197, 'South Georgia, South Sandwich Islands', 'GS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(198, 'Spain', 'ES', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(199, 'Sri Lanka', 'LK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(200, 'St. Helena', 'SH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(201, 'St. Pierre And Miquelon', 'PM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(202, 'Sudan', 'SD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(203, 'Suriname', 'SR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(204, 'Svalbard And Jan Mayen Islands', 'SJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(205, 'Swaziland', 'SZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(206, 'Sweden', 'SE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(207, 'Switzerland', 'CH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(208, 'Syrian Arab Republic', 'SY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(209, 'Taiwan', 'TW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(210, 'Tajikistan', 'TJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(211, 'Tanzania, United Republic Of', 'TZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(212, 'Thailand', 'TH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(213, 'Togo', 'TG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(214, 'Tokelau', 'TK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(215, 'Tonga', 'TO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(216, 'Trinidad And Tobago', 'TT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(217, 'Tunisia', 'TN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(218, 'Turkey', 'TR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(219, 'Turkmenistan', 'TM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(220, 'Turks And Caicos Islands', 'TC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(221, 'Tuvalu', 'TV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(222, 'Uganda', 'UG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(223, 'Ukraine', 'UA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(224, 'United Arab Emirates', 'AE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(225, 'United States Minor Outlying Islands', 'UM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(226, 'Uruguay', 'UY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(227, 'Uzbekistan', 'UZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(228, 'Vanuatu', 'VU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(229, 'Venezuela', 'VE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(230, 'Viet Nam', 'VN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(231, 'Virgin Islands (British)', 'VG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(232, 'Virgin Islands (U.S.)', 'VI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(233, 'Wallis And Futuna Islands', 'WF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(234, 'Western Sahara', 'EH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(235, 'Yemen', 'YE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(236, 'Yugoslavia', 'YU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(237, 'Zambia', 'ZM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(238, 'Zimbabwe', 'ZW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `instruction_level_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `summary` text,
  `lincence_logo` varchar(200) NOT NULL,
  `lincence_url` varchar(200) NOT NULL,
  `source_title` varchar(200) NOT NULL,
  `source_url` varchar(200) NOT NULL,
  `coverimage` varchar(150) DEFAULT NULL,
  `promovideo` varchar(150) DEFAULT NULL,
  `visibility` enum('Private','Public') DEFAULT 'Public',
  `pricetype` enum('Free','Paid') DEFAULT NULL,
  `price` float DEFAULT NULL,
  `privacy_type` enum('1','2') DEFAULT NULL COMMENT '1 for adding invitees and 2 for making course password protected, will be dependent on visibility type of course will be used only visibility type be selected as private',
  `publishstatus` enum('Publish','Unpublish') DEFAULT NULL COMMENT 'User can mark its course as publish or unpublish',
  `status` tinyint(1) DEFAULT '1' COMMENT 'field to manage site admin right on course site admin can mark and course inactive at any time',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_audience`
--

CREATE TABLE IF NOT EXISTS `course_audience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_contents`
--

CREATE TABLE IF NOT EXISTS `course_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_content_type_id` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `lecture` int(11) DEFAULT NULL,
  `content` longtext,
  `content_link` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_content_types`
--

CREATE TABLE IF NOT EXISTS `course_content_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `primary_image` varchar(200) DEFAULT NULL,
  `secondary_image` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE IF NOT EXISTS `course_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_instructors`
--

CREATE TABLE IF NOT EXISTS `course_instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `editpermission` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for not giving instructor permission to edit course and 1 is for giving permission to edit course',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `commission` float NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_invitees`
--

CREATE TABLE IF NOT EXISTS `course_invitees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `invitee` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE IF NOT EXISTS `course_lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_section_id` int(11) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `course_description` text NOT NULL,
  `content` longtext,
  `content_type` enum('D','T','A','V','P','M') DEFAULT NULL COMMENT 'D for Documents it can be pdf or ppt etc, T for text only, A for Audio files, V for Video files,P for presentation',
  `content_title` varchar(255) NOT NULL,
  `content_external_link` enum('None','Youtube','Vimeo') NOT NULL DEFAULT 'None',
  `content_source` varchar(100) DEFAULT NULL,
  `supplimentary_material` varchar(100) NOT NULL,
  `lecture_index` int(11) NOT NULL,
  `prev` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_mashup`
--

CREATE TABLE IF NOT EXISTS `course_mashup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_lecture_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `doc` varchar(255) NOT NULL,
  `xml` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `video` (`video`,`doc`,`xml`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_passwords`
--

CREATE TABLE IF NOT EXISTS `course_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_quizzes`
--

CREATE TABLE IF NOT EXISTS `course_quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_section_id` int(11) NOT NULL,
  `course_lecture_id` int(11) NOT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `publish` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_section_id` (`course_section_id`),
  KEY `course_lecture_id` (`course_lecture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_quiz_questions`
--

CREATE TABLE IF NOT EXISTS `course_quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_quiz_id` int(11) DEFAULT NULL,
  `question` text,
  `type` enum('B','M','F') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_quiz_question_options`
--

CREATE TABLE IF NOT EXISTS `course_quiz_question_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_quiz_question_id` int(11) NOT NULL,
  `options` text,
  `answer` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_requirements`
--

CREATE TABLE IF NOT EXISTS `course_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE IF NOT EXISTS `course_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `review_text` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE IF NOT EXISTS `course_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `section_index` int(11) NOT NULL,
  `prev` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_suppliments`
--

CREATE TABLE IF NOT EXISTS `course_suppliments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_lecture_id` int(11) DEFAULT NULL,
  `content_title` varchar(200) DEFAULT NULL,
  `content_source` varchar(255) DEFAULT NULL,
  `content_link` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_user_notes`
--

CREATE TABLE IF NOT EXISTS `course_user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_section_id` int(11) DEFAULT NULL,
  `notes` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_user_questions`
--

CREATE TABLE IF NOT EXISTS `course_user_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_lecture_id` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `question` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  KEY `lecture_id` (`course_lecture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_user_question_answers`
--

CREATE TABLE IF NOT EXISTS `course_user_question_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_user_question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'id of the person who is being followed',
  `follower_id` int(11) NOT NULL COMMENT 'id of the person who is clicking on Follow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `instruction_levels`
--

CREATE TABLE IF NOT EXISTS `instruction_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `status`, `created`, `modified`) VALUES
(1, 'Afrikaans', 1, NULL, '2013-08-06 16:42:47'),
(2, 'Shqip', 1, NULL, '2013-08-06 16:42:47'),
(3, 'عربية', 1, NULL, '2013-08-06 16:42:47'),
(4, 'Հայերեն', 1, NULL, '2013-08-06 16:42:47'),
(5, 'Aymar aru', 1, NULL, '2013-08-06 16:42:47'),
(6, 'Azərbaycan dili', 1, NULL, '2013-08-06 16:42:47'),
(7, 'Euskara', 1, NULL, '2013-08-06 16:42:47'),
(8, 'Bangla', 1, NULL, '2013-08-06 16:42:47'),
(9, 'Bosanski', 1, NULL, '2013-08-06 16:42:47'),
(10, 'Български', 1, NULL, '2013-08-06 16:42:47'),
(11, 'Catala', 1, NULL, '2013-08-06 16:42:47'),
(12, 'Cherokee', 1, NULL, '2013-08-06 16:42:47'),
(13, 'Hrvatski', 1, NULL, '2013-08-06 16:42:47'),
(14, 'Cestina', 1, NULL, '2013-08-06 16:42:47'),
(15, 'Dansk', 1, NULL, '2013-08-06 16:42:47'),
(16, 'Nederlands', 1, NULL, '2013-08-06 16:42:47'),
(17, 'Nederlands (Belgie)', 1, NULL, '2013-08-06 16:42:47'),
(18, 'English (India)', 1, NULL, '2013-08-06 16:42:47'),
(19, 'English (UK)', 1, NULL, '2013-08-06 16:42:47'),
(20, 'English (US)', 1, NULL, '2013-08-06 16:42:47'),
(21, 'Eesti', 1, NULL, '2013-08-06 16:42:37'),
(22, 'Føroyskt', 1, NULL, '2013-08-06 16:42:37'),
(23, 'Filipino', 1, NULL, '2013-08-06 16:42:37'),
(24, 'Suomi', 1, NULL, '2013-08-06 16:42:37'),
(25, 'Français (Canada)', 1, NULL, '2013-08-06 16:42:38'),
(26, 'Français (France)', 1, NULL, '2013-08-06 16:42:38'),
(27, 'Frysk', 1, NULL, '2013-08-06 16:42:38'),
(28, 'Galego', 1, NULL, '2013-08-06 16:42:38'),
(29, 'ქართული', 1, NULL, '2013-08-06 16:42:38'),
(30, 'Deutsch', 1, NULL, '2013-08-06 16:42:38'),
(31, 'Ελληνικά', 1, NULL, '2013-08-06 16:42:38'),
(32, 'Avañe''ẽ', 1, NULL, '2013-08-06 16:42:38'),
(33, 'ગુજરાતી', 1, NULL, '2013-08-06 16:42:38'),
(34, 'हिन्दी', 1, NULL, '2013-08-06 16:42:38'),
(35, 'Magyar', 1, NULL, '2013-08-06 16:42:38'),
(36, 'मराठी', 1, NULL, '2013-08-06 16:42:38'),
(37, 'नेपाली', 1, NULL, '2013-08-06 16:42:38'),
(38, 'ਪੰਜਾਬੀ', 1, NULL, '2013-08-06 16:42:38'),
(39, 'संस्कृतम्', 1, NULL, '2013-08-06 16:42:38'),
(41, 'PARSI', 1, '2013-08-05 17:00:00', '2013-08-06 16:42:38'),
(42, 'spanish', 0, '2013-09-15 20:33:32', '2013-09-15 20:33:32'),
(43, 'spanish', 1, '2013-10-09 01:00:54', '2013-10-09 01:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `messagestatus` enum('Unread','Read','Trash') NOT NULL DEFAULT 'Unread',
  `userdelstatus` enum('View','Delete') NOT NULL DEFAULT 'View',
  `recvdelstatus` enum('View','Delete') NOT NULL DEFAULT 'View',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reciever_id` (`reciever_id`),
  KEY `messagestatus` (`messagestatus`),
  KEY `recvdelstatus` (`recvdelstatus`),
  KEY `userdelstatus` (`userdelstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification`, `enable`) VALUES
(1, 'When someone asks a question from course you create.', 1),
(2, 'When someone sends you a message.', 1),
(3, 'When someone starts to follow you.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `paymentref` varchar(255) DEFAULT NULL,
  `paymentnote` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `paymentstatus` tinyint(1) DEFAULT NULL,
  `payment` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `paypalaccount` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `biography` text,
  `notification` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `webLink` varchar(255) DEFAULT NULL,
  `fbLink` varchar(255) DEFAULT NULL,
  `twitterLink` varchar(255) DEFAULT NULL,
  `gplusLink` varchar(255) DEFAULT NULL,
  `language` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `state_id` (`state_id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `user_id`, `first_name`, `last_name`, `paypalaccount`, `email`, `about`, `city`, `phone`, `state_id`, `country_id`, `image`, `newsletter`, `status`, `reference`, `designation`, `heading`, `biography`, `notification`, `privacy`, `webLink`, `fbLink`, `twitterLink`, `gplusLink`, `language`, `created`, `modified`) VALUES
(3, 3, 'Shivam Sharma', NULL, '', '', '', NULL, '', NULL, NULL, '/img/3/profileimg/profile.JPG', 0, 0, '', NULL, NULL, NULL, NULL, 'a:3:{s:20:"make profile private";s:1:"1";s:30:"Show Profile in Search Engines";s:1:"0";s:23:"Show Courses in Profile";s:1:"0";}', NULL, NULL, NULL, NULL, 0, '2015-02-07 05:18:13', '2015-02-07 05:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remembertoken` varchar(255) NOT NULL,
  `loginfrom` enum('Site','FB','Twitter') NOT NULL,
  `status` tinyint(1) NOT NULL,
  `passwordstatus` varchar(255) NOT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `profiletype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 for private and 0 for public ',
  `user_type` enum('Teacher','Student') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fbid`, `username`, `password`, `remembertoken`, `loginfrom`, `status`, `passwordstatus`, `newsletter`, `profiletype`, `user_type`, `created`, `modified`) VALUES
(3, '', 'shivamsharma586@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 1, '0', NULL, 0, 'Teacher', '2015-02-07 05:18:13', '2015-02-07 05:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_complete_course_lectures`
--

CREATE TABLE IF NOT EXISTS `user_complete_course_lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_learning_courses`
--

CREATE TABLE IF NOT EXISTS `user_learning_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_view_courses`
--

CREATE TABLE IF NOT EXISTS `user_view_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist_courses`
--

CREATE TABLE IF NOT EXISTS `user_wishlist_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
