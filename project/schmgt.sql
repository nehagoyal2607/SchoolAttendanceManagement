-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 10:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schmgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_accountant`
--

CREATE TABLE `s_accountant` (
  `ID` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `schoolCode` bigint(20) DEFAULT NULL,
  `profilePic` varchar(755) DEFAULT NULL,
  `qualification` varchar(755) DEFAULT NULL,
  `address` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_accountant`
--

INSERT INTO `s_accountant` (`ID`, `name`, `login`, `mobileNo`, `gender`, `dob`, `schoolCode`, `profilePic`, `qualification`, `address`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'AccountantAccountant', 'Accountant@gmail.com', '7544564565', 'Male', '1996-10-06', 10203, 'gPZwCbdS.jpg', 'dvwivi,wdcvuwevf,webfi', 'wefwefbibiwr', 'Admin@gmail.com', 'Admin@gmail.com', '2019-11-02 04:37:28', '2019-11-02 04:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `s_attendance`
--

CREATE TABLE `s_attendance` (
  `ID` bigint(20) NOT NULL,
  `studentId` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `schoolCode` bigint(20) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `className` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_attendance`
--

INSERT INTO `s_attendance` (`ID`, `studentId`, `name`, `schoolCode`, `classId`, `className`, `status`, `date`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 1, 'Neha Goyal', 10204, 1, 'Ist', 'Present', '2020-10-23', 'sheena@gmail.com', 'sheena@gmail.com', '2020-10-23 04:39:22', '2020-10-23 04:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `s_class`
--

CREATE TABLE `s_class` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_class`
--

INSERT INTO `s_class` (`ID`, `name`, `description`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'Ist', 'First class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:22:13', '2019-10-31 06:32:20'),
(2, 'IInd', 'Second Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:22:42', '2019-11-02 05:29:38'),
(3, 'IIIrd', 'Third Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:22:54', '2019-11-02 05:29:48'),
(4, 'IVth', 'Fourth Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:02', '2019-11-05 04:31:27'),
(5, 'Vth', 'Fifth Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:12', '2019-11-05 04:31:32'),
(6, 'VIth', 'Sixth Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:21', '2019-11-05 04:31:39'),
(7, 'VIIth', 'Seventh Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:29', '2019-11-05 04:31:51'),
(8, 'VIIIth', 'Eighth Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:38', '2019-11-05 04:31:59'),
(9, 'IXth', 'Ninth Class', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:23:51', '2019-11-05 04:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `s_faculty`
--

CREATE TABLE `s_faculty` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `schoolCode` bigint(20) DEFAULT NULL,
  `profilePic` varchar(755) DEFAULT NULL,
  `qualification` varchar(755) DEFAULT NULL,
  `address` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_faculty`
--

INSERT INTO `s_faculty` (`ID`, `name`, `login`, `mobileNo`, `gender`, `dob`, `schoolCode`, `profilePic`, `qualification`, `address`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'Sheena Chopra', 'sheena@gmail.com', '8586548585', 'Female', '1998-10-06', 10202, 'https://image.flaticon.com/icons/png/512/97/97371.png', 'PhD', 'Pitampura, Delhi', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:17:59', '2019-11-02 04:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `s_fee`
--

CREATE TABLE `s_fee` (
  `ID` bigint(20) NOT NULL,
  `studentId` bigint(20) DEFAULT NULL,
  `studentName` varchar(225) DEFAULT NULL,
  `pay` bigint(20) DEFAULT NULL,
  `totalfee` bigint(20) DEFAULT NULL,
  `paid` bigint(20) DEFAULT NULL,
  `due` bigint(20) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_fee`
--

INSERT INTO `s_fee` (`ID`, `studentId`, `studentName`, `pay`, `totalfee`, `paid`, `due`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 1, 'Neha Goyal', 12000, 25000, 12000, 13000, 'Accountant@gmail.com', 'Accountant@gmail.com', '2020-10-23 04:25:05', '2019-11-07 12:33:43'),
(2, 1, 'Student Student', 2000, 25000, 14000, 11000, 'Accountant@gmail.com', 'Accountant@gmail.com', '2019-11-07 12:34:02', '2019-11-07 12:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `s_genratemarksheet`
--

CREATE TABLE `s_genratemarksheet` (
  `ID` bigint(20) NOT NULL,
  `RollNo` bigint(20) DEFAULT NULL,
  `studentId` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `className` varchar(225) DEFAULT NULL,
  `schoolCode` bigint(20) DEFAULT NULL,
  `totalCreadit` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `CGPA` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_genratemarksheet`
--

INSERT INTO `s_genratemarksheet` (`ID`, `RollNo`, `studentId`, `name`, `classId`, `className`, `schoolCode`, `totalCreadit`, `total`, `CGPA`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 1, 1, 'Neha Goyal', 1, 'Ist', 10204, 262, 400, 65.5, NULL, NULL, '2020-10-23 04:26:24', '2019-11-07 05:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `s_marksheet`
--

CREATE TABLE `s_marksheet` (
  `ID` bigint(20) NOT NULL,
  `rollNo` bigint(20) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `className` varchar(225) DEFAULT NULL,
  `subjectId` bigint(20) DEFAULT NULL,
  `subjectName` varchar(225) DEFAULT NULL,
  `studentId` bigint(20) DEFAULT NULL,
  `studentName` varchar(225) DEFAULT NULL,
  `schoolCode` bigint(20) DEFAULT NULL,
  `mark` bigint(20) DEFAULT NULL,
  `grade` varchar(225) DEFAULT NULL,
  `result` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_marksheet`
--

INSERT INTO `s_marksheet` (`ID`, `rollNo`, `classId`, `className`, `subjectId`, `subjectName`, `studentId`, `studentName`, `schoolCode`, `mark`, `grade`, `result`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 1, 1, 'Ist', 2, 'English', 1, 'Neha Goyal', 10204, 65, 'B', 'PASS', 'Faculty@gmail.com', 'Faculty@gmail.com', '2020-10-23 04:34:34', '2019-11-07 05:17:51'),
(2, 1, 1, 'Ist', 3, 'Environmental Science (EVS)', 1, 'Neha Goyal', 10204, 54, 'C', 'PASS', 'Faculty@gmail.com', 'Faculty@gmail.com', '2020-10-23 04:34:58', '2019-11-07 05:17:51'),
(3, 1, 1, 'Ist', 4, 'Mathematics', 1, 'Neha Goyal', 10204, 65, 'B', 'PASS', 'Faculty@gmail.com', 'Faculty@gmail.com', '2020-10-23 04:34:53', '2019-11-07 05:17:51'),
(4, 1, 1, 'Ist', 5, 'Hindi', 1, 'Neha Goyal', 10204, 78, 'B', 'PASS', 'Faculty@gmail.com', 'Faculty@gmail.com', '2020-10-23 04:34:48', '2019-11-07 05:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `s_role`
--

CREATE TABLE `s_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_role`
--

INSERT INTO `s_role` (`ID`, `name`, `description`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'Admin', 'Administration', NULL, NULL, '2019-10-23 07:45:28', '2019-10-23 07:45:25'),
(2, 'Faculty', 'Faculty', NULL, NULL, '2019-10-23 07:45:45', '2019-10-23 07:45:48'),
(3, 'Account', 'Account', NULL, NULL, '2019-10-23 07:46:04', '2019-10-23 07:46:07'),
(4, 'Student', 'Student', NULL, NULL, '2019-10-23 07:46:25', '2019-10-23 07:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `s_student`
--

CREATE TABLE `s_student` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `fatherName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `className` varchar(225) DEFAULT NULL,
  `schoolcode` bigint(20) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `bloodGroup` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `profilePic` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_student`
--

INSERT INTO `s_student` (`ID`, `name`, `fatherName`, `login`, `className`, `schoolcode`, `address`, `bloodGroup`, `gender`, `dob`, `mobileNo`, `profilePic`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'Neha Goyal', 'Ajay Goyal', 'neha@gmail.com', 'Ist', 10204, 'Prashant Vihar, Delhi', 'A+', 'Female', '1998-06-07', '9165415593', 'https://www.ioesedu.com/wp-content/uploads/2020/03/graduate-student-avatar-100x100.png', 'root', 'root', '2020-10-23 04:11:53', '2019-11-02 03:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `s_subject`
--

CREATE TABLE `s_subject` (
  `ID` bigint(20) NOT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `className` varchar(225) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_subject`
--

INSERT INTO `s_subject` (`ID`, `classId`, `className`, `name`, `description`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(2, 1, 'Ist', 'English', 'English', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:36:08', '2019-11-05 04:34:29'),
(3, 1, 'Ist', 'Environmental Science (EVS)', 'EVS', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:36:13', '2019-11-05 04:34:46'),
(4, 1, 'Ist', 'Mathematics', 'Mathematics', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:36:20', '2019-11-05 04:34:59'),
(5, 1, 'Ist', 'Hindi', 'Hindi', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:36:25', '2019-11-05 04:35:08'),
(6, 3, 'IIIrd', 'Social Science', 'Social Science', 'Admin@gmail.com', 'Admin@gmail.com', '2020-10-23 04:36:32', '2019-11-12 03:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `s_user`
--

CREATE TABLE `s_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profilePic` varchar(755) DEFAULT NULL,
  `schoolId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_user`
--

INSERT INTO `s_user` (`ID`, `firstName`, `lastName`, `login`, `password`, `dob`, `mobileNo`, `roleId`, `gender`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`, `profilePic`, `schoolId`) VALUES
(1, 'Admin', 'Admin', 'Admin@gmail.com', 'Admin@123', '1997-10-06', '9165415599', 1, 'Male', 'root', 'root', '2020-10-23 04:37:38', '2019-11-01 09:26:32', 'https://as2.ftcdn.net/jpg/03/14/89/35/500_F_314893581_tUD72LLFabc09hAwa5VgFIE73lJDd2PN.jpg', 10201),
(2, 'Sheena', 'Chopra', 'sheena@gmail.com', 'Fac@123', '1998-10-06', '8586548585', 2, 'Female', 'root', 'Admin@gmail.com', '2020-10-23 04:19:18', '2019-11-01 09:30:35', 'https://image.flaticon.com/icons/png/512/97/97371.png', 10202),
(4, 'Neha', 'Goyal', 'neha@gmail.com', 'Stu@123', '1998-06-07', '9165415593', 4, 'Female', 'root', 'Admin@gmail.com', '2020-10-23 13:03:24', '2019-11-02 02:58:24', 'https://www.ioesedu.com/wp-content/uploads/2020/03/graduate-student-avatar-100x100.png', 10204);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_attendance`
--
ALTER TABLE `s_attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_attendance` (`studentId`),
  ADD KEY `classId` (`classId`);

--
-- Indexes for table `s_class`
--
ALTER TABLE `s_class`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `s_faculty`
--
ALTER TABLE `s_faculty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `s_fee`
--
ALTER TABLE `s_fee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_fee` (`studentId`);

--
-- Indexes for table `s_genratemarksheet`
--
ALTER TABLE `s_genratemarksheet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_genratemarksheet` (`studentId`),
  ADD KEY `classId` (`classId`);

--
-- Indexes for table `s_marksheet`
--
ALTER TABLE `s_marksheet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_marksheet` (`classId`),
  ADD KEY `studentId` (`studentId`),
  ADD KEY `subjectId` (`subjectId`);

--
-- Indexes for table `s_role`
--
ALTER TABLE `s_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `s_student`
--
ALTER TABLE `s_student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `s_subject`
--
ALTER TABLE `s_subject`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_subject` (`classId`);

--
-- Indexes for table `s_user`
--
ALTER TABLE `s_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_s_user` (`roleId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `s_attendance`
--
ALTER TABLE `s_attendance`
  ADD CONSTRAINT `FK_s_attendance` FOREIGN KEY (`studentId`) REFERENCES `s_student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_attendance_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `s_class` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_fee`
--
ALTER TABLE `s_fee`
  ADD CONSTRAINT `FK_s_fee` FOREIGN KEY (`studentId`) REFERENCES `s_student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_genratemarksheet`
--
ALTER TABLE `s_genratemarksheet`
  ADD CONSTRAINT `FK_s_genratemarksheet` FOREIGN KEY (`studentId`) REFERENCES `s_student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_genratemarksheet_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `s_class` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_marksheet`
--
ALTER TABLE `s_marksheet`
  ADD CONSTRAINT `FK_s_marksheet` FOREIGN KEY (`classId`) REFERENCES `s_class` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_marksheet_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `s_student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_marksheet_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `s_subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_subject`
--
ALTER TABLE `s_subject`
  ADD CONSTRAINT `FK_s_subject` FOREIGN KEY (`classId`) REFERENCES `s_class` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_user`
--
ALTER TABLE `s_user`
  ADD CONSTRAINT `FK_s_user` FOREIGN KEY (`roleId`) REFERENCES `s_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
