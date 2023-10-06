-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 07:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_medical_protal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `a_name`, `role`) VALUES
(1, 'admin', 'admin@gamil.com', '202cb962ac59075b964b07152d234b70', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `a_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `appointment_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`a_id`, `d_id`, `p_id`, `appointment_name`, `phone_number`, `session`, `date`) VALUES
(18, 6, 5, 'ishara Taarindu', '07582363434', 'Morning', '2022-05-02'),
(21, 2, 5, 'malith ', '0758236348', 'Morning', '2022-05-26'),
(22, 2, 6, 'Madawi Nehansa\r\n', '0778956963\r\n', 'Morning', '2022-05-26'),
(23, 2, 6, 'Chinthka kavinda', '0765445678\r\n', 'Morning', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `payment_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `number` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `ex_date` date NOT NULL,
  `cvv` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`payment_id`, `a_id`, `p_id`, `p_name`, `date`, `number`, `type`, `ex_date`, `cvv`, `price`) VALUES
(3, 22, 5, 'Ishara', '2022-05-22 10:58:52', 32424, 'RuPay', '2022-05-05', 342, 2400),
(4, 18, 5, '324', '2022-05-22 11:05:24', 2147483647, 'Visa', '2022-05-18', 242, 400),
(5, 18, 5, 'ishara', '2022-05-22 11:05:24', 2147483647, 'Visa', '2022-05-18', 242, 5400);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `doctor_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `price_per_appointment` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'doctor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `username`, `email`, `password`, `d_name`, `doctor_type`, `location`, `gender`, `price_per_appointment`, `description`, `role`) VALUES
(2, 'sanduni', 'Sandun@gmail.com', '202cb962ac59075b964b07152d234b70', 'Sanduni', 'doctor', 'Kandy', 'Female ', '2300', 'afaff', 'doctor'),
(3, 'chamika', 'chamika@gmail.com', '202cb962ac59075b964b07152d234b70', 'chamika', 'specialised vp', 'Kandy', 'Male', '4000', 'dsczfzf', 'doctor'),
(4, 'sadun', 'sadun12@gmail.com', '123', 'sadun', 'doctor', 'Ampara', 'Male', '2500', 'moratuwa', 'doctor'),
(5, 'neelaka', 'neelaka668@gmail.com', '202cb962ac59075b964b07152d234b70', 'neelaka', 'specialised vp', 'Ampara', 'Male', '2500', 'moratuwa', 'doctor'),
(6, 'kalani', 'kalani@gmail.com', '202cb962ac59075b964b07152d234b70', 'kalani', 'specialised vp', 'Ampara', 'Female', '2500', 'moratuwa', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `f_id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`f_id`, `p_id`, `d_id`) VALUES
(35, 5, 2),
(36, 5, 3),
(37, 5, 4),
(38, 5, 5),
(40, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `lab_upload`
--

CREATE TABLE `lab_upload` (
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `L_location` varchar(255) DEFAULT NULL,
  `sp_note` varchar(255) DEFAULT NULL,
  `file` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_upload`
--

INSERT INTO `lab_upload` (`email`, `username`, `phone_number`, `L_location`, `sp_note`, `file`) VALUES
('Sandun@gmail.com', 'user', '0758236348', 'Kandy', 'i love you', 0x74656d706c6174652d30312e706e67),
('Sandun@gmail.com', 'user', '0758236348', 'Kandy', 'i love you', 0x74656d706c6174652d30312e706e67),
('Sandun@gmail.com', 'user', '07582363434', 'Colombo', 'i hate you', ''),
('Sandun@gmail.com', 'user', '07582363434', 'Colombo', 'i love you', 0x74656d706c6174652d30312e706e67),
('Sandun@gmail.com', 'IT21174780', '0758236348', 'Colombo', 'i love you', 0x74656d706c6174652d30312e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `p_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `special_note` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`p_id`, `username`, `email`, `password`, `p_name`, `phone_number`, `location`, `special_note`, `role`) VALUES
(1, 'Madawi\r\n', 'madawi@gmail.com\r\n', '8cb2237d0679ca88db6464eac60\r\n', 'Madawi Nehansa\r\n', '0778956963\r\n', 'Gampaha\r\n', 'Heart patient\r\n', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
