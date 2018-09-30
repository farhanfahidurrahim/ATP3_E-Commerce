-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 10:29 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_05_01_153508_create_tbl_admin_table', 1),
(2, '2018_05_01_155241_create_tbl_category_table', 2),
(3, '2018_05_01_163916_create_manufacture_table', 3),
(4, '2018_05_02_075439_create_tbl_products_table', 4),
(5, '2018_05_02_165628_create_tbl_slider_table', 5),
(6, '2018_05_15_060943_create_tbl_customer_table', 6),
(7, '2018_05_15_071620_create_tbl_shipping_table', 7),
(8, '2018_05_16_171416_create_payment_table', 8),
(9, '2018_05_16_171711_create_order_table', 9),
(10, '2018_05_16_171735_create_details_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'fahidurrahim@gmail.com', 'd1bbb2af69fd350b6d6bd88655757b47', 'Fahidur Rahim', '01675717825', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'Men', 'This is men<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(5, 'Women', 'This is women<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(6, 'Child', 'This is child<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(7, 'Electronics', 'This is electronics<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(8, 'Others', 'This is others<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(9, 'Furniture', 'this is furniture<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(10, 'Sports', 'This is sports<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(11, 'Laptop', 'This is laptop<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(14, 'Cloths', 'This is cloths<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(15, 'Computer', 'this is computer<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(16, 'Mobile Phone', 'this is mobile phone<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(17, 'Camera', 'this is camera<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(18, 'Accessories', 'this is accessories<div id=\"selenium-highlight\"></div>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'Fahidur Rahim Farhan', 'fahidur@gmail.com', '698d51a19d8a121ce581499d7b701668', '717825', NULL, NULL),
(2, 'Fahidur Farhan Rahim', 'fahidur1@gmail.com', '698d51a19d8a121ce581499d7b701668', '45678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Zara', 'this is zara<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(3, 'Xiaomi', 'this is xioami<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(4, 'Addidus', 'this is addidus<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(6, 'Otobi', 'this is otobi<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(7, 'Asus', 'this is asus&nbsp;<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(8, 'LG', 'this is lg<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(9, 'Canon', 'this is canon<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(10, 'Infinity', 'this is infinity<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(11, 'Easy', 'this is easy<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(12, 'Plus Point', 'this is plus point<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(13, 'Bata', 'this is bata<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(14, 'Apex', 'this is apaex<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(15, 'Text-mart', 'this is text-mart<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(16, 'Yellow', 'this is yellow<div id=\"selenium-highlight\"></div>', 1, NULL, NULL),
(18, 'Ecstay', 'this is ecstay<div id=\"selenium-highlight\"></div>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, '500.00', 'pending', '2018-05-16 19:40:35', NULL),
(2, 1, 6, 2, '500.00', 'pending', '2018-05-16 19:43:05', NULL),
(3, 1, 6, 3, '500.00', 'pending', '2018-05-16 19:52:15', NULL),
(4, 1, 6, 4, '500.00', 'pending', '2018-05-16 19:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 'Basic Headphone', '500', '1', NULL, NULL),
(2, 3, 8, 'Basic Headphone', '500', '1', NULL, NULL),
(3, 4, 8, 'Basic Headphone', '500', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2018-05-16 19:40:35', NULL),
(2, 'bkash', 'pending', '2018-05-16 19:43:05', NULL),
(3, 'handcash', 'pending', '2018-05-16 19:52:15', NULL),
(4, 'handcash', 'pending', '2018-05-16 19:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'Redmi 4x', 16, 3, 'iuhcibdc<div id=\"selenium-highlight\"></div>', 'najnja<div id=\"selenium-highlight\"></div>', 12000.00, 'image/UAlYmChV3Kg26y2dprYx.jpeg', '5\' inc', 'Black, White', 1, NULL, NULL),
(5, 'Asus X456u', 11, 7, 'kvolsdnv', 'psjvpsn', 50000.00, 'image/mQD7uZR70Ld3unTNq4t2.jpg', '21\' inc', 'Golden, White, Black', 1, NULL, NULL),
(6, 'Half Shirt', 4, 1, 'rffvsdsd', 'sswd', 1500.00, 'image/kxTKpPvSHFHcLLU9qLXw.jpg', 'xxl, xl, m', 'white, black, blue', 1, NULL, NULL),
(7, 'Loong- scurt', 5, 16, 'ofowbfo<div id=\"selenium-highlight\"></div>', 'fifjownov<div id=\"selenium-highlight\"></div>', 3000.00, 'image/g4H6zeoTVHiEd5NJib7N.jpg', 'XL, L, M', 'White Black', 1, NULL, NULL),
(8, 'Basic Headphone', 18, 3, 'onfovv<div id=\"selenium-highlight\"></div>', 'soichsodbc<div id=\"selenium-highlight\"></div>', 500.00, 'image/UCOVgIRvohc3DBQP7vvZ.jpg', 'Meduim', 'Black, White', 1, NULL, NULL),
(9, 'Power Bank', 18, 3, 'odjsdbcs<div id=\"selenium-highlight\"></div>', 'vosojv<div id=\"selenium-highlight\"></div>', 1200.00, 'image/rAYuuxb35xStS3C34IhJ.jpg', 'small', 'Black, White', 1, NULL, NULL),
(10, 'Full Shirt', 4, 15, 'oivhsov', 'dpsosppo', 2000.00, 'image/SHoURXq075B1uVxxD0In.jpg', 'XL, L, M', 'Black, White', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'nahidmh@gmail.com', 'Nahid', 'Mahmudulhasan', 'Uttara', '768683', 'Dhaka', NULL, NULL),
(2, 'nahidmh1@gmail.com', 'Nahid', 'Mahmudul', 'Kishoreganj', '435345', 'Dhaka', NULL, NULL),
(3, 'nahidmh2@gmail.com', 'Nahidq', 'Mahmudulhas', 'Badda', '907987', 'Dhaka', NULL, NULL),
(4, 'nahidmh3@gmail.com', 'Nahidw', 'Mahmudul', 'Mirpur', '9564', 'Dhaka', NULL, NULL),
(5, 'hriday@gmail.com', 'Hriday', 'Hasan', 'Banani', '96876', 'Dhaka', NULL, NULL),
(6, 'hriday2@gmail.com', 'Hridoy', 'Mahmudul', 'Dhanmondi', '987868', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/ouexkdutzLpezVOkbK64.jpg', '1', NULL, NULL),
(2, 'slider/3U59TPB68jtQdSqPwElj.jpg', '1', NULL, NULL),
(3, 'slider/PVlhcY6bIyEY9u7vlSTz.jpg', '1', NULL, NULL),
(4, 'slider/AD9fzAXE4fvYH834RCcq.png', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
