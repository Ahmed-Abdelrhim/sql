-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 01:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `phone`, `email`, `password`) VALUES
(3, 'mohamed wael', '0101010', 'mohamedwaelol74@gmail.com', '1010'),
(4, 'Mostafa Mohamed', '01206556130', 'mostafamohamed@gmail.com', '1111'),
(5, 'Abdelrhim', '01152067271', 'abdelrhim@gmail.com', '2222'),
(6, 'ahmed ebrahim', '00000000', 'ahmedebrahim@gmail.com', '3333'),
(7, 'mostafa gamal', '0505050', 'mostafagamal@gmail.com', '4444');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `manger_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `location`, `manger_id`) VALUES
(1, 'Helwan', 3),
(2, 'Banha', 4),
(3, 'Maasra', 5),
(4, 'Zagazig', 7),
(5, 'Hawamdya', 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(15) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `admin_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `admin_id`) VALUES
(5, 'Marijuana', 3),
(6, 'Hallucinogens.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `phone`, `address`, `password`, `image`) VALUES
(5, 'Ahmed Abdelrhim', 'ahmed@gmail.com', 1152067271, 'Helwan', '123', '316316.png'),
(7, 'Ahmed Azzam', 'azzam@gmail.com', 1010162658, 'Elmassara, Helwan', '123', '165350012620210713_000200.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `medicine_title` varchar(50) NOT NULL,
  `medicine_image` varchar(100) NOT NULL,
  `medicine_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(15) NOT NULL,
  `order_amount` varchar(50) NOT NULL,
  `order_description` varchar(300) NOT NULL,
  `med_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `name`, `phone`, `email`, `password`, `branch_id`) VALUES
(1, 'Mohamed Elhossiny', 1111111, 'mohamedelhossiny@gmail.com', '9999', 1),
(5, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(6, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(7, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(8, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(9, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(10, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(11, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(12, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(13, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(14, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(15, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(16, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(17, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(18, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(19, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(20, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(21, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(22, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(23, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1),
(24, 'Ahmed', 11500, 'ahmed@gmail.com', '011500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `manger_id` (`manger_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `med_id` (`med_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`manger_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`med_id`) REFERENCES `medicines` (`id`);

--
-- Constraints for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD CONSTRAINT `pharmacist_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
