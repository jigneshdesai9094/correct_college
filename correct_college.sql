-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2025 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `correct_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(145) NOT NULL,
  `password` varchar(145) NOT NULL,
  `email` varchar(145) DEFAULT NULL,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `email`, `image`) VALUES
(1, 'superadmin', 'admin123', 'superadmin@system.com', 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde'),
(2, 'john_admin', 'john123', 'john@system.com', 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1'),
(3, 'mary_admin', 'mary123', 'mary@system.com', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e'),
(4, 'david_admin', 'david123', 'david@system.com', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2'),
(5, 'susan_admin', 'susan123', 'susan@system.com', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `cid` int(11) NOT NULL,
  `cname` varchar(145) NOT NULL,
  `cdesc` longtext DEFAULT NULL,
  `cactivity` longtext DEFAULT NULL,
  `address` longtext NOT NULL,
  `cimg` longtext DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`cid`, `cname`, `cdesc`, `cactivity`, `address`, `cimg`, `email`) VALUES
(1, 'ABC Engineering College', 'Top engineering institute in North India', 'Tech Fest, Robotics, Sports', 'New Delhi, India', 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b', 'info@abcengg.edu'),
(2, 'XYZ Business School', 'Best B-school focusing on entrepreneurship', 'Seminars, Case Studies, Startups', 'Mumbai, India', 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1', 'contact@xyzbschool.edu'),
(3, 'LMN Medical College', 'Leading institute in medical education', 'Medical Camps, Research Programs', 'Chennai, India', 'https://images.unsplash.com/photo-1581090700227-4c4f50b0e1b6', 'info@lmnmed.edu'),
(4, 'PQR Arts College', 'Renowned arts and humanities college', 'Drama, Painting, Debates', 'Jaipur, India', 'https://images.unsplash.com/photo-1523050843962-3a4f3e83f81c', 'contact@pqrc.edu'),
(5, 'GHI Law College', 'Famous law school with great placements', 'Moot Courts, Legal Aid', 'Kolkata, India', 'https://images.unsplash.com/photo-1581093588401-22f0b0a1b0d7', 'info@ghilaw.edu');

-- --------------------------------------------------------

--
-- Table structure for table `college_admin`
--

CREATE TABLE `college_admin` (
  `ca_id` int(11) NOT NULL,
  `username` varchar(145) NOT NULL,
  `password` varchar(145) NOT NULL,
  `cid` int(11) NOT NULL,
  `email` varchar(145) DEFAULT NULL,
  `image` varchar(145) DEFAULT 'person.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_admin`
--

INSERT INTO `college_admin` (`ca_id`, `username`, `password`, `cid`, `email`, `image`) VALUES
(1, 'raj_admin', 'pass123', 1, 'raj@abc.edu', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e'),
(2, 'anita_admin', 'admin456', 2, 'anita@xyz.edu', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2'),
(3, 'suresh_admin', 'suresh789', 3, 'suresh@lmn.edu', 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1'),
(4, 'pooja_admin', 'pooja101', 4, 'pooja@pqr.edu', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e'),
(5, 'amit_admin', 'amit202', 5, 'amit@ghi.edu', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330');

-- --------------------------------------------------------

--
-- Table structure for table `coll_rating`
--

CREATE TABLE `coll_rating` (
  `c_id` int(11) NOT NULL,
  `c_rval` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coll_rating`
--

INSERT INTO `coll_rating` (`c_id`, `c_rval`, `cid`, `sid`) VALUES
(1, 5, 1, 1),
(2, 4, 2, 2),
(3, 3, 3, 3),
(4, 5, 4, 4),
(5, 4, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `comment` longtext DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `comment`, `sid`, `cid`, `vid`) VALUES
(2, 'Amazing campus life!', 2, 2, 2),
(3, 'Very supportive teachers.', 3, 3, 3),
(4, 'Good facilities but needs improvement.', 4, 4, 4),
(5, 'Excellent placement opportunities.', 5, 5, 5),
(13, 'great', 1, 1, 4),
(14, 'currently i visited this college, college is excellent', 4, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `com_reply`
--

CREATE TABLE `com_reply` (
  `cr_id` int(11) NOT NULL,
  `com_dlike` int(11) NOT NULL,
  `vid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `com_like` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `com_reply`
--

INSERT INTO `com_reply` (`cr_id`, `com_dlike`, `vid`, `sid`, `com_id`, `com_like`, `cid`, `aid`) VALUES
(1, 0, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 2, 2, 5, 2, 2),
(3, 0, 3, 3, 3, 8, 3, 3),
(4, 2, 4, 4, 4, 6, 4, 4),
(5, 1, 5, 5, 5, 7, 5, 5),
(6, 0, 6, NULL, 1, 1, NULL, NULL),
(7, 0, NULL, 1, 13, 1, NULL, NULL),
(8, 0, 6, NULL, 13, 1, NULL, NULL),
(9, 0, 6, NULL, 14, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fname` varchar(145) DEFAULT NULL,
  `cname` varchar(145) DEFAULT NULL,
  `city` varchar(145) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fname`, `cname`, `city`, `mobile`, `email`) VALUES
(1, 'Dr. Sharma', 'ABC Engineering College', 'Delhi', '9876543210', 'contact@abc.edu'),
(2, 'Mr. Patel', 'XYZ Business School', 'Mumbai', '9876501234', 'contact@xyz.edu'),
(3, 'Dr. Iyer', 'LMN Medical College', 'Chennai', '9812345678', 'contact@lmn.edu'),
(4, 'Prof. Menon', 'PQR Arts College', 'Jaipur', '9823456789', 'contact@pqr.edu'),
(5, 'Dr. Roy', 'GHI Law College', 'Kolkata', '9834567890', 'contact@ghi.edu');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(154) DEFAULT NULL,
  `c_duration` int(11) DEFAULT NULL,
  `c_since` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_name`, `c_duration`, `c_since`, `cid`) VALUES
(1, 'Computer Science', 4, 2005, 1),
(2, 'Business Administration', 3, 2010, 2),
(3, 'MBBS', 5, 2008, 3),
(4, 'Fine Arts', 3, 2012, 4),
(5, 'Law', 3, 2007, 5),
(6, 'BBA', 3, 2024, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` int(11) NOT NULL,
  `sen_no` varchar(145) DEFAULT NULL,
  `sroll_no` varchar(45) DEFAULT NULL,
  `sname` varchar(145) DEFAULT NULL,
  `ssem` int(11) DEFAULT NULL,
  `ssection` varchar(45) DEFAULT NULL,
  `sgender` varchar(45) DEFAULT NULL,
  `smobile` varchar(45) DEFAULT NULL,
  `scity` varchar(145) DEFAULT NULL,
  `simg` longtext DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `semail` varchar(145) DEFAULT NULL,
  `sc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `sen_no`, `sroll_no`, `sname`, `ssem`, `ssection`, `sgender`, `smobile`, `scity`, `simg`, `cid`, `semail`, `sc_id`) VALUES
(1, 'EN001', '101', 'Rohit Sharma', 5, 'A', 'Male', '9876543210', 'Delhi', 'https://images.unsplash.com/photo-1596495577886-d920f1fb7238', 1, 'rohit@abc.edu', 1),
(2, 'EN002', '102', 'Priya Verma', 3, 'B', 'Female', '9876501234', 'Mumbai', 'https://images.unsplash.com/photo-1522071820081-009f0129c71c', 2, 'priya@xyz.edu', 2),
(3, 'EN003', '103', 'Karan Patel', 4, 'C', 'Male', '9812345678', 'Chennai', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e', 3, 'karan@lmn.edu', 3),
(4, 'EN004', '104', 'Simran Kaur', 2, 'A', 'Female', '9823456789', 'Jaipur', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2', 4, 'simran@pqr.edu', 4),
(5, 'EN005', '105', 'Amit Joshi', 1, 'B', 'Male', '9834567890', 'Kolkata', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e', 5, 'amit@ghi.edu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tid` int(11) NOT NULL,
  `tname` varchar(45) DEFAULT NULL,
  `tsem` int(11) DEFAULT NULL,
  `tsection` varchar(45) DEFAULT NULL,
  `tsubject` varchar(45) DEFAULT NULL,
  `timg` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tid`, `tname`, `tsem`, `tsection`, `tsubject`, `timg`, `cid`, `c_id`) VALUES
(1, 'Dr. Meena Gupta', 5, 'A', 'Computer Networks', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e', 1, 1),
(2, 'Prof. Rajesh Kumar', 3, 'B', 'Marketing', 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1', 2, 2),
(3, 'Dr. Nisha Iyer', 4, 'C', 'Anatomy', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2', 3, 3),
(4, 'Prof. Arvind Menon', 2, 'A', 'History', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e', 4, 4),
(5, 'Adv. Seema Roy', 1, 'B', 'Corporate Law', 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tech_rating`
--

CREATE TABLE `tech_rating` (
  `t_id` int(11) NOT NULL,
  `t_rval` varchar(145) DEFAULT NULL,
  `tid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_rating`
--

INSERT INTO `tech_rating` (`t_id`, `t_rval`, `tid`, `sid`) VALUES
(1, '1', 1, 1),
(2, '4', 2, 2),
(3, '5', 3, 3),
(4, '3', 4, 4),
(5, '4', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_reg`
--

CREATE TABLE `visitor_reg` (
  `vid` int(11) NOT NULL,
  `vname` varchar(145) DEFAULT NULL,
  `vcity` varchar(145) DEFAULT NULL,
  `vemail` varchar(145) DEFAULT NULL,
  `vimg` longtext DEFAULT NULL,
  `vpassword` varchar(145) DEFAULT NULL,
  `vmobile` varchar(20) DEFAULT NULL,
  `vans` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor_reg`
--

INSERT INTO `visitor_reg` (`vid`, `vname`, `vcity`, `vemail`, `vimg`, `vpassword`, `vmobile`, `vans`) VALUES
(1, 'Neha Singh', 'Delhi', 'neha@gmail.com', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330', 'neha123', '9998887777', 'My teacher'),
(2, 'Karan Gupta', 'Mumbai', 'karan@gmail.com', 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e', 'karan123', '8887776666', 'My favorite teacher'),
(3, 'Riya Sharma', 'Chennai', 'riya@gmail.com', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e', 'riya123', '7776665555', 'My mentor'),
(4, 'Arjun Mehta', 'Jaipur', 'arjun@gmail.com', 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1', 'arjun123', '6665554444', 'My lecturer'),
(5, 'Ananya Roy', 'Kolkata', 'ananya@gmail.com', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2', 'ananya123', '5554443333', 'My professor'),
(6, 'jignesh', 'deesa', 'techfetch9094@gmail.com', 'nitesh Profile.jpeg', 'Abc@12345', '9898191990', 'jay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Indexes for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD PRIMARY KEY (`ca_id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `coll_rating`
--
ALTER TABLE `coll_rating`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `com_reply`
--
ALTER TABLE `com_reply`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `vid` (`vid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `sc_id` (`sc_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `tech_rating`
--
ALTER TABLE `tech_rating`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `visitor_reg`
--
ALTER TABLE `visitor_reg`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `vemail` (`vemail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `college_admin`
--
ALTER TABLE `college_admin`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coll_rating`
--
ALTER TABLE `coll_rating`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `com_reply`
--
ALTER TABLE `com_reply`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tech_rating`
--
ALTER TABLE `tech_rating`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitor_reg`
--
ALTER TABLE `visitor_reg`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD CONSTRAINT `college_admin_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`);

--
-- Constraints for table `coll_rating`
--
ALTER TABLE `coll_rating`
  ADD CONSTRAINT `coll_rating_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`),
  ADD CONSTRAINT `coll_rating_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`vid`) REFERENCES `visitor_reg` (`vid`);

--
-- Constraints for table `com_reply`
--
ALTER TABLE `com_reply`
  ADD CONSTRAINT `com_reply_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `visitor_reg` (`vid`),
  ADD CONSTRAINT `com_reply_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`),
  ADD CONSTRAINT `com_reply_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`),
  ADD CONSTRAINT `com_reply_ibfk_4` FOREIGN KEY (`aid`) REFERENCES `admin` (`aid`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`sc_id`) REFERENCES `course` (`c_id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`cid`),
  ADD CONSTRAINT `teachers_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`);

--
-- Constraints for table `tech_rating`
--
ALTER TABLE `tech_rating`
  ADD CONSTRAINT `tech_rating_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`),
  ADD CONSTRAINT `tech_rating_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
