-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 10:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-10-02 14:40:20', '21-10-2020 04:55:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `department`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(5, 'CO327', 'Machine Learning', '10', '1-5', 60, '2020-10-27 04:52:32', '01-11-2020 06:18:11 PM'),
(6, 'SE301', 'OOSE', '12', '1-7', 50, '2020-10-27 04:53:31', NULL),
(7, 'SE321', 'Artificial Intelligence', '12', '1-5', 50, '2020-10-27 04:54:04', NULL),
(13, 'IT327', 'Machine Learning', '11', '1-5', 10, '2020-11-21 07:55:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT 5,
  `department` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `session`, `department`, `semester`, `course`, `enrollDate`) VALUES
(6, '2K18/SE/065', 5, 12, 9, 6, '2020-10-27 04:55:33'),
(7, '2K18/SE/060', 5, 10, 9, 5, '2020-10-27 04:56:56'),
(8, '2K18/SE/065', 5, 12, 9, 7, '2020-10-27 10:55:32'),
(11, '2K18/SE/065', 5, 10, 9, 5, '2020-10-31 07:41:15'),
(13, '2K18/SE/060', 5, 12, 9, 7, '2020-11-17 12:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(8, 'Admin', '2020-10-27 04:41:39'),
(9, 'Test', '2020-10-27 04:41:47'),
(10, 'COE', '2020-10-27 04:41:56'),
(11, 'IT', '2020-10-27 04:42:02'),
(12, 'SE', '2020-10-27 04:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(9, '2', '2020-11-02 20:37:12', NULL),
(10, '4', '2020-11-02 20:37:19', NULL),
(11, '6', '2020-11-02 20:37:26', NULL),
(12, '8', '2020-11-02 20:37:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(5, '2020-2021', '2020-10-27 04:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `phone_no` bigint(10) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `StudentEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `phone_no`, `creationdate`, `updationDate`, `StudentEmail`) VALUES
('2K18/SE/060', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Gaurav Kumar', 9857643091, '2020-10-25 15:40:06', NULL, 'abc@gmail.com'),
('2K18/SE/065', '', 'f925916e2754e5e03f75dd58a5733251', 'Harsh Vardhan Singh', 9354027667, '2020-10-25 15:00:01', NULL, 'rajput.harsh2301@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `loginTime`, `logout`) VALUES
(23, '2K18/SE/065', '2020-10-25 15:33:15', NULL),
(24, '2K18/SE/060', '2020-10-25 15:41:34', '25-10-2020 09:12:12 PM'),
(25, '2K18/SE/065', '2020-10-26 13:19:51', '26-10-2020 06:50:32 PM'),
(26, '2K18/SE/060', '2020-10-26 13:21:03', '26-10-2020 06:51:37 PM'),
(27, '2K18/SE/065', '2020-10-27 04:31:06', '27-10-2020 10:25:53 AM'),
(28, '2K18/SE/060', '2020-10-27 04:56:09', '27-10-2020 10:27:21 AM'),
(29, '2K18/SE/065', '2020-10-27 10:51:01', NULL),
(30, '2K18/SE/060', '2020-10-27 14:32:33', '27-10-2020 08:05:05 PM'),
(31, '2K18/SE/065', '2020-10-28 05:15:53', NULL),
(32, '2K18/SE/065', '2020-10-28 19:33:39', '29-10-2020 01:13:23 AM'),
(34, '2K18/SE/015', '2020-10-28 20:08:45', '29-10-2020 01:39:35 AM'),
(35, '2K18/SE/065', '2020-10-30 07:06:25', '30-10-2020 12:37:22 PM'),
(36, '2K18/SE/065', '2020-10-30 09:28:34', NULL),
(37, '2K18/SE/060', '2020-10-30 15:43:08', NULL),
(38, '2K18/SE/065', '2020-10-30 16:22:42', '30-10-2020 09:55:17 PM'),
(39, '2K18/SE/065', '2020-10-30 16:46:11', NULL),
(40, '2K18/SE/065', '2020-10-30 16:53:25', NULL),
(41, '2K18/SE/065', '2020-10-30 17:36:39', '30-10-2020 11:07:00 PM'),
(42, '2K18/SE/065', '2020-10-30 17:55:07', '30-10-2020 11:26:49 PM'),
(43, '2K18/SE/065', '2020-10-31 07:06:31', '31-10-2020 12:38:49 PM'),
(44, '2K18/SE/015', '2020-10-31 07:28:39', '31-10-2020 01:00:50 PM'),
(45, '2K18/SE/015', '2020-10-31 07:32:58', '31-10-2020 01:03:36 PM'),
(46, '2K18/SE/065', '2020-10-31 07:36:41', '31-10-2020 01:27:14 PM'),
(47, '2K18/SE/065', '2020-10-31 13:26:56', '31-10-2020 06:57:22 PM'),
(48, '2K18/SE/065', '2020-11-02 07:37:21', '02-11-2020 01:27:17 PM'),
(49, 'fwafd3', '2020-11-02 08:54:45', '02-11-2020 02:27:32 PM'),
(50, '2K18/SE/060', '2020-11-02 09:01:30', '02-11-2020 02:31:46 PM'),
(51, '2K18/SE/065', '2020-11-02 20:41:32', '03-11-2020 02:23:56 AM'),
(52, '2K18/SE/065', '2020-11-02 20:55:10', '03-11-2020 02:28:54 AM'),
(53, '2K18/SE/060', '2020-11-03 16:07:06', '03-11-2020 09:38:08 PM'),
(54, '2K18/SE/065', '2020-11-04 06:35:23', '04-11-2020 12:06:56 PM'),
(55, '2K18/SE/065', '2020-11-04 14:48:34', NULL),
(56, '2K18/SE/065', '2020-11-04 20:02:46', '05-11-2020 01:33:14 AM'),
(57, '2K18/SE/065', '2020-11-05 05:18:12', '05-11-2020 10:53:25 AM'),
(58, '2K18/SE/065', '2020-11-06 05:41:33', '06-11-2020 11:16:06 AM'),
(59, '2K18/SE/065', '2020-11-07 05:46:33', '07-11-2020 11:17:09 AM'),
(60, '2K18/SE/065', '2020-11-07 06:01:02', '07-11-2020 11:31:16 AM'),
(61, '2K18/SE/065', '2020-11-07 08:47:31', '07-11-2020 02:17:37 PM'),
(62, '2K18/SE/065', '2020-11-07 08:48:19', '07-11-2020 02:19:16 PM'),
(63, '2K18/SE/065', '2020-11-07 09:07:16', '07-11-2020 03:28:54 PM'),
(64, '2K18/SE/065', '2020-11-08 06:15:02', '08-11-2020 12:48:48 PM'),
(65, '2K18/SE/060', '2020-11-08 07:22:27', '08-11-2020 12:52:29 PM'),
(66, '2K18/SE/065', '2020-11-08 07:23:02', '08-11-2020 12:54:44 PM'),
(67, '2K18/SE/065', '2020-11-09 18:00:32', '09-11-2020 11:30:59 PM'),
(68, '2K18/SE/065', '2020-11-11 07:23:06', '11-11-2020 12:54:05 PM'),
(69, '2K18/SE/065', '2020-11-17 07:02:41', '17-11-2020 01:04:53 PM'),
(70, '2K18/SE/060', '2020-11-17 07:35:10', '17-11-2020 01:06:03 PM'),
(71, '2K18/SE/065', '2020-11-17 07:54:46', '17-11-2020 04:40:32 PM'),
(72, '2K18/SE/065', '2020-11-17 12:29:34', '17-11-2020 06:00:13 PM'),
(73, '2K18/SE/060', '2020-11-17 12:30:22', '17-11-2020 06:04:53 PM'),
(74, '2K18/SE/065', '2020-11-17 12:43:46', '17-11-2020 06:18:02 PM'),
(75, '2K18/SE/065', '2020-11-20 07:35:09', '20-11-2020 02:08:40 PM'),
(76, '2K18/SE/060', '2020-11-20 09:28:32', NULL),
(77, '2K18/SE/060', '2020-11-20 12:58:11', '20-11-2020 08:01:45 PM'),
(78, '2K18/SE/060', '2020-11-21 05:42:07', NULL),
(79, '2K18/SE/060', '2020-11-21 09:12:36', NULL),
(80, '2K18/SE/065', '2020-11-21 13:15:05', '21-11-2020 07:33:10 PM'),
(81, '2K18/SE/060', '2020-11-21 14:33:38', NULL),
(82, '2K18/SE/065', '2020-11-21 14:54:06', '21-11-2020 08:26:26 PM'),
(83, '2K18/SE/060', '2020-11-21 14:56:35', NULL),
(84, '2K18/SE/060', '2020-11-21 15:00:36', NULL),
(85, '2K18/SE/065', '2020-11-21 15:34:43', NULL),
(86, '2K18/SE/060', '2020-11-22 09:31:10', '22-11-2020 03:01:46 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courseCode` (`courseCode`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
