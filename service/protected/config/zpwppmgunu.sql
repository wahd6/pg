-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 02:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zpwppmgunu`
--

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE `continent` (
  `name` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `name` varchar(100) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `course_details` mediumtext NOT NULL,
  `location` varchar(100) NOT NULL,
  `entry_requirements` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `delivery_mode` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `name` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `name` varchar(100) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `name` varchar(500) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `college_of_graduation` varchar(1000) NOT NULL,
  `year_of_graduation` year(4) NOT NULL,
  `marks_percentage` decimal(10,0) NOT NULL,
  `skills` varchar(2000) NOT NULL,
  `study_level` varchar(2000) NOT NULL,
  `subject_of_interest` varchar(2000) NOT NULL,
  `course_of_interest` varchar(2000) NOT NULL,
  `study_destination_continent` varchar(2000) NOT NULL,
  `study_destination_region` varchar(2000) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(1000) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `university_ranking` int(11) NOT NULL,
  `fee_range` float NOT NULL,
  `courses_category` varchar(100) NOT NULL,
  `qualifications_offered` varchar(100) NOT NULL,
  `total_number_of_students` int(11) NOT NULL,
  `total_number_of_faculty` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `accommodation` varchar(100) NOT NULL,
  `about_us` varchar(10000) NOT NULL,
  `social_media_links` varchar(1000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `country` varchar(100) NOT NULL,
  `admission_requirement` varchar(10000) NOT NULL,
  `videos_pics_docs` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university_contact`
--

CREATE TABLE `university_contact` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university_content`
--

CREATE TABLE `university_content` (
  `video` varchar(100) NOT NULL,
  `video_description` varchar(50000) NOT NULL,
  `video_category` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`name`),
  ADD KEY `continent` (`continent`),
  ADD KEY `region` (`region`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `university` (`university`),
  ADD KEY `specialization` (`specialization`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`name`),
  ADD KEY `continent` (`continent`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`country`),
  ADD KEY `study_level` (`study_level`(767)),
  ADD KEY `subject_of_interest` (`subject_of_interest`(767)),
  ADD KEY `course_of_interest` (`course_of_interest`(767)),
  ADD KEY `study_destination_continent` (`study_destination_continent`(767)),
  ADD KEY `study_destination_region` (`study_destination_region`(767));

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_id`),
  ADD UNIQUE KEY `University Email` (`email_id`),
  ADD KEY `course` (`courses_category`);

--
-- Indexes for table `university_contact`
--
ALTER TABLE `university_contact`
  ADD PRIMARY KEY (`email`),
  ADD KEY `university_contact` (`university`);

--
-- Indexes for table `university_content`
--
ALTER TABLE `university_content`
  ADD PRIMARY KEY (`video`),
  ADD UNIQUE KEY `university_content_university` (`university`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `continent` FOREIGN KEY (`continent`) REFERENCES `continent` (`name`),
  ADD CONSTRAINT `region` FOREIGN KEY (`region`) REFERENCES `region` (`name`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_university` FOREIGN KEY (`university`) REFERENCES `university` (`university_id`),
  ADD CONSTRAINT `specialization` FOREIGN KEY (`specialization`) REFERENCES `specialization` (`name`);

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `continentFK` FOREIGN KEY (`continent`) REFERENCES `continent` (`name`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `user_country` FOREIGN KEY (`country`) REFERENCES `country` (`name`);

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `course` FOREIGN KEY (`courses_category`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `university_contact`
--
ALTER TABLE `university_contact`
  ADD CONSTRAINT `university_contact` FOREIGN KEY (`university`) REFERENCES `university` (`university_id`);

--
-- Constraints for table `university_content`
--
ALTER TABLE `university_content`
  ADD CONSTRAINT `universtiy_contenet_and_university` FOREIGN KEY (`university`) REFERENCES `university` (`university_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
