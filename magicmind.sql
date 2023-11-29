-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 11:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magicmind`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(255) NOT NULL,
  `reg_email` varchar(100) NOT NULL,
  `reg_password` varchar(500) NOT NULL,
  `reg_phone` varchar(100) NOT NULL,
  `reg_dob` date NOT NULL,
  `reg_gender` tinyint(4) NOT NULL COMMENT '1=> Female, 2=> Male, 3=> Other',
  `reg_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reg_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=> Active, 0=> Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `reg_name`, `reg_email`, `reg_password`, `reg_phone`, `reg_dob`, `reg_gender`, `reg_created_at`, `reg_status`) VALUES
(1, 'Abhijit Chatterjee', 'abhijitc@arbsoft.com', '$2y$10$FHwRkKHUBEgXIV2lMJu6o.Qad.Hg1uV6ZImot/TCkA05SaeXRtEkm', '9123035535', '2023-11-02', 2, '2023-11-29 05:35:35', 1),
(2, 'tuhina', 'aaa@gmail.com', '$2y$10$0QXuSBOueVzOEg2Qp4kjf.eClwHgL.tLxIkij6.5ycfXdNt6KDUJC', '9865321456', '2023-11-01', 1, '2023-11-29 09:36:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(11) NOT NULL,
  `todo_reg_id` int(11) NOT NULL,
  `todo_date` date NOT NULL,
  `todo_title` varchar(255) NOT NULL,
  `todo_details` text NOT NULL,
  `todo_complete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=> No, 1=> Yes',
  `todo_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=> Active, 0=> Inactive',
  `todo_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `todo_updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`todo_id`, `todo_reg_id`, `todo_date`, `todo_title`, `todo_details`, `todo_complete`, `todo_status`, `todo_created_at`, `todo_updated_at`) VALUES
(1, 1, '2023-11-10', 'testing', 'testing purpose fff', 1, 1, '2023-11-29 06:26:12', '2023-11-29 09:33:58'),
(2, 1, '2023-11-02', 'rrr', 'wdsdsd', 1, 1, '2023-11-29 07:02:34', '2023-11-29 09:33:04'),
(3, 2, '2023-11-02', 'rrrr', 'gdgfgf', 0, 1, '2023-11-29 09:37:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
