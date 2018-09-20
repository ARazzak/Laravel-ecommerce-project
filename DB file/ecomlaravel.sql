-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2018 at 07:18 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_08_054959_create_tbl_admin_table', 1),
(2, '2018_07_09_015727_create_tbl_category_table', 2),
(3, '2018_07_10_063230_create_manufacture_table', 3),
(4, '2018_07_10_110144_create_tbl_products_table', 4),
(5, '2018_07_12_095559_create_tbl_slider_table', 5),
(6, '2018_07_15_194709_create_tbl_customer_table', 6),
(7, '2018_07_15_205513_create_tbl_shipping_table', 7),
(8, '2018_07_20_025204_create_tbl_payment_table', 8),
(9, '2018_07_20_025533_create_tbl_order_table', 8),
(10, '2018_07_20_025611_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'a.razzak12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Abdur Razzak', '01721788183', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'BABY, KIDS & TOYS', 'This is Kids category.', 1, NULL, NULL),
(6, 'SPORTSWEAR', 'This a sportswear&nbsp;', 1, NULL, NULL),
(7, 'MEN\'S FASHION', 'This is fashion', 1, NULL, NULL),
(8, 'HOUSEHOLDS', 'This is Households category.', 1, NULL, NULL),
(10, 'HOME & KITCEN', 'This is clothing category.', 1, NULL, NULL),
(11, 'WOMEN\'S FASHION', 'This is&nbsp;', 1, NULL, NULL),
(12, 'ELECTRONICS', 'All&nbsp;ELECTRONICS here...', 1, NULL, NULL),
(13, 'HOME & LIVING', 'This is&nbsp;HOME &amp; LIVING ..', 1, NULL, NULL),
(14, 'SPORTS & TRAVEL', 'This is Sports category.', 1, NULL, NULL),
(15, 'BEAUTY & HEALTH', 'This is beauty and health...', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'Abdur Razzak', 'a.razzak12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01721788183', NULL, NULL),
(2, 'Abdur Rouf', 'a.rouf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01721788100', NULL, NULL),
(3, 'Abu Bokkor', 'abubokkor@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01721789012', NULL, NULL),
(4, 'Rofik', 'rofik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01721878183', NULL, NULL),
(5, 'jossim uddin', 'jossim@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Apple', 'Apple manufacture', 1, NULL, NULL),
(3, 'OTOBI', 'otobi brand', 1, NULL, NULL),
(4, 'Samsung', 'This is Samsung brand.', 1, NULL, NULL),
(5, 'Walton', 'Waltan BD', 1, NULL, NULL),
(6, 'Womens World', 'Womens world brand', 1, NULL, NULL),
(7, 'Aarong', 'This is Aarong brand.', 1, NULL, NULL),
(8, 'Hatil', 'Hatil nice brand', 1, NULL, NULL),
(9, 'Yellow', 'This is Yellow brand.', 1, NULL, NULL),
(10, 'Ecstasy', 'This is Ecstasy.', 1, NULL, NULL),
(11, 'Asus', 'This is Asus', 1, NULL, NULL),
(12, 'Toshiba', 'This is Toshiba', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 5, '1,200.00', 'pending', '2018-07-22 17:19:25', NULL),
(2, 1, 8, 6, '1,200.00', 'pending', '2018-07-22 17:19:45', NULL),
(3, 1, 8, 7, '1,200.00', 'pending', '2018-07-22 17:19:53', NULL),
(4, 1, 8, 8, '1,200.00', 'pending', '2018-07-22 17:20:03', NULL),
(5, 1, 8, 9, '1,200.00', 'pending', '2018-07-22 17:21:39', NULL),
(6, 1, 8, 10, '3,200.00', 'pending', '2018-07-22 17:22:33', NULL),
(7, 1, 8, 11, '3,200.00', 'pending', '2018-07-22 17:23:52', NULL),
(8, 1, 8, 12, '3,200.00', 'pending', '2018-07-22 17:23:59', NULL),
(9, 1, 9, 14, '12,000.00', 'pending', '2018-07-22 17:30:22', NULL),
(10, 1, 9, 15, '12,000.00', 'pending', '2018-07-22 17:30:29', NULL),
(11, 1, 9, 16, '12,000.00', 'pending', '2018-07-22 17:30:34', NULL),
(12, 1, 8, 17, '5,200.00', 'pending', '2018-07-22 17:37:31', NULL),
(13, 1, 8, 18, '5,200.00', 'pending', '2018-07-22 17:37:49', NULL),
(14, 1, 8, 19, '5,200.00', 'pending', '2018-07-22 17:37:54', NULL),
(15, 1, 10, 20, '80,000.00', 'pending', '2018-07-24 01:01:51', NULL),
(16, 1, 10, 21, '80,000.00', 'pending', '2018-07-24 01:04:59', NULL),
(17, 1, 10, 22, '80,000.00', 'pending', '2018-07-24 01:05:14', NULL),
(18, 3, 11, 23, '1,200.00', 'pending', '2018-07-24 04:00:10', NULL),
(19, 4, 12, 24, '25,200.00', 'pending', '2018-07-25 12:24:23', NULL),
(20, 5, 13, 25, '14,400.00', 'pending', '2018-09-12 16:01:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Shirt', '1200', '1', NULL, NULL),
(2, 2, 2, 'Shirt', '1200', '1', NULL, NULL),
(3, 3, 2, 'Shirt', '1200', '1', NULL, NULL),
(4, 4, 2, 'Shirt', '1200', '1', NULL, NULL),
(5, 5, 2, 'Shirt', '1200', '1', NULL, NULL),
(6, 6, 2, 'Shirt', '1200', '1', NULL, NULL),
(7, 6, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(8, 7, 2, 'Shirt', '1200', '1', NULL, NULL),
(9, 7, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(10, 8, 2, 'Shirt', '1200', '1', NULL, NULL),
(11, 8, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(12, 9, 4, 'IPhone 5 Puls', '12000', '1', NULL, NULL),
(13, 10, 4, 'IPhone 5 Puls', '12000', '1', NULL, NULL),
(14, 11, 4, 'IPhone 5 Puls', '12000', '1', NULL, NULL),
(15, 12, 2, 'Shirt', '1200', '1', NULL, NULL),
(16, 12, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(17, 12, 5, 'Women Three Pice', '2000', '1', NULL, NULL),
(18, 13, 2, 'Shirt', '1200', '1', NULL, NULL),
(19, 13, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(20, 13, 5, 'Women Three Pice', '2000', '1', NULL, NULL),
(21, 14, 2, 'Shirt', '1200', '1', NULL, NULL),
(22, 14, 8, 'Sofa Chair', '2000', '1', NULL, NULL),
(23, 14, 5, 'Women Three Pice', '2000', '1', NULL, NULL),
(24, 15, 11, 'Laptop', '40000', '2', NULL, NULL),
(25, 16, 11, 'Laptop', '40000', '2', NULL, NULL),
(26, 17, 11, 'Laptop', '40000', '2', NULL, NULL),
(27, 18, 2, 'Shirt', '1200', '1', NULL, NULL),
(28, 19, 2, 'Shirt', '1200', '1', NULL, NULL),
(29, 19, 4, 'IPhone 5 Puls', '12000', '2', NULL, NULL),
(30, 20, 2, 'Shirt', '1200', '2', NULL, NULL),
(31, 20, 4, 'IPhone 5 Puls', '12000', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2018-07-22 16:42:21', NULL),
(2, 'cart', 'pending', '2018-07-22 16:44:06', NULL),
(3, 'cart', 'pending', '2018-07-22 16:44:56', NULL),
(4, 'bkash', 'pending', '2018-07-22 17:00:28', NULL),
(5, 'handcash', 'pending', '2018-07-22 17:19:25', NULL),
(6, 'cart', 'pending', '2018-07-22 17:19:45', NULL),
(7, 'bkash', 'pending', '2018-07-22 17:19:52', NULL),
(8, 'handcash', 'pending', '2018-07-22 17:20:03', NULL),
(9, 'handcash', 'pending', '2018-07-22 17:21:39', NULL),
(10, 'handcash', 'pending', '2018-07-22 17:22:32', NULL),
(11, 'cart', 'pending', '2018-07-22 17:23:52', NULL),
(12, 'bkash', 'pending', '2018-07-22 17:23:59', NULL),
(13, 'handcash', 'pending', '2018-07-22 17:24:53', NULL),
(14, 'handcash', 'pending', '2018-07-22 17:30:21', NULL),
(15, 'cart', 'pending', '2018-07-22 17:30:29', NULL),
(16, 'bkash', 'pending', '2018-07-22 17:30:34', NULL),
(17, 'handcash', 'pending', '2018-07-22 17:37:31', NULL),
(18, 'cart', 'pending', '2018-07-22 17:37:49', NULL),
(19, 'bkash', 'pending', '2018-07-22 17:37:53', NULL),
(20, 'handcash', 'pending', '2018-07-24 01:01:51', NULL),
(21, 'handcash', 'pending', '2018-07-24 01:04:59', NULL),
(22, 'handcash', 'pending', '2018-07-24 01:05:14', NULL),
(23, 'handcash', 'pending', '2018-07-24 04:00:10', NULL),
(24, 'handcash', 'pending', '2018-07-25 12:24:23', NULL),
(25, 'handcash', 'pending', '2018-09-12 16:01:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `category_id`, `manufacture_id`, `product_name`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 7, 7, 'Shirt', 'This is nice shirt..', '<span style=\"font-size: 13.3333px;\">This is nice shirt. I bought this shirt.</span>', 1200.00, 'image/bM0CFRENLs5k2FRXjxQx.jpg', 'Small, Medium,Large,', 'Red, Yellow, White', 1, NULL, NULL),
(3, 7, 9, 'T-Shrit', '<span style=\"font-size: 13.3333px;\">This is nice shirt..</span>', '<span style=\"font-size: 13.3333px;\">This is nice shirt..</span>', 800.00, 'image/kLLLHSPZRfJQWbRBL4sV.jpg', 'Small, Medium,Large,', 'Red, Green, White', 1, NULL, NULL),
(4, 12, 2, 'IPhone 5 Puls', '<span style=\"font-size: 13.3333px;\">This is nice phone..</span>', '<span style=\"font-size: 13.3333px;\">This is nice phone..</span>', 12000.00, 'image/3YRwwGUUZl7sPHFULWll.jpg', '5\'', 'White, Gold', 1, NULL, NULL),
(5, 11, 10, 'Women Three Pice', '<span style=\"font-size: 13.3333px;\">This is nice drece..</span>', '<span style=\"font-size: 13.3333px;\">This is nice drece.</span>', 2000.00, 'image/bdKedZVPHKIs8eLd0YsY.jpg', 'Small, Medium,Large,', 'Red, Yellow, White', 1, NULL, NULL),
(6, 11, 7, 'Women Cloth', '<span style=\"font-size: 13.3333px;\">This is nice drece.</span>', '<span style=\"font-size: 13.3333px;\">This is nice drece.</span>', 1500.00, 'image/I2gDUlZW0QEngDegHUhN.jpg', 'Small, Medium,Large,', 'Red, Yellow, White', 1, NULL, NULL),
(7, 13, 5, 'Coffee Maker', 'This is nice product..', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', 2500.00, 'image/H4N2BeiX7jVayHSW0bUh.jpg', '10\'', 'White, Gold', 1, NULL, NULL),
(8, 13, 3, 'Sofa Chair', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', 2000.00, 'image/ooWF72PaoED0OrBEqtrd.jpg', '10 kg', 'White, Gold', 1, NULL, NULL),
(9, 13, 3, 'Table', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', 5000.00, 'image/1zQBJ9ieOfyKRdRXKo3s.jpg', 'Small, Medium,Large,', 'Red, Yellow, White', 1, NULL, NULL),
(10, 3, 9, 'Baby Frok', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', '<span style=\"font-size: 13.3333px;\">This is nice product..</span>', 500.00, 'image/bfqYsYLPPrLkUt8VNBm4.jpg', 'Small, Medium,Large,', 'Red, Yellow, White', 1, NULL, NULL),
(11, 12, 4, 'Laptop', '<span style=\"font-size: 13.3333px;\">nice product</span>', '<span style=\"font-size: 13.3333px;\">nice product</span>', 40000.00, 'image/Q3Dzn1YwwT4Rk9ZlQWhN.jpg', '5kg', 'Red, Yellow, White', 1, NULL, NULL),
(12, 12, 5, 'Tablat', '<span style=\"font-size: 13.3333px;\">nice product</span>', '<span style=\"font-size: 13.3333px;\">nice product</span>', 18000.00, 'image/nywTy1oe0XqDALKz40iZ.jpg', '2g', 'White, Gold', 1, NULL, NULL),
(13, 12, 4, 'Samsumg Phone', '<span style=\"font-size: 13.3333px;\">nice product</span>', '<span style=\"font-size: 13.3333px;\">nice product</span>', 20000.00, 'image/idyLJUH4TfbOFbXx410g.jpg', '5.5\'\'', 'red, white', 1, NULL, NULL),
(14, 3, 7, 'Baby Cloth', 'This is nice product', '<span style=\"font-size: 13.3333px;\">This is nice product</span>', 400.00, 'image/wZ3bHqOCaUQwKnQ9Fr0j.jpg', 'Small, Medium', 'Red, Yellow, White', 1, NULL, NULL),
(15, 3, 6, 'Baby shrit', '<span style=\"font-size: 13.3333px;\">This is nice product</span>', '<span style=\"font-size: 13.3333px;\">This is nice product</span>', 300.00, 'image/cwELivPkeYe1vDktV41m.png', 'Small, Medium', 'White, Gold', 1, NULL, NULL),
(16, 3, 7, 'Baby Frok', '<span style=\"font-size: 13.3333px;\">This is nice product</span>', '<span style=\"font-size: 13.3333px;\">This is nice product</span>', 500.00, 'image/yQ78gFFEEAqAOeBKvElJ.jpg', 'Small, Medium', 'White, Gold', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'a.razzak12@gmail.com', 'Abdur', 'Rouf', 'Md.pur', '01721788183', 'Dhaka', NULL, NULL),
(2, 'a.razzak12@gmail.com', 'Abdur', 'Rouf', 'Md.pur', '01721788183', 'Dhaka', NULL, NULL),
(3, 'ron@gmail.com', 'Mr.', 'Ron', 'Dhanmondi', '01762345678', 'Dhaka', NULL, NULL),
(4, 'rony@yahoo.com', 'Mr.', 'Rony', 'Md.pur', '09187320987', 'Dhaka', NULL, NULL),
(5, 'jony@gmail.com', 'Md.', 'Jony', 'Dhanmondi', '09123456', 'Dhaka', NULL, NULL),
(6, 'jon@gmail.com', 'mr.', 'jon', 'dalfjd', 'alsdkfj', 'alsdkfj', NULL, NULL),
(7, 'a.razzak12@gmail.com', 'wetwetr', 'sdfg', 'sdfg', 'sdg', 'asdf', NULL, NULL),
(8, 'sdf@gmail.com', 'lkjj', 'oiuyt', 'wesaq', '09876543', 'ijuhk', NULL, NULL),
(9, 'abc@gmail.com', 'abc', 'ajlas', 'alsdfkj', '9885644', 'lasdfkj', NULL, NULL),
(10, 'momy@hotmail.com', 'Mr.', 'momy', 'bosila', '0193855', 'Dhaka', NULL, NULL),
(11, 'httio@gmail.com', 'Mr.', 'httti', 'dalkdfj', '091234', 'ijuhk', NULL, NULL),
(12, 'jadu@gmail.com', 'Md.', 'Jadu', 'Dhanmondi', '01291345231', 'Dinajpur', NULL, NULL),
(13, 'a.razzak12@gmail.com', 'Mr.', 'Rouf', 'Dhanmondi', '01721788183', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/4UqDbjbdPa3mJhLxhq6e.jpg', '1', NULL, NULL),
(3, 'slider/lXb92cZh7j6ypIZAR2VS.jpg', '1', NULL, NULL),
(4, 'slider/DLIE05uTINrNUi6UahyT.jpg', '0', NULL, NULL),
(5, 'slider/kTvbEteLKhVtD0yVHkDs.jpg', '0', NULL, NULL),
(6, 'slider/vblfn4xqoAVll7V5gIF5.png', '1', NULL, NULL),
(7, 'slider/pGqrkQjevmKvOKbeUQHC.jpg', '0', NULL, NULL),
(8, 'slider/0FdCBMiO35keIFNQWWlH.jpg', '1', NULL, NULL),
(9, 'slider/CEagQvdDAH364sW7uCL2.png', '1', NULL, NULL);

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
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
