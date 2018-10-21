-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 10:41 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailor_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uses`
--

CREATE TABLE `about_uses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_uses`
--

INSERT INTO `about_uses` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ABOUT STITCH MY FABRIC', '<p>We offer quality & convenient factory finished sewing services for women. Kurtas, Shalwar Suits & Trousers stitched to perfection as per your measurements. We collect your fabric, sew, finish & deliver within Pakistan in 5 days and internationally in 8 days.<br></p>', '2018-10-18 22:01:35', '2018-10-18 16:01:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addons_closings`
--

CREATE TABLE `addons_closings` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons_closings`
--

INSERT INTO `addons_closings` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Front With Hooks', '1537212786.jpg', '33', '2018-09-17 13:33:06', '2018-09-17 13:33:06', NULL),
(2, 3, 'Back With Hooks', '1537344237.jpg', '40', '2018-09-19 02:01:53', '2018-09-19 02:03:57', NULL),
(3, 3, 'Back With Hooks', '1537344272.jpg', '40', '2018-09-19 02:02:29', '2018-09-19 02:05:33', '2018-09-19 02:05:33'),
(4, 3, 'Side Zip', '1537344301.jpg', '40', '2018-09-19 02:05:01', '2018-09-19 02:05:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addons_delivery_categories`
--

CREATE TABLE `addons_delivery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons_delivery_categories`
--

INSERT INTO `addons_delivery_categories` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Standard Delivery', '1537213136.jpg', '33', '2018-09-17 13:38:56', '2018-09-17 13:38:56', NULL),
(2, 3, 'Standard Delivery', '1537344494.jpg', '40', '2018-09-19 02:08:14', '2018-09-19 02:08:14', NULL),
(3, 3, '7 Day Delivery', '1537344563.jpg', '40', '2018-09-19 02:09:23', '2018-09-19 02:09:23', NULL),
(4, 3, '5 Day Delivery', '1537344586.jpg', '40', '2018-09-19 02:09:46', '2018-09-19 02:09:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addons_others`
--

CREATE TABLE `addons_others` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons_others`
--

INSERT INTO `addons_others` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Tussies(Latkans)', '1537213590.jpg', '1212', '2018-09-17 13:46:30', '2018-09-17 13:46:30', NULL),
(2, 3, 'Tussies(Latkans)', '1537345558.jpg', '100', '2018-09-19 02:25:58', '2018-09-19 02:25:58', NULL),
(3, 3, 'Hemming For Saree', '1537345598.jpg', '100', '2018-09-19 02:26:38', '2018-09-19 02:26:38', NULL),
(4, 3, 'Binding(Pipeing)', '1537345629.jpg', '30', '2018-09-19 02:27:09', '2018-09-19 02:27:09', NULL),
(5, 3, 'Padding With Lining', '1537345666.jpg', '30', '2018-09-19 02:27:46', '2018-09-19 02:27:46', NULL),
(6, 3, 'Saree Falls', '1537345719.jpg', '50', '2018-09-19 02:28:39', '2018-09-19 02:28:39', NULL),
(7, 3, 'Broach', '1537345745.jpg', '50', '2018-09-19 02:29:05', '2018-09-19 02:29:05', NULL),
(8, 3, 'Princess Cut', '1537345788.jpg', '150', '2018-09-19 02:29:48', '2018-09-19 02:29:48', NULL),
(9, 3, 'Punch/Designer Buttons', '1537345821.jpg', '100', '2018-09-19 02:30:21', '2018-09-19 02:30:21', NULL),
(10, 3, 'Embroidery Stitches', '1537345850.jpg', '50', '2018-09-19 02:30:50', '2018-09-19 02:30:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addons_top_linnings`
--

CREATE TABLE `addons_top_linnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons_top_linnings`
--

INSERT INTO `addons_top_linnings` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'No Lining', '1537214272.jpg', '33', '2018-09-17 13:57:52', '2018-09-17 13:57:52', NULL),
(2, 3, 'Take Measurement By Lady Executive', '1537214778.png', '33', '2018-09-17 14:06:18', '2018-09-17 14:06:18', NULL),
(3, 3, 'No Lining', '1537346327.jpg', '50', '2018-09-19 02:38:47', '2018-09-19 02:38:47', NULL),
(4, 3, 'I Will Provide My Lining', '1537346352.jpg', '50', '2018-09-19 02:39:12', '2018-09-19 02:39:12', NULL),
(5, 3, 'Pre-Washed Cotton Lining', '1537346409.jpg', '200', '2018-09-19 02:40:09', '2018-09-19 02:40:09', NULL),
(6, 3, 'Satin Lining 1', '1537346440.jpg', '250', '2018-09-19 02:40:40', '2018-09-19 02:40:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `back_depth_designs`
--

CREATE TABLE `back_depth_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `back_depth_designs`
--

INSERT INTO `back_depth_designs` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '9 Inch', '1537131242.jpg', '33', '2018-09-16 14:54:02', '2018-09-16 14:56:03', NULL),
(2, 3, 'Sleeveless', '1537212119.jpg', '33', '2018-09-17 13:21:59', '2018-09-17 13:21:59', NULL),
(3, 3, 'Not Applicable', '1537305493.jpg', '20', '2018-09-18 15:18:13', '2018-09-18 15:18:13', NULL),
(4, 3, '9 Inch', '1537305545.jpg', '40', '2018-09-18 15:19:05', '2018-09-18 15:19:05', NULL),
(5, 3, '4 Inch', '1537305572.jpg', '40', '2018-09-18 15:19:32', '2018-09-18 15:19:32', NULL),
(6, 2, '6 Inch', '1537305602.jpg', '20', '2018-09-18 15:20:02', '2018-09-18 15:20:02', NULL),
(7, 3, '8 Inch', '1537305647.jpg', '20', '2018-09-18 15:20:47', '2018-09-18 15:20:47', NULL),
(8, 3, 'Backless', '1537305676.jpg', '40', '2018-09-18 15:21:16', '2018-09-18 15:21:16', NULL),
(9, 3, '2 Inch', '1537305709.jpg', '50', '2018-09-18 15:21:49', '2018-09-18 15:21:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `back_designs`
--

CREATE TABLE `back_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `back_designs`
--

INSERT INTO `back_designs` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'As Per Design On Dress Material', '1537304890.png', '33', '2018-09-16 14:19:26', '2018-09-18 15:08:10', NULL),
(2, 3, 'As Per Design On Measurement Garment', '1537304750.jpg', '40', '2018-09-18 15:05:50', '2018-09-18 15:06:15', NULL),
(3, 3, 'Halter', '1537305073.jpg', '20', '2018-09-18 15:11:13', '2018-09-18 15:11:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MAN', '2018-09-15 12:51:11', '2018-09-15 13:32:49', '2018-09-15 13:32:49'),
(2, 'MAN', '2018-09-15 13:32:59', '2018-09-15 13:32:59', NULL),
(3, 'Girl', '2018-09-15 13:33:30', '2018-09-15 13:33:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `cat_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Basic', '2018-09-16 06:41:23', '2018-09-16 06:41:23', NULL),
(2, 2, 'Front', '2018-09-16 06:41:34', '2018-09-16 06:41:34', NULL),
(3, 2, 'Back', '2018-09-16 06:41:46', '2018-09-16 06:41:46', NULL),
(4, 2, 'front Depth', '2018-09-16 06:41:53', '2018-09-16 06:41:53', NULL),
(5, 2, 'Back Depth', '2018-09-16 06:42:01', '2018-09-16 06:42:01', NULL),
(6, 2, 'Sleeve', '2018-09-16 06:42:17', '2018-09-16 06:42:17', NULL),
(7, 2, 'Add-ons', '2018-09-16 06:42:26', '2018-09-16 06:42:26', NULL),
(8, 2, 'Measurement', '2018-09-16 06:42:35', '2018-09-16 06:42:35', NULL),
(9, 3, 'Basic', '2018-09-16 06:42:48', '2018-09-16 06:42:48', NULL),
(10, 3, 'Front', '2018-09-16 06:42:56', '2018-09-16 06:42:56', NULL),
(11, 3, 'Back', '2018-09-16 06:43:06', '2018-09-16 06:43:06', NULL),
(12, 3, 'front Depth', '2018-09-16 06:43:16', '2018-09-16 06:43:16', NULL),
(13, 3, 'Back Depth', '2018-09-16 06:43:29', '2018-09-16 06:43:29', NULL),
(14, 3, 'Sleeve', '2018-09-16 06:43:40', '2018-09-16 06:43:40', NULL),
(15, 3, 'Add-ons', '2018-09-16 06:43:58', '2018-09-16 06:43:58', NULL),
(16, 3, 'Measurement', '2018-09-16 06:44:07', '2018-09-16 06:44:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dress_fittings`
--

CREATE TABLE `dress_fittings` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dress_fittings`
--

INSERT INTO `dress_fittings` (`id`, `categories_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Fit', '2018-09-16 13:53:39', '2018-09-16 13:53:53', NULL),
(2, 3, 'medium', '2018-09-18 14:23:49', '2018-09-18 14:29:03', NULL),
(3, 3, 'loose', '2018-09-18 14:29:23', '2018-09-18 14:29:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fabric_types`
--

CREATE TABLE `fabric_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric_length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fabric_types`
--

INSERT INTO `fabric_types` (`id`, `categories_id`, `name`, `image`, `price`, `fabric_length`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Blue Embodree Design', '1537126586.jpg', '33', '0', '2018-09-16 13:36:26', '2018-09-16 13:41:30', NULL),
(2, 3, 'Dupioni Silk', '1537301493.jpg', '40', '0', '2018-09-16 14:11:27', '2018-09-18 14:15:22', NULL),
(3, 3, 'Dotted Swiss', '1537301644.jpg', '50', '0', '2018-09-18 14:14:04', '2018-09-18 14:16:55', NULL),
(4, 3, 'Rebecca Atwood', '1537301797.jpg', '60', '0', '2018-09-18 14:16:37', '2018-09-18 14:16:37', NULL),
(5, 3, 'Basic Combed Cotton', '1537301893.jpg', '70', '0', '2018-09-18 14:18:13', '2018-09-18 14:18:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ABOUT STITCH MY FABRIC', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What is Stitch My Fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Stitch My Fabric is Pakistan\'s first &amp; premier online stitching services provider. We offer sewing services to women without having to step out of the house. Whether it is a kurti, shirt shalwar or long shirt, we will stitch your dress material as per your specifications by professional tailors.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Who is behind Stitch My Fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Stitch My Fabric is a venture of&nbsp;<a href=\"http://www.labelsestore.com/\" target=\"_blank\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">LABELS</a>. We have a team of professionals consisting of tailors, fashion design experts and strict quality assurance team. With over 10 years experience in customized tailoring for women, we are passionate about bringing a change to the unprofessional world of tailoring services in Pakistan. We believe that our process, technology and professionally managed stitching center is going to bring a smile on your face, forever!</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Why Stitch My Fabric? Not my conventional tailor?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">If bad fit and untimely deliveries from your local tailor frustrate you we are the answer for you. Again, if you have a busy lifestyle and you find it inconvenient to go, deliver and pickup your orders, you can turn to us for a solution. All you have to is, place your order online and then forget about it! we will pick your fabric, stitch it as per your measurements, and have it delivered to you. You can also make a purchase on your favorite online store and have the fabric delivered to us directly.</p>', '2018-10-18 16:24:26', '2018-10-18 16:24:26', NULL),
(2, 'ABOUT OUR SERVICES', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What type of clothes do you stitch?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">We can convert any type of fabric into a stitched dress including one piece, two piece &amp; three piece.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do you stitch for men?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">We are sorry at the moment we are not offer stitching services for men.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What sizes can you style?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">We cater to all sizes including x-small, small, medium, large, x-large and xx-large. You also have the option of giving us customized sizing measurements.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Can this service be used a gift?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Yes it can be, all you have to do is give the address of the person you wish the dress to be delivered at as a gift!</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do you alter in case the stitched dress does not fit me well?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Yes, we offer alteration services if the dress is not of a fit you desire. However in such a case shipment charges shall apply for any delivery made after alteration.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What if my dress doesn\'t fit me to my satisfaction?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">As long as you have provided us with the correct measurements, your dress will fit you perfectly. If you feel the item has not been made to the correct measurements or design, you can call us at +92 21 35851403 or get in touch with us at&nbsp;<a href=\"http://192.168.0.7/laravel/Tailor/cdn-cgi/l/email-protection.html#adceccdfc8edded9c4d9cec5c0d4cbcccfdfc4ce83cec2c0\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">[email&nbsp;protected]</a></p>', '2018-10-18 16:28:08', '2018-10-18 16:28:08', NULL),
(3, 'ACCOUNT', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do I need to make a account to place order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Yes, it is mandatory to make an online account to place an order. Your account will help you keep a track of your size profiles and you can also easily track your orders and see your order history.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I sign up/create an account at Stitchmyfabric.com</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You may create an account by registering with us on www.stitchmyfabric.com. If you experience any difficulty, kindly call our customer service and we will be pleased to assist you.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">I forgot my password, how can I retrieve it?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Please click on ‘Forget password’ which is available at the ‘Sign In’ page. Enter your email address and click on “Submit”. A set of instructions to reset your password will be sent to your registered email. After your credentials have been verified, you will be able to create a new password.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How can I edit/update my account details?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Please sign in and click on ‘My Account’. You will be able to edit/update your particulars.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What are the benefits of signing up an account with you?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">By signing up an account with Stitchmyfabric.com you will be able to access and manage your account information easily. This includes:&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">- Keeping your style profiles<br style=\"margin: 0px; outline: none; padding: 0px;\">- Changing your password<br style=\"margin: 0px; outline: none; padding: 0px;\">- Updating your billing or shipping address<br style=\"margin: 0px; outline: none; padding: 0px;\">- Checking your order status<br style=\"margin: 0px; outline: none; padding: 0px;\">- Viewing your complete order history<br style=\"margin: 0px; outline: none; padding: 0px;\">- Updating address book&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\">- and most importantly, placing the order whenever want!</p>', '2018-10-18 16:28:36', '2018-10-18 16:28:36', NULL),
(4, 'ORDERING', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I place an order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">To place an order, you need to signup on our website. Once you signup, you will be given the option to schedule a pick with us or order via an online store.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do you cater to international orders?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Whether you are based in Pakistan or outside, Stitch My Fabric services will be accessible to you. Our international customers, can either ship their garment to us or place an order on any Online Store and have the garment shipped directly at our headquarters. Once stitched as per your specifications, we ship back your stitched dress on your preferred location.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What\'s your address where I can send my fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You can send us your fabric on the following address:<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">Stitch My Fabric,<br style=\"margin: 0px; outline: none; padding: 0px;\">4th Floor, Razi Tower, Plot No. BC-13, Block-9,<br style=\"margin: 0px; outline: none; padding: 0px;\">Clifton, Karachi,<br style=\"margin: 0px; outline: none; padding: 0px;\">Pakistan - 75500</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What is the difference between schedule via pick and order via online store?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">In schedule via pickup, you place your order with us and give us the address from where our riders will collect the garment. In order via online store, you place an order on any Online Store and get your fabric delivered directly to our headquarters.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How can I place an order via pick up delivery option?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Ordering via pickup and delivery is easy, all you have to do is:&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">1) Signup with us and give us your measurements. You can choose from the available sizes or give us your customized measurement.<br style=\"margin: 0px; outline: none; padding: 0px;\">2) You can tell us how you want your dress to be by specifying your styling preference.&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\">3) We pickup your fabric. You can also send your measurement garment. This will allow us to get a better understanding of your measurements &amp; style preference.&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\">4) We stitch your clothes in a period of 3 to 8 days.&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\">5) We deliver your clothes on the address provided by you earlier.<br style=\"margin: 0px; outline: none; padding: 0px;\"></p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How can I place order via an online store ?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Ordering via online store has been specially designed for women who live abroad or have busy lives. You no longer have to go to a shop to buy your fabric and then give it to your tailor for stitching. You can place your order on any online store and have the clothes directly delivered at Stitch My Fabric\'s Headquarters. This will save your time, fuel and energy. The steps involve are as follows:&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">- Placing an order on any online store and getting it delivered at Stitch My Lawn.<br style=\"margin: 0px; outline: none; padding: 0px;\">- Tell us where you have placed the order. This will allow us to follow up with the online store and ensure timely delivery of your fabric.<br style=\"margin: 0px; outline: none; padding: 0px;\">- Give us your measurement and styling preference.<br style=\"margin: 0px; outline: none; padding: 0px;\">- We receive and stitch your fabric<br style=\"margin: 0px; outline: none; padding: 0px;\">- We deliver the fabric to your desired location.<br style=\"margin: 0px; outline: none; padding: 0px;\"></p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">If I am ordering via online store, how will I know if Stitch My Fabric has received my order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You will be informed via email as soon as we receive your fabric from the online store. We will also keep a track on your order by following up with the online store on your behalf.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do you send a tailor to my house to take my measurements?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">No, we do not send a tailor to your house for any measurements. All measurements can be updated online. However if you choose you can provide us with a measurement garment which shall be collected along with the pickup garment by our rider. Please note that this facility is only available for customers based in Pakistan.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">I do not know how to measure myself, what should I do?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">There are two ways you can give us your measurements:<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">1) Give your measurements online via your member area while placing the order<br style=\"margin: 0px; outline: none; padding: 0px;\">2) When the rider comes to pick your fabric, you can send your perfectly stitched garment along. We will copy the same exact measurements from your garment.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I maintain size profiles? Can I maintain more than one?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You can maintain as many size profiles as you want. You will be given the option of giving a unique name to each of your sizing profile.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I check order history?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You will have a history tab in your accounts area. The section will give you complete details on your order history.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I give feedback on previous orders</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You can give feedbacks on your previous orders via the history section in your member area.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Can I amend my order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You can make changes in your order till we don’t start stitching your fabric. You have to however inform our consultant upon making any changes.</p>', '2018-10-18 16:29:00', '2018-10-18 16:29:00', NULL),
(5, 'PICKUP, DELIVERY/SHIPMENT', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Do you charge for picking and shipping services?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Pickup service is available for free while the delivery charges may differ depending on the location. Pickup service is not available for international customers. If you are living abroad then you can ship your fabric directly to us or you can place an order on any online store and have the fabric delivered to us via the online store. Once we receive your fabric, we will stitch it as per your specifications and ship it back to you on your desired address. Shipment charges may apply depending on the package size and delivery location.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How does pick up and delivery work for international customers?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Pickup service is not available for international customers. You can ship your fabric directly to us and simultaneously place your order on our website. You can also place an order on any online store and have the fabric delivered to us via the online store. Once we receive your fabric, we will stitch it as per your specifications and ship it back to you on your desired address. Shipment charges may apply depending on the package size and delivery location.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How much time does it take to stitch and deliver?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Stitching time may vary from 5 to 8 days depending upon your style preference. Once your clothes are stitched, we deliver them to you on your desired location. Delivery time depends solely upon your shipment address.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Can I have different pickup and delivery/shipment addresses each time?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Yes you can have a Unique Pick and delivery address each time you place an order. In the absence of such a unique address your order shall be Picked up and delivered to your default address.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Can I change my delivery/shipment address later on?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You can change your address anytime while the dress is being stitched by contacting our customer support team at&nbsp;<a href=\"http://192.168.0.7/laravel/Tailor/cdn-cgi/l/email-protection.html#a1c2c0d3c4e1d2d5c8d5c2c9ccd8c7c0c3d3c8c28fc2cecc\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">[email&nbsp;protected]</a>. Once the stitched dress has been shipped, then the address cannot be changed and we shall not be responsible for any losses or expenses incurring due to this change.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I track my order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You will be given the tracking code of the shipment once it has been shipped from our end. You can easily track your order online on our logistic\'s partner website.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Are there any restricted areas?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Currently, we are unable to ship to any PO Box, military, protected area/location. Shipping charges for failure of attempted delivery to the restricted areas will be borne by the buyer. Please note that we are unable to publish all the restrictive measures imposed by your country of delivery as this is dependent on your country’s customs and restrictions.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What happens if an incorrect address is provided for the delivery?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Most of our delivery agents make two attempts to deliver a parcel and they might require a signature upon delivery of parcel. It is generally up to the delivery agent’s discretion to determine whether a signature is required. The delivery agents will attempt to contact the recipient at the given contact number to rearrange a delivery. However, this may be unsuccessful if the contact number is unreachable. Please indicate country code and area code clearly when placing an order. If the recipient failed to receive the package after the delivery agent’s delivery attempts, the package will be returned to us.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What should I take note of when the order is intended as a gift?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">If a recipient is not expecting a gift, they may refuse the package if they believe it was sent to them in error. You may wish to let the recipient know that a surprise is on the way. Undeliverable package charges will be borne by the buyer.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Is there a guaranteed date which I can receive my order on time?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Currently, we are unable to guarantee a delivery date. The delivery period is subjected to payment authorization, fraud screening and availability of stocks. On some occasions, we may request for some forms of payment verification or source for the best available piece within our storage locations in order to fulfil your shipment. If you need to receive the items urgently, we suggest you to contact&nbsp;<a href=\"http://192.168.0.7/laravel/Tailor/cdn-cgi/l/email-protection.html#4a292b382f0a393e233e292227332c2b2838232964292527\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">[email&nbsp;protected]</a>. We will try our utmost to deliver your product on priority.</p>', '2018-10-18 16:29:21', '2018-10-18 16:29:21', NULL);
INSERT INTO `faqs` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'PAYMENT & BILLING', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">When do I pay for my order?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You have the option of paying at the time of placing your order via credit or debit card &amp; PayPal. Customer\'s living in Pakistan can also make payment via Cash on Delivery.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What payment options are available?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">We accept PayPal, Visa, MasterCard, American Express, and Maestro credit and debit cards. We also have Cash on Delivery service for customers living inPakistan. Please note that we do not accept any other methods of payment apart from those listed above.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Is it safe to use my credit card online at Stitch My Fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">At Stitch My Lawn, your personal online security is important to us. We use the latest SSL encryption technology to store and safely transmit your personal and credit card information through our systems. All orders are processed through a secure checkout system.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How does cash on delivery work?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">For cash on delivery, you can pay us via our rider when you receive your stitched garment. Cash on delivery option is not available for international orders.</p>', '2018-10-18 16:29:40', '2018-10-18 16:29:40', NULL),
(7, 'CANCELLATION, REFUND & RETURNS', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How can I cancel my order:</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">If for any reason you wish to cancel your order, you can do so by emailing us at&nbsp;<a href=\"http://192.168.0.7/laravel/Tailor/cdn-cgi/l/email-protection.html#d0b3b1a2b590a3a4b9a4b3b8bda9b6b1b2a2b9b3feb3bfbd\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">[email&nbsp;protected]</a>. If you have made the payment online and then cancel the order, your paid amount shall be refunded to you in a week\'s time. If we pick the material and then you cancel the order. For schedule a pickup customers, once we have collected your fabric it won\'t be possible for us to cancel your order.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">When can I demand a refund?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You shall be entitled to a refund only if you pre-pay for your order at the time of placing your order on the services and only in the event of any of the following circumstances:<br style=\"margin: 0px; outline: none; padding: 0px;\"><br style=\"margin: 0px; outline: none; padding: 0px;\">1) Your order packaging has been tampered or damaged at the time of delivery<br style=\"margin: 0px; outline: none; padding: 0px;\">2) Us canceling your order due to<br style=\"margin: 0px; outline: none; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;- your delivery location following outside our serviceable areas<br style=\"margin: 0px; outline: none; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;- failure to contact you by phone or email at the time of confirming the order booking<br style=\"margin: 0px; outline: none; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;- Our decision on refunds shall be at our sole discretion and shall be final and binding<br style=\"margin: 0px; outline: none; padding: 0px;\">3) All refund amounts shall be credited to your account within 3-4 business days in accordance with the terms that may be stipulated by the bank which has issued the credit / debit card.<br style=\"margin: 0px; outline: none; padding: 0px;\"></p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">When can I not accept my parcel?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">You shall be given the option of not accepting your parcel, under the following circumstances:&nbsp;<br style=\"margin: 0px; outline: none; padding: 0px;\">- Your order packaging has been tampered or damaged at the time of delivery<br style=\"margin: 0px; outline: none; padding: 0px;\">- Your items in the package are missing<br style=\"margin: 0px; outline: none; padding: 0px;\">- You got received the wrong order<br style=\"margin: 0px; outline: none; padding: 0px;\">- You are not satisfied with the stitching of the fabric.</p><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Under all these circumstances, you may or may not be eligible for a refund. However, decision on refunds shall be at our sole discretion and shall be final and binding.</p>', '2018-10-18 16:30:18', '2018-10-18 16:30:18', NULL),
(8, 'CUSTOMER SERVICE', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">How do I contact Customer Service?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Use the “<a href=\"http://192.168.0.7/laravel/Tailor/public/contact\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">Contact Us</a>” form on our website to send an email to our team. Email is the best way to get in touch with us, and we aim to answer all inquiries within 24 hours. Our customer service is 100% human and we want to be sure that we give your email the time and attention it deserves. Our team answers inquiries 7 days a week. We are closed on national holidays.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">It has been more than 48 hours and I still haven’t received a reply from customer support — HELP!</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">First, check your spam folder (and make sure you add&nbsp;<a href=\"http://192.168.0.7/laravel/Tailor/cdn-cgi/l/email-protection.html\" class=\"__cf_email__\" data-cfemail=\"b1d2d0c3d4f1c2c5d8c5d2d9dcc8d7d0d3c3d8d29fd2dedc\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">[email&nbsp;protected]</a>&nbsp;to your address book so that you receive future emails). If you are a gmail user, please look in the Promotions tab of your inbox, drag the email into the Primary tab and click “Yes” to ensure all future emails show up in your inbox. If you still haven’t received a response from our dedicated team, we apologize for the delay and will get back to you soon!</p>', '2018-10-18 16:30:53', '2018-10-18 16:30:53', NULL),
(9, 'ONLINE SECURITY', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Why should I send you my personal information?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Due to high risk or credit card fraud, Stitch My Fabric may request additional information for payment verification. We will not be able to process your orders if we do not receive the required documents. In order to avoid delays with your order, we suggest that you scan the documents and send them via email so that they are clearly legible. Alternatively, you may take a clear photo of the documents requested if scanning is not available.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Is my personal information kept secured?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">All relevant pieces of information submitted by our customers will be kept secured and confidential. Only limited and authorized personnel have the rights to access this information. At no point will we share, rent or sell your personal information without your consent.</p>', '2018-10-18 16:31:11', '2018-10-18 16:31:11', NULL),
(10, 'PROMOTION', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What kind of promotions will Stitch My Fabric have?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">On some occasions, stitchmyfabric.com may introduce special promotions and discounted items on the website, at a limited time offers. We might also issue special coupons and vouchers which you can use for your future orders. However, we would like to inform you that no price adjustment in any form will be provided for previous orders.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What are the terms and conditions for promotions?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">All promotions on the website are subjected to terms and conditions. Every promotion may comprise of different terms and conditions and we suggest you read, understand and agree to all the terms before utilizing the promotion tools. Promotions include but are not limited to discount coupons, discount voucher, bundle buys, complimentary gift with your purchase or free shipping. Promotions are always set with a time frame and with an expiry date.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What happens if the promotion that I would like to have has expired?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">All promotions on the website are subjected to terms and conditions. We are unable to allow you to use any promotion that has expired.</p>', '2018-10-18 16:31:27', '2018-10-18 16:31:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `free_pickups`
--

CREATE TABLE `free_pickups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_pickups`
--

INSERT INTO `free_pickups` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CUSTOMISE & PLACE ORDER ONLINE', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">Choose your design &amp; personalise it with custom necklines, sleeves etc. Schedule a free pickup.</span><br></p>', '2018-10-18 22:02:46', '2018-10-18 16:02:46', NULL),
(2, 'GIVE US YOUR SAMPLE MEASUREMENT GARMENT', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">While we collect your fabric, give us a perfectly fitting garment to sew as per your measurements</span><br></p>', '2018-10-18 14:01:15', '2018-10-18 14:01:15', NULL),
(3, '3 - 8 DAYS SEWING & DELIVERY', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">Your fabric is individually cut, sewn &amp; factory finished professionally and delivered at your doorstep.</span><br></p>', '2018-10-18 14:01:39', '2018-10-18 14:01:39', NULL),
(4, 'PAY ON DELIVERY TO OUR RIDER', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">Pay by cash after you receive your newly sewn dress along with your sample garment (if provided by you).</span><br></p>', '2018-10-18 14:02:09', '2018-10-18 14:02:09', NULL),
(5, 'ABOUT STITCH MY FABRIC', '<h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">What is Stitch My Fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Stitch My Fabric is Pakistan\'s first &amp; premier online stitching services provider. We offer sewing services to women without having to step out of the house. Whether it is a kurti, shirt shalwar or long shirt, we will stitch your dress material as per your specifications by professional tailors.</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Who is behind Stitch My Fabric?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">Stitch My Fabric is a venture of&nbsp;<a href=\"http://www.labelsestore.com/\" target=\"_blank\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s;\">LABELS</a>. We have a team of professionals consisting of tailors, fashion design experts and strict quality assurance team. With over 10 years experience in customized tailoring for women, we are passionate about bringing a change to the unprofessional world of tailoring services in Pakistan. We believe that our process, technology and professionally managed stitching center is going to bring a smile on your face, forever!</p><h3 style=\"margin: 0px; outline: none; padding: 20px 0px 10px; font-family: Raleway, sans-serif; line-height: 24px; color: rgb(68, 68, 68); font-size: 18px;\"><a href=\"http://192.168.0.7/laravel/Tailor/public/faq#\" style=\"margin: 0px; outline: none; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(105, 165, 151); transition: color 0.2s ease-in-out 0s; font-size: 19px; line-height: 1.1;\"><span style=\"margin: 0px; outline: none; padding: 0px; font-weight: 600; color: rgb(0, 0, 0); font-size: 18px;\">Why Stitch My Fabric? Not my conventional tailor?</span></a></h3><p id=\"faq-p\" style=\"outline: none; padding: 0px 0px 15px; color: rgb(102, 102, 102); font-size: 15px; line-height: 25px;\">If bad fit and untimely deliveries from your local tailor frustrate you we are the answer for you. Again, if you have a busy lifestyle and you find it inconvenient to go, deliver and pickup your orders, you can turn to us for a solution. All you have to is, place your order online and then forget about it! we will pick your fabric, stitch it as per your measurements, and have it delivered to you. You can also make a purchase on your favorite online store and have the fabric delivered to us directly.</p>', '2018-10-18 22:23:44', '2018-10-18 16:23:44', '2018-10-18 16:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `front_depth_designs`
--

CREATE TABLE `front_depth_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_depth_designs`
--

INSERT INTO `front_depth_designs` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Inch Deep', '1537130184.jpg', '33', '2018-09-16 14:36:24', '2018-09-16 14:36:24', NULL),
(2, 3, '9 Inch', '1537131183.jpg', '33', '2018-09-16 14:53:03', '2018-09-16 14:53:03', NULL),
(3, 3, '9 Inch', '1537131202.jpg', '33', '2018-09-16 14:53:22', '2018-09-16 14:53:22', NULL),
(4, 3, 'Not Applicable', '1537305216.jpg', '40', '2018-09-18 15:13:36', '2018-09-18 15:13:36', NULL),
(5, 3, 'Inch Deep', '1537305253.jpg', '20', '2018-09-18 15:14:13', '2018-09-18 15:14:13', NULL),
(6, 2, 'Inch Deep', '1537305297.jpg', '40', '2018-09-18 15:14:57', '2018-09-18 15:14:57', NULL),
(7, 3, 'Inch Deep', '1537305341.jpg', '50', '2018-09-18 15:15:41', '2018-09-18 15:15:41', NULL),
(8, 3, '9 Inch Deep', '1537305377.jpg', '20', '2018-09-18 15:16:17', '2018-09-18 15:16:17', NULL),
(9, 3, '8 Inch Deep', '1537305416.jpg', '40', '2018-09-18 15:16:56', '2018-09-18 15:16:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `front_designs`
--

CREATE TABLE `front_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_designs`
--

INSERT INTO `front_designs` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'U Neck', '1537302751.jpg', '33', '2018-09-16 14:12:21', '2018-09-18 14:32:31', NULL),
(2, 3, 'As Per Design On Dress Material', '1537302710.png', '33', '2018-09-16 14:18:37', '2018-09-18 14:31:50', NULL),
(3, 3, 'As Per Design On Measurement Garment', '1537302660.png', '30', '2018-09-18 14:31:00', '2018-09-18 14:31:00', NULL),
(4, 3, 'V Neck', '1537302804.jpg', '50', '2018-09-18 14:33:24', '2018-09-18 14:33:24', NULL),
(5, 3, 'Square Neck', '1537302841.jpg', '20', '2018-09-18 14:34:01', '2018-09-18 14:34:01', NULL),
(6, 3, 'Rectangle Neck', '1537302877.jpg', '20', '2018-09-18 14:34:37', '2018-09-18 14:34:37', NULL),
(7, 3, 'Diamond Neck', '1537302907.jpg', '20', '2018-09-18 14:35:07', '2018-09-18 14:35:07', NULL),
(8, 3, 'Scallop Neck', '1537302940.jpg', '20', '2018-09-18 14:35:40', '2018-09-18 14:35:40', NULL),
(9, 3, 'Horse Shoe Neck', '1537302976.jpg', '20', '2018-09-18 14:36:16', '2018-09-18 14:36:16', NULL),
(10, 3, 'Criss Cross Neck', '1537303004.jpg', '20', '2018-09-18 14:36:44', '2018-09-18 14:36:44', NULL),
(11, 3, 'Boat Neck', '1537303039.jpg', '20', '2018-09-18 14:37:19', '2018-09-18 14:37:19', NULL),
(12, 3, 'Boat With Contrast Yolk', '1537303427.jpg', '20', '2018-09-18 14:38:45', '2018-09-18 14:43:47', NULL),
(13, 3, 'Boat With Net Yolk', '1537303178.jpg', '40', '2018-09-18 14:39:38', '2018-09-18 14:39:38', NULL),
(14, 3, 'Asymmetrical', '1537303465.jpg', '50', '2018-09-18 14:44:25', '2018-09-18 14:44:25', NULL),
(15, 3, 'Crew Neck', '1537303501.jpg', '40', '2018-09-18 14:45:01', '2018-09-18 14:45:01', NULL),
(16, 3, 'Spaghetti Two String', '1537304361.jpg', '40', '2018-09-18 14:46:11', '2018-09-18 14:59:21', NULL),
(17, 3, 'Off Shoulder', '1537303638.jpg', '40', '2018-09-18 14:47:18', '2018-09-18 14:47:18', NULL),
(18, 3, 'Spaghetti U Neck', '1537303680.jpg', '20', '2018-09-18 14:48:00', '2018-09-18 14:48:00', NULL),
(19, 3, 'Spaghetti Square Neck', '1537303715.jpg', '20', '2018-09-18 14:48:35', '2018-09-18 14:48:35', NULL),
(20, 3, 'Triangle Contrast Patch', '1537303742.jpg', '40', '2018-09-18 14:49:02', '2018-09-18 14:49:02', NULL),
(21, 3, 'High Collar Halter Neck', '1537303781.jpg', '50', '2018-09-18 14:49:41', '2018-09-18 14:49:41', NULL),
(22, 3, 'Col Halter Trans Yolk', '1537303812.jpg', '20', '2018-09-18 14:50:12', '2018-09-18 14:50:12', NULL),
(23, 3, 'CollarTrans Yolk', '1537303841.jpg', '25', '2018-09-18 14:50:41', '2018-09-18 14:50:41', NULL),
(24, 3, 'High Collar Neck', '1537303891.jpg', '20', '2018-09-18 14:51:31', '2018-09-18 14:51:31', NULL),
(25, 3, 'Peter Pan Neck', '1537303936.jpg', '40', '2018-09-18 14:52:16', '2018-09-18 14:52:16', NULL),
(26, 3, 'Classic Collar Neck', '1537303970.jpg', '40', '2018-09-18 14:52:50', '2018-09-18 14:52:50', NULL),
(27, 3, 'Deep Sweetheart Neck', '1537304018.jpg', '50', '2018-09-18 14:53:38', '2018-09-18 14:53:38', NULL),
(28, 3, 'Collar With Deep V', '1537304095.jpg', '50', '2018-09-18 14:54:55', '2018-09-18 14:54:55', NULL),
(29, 3, 'High Sweetheart', '1537304173.jpg', '40', '2018-09-18 14:56:13', '2018-09-18 14:56:13', NULL),
(30, 3, 'Nehru Neck', '1537304205.jpg', '50', '2018-09-18 14:56:45', '2018-09-18 14:56:45', NULL),
(31, 3, 'Round With V', '1537304238.jpg', '40', '2018-09-18 14:57:18', '2018-09-18 14:57:18', NULL),
(32, 3, 'Halter Neck', '1537304266.jpg', '40', '2018-09-18 14:57:46', '2018-09-18 14:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measurements`
--

CREATE TABLE `measurements` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `measurements`
--

INSERT INTO `measurements` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Take Measurement By Lady Executive', '1537214827.png', '33', '2018-09-17 14:07:07', '2018-09-17 14:07:07', NULL);

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
(48, '2014_10_12_000000_create_users_table', 1),
(49, '2014_10_12_100000_create_password_resets_table', 1),
(50, '2018_09_14_204119_create_categories_table', 1),
(51, '2018_09_14_210022_create_components_table', 1),
(52, '2018_09_15_085050_create_fabric_types_table', 1),
(53, '2018_09_15_085733_create_dress_fittings_table', 1),
(54, '2018_09_15_085901_create_front_designs_table', 1),
(55, '2018_09_15_085916_create_back_designs_table', 1),
(56, '2018_09_15_085949_create_front_depth_designs_table', 1),
(57, '2018_09_15_090000_create_back_depth_designs_table', 1),
(58, '2018_09_15_090033_create_sleeve_designs_table', 1),
(59, '2018_09_15_090123_create_addons_closings_table', 1),
(60, '2018_09_15_090140_create_addons_delivery_categories_table', 1),
(61, '2018_09_15_090154_create_addons_others_table', 1),
(62, '2018_09_15_090212_create_addons_top_linnings_table', 1),
(63, '2018_09_15_090250_create_measurements_table', 1),
(64, '2018_09_15_095934_create_own_measurements_table', 1),
(65, '2018_09_15_100736_create_system_measurements_table', 1),
(66, '2018_09_15_103314_create_order_requirements_table', 1),
(67, '2018_09_15_105621_create_order_other_addons_requirements_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `online_stores`
--

CREATE TABLE `online_stores` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_stores`
--

INSERT INTO `online_stores` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PLACE ORDER ON ANY ONLINE STORE', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">Go to any online shopping website and have your fabric delivered to our headquarters.</span><br></p>', '2018-10-18 22:03:22', '2018-10-18 16:03:22', NULL),
(2, 'GIVE US YOUR ORDER DETAILS', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">Give us details of the order that you have placed on the online store.</span><br></p>', '2018-10-18 14:09:49', '2018-10-18 14:09:49', NULL),
(3, 'GIVE US YOUR MEASUREMENT DETAILS', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">While we receive your fabric from the online store, give us details on how you want your garment to be stitched.</span><br></p>', '2018-10-18 14:10:01', '2018-10-18 14:10:01', NULL),
(4, 'STITCHING & DELIVERY OF YOUR FABRIC', '<p><span style=\"color: rgb(102, 102, 102); text-align: center;\">After receiving your fabric, we will stitch it as per your measurement and will deliver it to you anywhere in the world.</span><br></p>', '2018-10-18 14:10:20', '2018-10-18 14:10:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_other_addons_requirements`
--

CREATE TABLE `order_other_addons_requirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_requirement_id` int(11) NOT NULL,
  `other_addons_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_requirements`
--

CREATE TABLE `order_requirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `components_id` int(11) NOT NULL,
  `fabric_option` enum('Provide My Fabric','Purchase Fabric And Stitch') COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric_type_id` int(11) NOT NULL,
  `fabric_length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dress_fitting_id` int(11) NOT NULL,
  `front_design_id` int(11) NOT NULL,
  `back_design_id` int(11) NOT NULL,
  `front_depth_id` int(11) NOT NULL,
  `back_depth_id` int(11) NOT NULL,
  `sleeve_design_id` int(11) NOT NULL,
  `add_ons_closing_id` int(11) NOT NULL,
  `add_ons_delivery_id` int(11) NOT NULL,
  `add_ons_top_linning_id` int(11) NOT NULL,
  `is_add_ons_others_available` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` enum('Pending','Paid','Approved','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `own_measurements`
--

CREATE TABLE `own_measurements` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waist_round` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shoulder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve_length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve_round` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `armhole_round` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arm_round` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `neck_front` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `neck_back` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shoulder_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `image`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1539900846.jpg', 'Top', 'BDT.1,500/- ($15)', '2018-10-18 16:14:06', '2018-10-18 16:14:06', NULL),
(2, '1539901019.jpg', 'Top & Dupatta', 'BDT.2,000/- ($20)', '2018-10-18 16:16:59', '2018-10-18 16:16:59', NULL),
(3, '1539901033.jpg', 'Top & Bottom', 'BDT.2,000/- ($20)', '2018-10-18 16:17:13', '2018-10-18 16:17:13', NULL),
(4, '1539901068.jpg', 'Top, Dupatta & Bottom', 'BDT. 2,500/- ($25)', '2018-10-18 16:17:48', '2018-10-18 16:17:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `logo`, `email`, `contact_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'STITCH MY FABRIC', '1539899897.png', 'f.fahad.server@gmail.com', '+92 21 35305960', '2018-10-18 21:58:17', '2018-10-18 15:58:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sleeve_designs`
--

CREATE TABLE `sleeve_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sleeve_designs`
--

INSERT INTO `sleeve_designs` (`id`, `categories_id`, `name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Sleeveless', '1537212157.jpg', '33', '2018-09-17 13:22:37', '2018-09-17 13:22:37', NULL),
(2, 3, 'Cap', '1537342707.jpg', '40', '2018-09-19 01:38:27', '2018-09-19 01:38:27', NULL),
(3, 3, 'Puff', '1537342747.jpg', '40', '2018-09-19 01:39:07', '2018-09-19 01:39:07', NULL),
(4, 3, 'Half', '1537342804.jpg', '40', '2018-09-19 01:40:04', '2018-09-19 01:40:04', NULL),
(5, 3, 'Petal', '1537342888.jpg', '40', '2018-09-19 01:41:28', '2018-09-19 01:41:28', NULL),
(6, 3, 'Leaf', '1537342917.jpg', '40', '2018-09-19 01:41:57', '2018-09-19 01:41:57', NULL),
(7, 3, 'Overlap Leaf', '1537342957.jpg', '40', '2018-09-19 01:42:37', '2018-09-19 01:42:37', NULL),
(8, 3, 'String1', '1537342998.jpg', '40', '2018-09-19 01:43:18', '2018-09-19 01:43:18', NULL),
(9, 3, 'String2', '1537343040.jpg', '40', '2018-09-19 01:44:00', '2018-09-19 01:44:00', NULL),
(10, 3, 'V String', '1537343090.jpg', '40', '2018-09-19 01:44:50', '2018-09-19 01:44:50', NULL),
(11, 3, 'Long Puff', '1537343124.jpg', '40', '2018-09-19 01:45:24', '2018-09-19 01:45:24', NULL),
(12, 3, 'Bud', '1537343300.jpg', '40', '2018-09-19 01:48:20', '2018-09-19 01:48:20', NULL),
(13, 3, 'Elbow', '1537343341.jpg', '40', '2018-09-19 01:49:01', '2018-09-19 01:49:01', NULL),
(14, 3, '3/4th Sleeve', '1537343405.jpg', '40', '2018-09-19 01:50:05', '2018-09-19 01:50:05', NULL),
(15, 3, 'Bell', '1537343434.jpg', '40', '2018-09-19 01:50:34', '2018-09-19 01:50:34', NULL),
(16, 3, 'Full Sleeve', '1537343482.jpg', '40', '2018-09-19 01:51:22', '2018-09-19 01:51:22', NULL),
(17, 3, 'Not Applicable', '1537343800.jpg', '40', '2018-09-19 01:56:40', '2018-09-19 01:56:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `tagline`, `explain`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'STITCH MY FABRIC', '1539902432.png', 'Unparalleled Sewing Services', 'Worldwide convenience at your doorstep - just a click away!', '2018-10-18 16:40:32', '2018-10-18 16:40:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_measurements`
--

CREATE TABLE `system_measurements` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bust` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waist` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_measurements`
--

INSERT INTO `system_measurements` (`id`, `categories_id`, `name`, `size`, `bust`, `waist`, `hip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'XS-', '0', '32', '25', '35', '2018-09-17 14:21:55', '2018-09-17 14:21:55', NULL),
(2, 3, 'XS-', '2', '33', '26', '36', '2018-09-19 02:43:40', '2018-09-19 02:43:40', NULL),
(3, 3, 'S-', '4', '34', '27', '37', '2018-09-19 02:44:40', '2018-09-19 02:44:40', NULL),
(4, 3, 'S-', '6', '35', '28', '38', '2018-09-19 02:45:43', '2018-09-19 02:45:43', NULL),
(5, 3, 'M-', '8', '36', '29', '39', '2018-09-19 02:46:42', '2018-09-19 02:46:42', NULL),
(6, 3, 'M-', '10', '37', '30', '40', '2018-09-19 02:48:05', '2018-09-19 02:48:05', NULL),
(7, 3, 'L-', '12', '38.5', '31.5', '41.5', '2018-09-19 02:49:37', '2018-09-19 02:49:37', NULL),
(8, 3, 'L-', '14', '40', '33', '43', '2018-09-19 02:50:35', '2018-09-19 02:50:35', NULL),
(9, 3, 'XL-', '16', '41.5', '34.5', '44.5', '2018-09-19 02:51:34', '2018-09-19 02:51:34', NULL),
(10, 3, 'XL-', '18', '43.5', '36.5', '46.5', '2018-09-19 02:52:41', '2018-09-19 02:52:41', NULL),
(11, 2, '1X-', '16W', '43', '36', '46', '2018-09-19 02:55:01', '2018-09-19 02:55:01', NULL),
(12, 3, '1X-', '18W', '45', '38', '48', '2018-09-19 02:56:02', '2018-09-19 02:56:02', NULL),
(13, 3, '2X-', '20W', '47', '40', '50', '2018-09-19 02:59:17', '2018-09-19 02:59:17', NULL),
(14, 3, '2X-', '22W', '49', '42', '52', '2018-09-19 03:00:26', '2018-09-19 03:00:26', NULL),
(15, 3, '3X-', '24W', '51', '44', '54', '2018-09-19 03:01:24', '2018-09-19 03:01:24', NULL),
(16, 3, '3X-', '26W', '53', '46', '56', '2018-09-19 03:02:12', '2018-09-19 03:02:12', NULL),
(17, 3, '4X-', '28W', '55', '48', '58', '2018-09-19 03:03:05', '2018-09-19 03:03:05', NULL),
(18, 3, '4X-', '30W', '57', '50', '60', '2018-09-19 03:04:05', '2018-09-19 03:04:05', NULL),
(19, 3, '5X-', '32W', '60', '53', '63', '2018-09-19 03:05:01', '2018-09-19 03:05:01', NULL),
(20, 3, '5X-', '34W', '63', '56', '66', '2018-09-19 03:05:59', '2018-09-19 03:05:59', NULL),
(21, 3, '6X-', '36W', '66', '59', '69', '2018-09-19 03:07:01', '2018-09-19 03:07:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('User','Tailor','Site Administrator','Super Admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_uses`
--

CREATE TABLE `why_uses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_uses`
--

INSERT INTO `why_uses` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CONVENIENCE', '<p>Get your dress material stitched without stepping out of your house.<br></p>', '2018-10-18 22:03:51', '2018-10-18 16:03:51', NULL),
(2, 'DESIGN YOUR OWN', '<p>Personalise your dress through our seamless user-friendly customisation tool.<br></p>', '2018-10-18 14:19:21', '2018-10-18 14:19:21', NULL),
(3, 'TIMELY DELIVERY', '<p>We ensure that your professionally stitched dress is delivered on time.<br></p>', '2018-10-18 14:19:39', '2018-10-18 14:19:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons_closings`
--
ALTER TABLE `addons_closings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons_delivery_categories`
--
ALTER TABLE `addons_delivery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons_others`
--
ALTER TABLE `addons_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons_top_linnings`
--
ALTER TABLE `addons_top_linnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `back_depth_designs`
--
ALTER TABLE `back_depth_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `back_designs`
--
ALTER TABLE `back_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dress_fittings`
--
ALTER TABLE `dress_fittings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabric_types`
--
ALTER TABLE `fabric_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_pickups`
--
ALTER TABLE `free_pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_depth_designs`
--
ALTER TABLE `front_depth_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_designs`
--
ALTER TABLE `front_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurements`
--
ALTER TABLE `measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_stores`
--
ALTER TABLE `online_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_other_addons_requirements`
--
ALTER TABLE `order_other_addons_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_requirements`
--
ALTER TABLE `order_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `own_measurements`
--
ALTER TABLE `own_measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sleeve_designs`
--
ALTER TABLE `sleeve_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_measurements`
--
ALTER TABLE `system_measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_uses`
--
ALTER TABLE `why_uses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_uses`
--
ALTER TABLE `about_uses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addons_closings`
--
ALTER TABLE `addons_closings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addons_delivery_categories`
--
ALTER TABLE `addons_delivery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addons_others`
--
ALTER TABLE `addons_others`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `addons_top_linnings`
--
ALTER TABLE `addons_top_linnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `back_depth_designs`
--
ALTER TABLE `back_depth_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `back_designs`
--
ALTER TABLE `back_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dress_fittings`
--
ALTER TABLE `dress_fittings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fabric_types`
--
ALTER TABLE `fabric_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `free_pickups`
--
ALTER TABLE `free_pickups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_depth_designs`
--
ALTER TABLE `front_depth_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `front_designs`
--
ALTER TABLE `front_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `measurements`
--
ALTER TABLE `measurements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `online_stores`
--
ALTER TABLE `online_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_other_addons_requirements`
--
ALTER TABLE `order_other_addons_requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_requirements`
--
ALTER TABLE `order_requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `own_measurements`
--
ALTER TABLE `own_measurements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sleeve_designs`
--
ALTER TABLE `sleeve_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_measurements`
--
ALTER TABLE `system_measurements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_uses`
--
ALTER TABLE `why_uses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
