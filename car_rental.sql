-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 07:02 AM
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
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `pickup_loc` varchar(64) NOT NULL,
  `return_loc` varchar(64) NOT NULL,
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `car` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`pickup_loc`, `return_loc`, `pickup_date`, `return_date`, `name`, `email`, `phone_no`, `date_time`, `id`, `car`, `status`, `hash`) VALUES
('Janakpuri, New Delhi', 'Lucknow', '2022-10-08', '2022-10-21', 'Rakesh Kr Yadav', 'rakesh@gmail.com', 7788996655, '2022-10-08 18:54:04', 1, '', '', ''),
('lucknow', 'new delhi', '2022-10-15', '2022-10-19', 'Rakesh Yadav', 'rakesh@gmail.com', 7788996655, '2022-10-15 09:57:40', 2, '', '', ''),
('Janakpuri, New Delhi', 'Noida', '2022-10-20', '2022-10-26', 'ABC', 'abc@gmail.com', 5456776544, '2022-10-19 08:56:26', 3, '', '', ''),
('subedari', 'ku x road', '2024-02-22', '2024-02-23', 'vishal pariki', 'vishal@gmail.com', 1234567890, '2024-02-23 23:55:33', 4, 'Maruti Suzuki Wagon R', 'cancelled', ''),
('ku x road', 'jangoan', '2024-02-24', '2024-02-25', 'vishal pariki', 'vishal@gmail.com', 1234567890, '2024-02-24 00:15:22', 5, 'Volkswagen Golf', 'Waiting', ''),
('KU X ROAD', 'SUBEDARI', '2024-02-24', '2024-02-26', 'sample', 'sample@gmail.com', 1234567890, '2024-02-24 11:40:43', 6, 'Maruti Suzuki Wagon R', 'cancelled', ''),
('hnk', 'kzp', '2024-02-15', '2024-02-16', 'srinivas p', 'srinivas@gmail.com', 1234567890, '2024-02-25 10:53:48', 7, 'Maruti Suzuki Wagon R', 'booked', '33d8f0a12ab11510c7070a4484cfe28705cb7195b66cd5829a0dbd3008cba6a1'),
('subedari', 'ku x road', '2024-02-28', '2024-02-29', 'aadharsh', 'aadharsh@gmail.com', 1234567890, '2024-02-25 11:05:53', 8, 'Maruti Suzuki Wagon R', 'booked', 'cd8c7678653ee5d96285e28e527eea813ed2f8462316ee10497ced2ddaa46ee8');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `fullname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `pincode` int(11) NOT NULL,
  `hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`fullname`, `email`, `password`, `address`, `pincode`, `hash`) VALUES
('aadarsh', 'aadharsh@gmail.com', '123', 'hnk', 506001, '5eb0351cf10e051916c96056fef655e2dfbaeb0dc8ba54bc892bb31e2946b651'),
('abc', 'abc@gmail.com', '123', 'Sarojni, New Delhi', 110054, '0'),
('Admin', 'admin@gmail.com', 'admin', 'Car Rental', 110054, '0'),
('amit', 'amit@gmail.com', '4567', 'Sarojni, New Delhi', 110057, '0'),
('Piyush Upadhaya', 'piyush@gmail.com', '54321', 'Uttam Nagar, New Delhi', 110057, '0'),
('Rakesh Kr Yadav', 'rakesh@gmail.com', '12345', 'mahavir enclave, new delhi', 110058, '0'),
('sample', 'sample@gmail.com', '123', 'Hnk', 506001, '0'),
('srinivas', 'srinivas@gmail.com', '123', 'hnk', 506001, '3043ac6ce6f8d3099017996b5d66f857a33712ada2c951b335df9c2ff3dc4c6a'),
('aa', 'v234@gamil.com', '1456', 'a', 110037, '0'),
('vishal', 'vishal@gmail.com', '123', 'hnk', 506001, '0'),
('Vivek Singh Adhikari', 'vivek@gmail.com', '67890', 'Sarojni, New Delhi', 110037, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
