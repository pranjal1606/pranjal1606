-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2023 at 09:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buddypets`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminid` int(5) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `adminpassword` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`adminid`, `name`, `email`, `adminpassword`) VALUES
(1, 'Admin', 'admin@project.com', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

CREATE TABLE `adopt` (
  `adoptid` int(5) NOT NULL,
  `petname` varchar(32) NOT NULL,
  `petprice` varchar(32) NOT NULL,
  `petbreed` varchar(32) NOT NULL,
  `petweight` varchar(32) NOT NULL,
  `petheight` varchar(32) NOT NULL,
  `petcolor` varchar(32) NOT NULL,
  `lifespan` varchar(32) NOT NULL,
  `petage` varchar(32) NOT NULL,
  `petimage` varchar(256) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`adoptid`, `petname`, `petprice`, `petbreed`, `petweight`, `petheight`, `petcolor`, `lifespan`, `petage`, `petimage`, `status`) VALUES
(1, 'Duke(rescued)', '50000', 'Husky', '20 kg', '55 cm', 'White-Grey', '12-15 years', '2 years', 'img/petimages/4764 Duke rescued.jpeg', 1),
(2, 'Johny', '45000', 'Pocket Poodle', '2-4 KG', '24-28 CM', 'Brown', '12-15 Years', '3 years', 'img/petimages/6338 Johny img1.jpeg', 1),
(3, 'Angel', '48000', 'American Shorthair', '3.8 kg', '22 cm', 'Black', '15-17 years', '6 months', 'img/petimages/2167 Angel img2.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adoptrequest`
--

CREATE TABLE `adoptrequest` (
  `requestid` int(5) NOT NULL,
  `datetime` timestamp NULL DEFAULT current_timestamp(),
  `adoptid` int(5) NOT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptrequest`
--

INSERT INTO `adoptrequest` (`requestid`, `datetime`, `adoptid`, `email`, `status`) VALUES
(1, '2023-04-13 10:18:24', 2, 'pranjal@gmail.com', 1),
(2, '2023-04-13 12:27:44', 2, 'neel@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(5) NOT NULL,
  `contactperson` varchar(64) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `email1` varchar(128) NOT NULL,
  `email2` varchar(128) NOT NULL,
  `address` varchar(256) NOT NULL,
  `googlemap` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactid`, `contactperson`, `phone1`, `phone2`, `email1`, `email2`, `address`, `googlemap`) VALUES
(1, 'BuddyPets', '1234567890', '0987654321', 'buddypets@gmail.com', 'buddy@gmail.com', 'University road', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3669.146131048189!2d72.54269177736977!3d23.12833328497354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e832f45125167%3A0x876cb1cb23c25bdb!2sNirma%20University!5e0!3m2!1sen!2sin!4v1678368883949!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>                                                                                                ');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqid` int(5) NOT NULL,
  `question` varchar(256) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqid`, `question`, `description`, `status`) VALUES
(1, 'Demo', 'Demo text', 1),
(2, 'Another Question', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryid` int(5) NOT NULL,
  `title` varchar(64) NOT NULL,
  `imagepath` varchar(512) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryid`, `title`, `imagepath`, `status`) VALUES
(1, 'Dog', 'img/gallery/9591_slider_gallery1.jpeg', 1),
(2, 'Cat', 'img/gallery/5311_slider_gallery3.jpeg', 1),
(3, 'Bird', 'img/gallery/3055_slider_gallery5.jpeg', 1),
(4, 'Fish', 'img/gallery/1923_slider_gallery6.jpeg', 1),
(5, 'Hamster', 'img/gallery/8928_slider_gallery7.jpeg', 1),
(6, 'Fish', 'img/gallery/4435_slider_gallery9.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logid` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(256) NOT NULL,
  `event` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logid`, `timestamp`, `email`, `event`) VALUES
(1, '2023-02-28 13:51:33', 'pranjal@gmail.com', 'un-successfully Attempt for Login'),
(2, '2023-02-28 13:51:50', 'admin@project.com', 'Successfully Login'),
(3, '2023-03-01 12:39:35', 'admin@project.com', 'Successfully Login'),
(4, '2023-03-01 13:10:14', 'admin@project.com', 'Successfully Login'),
(5, '2023-03-01 13:25:26', '', 'un-successfull attempt for changing password'),
(6, '2023-03-01 13:25:36', '', 'un-successfull attempt for changing password'),
(7, '2023-03-01 13:26:20', '', 'un-successfull attempt for changing password'),
(8, '2023-03-01 13:26:51', '', 'un-successfull attempt for changing password'),
(9, '2023-03-01 13:27:52', 'admin@project.com', 'Password changed successfully'),
(10, '2023-03-01 13:35:52', 'admin@project.com', 'Username Changed to Admin user'),
(11, '2023-03-01 13:36:30', 'admin@project.com', 'Username Changed to Admin'),
(12, '2023-03-09 13:14:32', 'admin@project.com', 'un-successfully Attempt for Login'),
(13, '2023-03-09 13:14:45', 'admin@project.com', 'un-successfully Attempt for Login'),
(14, '2023-03-09 13:23:16', 'admin@project.com', 'Successfully Login'),
(15, '2023-03-10 12:43:43', 'admin@project.com', 'Successfully Login'),
(16, '2023-03-10 12:43:51', 'admin@project.com', 'Password changed successfully'),
(17, '2023-03-14 12:52:09', 'admin@project.com', 'Successfully Login'),
(18, '2023-03-14 12:52:09', 'admin@project.com', 'Successfully Login'),
(19, '2023-03-16 13:18:32', 'admin@project.com', 'Successfully Login'),
(20, '2023-03-16 13:38:57', 'admin@project.com', 'Car1 Service Updated in Database'),
(21, '2023-03-17 13:08:26', 'admin@project.com', 'Successfully Login'),
(22, '2023-03-18 12:55:16', 'admin@project.com', 'Successfully Login'),
(23, '2023-03-18 13:21:13', 'admin@project.com', 'Demo FAQ Added in Database'),
(24, '2023-03-18 13:27:03', 'admin@project.com', 'Another Question FAQ Added in Database'),
(25, '2023-03-18 13:27:13', 'admin@project.com', 'Another Question FAQ Added in Database'),
(26, '2023-03-18 13:27:33', 'admin@project.com', 'Another Question FAQ Added in Database'),
(27, '2023-03-18 13:28:28', 'admin@project.com', 'Another Question FAQ Added in Database'),
(28, '2023-03-18 13:28:43', 'admin@project.com', 'Another Question FAQ Added in Database'),
(29, '2023-03-18 13:37:20', 'admin@project.com', 'Another Question 1 FAQ Updated in Database'),
(30, '2023-03-18 13:37:26', 'admin@project.com', 'Another Question FAQ Updated in Database'),
(31, '2023-03-18 13:40:23', 'admin@project.com', 'Another Question fd FAQ Updated in Database'),
(32, '2023-03-18 13:40:30', 'admin@project.com', 'Another Question FAQ Updated in Database'),
(33, '2023-03-20 13:24:54', 'admin@project.com', 'Successfully Login'),
(34, '2023-03-21 02:39:26', 'admin@project.com', 'Successfully Login'),
(35, '2023-03-21 11:50:28', 'admin@project.com', 'Successfully Login'),
(36, '2023-03-22 14:09:44', 'admin@project.com', 'Successfully Login'),
(37, '2023-04-05 13:36:58', 'admin@project.com', 'Successfully Login'),
(38, '2023-04-06 13:04:44', 'admin@project.com', 'Successfully Login'),
(39, '2023-04-07 12:48:20', 'admin@project.com', 'Successfully Login'),
(40, '2023-04-10 13:07:32', 'admin@project.com', 'Successfully Login'),
(41, '2023-04-11 12:15:10', 'admin@project.com', 'Successfully Login'),
(42, '2023-04-12 12:30:34', 'admin@project.com', 'Successfully Login'),
(43, '2023-04-13 09:34:56', 'admin@project.com', 'Successfully Login'),
(44, '2023-04-13 14:44:21', 'admin@project.com', 'Successfully Login'),
(45, '2023-04-14 02:11:27', 'admin@project.com', 'Successfully Login'),
(46, '2023-04-14 02:37:05', 'admin@project.com', 'Successfully Login'),
(47, '2023-04-14 02:37:32', 'admin@project.com', 'Successfully Login'),
(48, '2023-04-14 02:39:42', 'admin@project.com', 'Successfully Login');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(5) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `sendername` varchar(64) NOT NULL,
  `senderemail` varchar(132) NOT NULL,
  `senderphone` varchar(32) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `messagetext` varchar(4096) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `timestamp`, `sendername`, `senderemail`, `senderphone`, `subject`, `messagetext`, `status`) VALUES
(1, '2023-03-16 13:45:53', 'neel', 'neel@gmail.com', '1122334455', 'My dog is not eating properly', 'Please guide me', 1),
(4, '2023-04-11 12:31:55', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Cat Sitting', 'demo', 0),
(5, '2023-04-11 12:32:17', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Cat Sitting', 'demo', 0),
(6, '2023-04-11 12:33:53', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Dog Walk', 'demo', 0),
(7, '2023-04-11 12:35:58', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Dog Walk', 'dzfs', 0),
(8, '2023-04-11 12:46:36', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Demo', 'sfdsfsdf', 0),
(9, '2023-04-11 12:47:07', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Demo', 'sfdsfsdf', 0),
(10, '2023-04-12 12:30:25', 'pranjal', 'pranjal@gmail.com', '0099887766', 'Demo', 'uhjk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceid` int(5) NOT NULL,
  `servicename` varchar(32) NOT NULL,
  `serviceicon` varchar(128) NOT NULL,
  `servicedesc` varchar(256) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceid`, `servicename`, `serviceicon`, `servicedesc`, `status`) VALUES
(1, 'Family', '<i class=\"fa fa-home\" aria-hidden=\"true\"></i>', 'Familyer Pets', 1),
(2, 'Car1', '<i class=\"fa fa-bus\" aria-hidden=\"true\"></i>', 'Car Lovers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sliderid` int(5) NOT NULL,
  `title` varchar(64) NOT NULL,
  `imagepath` varchar(512) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sliderid`, `title`, `imagepath`, `status`) VALUES
(1, 'A pet lovers paradise', 'img/slider/7434_slider_bg_1.jpg', 1),
(2, 'A pet lovers paradise', 'img/slider/4807_slider_bg_2.jpg', 0),
(3, 'A pet lover\"s paradise', 'img/slider/9878_slider_bg_3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `socialid` int(5) NOT NULL,
  `facebook` varchar(256) NOT NULL,
  `twitter` varchar(256) NOT NULL,
  `instagram` varchar(256) NOT NULL,
  `youtube` varchar(256) NOT NULL,
  `whatsapp` varchar(256) NOT NULL,
  `snapchat` varchar(256) NOT NULL,
  `telegram` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`socialid`, `facebook`, `twitter`, `instagram`, `youtube`, `whatsapp`, `snapchat`, `telegram`) VALUES
(1, 'https://www.facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com', 'https://www.whatsapp.com', 'https://www.snapchat.com/en-US', 'https://telegram.org');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(5) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`, `phone`, `address`) VALUES
(1, 'pranjal', 'pranjal@gmail.com', '3acd0be86de7dcccdbf91b20f94a68cea535922d', '09898107057', 'Kalawad Road\r\nRoyal palace'),
(2, 'neel', 'neel@gmail.com', '3acd0be86de7dcccdbf91b20f94a68cea535922d', '09898107057', 'Kalawad Road\r\nRoyal palace'),
(3, 'prisha', 'prisha@gmail.com', '3acd0be86de7dcccdbf91b20f94a68cea535922d', '09898107057', 'Kalawad Road\r\nRoyal palace');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `adopt`
--
ALTER TABLE `adopt`
  ADD PRIMARY KEY (`adoptid`);

--
-- Indexes for table `adoptrequest`
--
ALTER TABLE `adoptrequest`
  ADD PRIMARY KEY (`requestid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sliderid`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`socialid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `adminid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adopt`
--
ALTER TABLE `adopt`
  MODIFY `adoptid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adoptrequest`
--
ALTER TABLE `adoptrequest`
  MODIFY `requestid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `logid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `sliderid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `socialid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
