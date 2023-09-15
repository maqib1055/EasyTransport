-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 12:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecarbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(3, 'Shahid Abbasi', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tms_driver`
--

CREATE TABLE `tms_driver` (
  `id` int(11) NOT NULL,
  `d_fname` varchar(100) NOT NULL,
  `d_lname` varchar(100) NOT NULL,
  `d_phone` varchar(100) NOT NULL,
  `d_addr` varchar(100) NOT NULL,
  `d_category` varchar(100) NOT NULL,
  `d_email` varchar(100) NOT NULL,
  `d_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_driver`
--

INSERT INTO `tms_driver` (`id`, `d_fname`, `d_lname`, `d_phone`, `d_addr`, `d_category`, `d_email`, `d_pwd`) VALUES
(1, 'abdul', 'manan', '0377793846', 'korangi', 'Driver', 'manan@gmail.com', 'manan123'),
(2, 'salman', 'khan', '456454453535', 'malir', 'Driver', 'salman@gmail.com', 'salman12345'),
(3, 'sameer', 'awan', '0321456987', 'qaidabad', 'Driver', 'sameer@gmail.com', '123'),
(4, 'Ibtisam', 'Ali', '0231456789', 'landhi', 'Driver', 'ibi@gmail.com', 'ibi123');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(11) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(1, 'Elliot Gape', 'This is a demo feedback text. This is a demo feedback text. This is a demo feedback text.', 'Published'),
(2, 'Mark L. Anderson', 'Sample Feedback Text for testing! Sample Feedback Text for testing! Sample Feedback Text for testing!', 'Published'),
(3, 'Liam Moore ', 'test number 3', 'Published'),
(4, 'Clint 01 ', 'good', 'Published'),
(5, 'waris 02 ', 'nice', 'Published'),
(6, 'owais khan ', 'good website', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(11) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'admin@gmail.com'),
(3, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(11) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(50) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_category` varchar(55) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_category`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(13, 'waqar', 'ullah', '01600000000', 'Bogura,Bangladesh', 'User', 'clint@gmail.com', '123456', 'Van', '', 'rkw1234', '2023-09-30', 'Approved'),
(14, 'waris', '02', '03222544675', 'landhi', '', 'waris@gmail.com', 'waris12345', 'Bus', '', 'CA7766', '2023-07-11', 'Approved'),
(15, 'naveed', 'alam', '46465353535', 'landhi', 'User', 'naveed@gmail.com', 'naveed12345', 'Bus', '', 'CA7766', '2023-07-22', 'Approved'),
(16, 'owais', 'khan', '354665656', 'landhi', 'User', 'owais@gmail.com', 'owais123', 'Bus', 'Wedding', 'CA7766', '2023-09-07', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_location` varchar(55) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_location`, `v_dpic`, `v_status`) VALUES
(3, 'Euro Bond', 'CA7766', '50', 'Vincent Pelletier', 'Bus', 'Landhi', 'vendor/img/buscch.jpg', 'Available'),
(4, 'Honda Accord', 'CA2077', '5', 'Joseph Yung', 'Bus', 'Islamabad', 'vendor/img/2019_honda_accord_angularfront.jpg', 'Booked'),
(5, 'Volkswagen Passat', 'CA1690', '5', 'Jesse Robinson', 'Bus', 'Lahore', 'vendor/img/volkswagen-passat-500.jpg', 'Booked'),
(6, 'Nissan Rogue', 'CA1001', '7', 'Demo User', 'Bus', 'Rawalpindi', 'vendor/img/Nissan_Rogue_SV_2021.jpg', 'Booked'),
(7, 'Subaru Legacy', 'CA7700', '5', 'John Settles', 'Bus', 'Sukkur', 'vendor/img/Subaru_Legacy_Premium_2022_2.jpg', 'Booked'),
(27, 'Corola', 'rkw1234', '4', 'salman khan', 'Van', 'Karachi', 'vendor/img/images.jpeg\n', 'Available'),
(28, 'Corola', 'rkw1234', '4', 'salman khan', 'Van', 'Larkana', 'vendor/img/images.jpeg', 'Available'),
(29, 'Corola', 'rkw1234', '4', 'sameer awan', 'Bus', 'Korangi', 'vendor/img/images.jpeg', 'Available'),
(30, 'Corola', 'rkw1234', '4', 'sameer awan', 'Bus', 'Quetta', 'vendor/img/images.jpeg', 'Available'),
(31, 'Alto', 'rkw1234', '4', 'sameer awan', 'SUV', 'lahore', 'vendor/img/Nissan_Rogue_SV_2021.jpg', 'Available'),
(33, 'corolla', '112233', '5', 'abdul manan', 'Bus', 'landhi', 'vendor/img/corolla.jpeg', 'Booked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_driver`
--
ALTER TABLE `tms_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_driver`
--
ALTER TABLE `tms_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
