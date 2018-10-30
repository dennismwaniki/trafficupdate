-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2018 at 08:10 AM
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
-- Database: `clinic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_doctors`
--

CREATE TABLE `table_doctors` (
  `Exp` decimal(20,0) NOT NULL,
  `doctor_id` varchar(20) NOT NULL,
  `surname` text NOT NULL,
  `others` text NOT NULL,
  `dept` text NOT NULL,
  `proffession` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_doctors`
--

INSERT INTO `table_doctors` (`Exp`, `doctor_id`, `surname`, `others`, `dept`, `proffession`, `gender`) VALUES
('0', 'doct21', 'mwangi', 'joswe', 'surgery', 'doctor', 'female'),
('0', 'doc1', 'joshua', 'garang', 'deng', 'accountant', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `table_patients`
--

CREATE TABLE `table_patients` (
  `surname` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `phone` int(20) NOT NULL,
  `residence` text NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_patients`
--

INSERT INTO `table_patients` (`surname`, `fname`, `lname`, `phone`, `residence`, `patient_id`, `gender`, `date`, `email`) VALUES
('Joe', 'Allan', 'Ken', 2147483647, 'Narok', 'Cinic0006', 'on', '2018-10-18 07:37:23', 'xyzee@gmail.com'),
('Joe', 'Allan', 'Ken', 2147483647, 'Narok', 'Cinic0008', 'Male', '2018-10-19 05:57:58', 'emailexamplehere@gmail.com'),
('Joe', 'Allan', 'Johnson', 72578787, 'Nkr', 'Clinic001', 'Male', '2018-10-17 08:07:55', 'allan@allan.com'),
('Joe', 'Allan', 'Johnson', 72578787, 'Nkr', 'Clinic002', 'Male', '2018-10-17 08:09:33', 'allan@allan.com'),
('ken', 'BLA', 'BLACKSHEEP', 725555555, 'kisumu', 'patient 19', 'on', '2018-10-19 13:48:22', 'bla@gmail.com'),
('popol', 'desmond', 'mwanik', 729365698, 'nairobi', 'patient45', 'on', '2018-10-23 13:38:53', 'mwaki@gmail.com'),
('kinimwa', 'mwangi', 'lol', 702632123, '489nakuru', 'patiet04', 'male', '2018-10-18 05:46:05', 'kinimwa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `table_patients_info`
--

CREATE TABLE `table_patients_info` (
  `patient_id` varchar(20) NOT NULL,
  `weight` decimal(20,0) NOT NULL,
  `height` decimal(20,0) NOT NULL,
  `temparature` decimal(20,0) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_patients_info`
--

INSERT INTO `table_patients_info` (`patient_id`, `weight`, `height`, `temparature`, `description`) VALUES
('patient 12', '123', '45', '39', 'lolololo');

-- --------------------------------------------------------

--
-- Table structure for table `table_traffic`
--

CREATE TABLE `table_traffic` (
  `road` int(50) NOT NULL,
  `info` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_traffic`
--

INSERT INTO `table_traffic` (`road`, `info`, `time`) VALUES
(0, '', '2018-10-29 08:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `table_traffic1`
--

CREATE TABLE `table_traffic1` (
  `road` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_traffic1`
--

INSERT INTO `table_traffic1` (`road`, `info`, `time`) VALUES
('kiambu road', 'gfdghhj', '2018-10-30 06:57:55'),
('Moi avenue', 'jdgvdf fvhdfkjv vkjdfhvd dfsvhdfv vdfvhdfv', '2018-10-30 06:32:56'),
('waiyaki way', 'bhnfnhjfgh ghdghdhgd', '2018-10-30 06:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `table_users`
--

CREATE TABLE `table_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_users`
--

INSERT INTO `table_users` (`username`, `password`, `role`, `status`) VALUES
('admin', '1234567', 'admin', 'active'),
('ann', '12345678', 'nurse', 'active'),
('mwaniki', '5236', 'pilot', 'active'),
('tom', '12345', 'doctor', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_patients`
--
ALTER TABLE `table_patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `table_patients_info`
--
ALTER TABLE `table_patients_info`
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `patient_id_2` (`patient_id`),
  ADD KEY `patient_id_3` (`patient_id`),
  ADD KEY `patient_id_4` (`patient_id`);

--
-- Indexes for table `table_traffic`
--
ALTER TABLE `table_traffic`
  ADD PRIMARY KEY (`road`);

--
-- Indexes for table `table_traffic1`
--
ALTER TABLE `table_traffic1`
  ADD PRIMARY KEY (`road`);

--
-- Indexes for table `table_users`
--
ALTER TABLE `table_users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
