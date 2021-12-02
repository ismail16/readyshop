-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 07:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readyshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adcategories`
--

CREATE TABLE `adcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adcategories`
--

INSERT INTO `adcategories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bottom Top Sell', 1, '2020-11-22 17:04:50', '2021-02-04 08:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `adcategory_id` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `adcategory_id`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, '#', 'public/uploads/adadvertisement/1631507147-sub banner 3 now.jpg', 1, '2021-09-13 04:25:48', '2021-09-13 04:25:48'),
(10, 1, '#', 'public/uploads/adadvertisement/1631507178-sub banner now.jpg', 1, '2021-09-13 04:26:18', '2021-09-13 04:26:18'),
(11, 1, '#', 'public/uploads/adadvertisement/1631507213-sub banner 2 now.jpg', 1, '2021-09-13 04:26:53', '2021-09-13 04:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(11) NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingfee` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `district_id`, `area`, `bn_name`, `shippingfee`, `status`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী', 50.00, 1, NULL, NULL),
(2, 34, 'Bamna Upazila', 'বামনা', 50.00, 1, NULL, NULL),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর', 50.00, 1, NULL, NULL),
(4, 34, 'Betagi Upazila', 'বেতাগি', 50.00, 1, NULL, NULL),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা', 50.00, 1, NULL, NULL),
(6, 34, 'Taltali Upazila', 'তালতলী', 50.00, 1, NULL, NULL),
(7, 35, 'Muladi Upazila', 'মুলাদি', 50.00, 1, NULL, NULL),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ', 50.00, 1, NULL, NULL),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা', 50.00, 1, NULL, NULL),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর', 50.00, 1, NULL, NULL),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ', 50.00, 1, NULL, NULL),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা', 50.00, 1, NULL, NULL),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী', 50.00, 1, NULL, NULL),
(14, 35, 'Hizla Upazila', 'হিজলা', 50.00, 1, NULL, NULL),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ ', 50.00, 1, NULL, NULL),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর', 50.00, 1, NULL, NULL),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর', 50.00, 1, NULL, NULL),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন', 50.00, 1, NULL, NULL),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন', 50.00, 1, NULL, NULL),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান', 50.00, 1, NULL, NULL),
(21, 36, 'Lalmohan Upazila', 'লালমোহন', 50.00, 1, NULL, NULL),
(22, 36, 'Manpura Upazila', 'মনপুরা', 50.00, 1, NULL, NULL),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন', 50.00, 1, NULL, NULL),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর', 50.00, 1, NULL, NULL),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া', 50.00, 1, NULL, NULL),
(26, 37, 'Nalchity Upazila', 'নালচিতি', 50.00, 1, NULL, NULL),
(27, 37, 'Rajapur Upazila', 'রাজাপুর', 50.00, 1, NULL, NULL),
(28, 38, 'Bauphal Upazila', 'বাউফল', 50.00, 1, NULL, NULL),
(29, 38, 'Dashmina Upazila', 'দশমিনা', 50.00, 1, NULL, NULL),
(30, 38, 'Galachipa Upazila', 'গলাচিপা', 50.00, 1, NULL, NULL),
(31, 38, 'Kalapara Upazila', 'কালাপারা', 50.00, 1, NULL, NULL),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ ', 50.00, 1, NULL, NULL),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর', 50.00, 1, NULL, NULL),
(34, 38, 'Dumki Upazila', 'ডুমকি', 50.00, 1, NULL, NULL),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি', 50.00, 1, NULL, NULL),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', 50.00, 1, NULL, NULL),
(37, 39, 'Kaukhali', 'কাউখালি', 50.00, 1, NULL, NULL),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', 50.00, 1, NULL, NULL),
(39, 39, 'Nazirpur', 'নাজিরপুর', 50.00, 1, NULL, NULL),
(40, 39, 'Nesarabad', 'নেসারাবাদ', 50.00, 1, NULL, NULL),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', 50.00, 1, NULL, NULL),
(42, 39, 'Zianagar', 'জিয়ানগর', 50.00, 1, NULL, NULL),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', 50.00, 1, NULL, NULL),
(44, 40, 'Thanchi', 'থানচি', 50.00, 1, NULL, NULL),
(45, 40, 'Lama', 'লামা', 50.00, 1, NULL, NULL),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', 50.00, 1, NULL, NULL),
(47, 40, 'Ali kadam', 'আলী কদম', 50.00, 1, NULL, NULL),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', 50.00, 1, NULL, NULL),
(49, 40, 'Ruma', 'রুমা', 50.00, 1, NULL, NULL),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর', 50.00, 1, NULL, NULL),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ', 50.00, 1, NULL, NULL),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর', 50.00, 1, NULL, NULL),
(53, 41, 'Nabinagar Upazila', 'নবীনগর', 50.00, 1, NULL, NULL),
(54, 41, 'Sarail Upazila', 'সরাইল', 50.00, 1, NULL, NULL),
(55, 41, 'Shahbazpur Tow', 'শাহবাজপুর টাউন', 50.00, 1, NULL, NULL),
(56, 41, 'Kasba Upazila', 'কসবা', 50.00, 1, NULL, NULL),
(57, 41, 'Akhaura Upazila', 'আখাউরা', 50.00, 1, NULL, NULL),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর', 50.00, 1, NULL, NULL),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর', 50.00, 1, NULL, NULL),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', 50.00, 1, NULL, NULL),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', 50.00, 1, NULL, NULL),
(62, 42, 'Haimchar', 'হাইমচর', 50.00, 1, NULL, NULL),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', 50.00, 1, NULL, NULL),
(64, 42, 'Kachua', 'কচুয়া', 50.00, 1, NULL, NULL),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', 50.00, 1, NULL, NULL),
(66, 42, 'Matlab Dakkhi', 'মতলব দক্ষিণ', 50.00, 1, NULL, NULL),
(67, 42, 'Shahrasti', 'শাহরাস্তি', 50.00, 1, NULL, NULL),
(68, 43, 'Anwara Upazila', 'আনোয়ারা', 50.00, 1, NULL, NULL),
(69, 43, 'Banshkhali Upazila', 'বাশখালি', 50.00, 1, NULL, NULL),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি', 50.00, 1, NULL, NULL),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ', 50.00, 1, NULL, NULL),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি', 50.00, 1, NULL, NULL),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী', 50.00, 1, NULL, NULL),
(74, 43, 'Lohagara Upazila', 'লোহাগারা', 50.00, 1, NULL, NULL),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই', 50.00, 1, NULL, NULL),
(76, 43, 'Patiya Upazila', 'পটিয়া', 50.00, 1, NULL, NULL),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া', 50.00, 1, NULL, NULL),
(78, 43, 'Raozan Upazila', 'রাউজান', 50.00, 1, NULL, NULL),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ', 50.00, 1, NULL, NULL),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া', 50.00, 1, NULL, NULL),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড', 50.00, 1, NULL, NULL),
(82, 44, 'Barura Upazila', 'বড়ুরা', 50.00, 1, NULL, NULL),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া', 50.00, 1, NULL, NULL),
(84, 44, 'Burichong Upazila', 'বুড়িচং', 50.00, 1, NULL, NULL),
(85, 44, 'Chandina Upazila', 'চান্দিনা', 50.00, 1, NULL, NULL),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম', 50.00, 1, NULL, NULL),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি', 50.00, 1, NULL, NULL),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার', 50.00, 1, NULL, NULL),
(89, 44, 'Homna Upazila', 'হোমনা', 50.00, 1, NULL, NULL),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর', 50.00, 1, NULL, NULL),
(91, 44, 'Laksam Upazila', 'লাকসাম', 50.00, 1, NULL, NULL),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ', 50.00, 1, NULL, NULL),
(93, 44, 'Meghna Upazila', 'মেঘনা', 50.00, 1, NULL, NULL),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর', 50.00, 1, NULL, NULL),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট', 50.00, 1, NULL, NULL),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ', 50.00, 1, NULL, NULL),
(97, 44, 'Titas Upazila', 'তিতাস', 50.00, 1, NULL, NULL),
(98, 45, 'Chakaria Upazila', 'চকরিয়া', 50.00, 1, NULL, NULL),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর', 50.00, 1, NULL, NULL),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া', 50.00, 1, NULL, NULL),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী', 50.00, 1, NULL, NULL),
(103, 45, 'Ramu Upazila', 'রামু', 50.00, 1, NULL, NULL),
(104, 45, 'Teknaf Upazila', 'টেকনাফ', 50.00, 1, NULL, NULL),
(105, 45, 'Ukhia Upazila', 'উখিয়া', 50.00, 1, NULL, NULL),
(106, 45, 'Pekua Upazila', 'পেকুয়া', 50.00, 1, NULL, NULL),
(107, 46, 'Feni Sadar', 'ফেনী সদর', 50.00, 1, NULL, NULL),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', 50.00, 1, NULL, NULL),
(109, 46, 'Daganbhya', 'দাগানভিয়া', 50.00, 1, NULL, NULL),
(110, 46, 'Parshuram', 'পরশুরাম', 50.00, 1, NULL, NULL),
(111, 46, 'Fhulgazi', 'ফুলগাজি', 50.00, 1, NULL, NULL),
(112, 46, 'Sonagazi', 'সোনাগাজি', 50.00, 1, NULL, NULL),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা ', 50.00, 1, NULL, NULL),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি', 50.00, 1, NULL, NULL),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি', 50.00, 1, NULL, NULL),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি', 50.00, 1, NULL, NULL),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি', 50.00, 1, NULL, NULL),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা', 50.00, 1, NULL, NULL),
(119, 47, 'Panchhari Upazila', 'পানছড়ি', 50.00, 1, NULL, NULL),
(120, 47, 'Ramgarh Upazila', 'রামগড়', 50.00, 1, NULL, NULL),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর', 50.00, 1, NULL, NULL),
(122, 48, 'Raipur Upazila', 'রায়পুর', 50.00, 1, NULL, NULL),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ', 50.00, 1, NULL, NULL),
(124, 48, 'Ramgati Upazila', 'রামগতি', 50.00, 1, NULL, NULL),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর', 50.00, 1, NULL, NULL),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর', 50.00, 1, NULL, NULL),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ', 50.00, 1, NULL, NULL),
(128, 49, 'Chatkhil Upazila', 'চাটখিল', 50.00, 1, NULL, NULL),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ', 50.00, 1, NULL, NULL),
(130, 49, 'Shenbag Upazila', 'শেনবাগ', 50.00, 1, NULL, NULL),
(131, 49, 'Hatia Upazila', 'হাতিয়া', 50.00, 1, NULL, NULL),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট ', 50.00, 1, NULL, NULL),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি', 50.00, 1, NULL, NULL),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর ', 50.00, 1, NULL, NULL),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর', 50.00, 1, NULL, NULL),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি', 50.00, 1, NULL, NULL),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি', 50.00, 1, NULL, NULL),
(138, 50, 'Barkal Upazila', 'বরকল', 50.00, 1, NULL, NULL),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি', 50.00, 1, NULL, NULL),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি', 50.00, 1, NULL, NULL),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই', 50.00, 1, NULL, NULL),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু', 50.00, 1, NULL, NULL),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর ', 50.00, 1, NULL, NULL),
(144, 50, 'Kaukhali Upazila', 'কাউখালি', 50.00, 1, NULL, NULL),
(145, 1, 'Dhamrai Upazila', 'ধামরাই', 50.00, 1, NULL, NULL),
(146, 1, 'Dohar Upazila', 'দোহার', 50.00, 1, NULL, NULL),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ', 50.00, 1, NULL, NULL),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ', 50.00, 1, NULL, NULL),
(149, 1, 'Savar Upazila', 'সাভার', 50.00, 1, NULL, NULL),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর', 50.00, 1, NULL, NULL),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী', 50.00, 1, NULL, NULL),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা', 50.00, 1, NULL, NULL),
(153, 2, 'Madhukhali Upazila', 'মধুখালি', 50.00, 1, NULL, NULL),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা', 50.00, 1, NULL, NULL),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড', 50.00, 1, NULL, NULL),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন ', 50.00, 1, NULL, NULL),
(157, 2, 'Sadarpur Upazila', 'সদরপুর', 50.00, 1, NULL, NULL),
(158, 2, 'Shaltha Upazila', 'শালথা', 50.00, 1, NULL, NULL),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', 50.00, 1, NULL, NULL),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', 50.00, 1, NULL, NULL),
(161, 3, 'Kapasia', 'কাপাসিয়া', 50.00, 1, NULL, NULL),
(162, 3, 'Sripur', 'শ্রীপুর', 50.00, 1, NULL, NULL),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', 50.00, 1, NULL, NULL),
(164, 3, 'Tongi', 'টঙ্গি', 50.00, 1, NULL, NULL),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর', 50.00, 1, NULL, NULL),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি', 50.00, 1, NULL, NULL),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া', 50.00, 1, NULL, NULL),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর', 50.00, 1, NULL, NULL),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া', 50.00, 1, NULL, NULL),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ', 50.00, 1, NULL, NULL),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ', 50.00, 1, NULL, NULL),
(172, 5, 'Islampur Upazila', 'ইসলামপুর', 50.00, 1, NULL, NULL),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর', 50.00, 1, NULL, NULL),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ', 50.00, 1, NULL, NULL),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা', 50.00, 1, NULL, NULL),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি ', 50.00, 1, NULL, NULL),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', 50.00, 1, NULL, NULL),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম', 50.00, 1, NULL, NULL),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর', 50.00, 1, NULL, NULL),
(180, 6, 'Bhairab Upazila', 'ভৈরব', 50.00, 1, NULL, NULL),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর ', 50.00, 1, NULL, NULL),
(182, 6, 'Itna Upazila', 'ইটনা', 50.00, 1, NULL, NULL),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ', 50.00, 1, NULL, NULL),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি', 50.00, 1, NULL, NULL),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর', 50.00, 1, NULL, NULL),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর', 50.00, 1, NULL, NULL),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন', 50.00, 1, NULL, NULL),
(188, 6, 'Nikli Upazila', 'নিকলি', 50.00, 1, NULL, NULL),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা', 50.00, 1, NULL, NULL),
(190, 6, 'Tarail Upazila', 'তাড়াইল', 50.00, 1, NULL, NULL),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', 50.00, 1, NULL, NULL),
(192, 7, 'Kalkini', 'কালকিনি', 50.00, 1, NULL, NULL),
(193, 7, 'Rajoir', 'রাজইর', 50.00, 1, NULL, NULL),
(194, 7, 'Shibchar', 'শিবচর', 50.00, 1, NULL, NULL),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর', 50.00, 1, NULL, NULL),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর', 50.00, 1, NULL, NULL),
(197, 8, 'Shibalaya Upazila', 'শিবালয়', 50.00, 1, NULL, NULL),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া', 50.00, 1, NULL, NULL),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর', 50.00, 1, NULL, NULL),
(200, 8, 'Ghior Upazila', 'ঘিওর', 50.00, 1, NULL, NULL),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর', 50.00, 1, NULL, NULL),
(202, 9, 'Lohajang Upazila', 'লোহাজং', 50.00, 1, NULL, NULL),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর', 50.00, 1, NULL, NULL),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর', 50.00, 1, NULL, NULL),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান', 50.00, 1, NULL, NULL),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি', 50.00, 1, NULL, NULL),
(207, 9, 'Gazaria Upazila', 'গজারিয়া', 50.00, 1, NULL, NULL),
(208, 10, 'Bhaluka', 'ভালুকা', 50.00, 1, NULL, NULL),
(209, 10, 'Trishal', 'ত্রিশাল', 50.00, 1, NULL, NULL),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', 50.00, 1, NULL, NULL),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', 50.00, 1, NULL, NULL),
(212, 10, 'Dhobaura', 'ধবারুয়া', 50.00, 1, NULL, NULL),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', 50.00, 1, NULL, NULL),
(214, 10, 'Gaffargao', 'গফরগাঁও', 50.00, 1, NULL, NULL),
(215, 10, 'Gauripur', 'গৌরিপুর', 50.00, 1, NULL, NULL),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 50.00, 1, NULL, NULL),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', 50.00, 1, NULL, NULL),
(218, 10, 'Nandail', 'নন্দাইল', 50.00, 1, NULL, NULL),
(219, 10, 'Phulpur', 'ফুলপুর', 50.00, 1, NULL, NULL),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার', 50.00, 1, NULL, NULL),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও', 50.00, 1, NULL, NULL),
(222, 11, 'Bandar', 'বান্দার', 50.00, 1, NULL, NULL),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর', 50.00, 1, NULL, NULL),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ', 50.00, 1, NULL, NULL),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ', 50.00, 1, NULL, NULL),
(226, 12, 'Belabo Upazila', 'বেলাবো', 50.00, 1, NULL, NULL),
(227, 12, 'Monohardi Upazila', 'মনোহরদি', 50.00, 1, NULL, NULL),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর', 50.00, 1, NULL, NULL),
(229, 12, 'Palash Upazila', 'পলাশ', 50.00, 1, NULL, NULL),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর', 50.00, 1, NULL, NULL),
(231, 12, 'Shibpur Upazila', 'শিবপুর', 50.00, 1, NULL, NULL),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', 50.00, 1, NULL, NULL),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', 50.00, 1, NULL, NULL),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', 50.00, 1, NULL, NULL),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', 50.00, 1, NULL, NULL),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', 50.00, 1, NULL, NULL),
(237, 13, 'Madan Upazilla', 'মদন', 50.00, 1, NULL, NULL),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', 50.00, 1, NULL, NULL),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', 50.00, 1, NULL, NULL),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', 50.00, 1, NULL, NULL),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', 50.00, 1, NULL, NULL),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি', 50.00, 1, NULL, NULL),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট', 50.00, 1, NULL, NULL),
(244, 14, 'Pangsha Upazila', 'পাংশা', 50.00, 1, NULL, NULL),
(245, 14, 'Kalukhali Upazila', 'কালুখালি', 50.00, 1, NULL, NULL),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর', 50.00, 1, NULL, NULL),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', 50.00, 1, NULL, NULL),
(248, 15, 'Damudya Upazila', 'দামুদিয়া', 50.00, 1, NULL, NULL),
(249, 15, 'Naria Upazila', 'নড়িয়া', 50.00, 1, NULL, NULL),
(250, 15, 'Jajira Upazila', 'জাজিরা', 50.00, 1, NULL, NULL),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ', 50.00, 1, NULL, NULL),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট ', 50.00, 1, NULL, NULL),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি', 50.00, 1, NULL, NULL),
(254, 16, 'Nakla Upazila', 'নাকলা', 50.00, 1, NULL, NULL),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি', 50.00, 1, NULL, NULL),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর', 50.00, 1, NULL, NULL),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি', 50.00, 1, NULL, NULL),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর', 50.00, 1, NULL, NULL),
(259, 17, 'Sakhipur Upazila', 'সখিপুর', 50.00, 1, NULL, NULL),
(260, 17, 'Basail Upazila', 'বসাইল', 50.00, 1, NULL, NULL),
(261, 17, 'Madhupur Upazila', 'মধুপুর', 50.00, 1, NULL, NULL),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল', 50.00, 1, NULL, NULL),
(263, 17, 'Kalihati Upazila', 'কালিহাতি', 50.00, 1, NULL, NULL),
(264, 17, 'Nagarpur Upazila', 'নগরপুর', 50.00, 1, NULL, NULL),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর', 50.00, 1, NULL, NULL),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর', 50.00, 1, NULL, NULL),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার', 50.00, 1, NULL, NULL),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর', 50.00, 1, NULL, NULL),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি', 50.00, 1, NULL, NULL),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর', 50.00, 1, NULL, NULL),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি', 50.00, 1, NULL, NULL),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট', 50.00, 1, NULL, NULL),
(273, 55, 'Kachua Upazila', 'কচুয়া', 50.00, 1, NULL, NULL),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট ', 50.00, 1, NULL, NULL),
(275, 55, 'Mongla Upazila', 'মংলা', 50.00, 1, NULL, NULL),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ', 50.00, 1, NULL, NULL),
(277, 55, 'Rampal Upazila', 'রামপাল', 50.00, 1, NULL, NULL),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা', 50.00, 1, NULL, NULL),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা', 50.00, 1, NULL, NULL),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর', 50.00, 1, NULL, NULL),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর ', 50.00, 1, NULL, NULL),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা', 50.00, 1, NULL, NULL),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর', 50.00, 1, NULL, NULL),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর', 50.00, 1, NULL, NULL),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া ', 50.00, 1, NULL, NULL),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর', 50.00, 1, NULL, NULL),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা', 50.00, 1, NULL, NULL),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর ', 50.00, 1, NULL, NULL),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা', 50.00, 1, NULL, NULL),
(290, 57, 'Sharsha Upazila', 'সারশা', 50.00, 1, NULL, NULL),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর', 50.00, 1, NULL, NULL),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর', 50.00, 1, NULL, NULL),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ', 50.00, 1, NULL, NULL),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর ', 50.00, 1, NULL, NULL),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা', 50.00, 1, NULL, NULL),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা', 50.00, 1, NULL, NULL),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা', 50.00, 1, NULL, NULL),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা ', 50.00, 1, NULL, NULL),
(299, 59, 'Dacope Upazila', 'ডাকপে', 50.00, 1, NULL, NULL),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া', 50.00, 1, NULL, NULL),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া', 50.00, 1, NULL, NULL),
(302, 59, 'Koyra Upazila', 'কয়ড়া', 50.00, 1, NULL, NULL),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা', 50.00, 1, NULL, NULL),
(304, 59, 'Phultala Upazila', 'ফুলতলা', 50.00, 1, NULL, NULL),
(305, 59, 'Rupsa Upazila', 'রূপসা', 50.00, 1, NULL, NULL),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 50.00, 1, NULL, NULL),
(307, 60, 'Kumarkhali', 'কুমারখালি', 50.00, 1, NULL, NULL),
(308, 60, 'Daulatpur', 'দৌলতপুর', 50.00, 1, NULL, NULL),
(309, 60, 'Mirpur', 'মিরপুর', 50.00, 1, NULL, NULL),
(310, 60, 'Bheramara', 'ভেরামারা', 50.00, 1, NULL, NULL),
(311, 60, 'Khoksa', 'খোকসা', 50.00, 1, NULL, NULL),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর', 50.00, 1, NULL, NULL),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর', 50.00, 1, NULL, NULL),
(314, 61, 'Shalikha Upazila', 'শালিখা', 50.00, 1, NULL, NULL),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর', 50.00, 1, NULL, NULL),
(316, 62, 'angni Upazila', 'আংনি', 50.00, 1, NULL, NULL),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর', 50.00, 1, NULL, NULL),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর', 50.00, 1, NULL, NULL),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', 50.00, 1, NULL, NULL),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', 50.00, 1, NULL, NULL),
(321, 63, 'Kalia Upazilla', 'কালিয়া', 50.00, 1, NULL, NULL),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর', 50.00, 1, NULL, NULL),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি ', 50.00, 1, NULL, NULL),
(324, 64, 'Debhata Upazila', 'দেভাটা', 50.00, 1, NULL, NULL),
(325, 64, 'Tala Upazila', 'তালা', 50.00, 1, NULL, NULL),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া', 50.00, 1, NULL, NULL),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ', 50.00, 1, NULL, NULL),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর', 50.00, 1, NULL, NULL),
(329, 18, 'Adamdighi', 'আদমদিঘী', 50.00, 1, NULL, NULL),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', 50.00, 1, NULL, NULL),
(331, 18, 'Sherpur', 'শেরপুর', 50.00, 1, NULL, NULL),
(332, 18, 'Dhunat', 'ধুনট', 50.00, 1, NULL, NULL),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', 50.00, 1, NULL, NULL),
(334, 18, 'Gabtali', 'গাবতলি', 50.00, 1, NULL, NULL),
(335, 18, 'Kahaloo', 'কাহালু', 50.00, 1, NULL, NULL),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', 50.00, 1, NULL, NULL),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', 50.00, 1, NULL, NULL),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', 50.00, 1, NULL, NULL),
(339, 18, 'Shibganj', 'শিবগঞ্জ', 50.00, 1, NULL, NULL),
(340, 18, 'Sonatala', 'সোনাতলা', 50.00, 1, NULL, NULL),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', 50.00, 1, NULL, NULL),
(342, 19, 'Akkelpur', 'আক্কেলপুর', 50.00, 1, NULL, NULL),
(343, 19, 'Kalai', 'কালাই', 50.00, 1, NULL, NULL),
(344, 19, 'Khetlal', 'খেতলাল', 50.00, 1, NULL, NULL),
(345, 19, 'Panchbibi', 'পাঁচবিবি', 50.00, 1, NULL, NULL),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর', 50.00, 1, NULL, NULL),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর', 50.00, 1, NULL, NULL),
(348, 20, 'Manda Upazila', 'মান্দা', 50.00, 1, NULL, NULL),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর', 50.00, 1, NULL, NULL),
(350, 20, 'Atrai Upazila', 'আত্রাই', 50.00, 1, NULL, NULL),
(351, 20, 'Raninagar Upazila', 'রাণীনগর', 50.00, 1, NULL, NULL),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা', 50.00, 1, NULL, NULL),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট ', 50.00, 1, NULL, NULL),
(354, 20, 'Sapahar Upazila', 'সাপাহার', 50.00, 1, NULL, NULL),
(355, 20, 'Porsha Upazila', 'পোরশা', 50.00, 1, NULL, NULL),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি', 50.00, 1, NULL, NULL),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 50.00, 1, NULL, NULL),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম', 50.00, 1, NULL, NULL),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া', 50.00, 1, NULL, NULL),
(360, 21, 'Lalpur Upazila', 'লালপুর', 50.00, 1, NULL, NULL),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 50.00, 1, NULL, NULL),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম', 50.00, 1, NULL, NULL),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট', 50.00, 1, NULL, NULL),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর', 50.00, 1, NULL, NULL),
(365, 22, 'Nachole Upazila', 'নাচোল', 50.00, 1, NULL, NULL),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর', 50.00, 1, NULL, NULL),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ', 50.00, 1, NULL, NULL),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া', 50.00, 1, NULL, NULL),
(369, 23, 'Bera Upazila', 'বেড়া', 50.00, 1, NULL, NULL),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা', 50.00, 1, NULL, NULL),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর', 50.00, 1, NULL, NULL),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর', 50.00, 1, NULL, NULL),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী', 50.00, 1, NULL, NULL),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর', 50.00, 1, NULL, NULL),
(375, 23, 'Santhia Upazila', 'সাথিয়া', 50.00, 1, NULL, NULL),
(376, 23, 'Sujanagar Upazila', 'সুজানগর', 50.00, 1, NULL, NULL),
(377, 24, 'Bagha', 'বাঘা', 50.00, 1, NULL, NULL),
(378, 24, 'Bagmara', 'বাগমারা', 50.00, 1, NULL, NULL),
(379, 24, 'Charghat', 'চারঘাট', 50.00, 1, NULL, NULL),
(380, 24, 'Durgapur', 'দুর্গাপুর', 50.00, 1, NULL, NULL),
(381, 24, 'Godagari', 'গোদাগারি', 50.00, 1, NULL, NULL),
(382, 24, 'Mohanpur', 'মোহনপুর', 50.00, 1, NULL, NULL),
(383, 24, 'Paba', 'পবা', 50.00, 1, NULL, NULL),
(384, 24, 'Puthia', 'পুঠিয়া', 50.00, 1, NULL, NULL),
(385, 24, 'Tanore', 'তানোর', 50.00, 1, NULL, NULL),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর', 50.00, 1, NULL, NULL),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি', 50.00, 1, NULL, NULL),
(388, 25, 'Chauhali Upazila', 'চৌহালি', 50.00, 1, NULL, NULL),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা', 50.00, 1, NULL, NULL),
(390, 25, 'Kazipur Upazila', 'কাজীপুর', 50.00, 1, NULL, NULL),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ', 50.00, 1, NULL, NULL),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর', 50.00, 1, NULL, NULL),
(393, 25, 'Tarash Upazila', 'তারাশ', 50.00, 1, NULL, NULL),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া', 50.00, 1, NULL, NULL),
(395, 26, 'Birampur Upazila', 'বিরামপুর', 50.00, 1, NULL, NULL),
(396, 26, 'Birganj', 'বীরগঞ্জ', 50.00, 1, NULL, NULL),
(397, 26, 'Biral Upazila', 'বিড়াল', 50.00, 1, NULL, NULL),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ', 50.00, 1, NULL, NULL),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর', 50.00, 1, NULL, NULL),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি', 50.00, 1, NULL, NULL),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট', 50.00, 1, NULL, NULL),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর', 50.00, 1, NULL, NULL),
(403, 26, 'Kaharole Upazila', 'কাহারোল', 50.00, 1, NULL, NULL),
(404, 26, 'Khansama Upazila', 'খানসামা', 50.00, 1, NULL, NULL),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর', 50.00, 1, NULL, NULL),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', 50.00, 1, NULL, NULL),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর', 50.00, 1, NULL, NULL),
(408, 27, 'Fulchhari', 'ফুলছড়ি', 50.00, 1, NULL, NULL),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', 50.00, 1, NULL, NULL),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', 50.00, 1, NULL, NULL),
(411, 27, 'Palashbari', 'পলাশবাড়ী', 50.00, 1, NULL, NULL),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', 50.00, 1, NULL, NULL),
(413, 27, 'Saghata', 'সাঘাটা', 50.00, 1, NULL, NULL),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', 50.00, 1, NULL, NULL),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 50.00, 1, NULL, NULL),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', 50.00, 1, NULL, NULL),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', 50.00, 1, NULL, NULL),
(418, 28, 'Phulbari', 'ফুলবাড়ি', 50.00, 1, NULL, NULL),
(419, 28, 'Rajarhat', 'রাজারহাট', 50.00, 1, NULL, NULL),
(420, 28, 'Ulipur', 'উলিপুর', 50.00, 1, NULL, NULL),
(421, 28, 'Chilmari', 'চিলমারি', 50.00, 1, NULL, NULL),
(422, 28, 'Rowmari', 'রউমারি', 50.00, 1, NULL, NULL),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', 50.00, 1, NULL, NULL),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', 50.00, 1, NULL, NULL),
(425, 29, 'Aditmari', 'আদিতমারি', 50.00, 1, NULL, NULL),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', 50.00, 1, NULL, NULL),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', 50.00, 1, NULL, NULL),
(428, 29, 'Patgram', 'পাটগ্রাম', 50.00, 1, NULL, NULL),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', 50.00, 1, NULL, NULL),
(430, 30, 'Saidpur', 'সৈয়দপুর', 50.00, 1, NULL, NULL),
(431, 30, 'Jaldhaka', 'জলঢাকা', 50.00, 1, NULL, NULL),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', 50.00, 1, NULL, NULL),
(433, 30, 'Domar', 'ডোমার', 50.00, 1, NULL, NULL),
(434, 30, 'Dimla', 'ডিমলা', 50.00, 1, NULL, NULL),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 50.00, 1, NULL, NULL),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', 50.00, 1, NULL, NULL),
(437, 31, 'Boda', 'বোদা', 50.00, 1, NULL, NULL),
(438, 31, 'Atwari', 'আটোয়ারি', 50.00, 1, NULL, NULL),
(439, 31, 'Tetulia', 'তেতুলিয়া', 50.00, 1, NULL, NULL),
(440, 32, 'Badarganj', 'বদরগঞ্জ', 50.00, 1, NULL, NULL),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', 50.00, 1, NULL, NULL),
(442, 32, 'Gangachara', 'গঙ্গাচরা', 50.00, 1, NULL, NULL),
(443, 32, 'Kaunia', 'কাউনিয়া', 50.00, 1, NULL, NULL),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', 50.00, 1, NULL, NULL),
(445, 32, 'Pirgachha', 'পীরগাছা', 50.00, 1, NULL, NULL),
(446, 32, 'Pirganj', 'পীরগঞ্জ', 50.00, 1, NULL, NULL),
(447, 32, 'Taraganj', 'তারাগঞ্জ', 50.00, 1, NULL, NULL),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর', 50.00, 1, NULL, NULL),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ', 50.00, 1, NULL, NULL),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি', 50.00, 1, NULL, NULL),
(451, 33, 'Haripur Upazila', 'হরিপুর', 50.00, 1, NULL, NULL),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল', 50.00, 1, NULL, NULL),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', 50.00, 1, NULL, NULL),
(454, 51, 'Baniachang', 'বানিয়াচং', 50.00, 1, NULL, NULL),
(455, 51, 'Bahubal', 'বাহুবল', 50.00, 1, NULL, NULL),
(456, 51, 'Chunarughat', 'চুনারুঘাট', 50.00, 1, NULL, NULL),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 50.00, 1, NULL, NULL),
(458, 51, 'Lakhai', 'লাক্ষাই', 50.00, 1, NULL, NULL),
(459, 51, 'Madhabpur', 'মাধবপুর', 50.00, 1, NULL, NULL),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', 50.00, 1, NULL, NULL),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ', 50.00, 1, NULL, NULL),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', 50.00, 1, NULL, NULL),
(463, 52, 'Barlekha', 'বড়লেখা', 50.00, 1, NULL, NULL),
(464, 52, 'Juri', 'জুড়ি', 50.00, 1, NULL, NULL),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', 50.00, 1, NULL, NULL),
(466, 52, 'Kulaura', 'কুলাউরা', 50.00, 1, NULL, NULL),
(467, 52, 'Rajnagar', 'রাজনগর', 50.00, 1, NULL, NULL),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', 50.00, 1, NULL, NULL),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', 50.00, 1, NULL, NULL),
(470, 53, 'Chhatak', 'ছাতক', 50.00, 1, NULL, NULL),
(471, 53, 'Derai', 'দেড়াই', 50.00, 1, NULL, NULL),
(472, 53, 'Dharampasha', 'ধরমপাশা', 50.00, 1, NULL, NULL),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', 50.00, 1, NULL, NULL),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', 50.00, 1, NULL, NULL),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', 50.00, 1, NULL, NULL),
(476, 53, 'Sulla', 'সুল্লা', 50.00, 1, NULL, NULL),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 50.00, 1, NULL, NULL),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', 50.00, 1, NULL, NULL),
(479, 53, 'Tahirpur', 'তাহিরপুর', 50.00, 1, NULL, NULL),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', 50.00, 1, NULL, NULL),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', 50.00, 1, NULL, NULL),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', 50.00, 1, NULL, NULL),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা', 50.00, 1, NULL, NULL),
(484, 54, 'Balaganj', 'বালাগঞ্জ', 50.00, 1, NULL, NULL),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', 50.00, 1, NULL, NULL),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 50.00, 1, NULL, NULL),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', 50.00, 1, NULL, NULL),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', 50.00, 1, NULL, NULL),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', 50.00, 1, NULL, NULL),
(490, 54, 'Kanaighat', 'কানাইঘাট', 50.00, 1, NULL, NULL),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', 50.00, 1, NULL, NULL),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', 50.00, 1, NULL, NULL),
(493, 1, 'Dhanmondi', NULL, 50.00, 1, '2021-03-06 05:51:19', '2021-03-06 05:51:19'),
(494, 1, 'Mirpur', NULL, 50.00, 1, '2021-03-09 05:45:40', '2021-03-09 05:45:40'),
(495, 1, 'Uttara', NULL, 50.00, 1, '2021-03-09 05:46:02', '2021-03-09 05:46:02'),
(496, 1, 'Gulsan', NULL, 50.00, 1, '2021-03-09 05:46:21', '2021-03-09 05:46:21'),
(497, 1, 'Paltan', NULL, 45.00, 1, '2021-03-10 18:42:09', '2021-03-10 18:42:09'),
(498, 1, 'Savar', NULL, 100.00, 1, '2021-03-10 19:11:52', '2021-03-10 19:11:52'),
(499, 60, 'asdf', NULL, 100.00, 1, '2021-09-05 13:14:48', '2021-09-05 13:14:48'),
(500, 7, 'test area', NULL, 51.20, 1, '2021-09-08 09:33:48', '2021-09-08 09:33:48'),
(501, 62, 'asdfasfdsadf', NULL, 56.32, 1, '2021-09-12 09:55:33', '2021-09-12 09:55:33'),
(502, 1, 'ddfghjkl;\'\\', NULL, 51.20, 1, '2021-10-10 06:26:48', '2021-10-10 06:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Health', 'health', 1, '2021-02-26 13:05:20', '2021-02-26 13:05:20'),
(2, 'Technology', 'technology', 1, '2021-02-26 13:05:36', '2021-02-26 13:05:36'),
(3, 'Electronics', 'electronics', 1, '2021-09-08 09:34:32', '2021-09-08 09:34:32'),
(4, 'test', 'test', 1, '2021-09-12 09:55:56', '2021-09-12 09:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  `userid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogcategory_id`, `userid`, `title`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'ক্যালরি মেপে সকালের নাশতা', 'ক্যালরি-মেপে-সকালের-নাশতা', '<p>সকালের নাশতা বা ব্রেকফাস্ট সারা দিনের সুস্থতার জন্য গুরুত্বপূর্ণ। সকালে আমাদের মেটাবলিজম বা বিপাকক্রিয়ার শুরু, এ সময় সব ধরনের হরমোনও থাকে সক্রিয়।<br><br>সকালের স্বাস্থ্যকর খাবার দিয়ে শুরু হবে দিনটা। সকালের নাশতা বাদ দিলে বা সময়মতো না খেলে সারা দিন ক্লান্ত লাগতে পারে। স্ট্যামিনা কমে যেতে পারে কাজের। কিন্তু ওদিকে আপনি হয়তো ডায়েট কন্ট্রোল করছেন, ক্যালরি মেপে খাচ্ছেন। তাহলে কেমন হওয়া উচিত আপনার স্বাস্থ্যকর নাশতা?<br><br>: যাঁরা ডায়েট করতে চান, তাঁদের উচিত হবে সকালের নাশতায় ২০০ থেকে ৩০০ ক্যালরি পরিমাণ খাবার গ্রহণ করা। এই খাবারে জটিল শর্করা ও আমিষ থাকতেই হবে। চর্বি বা তেল খুব কম পরিমাণে। সঙ্গে একটি তাজা ফল থাকা ভালো।<br><br>: বাড়িতে তৈরি রুটি এবং বাজারের গোটা শস্যের তৈরি ব্রাউন ব্রেড বা সিরিয়ালের চেয়ে পরোটা, নানরুটি বা সাদা পাউরুটিতে ক্যালরি ও চর্বির মাত্রা অনেক বেশি।<br><br>: সকালের নাশতায় খানিকটা আঁশ বা ফাইবার থাকলে কোষ্ঠকাঠিন্য দূর করা সহজ হবে। সকালের দিকেই কোষ্ঠ পরিষ্কার হবে।<br><br>স্বাস্থ্যকর নাশতা কেমন হতে পারে তার উদাহরণ<br><br>১)<br>দুটি হাতে বেলা ছোট রুটি বা চাপাতি (প্রতিটি ৮০ ক্যালরি = ১৬০ ক্যালরি)<br>এক বাটি সবজি (১৫০ গ্রাম = ৮০ ক্যালরি)<br>অর্ধেক কলা (৬০ ক্যালরি)<br><br>২)<br>১টা রুটি বা চাপাতি (৮০ ক্যালরি)<br>১টা ডিম (১৬০ ক্যালরি)<br>আধা বাটি ডাল (৮০ ক্যালরি)</p><p><br>৩)<br>এক বোল পরিজ দুধ: ২১৭ ক্যালরি</p><p><br>৪)<br>১ কাপ দুধ (১৫০ ক্যালরি)<br>২ স্লাইস ব্রাউন ব্রেড (১৫৫ ক্যালরি)<br><br>আখতারুন নাহার, পুষ্টিবিদ<br>১৬ সেপ্টেম্বর ২০১৮<br>সূত্র – প্রথম আলো<br></p>', 'public/uploads/blog/breakfast.jpg', 1, '2021-02-26 13:45:58', '2021-02-26 13:45:58'),
(2, 1, '1', 'চিকিৎসকের পরামর্শ ছাড়া কোনো ওষুধই খাওয়া উচিত নয়।', 'চিকি৞সকের-পরামর্শ-ছাড়া-কোনো-ওষুধই-খাওয়া-উচিত-নয়।', '<p>সুস্বাস্থ্য এক অমূল্য সম্পদ, তাই তা পাওয়ার জন্য করণীয় বিষয় নেহাত কম হবে না সেটাই স্বাভাবিক।<br><br>নিয়মিত শরীরচর্চা, সুষম খাদ্যাভ্যাস, পর্যাপ্ত বিশ্রাম ইত্যাদি থেকে মুক্তি নেই কারোরই।<br><br>সেই সঙ্গে বয়স বাড়ার সঙ্গে যোগ হবে আরও দায়িত্ব ও কর্তব্য। মাল্টিভিটামিন সেবন তাদের মধ্যে একটি।<br><br>স্বাস্থ্যবিষয়ক একটি ওয়েবসাইটে প্রকাশিত প্রতিবেদন অবলম্বনে জানানো হল এই গুরুত্ব সম্পর্কে। <br><br>পুষ্টির ঘাটতি পূরণ<br><br>যুক্তরাষ্ট্রের পুষ্টিবিদ ডা. জশ অ্যাক্স, ডিএনএম, ডিসিএনএস, ডিসি বলেন, “পুরো জীবনকালেই সুস্থ থাকতে হলে আপনার খাদ্যাভ্যাসে সুষম হতে হবে, তাতে থাকবে পর্যাপ্ত পরিমাণ শাকসবজি। এগুলোই আপনাকে অধিকাংশ খনিজ ও পুষ্টি উপাদান সরবরাহ করবে। তারপরও কিছু প্রয়োজনীয় পুষ্টি উপাদানের যোগান ভোজ্য উৎস থেকে পাওয়া কঠিন হয়ে দাঁড়াবে, যে ঘাটতি পূরণ করা জরুরি।<br><br>বর্তমান সময়ে মানুষের দৈনন্দিন খাদ্যাভ্যাসের একটা বড় অংশ হল প্রক্রিয়াজাত খাবার, যেগুলো একদিকে ক্যালরি থাকে প্রচুর কিন্তু পুষ্টি উপাদানের বেলায় সেগুলো মাকাল ফল।<br><br>তাই সাপ্লিমেন্ট’য়ের প্রয়োজনীয়তা অস্বীকার করা সম্ভব নয়।<br><br>নিজের প্রয়োজন অনুযায়ী সেবন<br><br>যুক্তরাষ্ট্রের ‘মাইন্ডবডি’র ‘ন্যাশনাল থেরাপি প্র্যাকটিশনার অ্যান্ড ওয়েলনেস স্পেশালিস্ট’ লরেন ম্যাক-অ্যালিস্টার বলেন, “আমাদের পেশার অনেকেই পুষ্টি চাহিদা পূরণের ক্ষেত্রে ভোজ্য উৎসকে প্রাধান্য দিলেও মানুষের দৈনন্দিন জীবনযাত্রাকেও বিবেচনায় আনতেই হয়। সবসময় যা শরীরের এখনই প্রয়োজন তা ভোজ্য থেকে পাওয়া সম্ভব হয় না, ফলে ‘সাপ্লিমেন্ট’য়ের কথা ভাবতেই হয়।”<br><br>“আপনি কি ‘ভিগান’ নাকি ‘ভেজিটেরিয়ান’? গর্ভধারণ করছেন? ‘নার্সিং’ পেশায় আছেন? বয়স কি ৫০ এর বেশি?<br><br>একজন মানুষের খাদ্যাভ্যাস, জীবনযাত্রা, বয়স ইত্যাদি বিভিন্ন বিষয়ের সঙ্গে বিশেষ পুষ্টি উপাদানের চাহিদা জড়িত। আপনার ঠিক কী প্রয়োজন তা নিয়ে নিশ্চিত না হলে বিশেষজ্ঞের পরামর্শ নেওয়া অত্যন্ত গুরুত্বপূর্ণ।<br><br>কর্মশক্তির যোগান<br><br>প্রতিটি মানুষেরই আছে নিজস্ব ব্যস্ততা আর দিন শেষে কমবেশি সবাই ক্লান্ত। কর্মব্যস্ত জীবনযাত্রায় টিকে থাকার প্রয়োজনে ‘মাল্টিভিটামিন’ অনেকাংশে জরুরি।<br><br>‘লাইফ এক্সটেনশন’য়ের ‘এডুকেশন সাইনটিস্ট’ ডা. ভেনেসা পেভি, এনডি বলেন, “কারোহাইড্রেইট, চর্বি আর প্রোটিনের মাঝে আটকে থাকা কর্মশক্তিকে কাজে লাগাতে কার্যকর ভূমিকা রাখে ভিটামিন বি। আর মাল্টিভিটামিন থেকে পাওয়া যায় ঠিক সেটাই, যা পানিতে দ্রবণীয়। এই ভিটামিন বি কোষকে জ্বালানি যোগায় যা আমাদের দৈনন্দিন জীবনের সংগ্রাম চালিয়ে যাওয়া শক্তি যোগাবে। পাশাপাশি শরীরের বিভিন্ন অঙ্গে কার্যক্ষমতা অক্ষুণ্ন রাখতেও ভিটামিন বি গুরুত্বপূর্ণ একটি উপাদান।”<br><br>ক্যান্সারের ঝুঁকি<br><br>যুক্তরাষ্ট্রের ‘ওয়েলনেস এক্সপার্ট’ এমিলি পের্জ বলেন, “মাল্টিভিটামিন’য়ের সবচাইতে গুরুত্বপূর্ণ উপকারিতা হল ক্যান্সারের বিরুদ্ধে এর কার্যকারীতা। চিকিৎসকের পরামর্শ মাফিক সেবন করা সঠিক মাত্রার মাল্টিভিটামিন প্রতিদিন যোগাবে ‘ফোলিক অ্যাসিড’, যা অক্সিজেন সমৃদ্ধ রক্তকণিকাকে পুরো শরীরে ছুটে বেড়াতে সাহায্য করে। পাশাপাশি অবসাদ ও রক্তশূন্যতা কাটায়, গর্ভবতী নারীদের ভ্রণের খাবার যোগায় এবং রোগ থেকে দূরে রাখে। বেশিরভাগ মানুষেই পর্যাপ্ত পত্রল সবজি খায় না, তাই ‘ফোলেট’য়ের ঘাটতি থেকে যায়। মাল্টিভিটামিন’য়ের মাধ্যমে সেই ঘাটতি পূরণ করা সম্ভব।<br><br>হৃদযন্ত্রে শক্তি যোগায়<br><br>অসংখ্য মানুষের হৃদযন্ত্র পুরোপুরি স্বাস্থ্যবান না হওয়ার পরেও কাজ করে যাচ্ছে নিরলসভাবে।<br><br>ডা. অ্যাক্স বলেন, “এই অঙ্গটির সুস্বাস্থ্যের চিন্তা প্রতিটি মানুষের প্রধান চিন্তা হওয়া উচিত। হৃদযন্ত্রের জন্য সহায়ক খাদ্যাভ্যাস তো থাকবেই, পাশাপাশি ‘মাল্টিভিটামিন’য়ের মাধ্যমে যদি হৃদযন্ত্রকে বাড়তি শক্তি যোগানো যায় তবে তা আরও উপকারী হবে। ভিটামিন ডি থ্রি, ভিটামিন কে টু, ফোলেট এবং ভিটামিন বি টুয়েলভ সবগুলো হৃদযন্ত্রের জন্য উপকারী।”<br><br>স্মৃতিশক্তি বাড়াতে<br><br>একটা সময় আপনার মস্তিষ্ক ও স্মৃতিশক্তি ছিল প্রখর, নিত্যনতুন সৃষ্টিশীল চিন্তা ঘুম কেড়ে নিত। কিন্তু এখন রাতের বেলা সকালের নাস্তায় কি ছিল তা মনে করতেই বেগ পেতে হয়, জানা বিষয়গুলোও মনে করতে বেগ পেতে হয়। স্বভাবতই বয়সের সঙ্গে মস্তিষ্কের ক্ষমতা কমছে। তবে সঠিক ‘মাল্টিভিটামিন’ এই ক্ষয় কমাতে পারে। <br><br>ডা পেভি বলেন, “ভিটামিন বি ফাইভ বা প্যান্টোথেনিক অ্যাসিড হল ‘অ্যাসিটাইলকোলিন’য়ের উৎপাদনের সহায়ক উপাদান। ‘অ্যাসিটাইলকোলিন’ হল একটি ‘নিউরোট্রান্সমিটার’ যা স্মৃতিশক্তির জন্য দায়ী। ভিটামিন বি সিক্স আর বি নাইন যথাক্রমে তৈরি করে ‘সেরোটনিন’ আর ‘ডোপামিন’ হরমোন, যা আমাদের মনে আনন্দ সৃষ্টি করে।”<br><br>“ভিটামিন বি টুয়েলভ আরও গুরুত্বপূর্ণ একটি উপাদান। এটি ‘মায়েলিন শিথ’ নামক আবরণের সুস্বাস্থ্য বজায় রাখে, যা মস্তিষ্কের কোষকে সুরক্ষা দেয়।”<br><br>সাবধানতা<br><br>মাল্টিভিটামিনের এতো উপকারিতা জানার পর সবাই হয়ত ছুটবেন এর পেছনেই। তবে খেয়াল রাখতে হবে, চিকিৎসকের পরামর্শ ছাড়া নিজে নিজেই মাল্টিভিটামিন নিয়ে ডাক্তারি করা প্রচণ্ড ঝুঁকিপূর্ণ।<br><br>অতিরিক্ত মাত্রায় যেকোনো স্বাস্থ্যকর বস্তুও স্বাস্থ্যহানির কারণ হয়, মাল্টিভিটামিন এর ব্যাতিক্রম নয়। <br><br>আবার মালি্টভিটামিনের কিছু পার্শ্ব প্রতিক্রিয়াও আছে। যেমন প্রসাবের রং হলুদ হয়ে যাওয়া যা স্বাভাবিক ঘটনা। এর কারণ হল যে উপাদানগুলো শরীরের জন্য অপ্রয়োজনীয়, তা প্রসাবের সঙ্গে বেরিয়ে যায়। আর সেকারণেই প্রস্রাবের রং হলুদ হয়ে যায়।<br></p>', 'public/uploads/blog/pharmaceutical-tablets.jpg', 1, '2021-02-26 14:11:24', '2021-02-26 14:11:24'),
(3, 3, '2', 'Smart watch price in bd', 'smart-watch-price-in-bd', 'Smart watch price in bd, Smart watch price in bd Smart watch price in bd Smart watch price in bd Smart watch price in bd', 'public/uploads/blog/mibro-color-500x500.jpg', 1, '2021-09-08 09:35:16', '2021-09-08 09:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brandName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pran', 'pran', 'public/uploads/product/1614272602-Pran.jpg', 1, '2020-11-22 04:32:59', '2021-02-25 17:03:22'),
(2, 'Dhaka Smart', 'dhaka-smart', 'public/uploads/product/1614268323-Dhaka-Smart.png', 1, '2020-11-22 05:16:14', '2021-02-25 15:52:03'),
(3, 'Tangail Tant Saree', 'tangail-tant-saree', 'public/uploads/product/1614268311-Tangail-Tant.png', 1, '2020-11-22 06:03:19', '2021-02-25 15:51:51'),
(4, 'Grocery Brand', 'grocery-brand', NULL, 0, '2020-11-22 08:46:35', '2021-02-25 15:52:11'),
(5, 'Armani', 'armani', 'public/uploads/product/1614268291-Armani.png', 1, '2021-02-19 11:55:04', '2021-02-25 15:51:31'),
(6, 'Richman', 'richman', 'public/uploads/product/1614268280-Richman.png', 1, '2021-02-22 04:57:44', '2021-02-25 15:51:20'),
(7, 'Extreme', 'extreme', 'public/uploads/product/1614268263-Extreme.png', 1, '2021-02-22 06:15:58', '2021-02-25 15:51:03'),
(8, 'SaRa LIFESTYLE LTD', 'sara-lifestyle-ltd', 'public/uploads/product/1614268256-SaRa.png', 1, '2021-02-22 06:47:43', '2021-02-25 15:50:56'),
(9, 'Crocodile', 'crocodile', 'public/uploads/product/1614268223-Crocodile.jpg', 1, '2021-02-22 07:21:07', '2021-02-25 15:50:23'),
(10, 'Cotton Kraft Ltd', 'cotton-kraft-ltd', 'public/uploads/product/1614268237-Cotton Kraft Ltd.jpg', 1, '2021-02-22 07:24:37', '2021-02-25 15:50:37'),
(11, 'Alienx', 'alienx', 'public/uploads/product/1614268179-Alienx.png', 1, '2021-02-22 08:58:17', '2021-02-25 15:49:39'),
(12, 'Bata', 'bata', 'public/uploads/product/1614268159-Bata.jpg', 1, '2021-02-22 09:20:55', '2021-02-25 15:49:19'),
(13, 'Dream Fashion House', 'dream-fashion-house', 'public/uploads/product/1614268147-Dream-Fashion-House.png', 1, '2021-02-22 10:02:19', '2021-02-25 15:49:07'),
(14, 'Pakiza', 'pakiza', 'public/uploads/product/1614268134-Pakiza.png', 1, '2021-02-22 11:18:17', '2021-02-25 15:48:54'),
(15, 'Home Tex', 'home-tex', 'public/uploads/product/1614268122-Home Tex.jpg', 1, '2021-02-23 04:38:48', '2021-02-25 15:48:42'),
(16, 'Xiaomi', 'xiaomi', 'public/uploads/product/1614268109-Xiaomi.png', 1, '2021-02-23 12:23:08', '2021-02-25 15:48:29'),
(17, 'Samsung', 'samsung', 'public/uploads/product/1614268089-Samsung.jpg', 1, '2021-02-23 12:24:23', '2021-02-25 15:48:09'),
(18, 'OPPO', 'oppo', 'public/uploads/product/1614268077-OPPO.jpg', 1, '2021-02-23 12:24:58', '2021-02-25 15:47:57'),
(19, 'Realme', 'realme', 'public/uploads/product/1614268062-Realme.jpg', 1, '2021-02-23 12:25:10', '2021-02-25 15:47:42'),
(20, 'Huawei', 'huawei', 'public/uploads/product/1614268044-Huawei.jpg', 1, '2021-02-23 12:47:10', '2021-02-25 15:47:24'),
(21, 'LIYUNDA', 'liyunda', 'public/uploads/product/1614268034-LIYUNDA.png', 1, '2021-02-23 12:47:54', '2021-02-25 15:47:14'),
(22, 'ASUS', 'asus', 'public/uploads/product/1614268021-ASUS.jpg', 1, '2021-02-23 12:55:00', '2021-02-25 15:47:01'),
(23, 'HP', 'hp', 'public/uploads/product/1614268009-HP.jpg', 1, '2021-02-23 12:55:44', '2021-02-25 15:46:49'),
(24, 'Dell', 'dell', 'public/uploads/product/1614267995-Dell.jpg', 1, '2021-02-23 12:55:56', '2021-02-25 15:46:35'),
(25, 'Apple', 'apple', 'public/uploads/product/1614267981-Apple.jpg', 1, '2021-02-23 12:56:11', '2021-02-25 15:46:21'),
(26, 'Lenovo', 'lenovo', 'public/uploads/product/1614267924-lenovo.jpg', 1, '2021-02-23 12:56:32', '2021-02-25 15:45:24'),
(27, 'smart', 'smart', 'public/uploads/brand/1631093057-mibro-color-500x500.jpg', 1, '2021-09-08 09:24:18', '2021-09-08 09:24:18'),
(28, 'ready shop', 'ready-shop', 'public/uploads/brand/1631507405-READY-SHOP.jpg', 1, '2021-09-13 04:30:06', '2021-09-13 04:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `product_size`, `product_color`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'x', 'red', '3', '2021-09-28 11:42:35', '2021-11-03 11:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `cash_on_delivery_sets`
--

CREATE TABLE `cash_on_delivery_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_on_delivery_sets`
--

INSERT INTO `cash_on_delivery_sets` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'Set Cash On Delivery !', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontProduct` tinyint(4) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `frontProduct`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home Appliances', 'home-appliances', 'public/uploads/category/1612005984-home-applience.png', 1, 6, 1, '2021-01-30 11:26:24', '2021-02-14 16:37:19'),
(2, 'Kitchen Appliances', 'kitchen-appliances', 'public/uploads/category/1612006875-Kitchen-Appliances.png', 1, 7, 1, '2021-01-30 11:41:15', '2021-02-14 16:37:58'),
(3, 'Home Decor', 'home-decor', 'public/uploads/category/1612007103-Home-Decor.png', NULL, NULL, 1, '2021-01-30 11:45:03', '2021-09-13 10:09:52'),
(4, 'Baby and Toys', 'baby-and-toys', 'public/uploads/category/1612007230-Mom-and-Baby.png', 1, 4, 1, '2021-01-30 11:47:10', '2021-02-19 06:24:38'),
(5, 'Gadgets', 'gadgets', 'public/uploads/category/1612007542-Gadgets.png', 1, 1, 1, '2021-01-30 11:52:22', '2021-09-13 10:36:35'),
(6, 'Men\'s Fashion', 'mens-fashion', 'public/uploads/category/1612007794-1593253558-1569312437-shirt1.jpeg', NULL, 3, 1, '2021-01-30 11:56:34', '2021-09-13 10:10:12'),
(7, 'Women\'s Fashion', 'womens-fashion', 'public/uploads/category/1612007895-1593253591-1569323249-women-sharee3.jpeg', 1, 2, 1, '2021-01-30 11:58:15', '2021-02-14 16:37:58'),
(8, 'Sports and Outdoor', 'sports-and-outdoor', 'public/uploads/category/1612008343-clipart-sports-individual-sport-3.png', NULL, 8, 1, '2021-01-30 12:05:43', '2021-01-30 12:05:43'),
(9, 'Health and Beauty', 'health-and-beauty', 'public/uploads/category/1612008454-Health-and-Beauty.png', NULL, 9, 1, '2021-01-30 12:07:34', '2021-01-30 12:07:34'),
(10, 'Watches and accessories', 'watches-and-accessories', 'public/uploads/category/1612008560-Watches-and-sunglasses.png', 1, 10, 1, '2021-01-30 12:09:20', '2021-02-19 08:34:56'),
(11, 'Electronic Devices', 'electronic-devices', 'public/uploads/category/1612008671-Electronic-Devices.png', 1, 11, 1, '2021-01-30 12:11:11', '2021-02-07 08:06:49'),
(12, 'demo test', 'demo-test', 'public/uploads/category/1631092008-mibro-color-500x500.jpg', NULL, NULL, 0, '2021-09-08 09:06:48', '2021-09-12 13:56:54'),
(13, 'demo', 'demo', 'public/uploads/category/1631354130-slider.jpg', NULL, NULL, 0, '2021-09-11 09:55:30', '2021-09-12 13:55:49'),
(14, 'nest test', 'nest-test', 'public/uploads/category/1631355581-slider.jpg', NULL, NULL, 0, '2021-09-11 10:19:41', '2021-09-12 13:55:44'),
(15, 'Accessories', 'accessories', 'public/uploads/category/1631433954-istockphoto-638637448-612x612.jpg', NULL, 5, 1, '2021-09-12 08:05:54', '2021-09-13 10:36:35'),
(16, 'Food', 'food', 'public/uploads/category/1632906613-fff.jpg', 1, NULL, 1, '2021-09-29 09:10:13', '2021-09-29 09:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Shirt', 'full-shirt', 3, 1, '2021-02-14 16:42:04', '2021-02-14 16:42:04'),
(2, 'Polo T-Shirt', 'polo-t-shirt', 4, 1, '2021-02-14 16:43:08', '2021-02-14 16:43:08'),
(3, 'Half Shirt', 'half-shirt', 3, 1, '2021-02-22 05:47:11', '2021-02-22 05:47:11'),
(4, 'Graphics Tablet', 'graphics-tablet', 65, 1, '2021-08-04 07:01:41', '2021-08-04 07:01:41'),
(5, 'test child', 'test-child', 22, 1, '2021-09-08 09:20:24', '2021-09-08 09:20:24'),
(6, 'test child', 'test-child', 71, 1, '2021-09-11 09:56:28', '2021-09-11 09:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `clientfeedbacks`
--

CREATE TABLE `clientfeedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientfeedbacks`
--

INSERT INTO `clientfeedbacks` (`id`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Md Rasel Islam', 'public/uploads/clientfeedback/1606046426-avatar.png', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maxime, recusandae est sunt officia vel ex at, distinctio eaque doloremque non qui exercitationem cupiditate eveniet explicabo soluta nihil molestias quia quos.', 1, '2020-11-22 12:00:27', '2020-11-22 12:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#000000', '1', '2021-02-19 12:26:27', '2021-02-19 12:26:27'),
(2, 'Red', '#ff0000', '1', '2021-02-19 12:26:44', '2021-02-19 12:26:44'),
(3, 'White', '#ffffff', '1', '2021-02-19 13:07:44', '2021-02-19 13:07:44'),
(4, 'Orange', '#ff8000', '1', '2021-02-19 13:07:59', '2021-02-19 13:07:59'),
(5, 'Blue', '#0000ff', '1', '2021-02-19 13:08:12', '2021-02-19 13:08:12'),
(6, 'Green', '#008000', '1', '2021-02-19 13:08:33', '2021-02-19 13:08:33'),
(7, 'Gray', '#c0c0c0', '1', '2021-02-19 14:58:36', '2021-02-19 14:58:36'),
(8, 'test', '#4bb483', '1', '2021-09-08 09:22:47', '2021-09-08 09:22:47'),
(9, 'test 2', '#9d0606', '1', '2021-09-13 04:29:26', '2021-09-13 04:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, '63', '1', '2021-08-23 13:07:43', '2021-08-23 13:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maplink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `currency`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Tk', '01700000000', 'readyshop@gmail.com', 'demo address , demo address ,demo address', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7299.517422157513!2d90.20379478867078!3d23.8271777398172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755ec680eff6e4b%3A0x785e77d72a33f0e3!2sKhaser%20Char%20Bazar!5e0!3m2!1sen!2sbd!4v1636187667480!5m2!1sen!2sbd\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1, '2021-09-08 09:46:38', '2021-12-02 06:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes`
--

CREATE TABLE `couponcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `couponcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expairdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offertype` tinyint(4) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couponcodes`
--

INSERT INTO `couponcodes` (`id`, `couponcode`, `expairdate`, `offertype`, `amount`, `buyammount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wsit', '2021-03-31', 1, '5', '2000', 1, '2021-02-25 18:13:50', '2021-03-09 06:30:27'),
(2, '2021test', '2021-12-09', 2, '200', '5010', 1, '2021-09-08 09:30:10', '2021-10-13 05:47:28'),
(3, '2021', '2021-11-06', 2, '200', '100', 1, '2021-10-10 06:20:55', '2021-11-02 18:42:37'),
(4, 'kkkk', '2021-11-30', 1, '1000', '10000', 1, '2021-10-31 04:08:38', '2021-10-31 04:08:38'),
(5, 'aaaa', '2021-11-05', 2, '10', '10000', 1, '2021-10-31 04:12:39', '2021-10-31 04:12:39'),
(6, 'marscodeit', '2021-11-30', 1, '50', '100', 1, '2021-11-04 06:01:46', '2021-11-04 06:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_useds`
--

CREATE TABLE `coupon_useds` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `couponcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usedate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_useds`
--

INSERT INTO `coupon_useds` (`id`, `customerId`, `couponcode`, `usedate`, `created_at`, `updated_at`) VALUES
(1, 2, 'wsit', '2021-03-11', '2021-03-10 19:18:13', '2021-03-10 19:18:13'),
(2, 3, '2021', '2021-10-10', '2021-10-10 10:05:40', '2021-10-10 10:05:40'),
(3, 31, '2021', '2021-10-10', '2021-10-10 11:10:58', '2021-10-10 11:10:58'),
(4, 31, '2021', '2021-10-10', '2021-10-10 11:27:14', '2021-10-10 11:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `createpages`
--

CREATE TABLE `createpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `createpages`
--

INSERT INTO `createpages` (`id`, `title`, `slug`, `text`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', '<p>Privacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy Policy<br></p>', 2, 1, '2021-11-05 10:22:39', '2021-11-05 10:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `customerapplies`
--

CREATE TABLE `customerapplies` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verifyToken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passResetToken` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/uploads/avatar/avatar.png',
  `provider` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullName`, `phoneNumber`, `address`, `email`, `password`, `remember_token`, `verifyToken`, `passResetToken`, `image`, `provider`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Md. Zadu Mia', '01766950986', 'Nimnagar, Balubari, Dinajpur', 'developer.zadu@gmail.com', '$2y$10$VuuNTaS.0DTu/cyj1.EC4uKQYobSm06qmojhuGYY23qOUf6sk7qhC', NULL, '741729', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-08-31 05:57:11', '2021-11-03 11:00:34'),
(2, 'zadu mia', '01742892723', NULL, 'raselsz2018@gmail.com', '$2y$10$OLjCufoGXQp3hEcTP/BjM.Gis6.RkKG8acrjtLpt6hwO6uhpt9tP2', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-02 07:31:31', '2021-09-02 07:31:31'),
(3, 'shamim jaman', '01750843963', 'ydydydydyc', 'mdanisurrahman6252@gmail.com', '$2y$10$A9yV3JzZPOOvk3WpsnPw9OoX2dKW6tg8BozOVuiyialg2eRf4Y1lC', NULL, '1', '822059', 'public/uploads/customer/1635876737-image_picker1291960664369970722.jpg', NULL, NULL, 1, '2021-09-02 10:07:18', '2021-11-03 10:57:53'),
(4, 'shamim jaman', '01750843966', NULL, 'unboxgadgetbd@gmail.com', '$2y$10$FhCSVTpACewKMYfiFR7XoukjzKq36uVwKUDXTqiMet/z.3Xyd/eVa', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-11 05:49:20', '2021-09-11 05:49:20'),
(5, 'kabir', '01766950984', 'dhaka', 'kabir@gmail.com', '$2y$10$9oMS7MMNYWt.ykAsZPgqkOLfu74Ln0Q1QPx.MLv13Q8tgmQPmGsO.', NULL, '1', NULL, 'public/uploads/customer/1635139296-image_picker6629912099018849838.jpg', NULL, NULL, 1, '2021-09-11 05:51:39', '2021-10-25 05:21:36'),
(6, 'imran', '01787816047', NULL, 'imran@gmail.com', '$2y$10$/25.9/WbxMgbw99ENLHnRu7ykbeJAjFE8w2BLUcrhtNcByizwpl/W', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-11 08:04:26', '2021-09-11 08:04:26'),
(7, 'Rasel Islam', '01750843968', NULL, 'admin@gmail.com', '$2y$10$bTVxkjbTkXCr6KbBwc3Qke6/Y6BtwOLMy85FYdsV0KehWd2akVm4C', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-12 11:30:16', '2021-09-12 11:30:16'),
(8, 'kab', '01877777777', NULL, 'kabirkhan@gmail.com', '$2y$10$i3ZzwbQplYh/fs3zVWlPbOW3deEZZZLMASTbrxLSYQ7toQ3Ox/NXu', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-15 07:15:17', '2021-09-15 07:15:17'),
(9, 'demo', '01777777777', NULL, 'demo@gmail.com', '$2y$10$OCob0YYd2VhTC4jJwf02/O2mylIEleZ.6MmT6dEVMSez4H7fQjGkC', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-15 07:50:44', '2021-09-15 07:50:44'),
(10, 'demo', '01812345678', NULL, 'test@test.com', '$2y$10$yEO948OPuDd3GshFACBQvu.WAwPQOntyjAHGb9wMhxQkX3htkM34W', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-15 08:07:26', '2021-09-15 08:07:26'),
(11, 'Rasel Islam', '0189876543', NULL, 'kobir@gmail.com', '$2y$10$OfMq3yu59ccpgvfnyU6tQe/MWDjrzceD0OXT96jcJCzh1Y.O92.BW', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-18 05:13:50', '2021-09-18 05:13:50'),
(12, 'Rasel', NULL, NULL, 'zadumia454@gmail.com', '$2y$10$1epS2b.MNrUZx35HoTx5qO01AKtzGdspSAWFq7Q98d4lKjxi/txVu', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-19 08:40:54', '2021-09-19 08:40:54'),
(13, 'Rasel Islam', '01766950987', NULL, 'dhaka@gmail.com', '$2y$10$rDGuDSsBX5C3X7.jf3Us1.JitK0loZWfGucgQU0Lh8KZ9YECI.L3S', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-19 10:53:56', '2021-09-19 10:53:56'),
(14, 'Kabir', '0176695098', NULL, 'imran661@gmail.com', '$2y$10$lQQzCBADQsGLbTYMKWzLtOKXJKXU8uaB1NSEcLZAZjl4mB87ZWlK6', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-21 11:22:31', '2021-09-21 11:22:31'),
(15, 'Kabir', '01766950988', NULL, 'imran6861@gmail.com', '$2y$10$fZAY5FXXQ1FSdib14WmrQ.38WIAcdrZbKWkaAm.S5UJlkZMkyxq8e', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-21 11:56:47', '2021-09-21 11:56:47'),
(16, 'Rasel Islam', '0189898989', NULL, 'kobir61@gmail.com', '$2y$10$4D.bdJw7/rYcXprVf7T0wOawWmx2FxgVcWpRiXI8F5lCx3AU1IYWK', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-21 12:51:24', '2021-09-21 12:51:24'),
(17, 'Rasel Islam', '01750843967', NULL, 'samim66@gmail.com', '$2y$10$G8Mp/Uf7i1RhOHRJBH3XI.tYG3RTXGMUCd3b6K49vJLADwcEG/nxC', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-22 05:10:29', '2021-09-22 05:10:29'),
(18, 'Rasel Islam', '01766950989', NULL, 'kobir24@gmail.com', '$2y$10$1mHx63PXTmrqRs3I6ezKjuyCKWjuNj.LA7ZCPFWeN/ii/jnfnI4B6', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-22 06:10:18', '2021-09-22 06:10:18'),
(19, 'Rasel Islam', '01766950555', NULL, 'shamim520@gmail.com', '$2y$10$3qLkuAwTOXtgNlEst93z4u8T3s/lBjGlnXnnqFPZ.yowbdfrPt8.q', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-22 12:49:42', '2021-09-22 12:49:42'),
(20, 'Md. Zadu Mia', '01742892725', 'Nimnagar, Balubari, Dinajpur', 'zadumia441@gmail.com', '$2y$10$dcDWBWj6r.woZ8gGru0kfuhEx9iaqN3liS8vVcH2eBZ8yyVfvt13G', NULL, '1', NULL, 'public/uploads/customer/1634444739-avatar.png', NULL, NULL, 1, '2021-09-24 11:50:02', '2021-11-06 07:17:50'),
(21, 'Rasel Islam', '017669509', NULL, 'zadumia1@gmail.com', '$2y$10$K49AUcAaVUPhgShpSwBAx.bO5VzE3HuEFopx3HVEdfTvBMeS7NExW', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-27 08:22:14', '2021-09-27 08:22:14'),
(22, 'ccvjgf', NULL, NULL, 'fdnlnb@nn.com', '$2y$10$4zDRJ0gT6eUFDb7yD3YbXee6a89iGNJqHCCfkLEogRSympIvX01Ny', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-27 11:06:33', '2021-09-27 11:06:33'),
(23, 'Kabir Imran', NULL, NULL, 'kabirimran@gmail.com', '$2y$10$mK75wtSQxco8ht/V.6ceIeww.9Fk364tOQLAF0J28iBeoHECsvTj2', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-28 18:41:40', '2021-09-28 18:41:40'),
(24, 'Rasel Islam', '01750505050', NULL, 'samim25@gmail.com', '$2y$10$nJDrW69WozTv3qup.AfaTu1wK.ACGGeEjw7oLxjinTiRIuwoFAQU6', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-29 05:51:37', '2021-09-29 05:51:37'),
(25, 'k', NULL, NULL, 'b@v.com', '$2y$10$DGsZF5XCSgnjdxW26l.hi.vemWFyRObe0ZKXZxWFuGfZ/DKFfT6gW', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-30 13:01:41', '2021-09-30 13:01:41'),
(26, 'imran kabir', NULL, NULL, 'imrankabir', '$2y$10$plM7qHl5og11J2ENqYn7qONGCeVQsxo2q.KdEtqiw.m.VQbxMe5aG', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-30 15:12:05', '2021-09-30 15:12:05'),
(27, 'Imran Kabir', NULL, NULL, 'imran61@gmail.com', '$2y$10$zjnpcAL../1vRpsS7DCNou9ZMMHCPQk9MKcwXqjyKA6ArTCGGxQbK', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-30 15:24:02', '2021-09-30 15:24:02'),
(28, 'imran kabir', NULL, NULL, 'kabir71@gmail.com', '$2y$10$DFDUM5ybwKxPtliWaZe1r.9Bp4TPybat6RYERrsYoCw1GFEXqtIa2', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-09-30 15:30:41', '2021-09-30 15:30:41'),
(29, 'k', NULL, NULL, 'kkk@kkk.com', '$2y$10$zpuH9cCK6XVCTNwJOfFQPOhn1OVDN3/QaTmbb8Hz8p0IThcNSuySi', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-01 11:02:40', '2021-10-01 11:02:40'),
(30, 'Kabir', '01787816048', NULL, 'kabirhossain02012000@gmail.com', '$2y$10$weNXS4EE7U86OMPpMMINMOnyanQ3hrZwYQmACAJvPCal5NTXc/lb2', NULL, '1', '366228', 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-02 16:32:17', '2021-10-02 16:32:41'),
(31, 'Kabir', '0178787816047', 'Tangail', 'kabir1971@gmail.com', '$2y$10$IGw/YlDnB0yp7KH9ZJQ25uwUWwWzOcMqzqMn.PEL270sYva..SrHW', NULL, '1', '760798', 'public/uploads/customer/1635012269-image_picker4417865755002154701.jpg', NULL, NULL, 1, '2021-10-02 16:42:53', '2021-10-23 18:04:29'),
(32, 'samim', '01766950900', NULL, 'samim520@gmail.com', '$2y$10$L7I7mLpc/5A0GrN9nq/HPedfZaV.cKAJdeHIl.rhGLbtUE2UizE4i', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-04 05:54:32', '2021-10-04 05:54:32'),
(33, 'kabir', '01224456768', NULL, 'demo@demo.com', '$2y$10$9RiHlvKBDs7C/coVm4B3jeELaXy3VEdofGVkcT9vVmUVCM4vuFbJW', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-07 06:34:38', '2021-10-07 06:34:38'),
(34, 'kabir', NULL, NULL, 'kabirhossenbd1971@gmail.com', '$2y$10$Q4dvL0yNP57cjw1XwT7rI.khs1sXlxZ3te3W4tHvdfsrQSD2D1Z0K', NULL, '1', '256982', 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-07 13:33:25', '2021-11-06 04:58:04'),
(35, 'k', NULL, NULL, 'v@v.com', '$2y$10$zCq6h/iL0ZAW/9H1.J8lW.qyrjScR2/BaGeNrOQSm0kznepqBBJmK', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-09 12:31:24', '2021-10-09 12:31:24'),
(36, 'kk', '01788', 'dhaka', 'n@m.com', '$2y$10$IrZRoOkb5EiUCvfnnWWNvuwfMaYiJ8GEC7VltIc/ZRr1VS5YbfWRu', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-27 04:23:55', '2021-10-30 11:25:59'),
(37, 'mr', NULL, NULL, 'mr@mr.com', '$2y$10$UVrHx2d9/3SRv.bGVLLt7.SLGsh38A9B3h9YGa914vdFBRZ8NJckm', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-30 16:29:38', '2021-10-30 16:29:38'),
(38, 'jj', NULL, NULL, 'gn@gm.com', '$2y$10$atnwqvhV99tk0dUnMg.fPe6RWFjLF6Nc.u6TCnbrJlndou6KlBJVy', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-30 16:47:49', '2021-10-30 16:47:49'),
(39, 'Rasel Islam', '0171010101010', NULL, 'body1@gmail.com', '$2y$10$fXdK4S5ZM9laMjKaa7Z7beQYrV4MfvxGShsoH7VKa.oLy90h9GMX2', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 10:40:08', '2021-10-31 10:40:08'),
(40, 'joy hasan', '01718155585548', 'dhaka', 'anisurrahman6252@gmail.com', '$2y$10$nZCA2jSuqMZB46DAMDEV5ezKtZ62wBn01XClB03AiScZVETFbQeYG', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 10:47:41', '2021-10-31 10:55:42'),
(41, 'ok', '01785569', 'dhaka', 'm@m.com', '$2y$10$PcGjtqbDP3GstXg/Vfc8J.GlgH285Hmtm2mbX18SWtglBL/Z9uZRm', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 13:09:29', '2021-10-31 13:15:32'),
(42, 'kabir', '0178781604', 'dhaka', 'kabirm@gmail.com', '$2y$10$48ExEK0jchS30.p0cZn5J.rTgvcJxRWKK.QBgBbamSrTAVAAkEp2S', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 13:16:38', '2021-10-31 13:20:33'),
(43, 'hh', NULL, NULL, 'd@d.com', '$2y$10$xmisvYo1RnZnoXajgN1qhekk37FfdBDAox8rGYBkacW8FZFobdROK', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 13:18:03', '2021-10-31 13:18:03'),
(44, 'gg', '0888888888888', NULL, 'g@g.com', '$2y$10$1BcUoFcfeEyPcf3MowkG5enPCP6tk64Eqs1Sc4iEF9oC330ZbpypC', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-10-31 13:20:01', '2021-10-31 13:20:01'),
(45, 'imran kabir', NULL, NULL, 'km@km.com', '$2y$10$44WqzDrIAgzt6yW1jwd2f.c.4FOdabdHmNxcx1xaURTn6RKUMvkSO', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-11-02 12:25:02', '2021-11-02 12:25:02'),
(46, 'mars', '010000000', 'qqqqq', 'marscodeit2019@gmail.com', '$2y$10$aoUawogASa9serdp6kWCrOObVxtX6ysQW8ujnrjNV3IKW.J0wuF8y', NULL, '1', '584476', 'public/uploads/customer/1635879728-image_picker1592276502532428393.jpg', NULL, NULL, 1, '2021-11-02 18:40:12', '2021-11-03 04:31:57'),
(47, 'kabir', '01787816', NULL, 'kabir61@gmail.com', '$2y$10$F6Xb55MFtRF3dK8xIU5wM.fIGNxzM1qZ3Ge.gwTPlEHRiGaa74saG', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-11-06 06:02:18', '2021-11-06 06:02:18'),
(48, 'Ismail', '+1 (329) 891-5129', NULL, 'ismail32cse@gmail.com', '$2y$10$udsJ2dPz2l5LVIL/w7gLuOnyPGp4LBBqzkS8OR4CtxOj0D0svuTE.', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2021-11-24 04:06:32', '2021-11-24 04:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', 1, NULL, NULL),
(2, 3, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', 1, NULL, NULL),
(3, 3, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', 1, NULL, NULL),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', 1, NULL, NULL),
(5, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', 1, NULL, NULL),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', 1, NULL, NULL),
(7, 3, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', 1, NULL, NULL),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', '0', '0', 'www.manikganj.gov.bd', 1, NULL, NULL),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', '0', '0', 'www.munshiganj.gov.bd', 1, NULL, NULL),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', '0', '0', 'www.mymensingh.gov.bd', 1, NULL, NULL),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', 1, NULL, NULL),
(12, 3, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', 1, NULL, NULL),
(13, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', 1, NULL, NULL),
(14, 3, 'Rajbari', 'রাজবাড়ি', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', 1, NULL, NULL),
(15, 3, 'Shariatpur', 'শরীয়তপুর', '0', '0', 'www.shariatpur.gov.bd', 1, NULL, NULL),
(16, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', 1, NULL, NULL),
(17, 3, 'Tangail', 'টাঙ্গাইল', '0', '0', 'www.tangail.gov.bd', 1, NULL, NULL),
(18, 5, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', 1, NULL, NULL),
(19, 5, 'Joypurhat', 'জয়পুরহাট', '0', '0', 'www.joypurhat.gov.bd', 1, NULL, NULL),
(20, 5, 'Naogaon', 'নওগাঁ', '0', '0', 'www.naogaon.gov.bd', 1, NULL, NULL),
(21, 5, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', 1, NULL, NULL),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', 1, NULL, NULL),
(23, 5, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', 1, NULL, NULL),
(24, 5, 'Rajshahi', 'রাজশাহী', '0', '0', 'www.rajshahi.gov.bd', 1, NULL, NULL),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', 1, NULL, NULL),
(26, 6, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', 1, NULL, NULL),
(27, 6, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', 1, NULL, NULL),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', 1, NULL, NULL),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', '0', '0', 'www.lalmonirhat.gov.bd', 1, NULL, NULL),
(30, 6, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', 1, NULL, NULL),
(31, 6, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', 1, NULL, NULL),
(32, 6, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', 1, NULL, NULL),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', 1, NULL, NULL),
(34, 1, 'Barguna', 'বরগুনা', '0', '0', 'www.barguna.gov.bd', 1, NULL, NULL),
(35, 1, 'Barishal', 'বরিশাল', '0', '0', 'www.barisal.gov.bd', 1, NULL, NULL),
(36, 1, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', 1, NULL, NULL),
(37, 1, 'Jhalokati', 'ঝালকাঠি', '0', '0', 'www.jhalakathi.gov.bd', 1, NULL, NULL),
(38, 1, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', 1, NULL, NULL),
(39, 1, 'Pirojpur', 'পিরোজপুর', '0', '0', 'www.pirojpur.gov.bd', 1, NULL, NULL),
(40, 2, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', 1, NULL, NULL),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', 1, NULL, NULL),
(42, 2, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', 1, NULL, NULL),
(43, 2, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', 1, NULL, NULL),
(44, 2, 'Cumilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', 1, NULL, NULL),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', '0', '0', 'www.coxsbazar.gov.bd', 1, NULL, NULL),
(46, 2, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', 1, NULL, NULL),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', 1, NULL, NULL),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', 1, NULL, NULL),
(49, 2, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', 1, NULL, NULL),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', '0', '0', 'www.rangamati.gov.bd', 1, NULL, NULL),
(51, 7, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', 1, NULL, NULL),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', 1, NULL, NULL),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', 1, NULL, NULL),
(54, 7, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', 1, NULL, NULL),
(55, 4, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', 1, NULL, NULL),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', 1, NULL, NULL),
(57, 4, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', 1, NULL, NULL),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', 1, NULL, NULL),
(59, 4, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', 1, NULL, NULL),
(60, 4, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', 1, NULL, NULL),
(61, 4, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', 1, NULL, NULL),
(62, 4, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', 1, NULL, NULL),
(63, 4, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', 1, NULL, NULL),
(64, 4, 'Satkhira', 'সাতক্ষীরা', '0', '0', 'www.satkhira.gov.bd', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expencecategories`
--

CREATE TABLE `expencecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expencecategories`
--

INSERT INTO `expencecategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Courier Cost', 'Courier-Cost', 1, '2021-03-09 11:52:57', '2021-03-09 11:55:22'),
(2, 'Employee Salary', 'Employee-Salary', 1, '2021-03-09 11:56:03', '2021-03-09 11:59:56'),
(3, 'Internet Bill', 'Internet-Bill', 1, '2021-03-10 18:32:04', '2021-03-10 18:32:04'),
(4, 'test', 'test', 1, '2021-09-11 11:18:19', '2021-09-11 11:18:19'),
(5, 'final test', 'final-test', 1, '2021-09-12 09:29:38', '2021-09-12 09:29:38'),
(6, 'final test', 'final-test', 1, '2021-09-12 09:43:44', '2021-09-12 09:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expencecategory_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`id`, `name`, `slug`, `ammount`, `date`, `expencecategory_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Tracking 220011', 'Order-Tracking-220011', '60', '2021-03-09', '1', 1, '2021-03-09 12:09:52', '2021-03-09 12:23:58'),
(2, 'Courier Cost (457878) - alamin', 'Courier-Cost-(457878)---alamin', '50', '2021-03-10', '1', 1, '2021-03-09 19:12:02', '2021-03-09 19:12:02'),
(3, 'Md. Rasel Islam', 'Md.-Rasel-Islam', '15000', '2021-03-10', '2', 1, '2021-03-10 18:32:47', '2021-03-10 18:32:47'),
(4, 'Md. mamun', 'Md.-mamun', '10000', '2021-03-10', '2', 0, '2021-03-10 18:33:12', '2021-06-15 11:11:35'),
(5, 'Other Cost', 'Other-Cost', '100', '2021-09-11', '4', 1, '2021-09-11 11:19:53', '2021-09-11 11:19:53'),
(6, 'shamim jaman', 'shamim-jaman', '2000', '2021-09-09', '5', 1, '2021-09-12 09:54:48', '2021-09-12 09:54:48'),
(7, 'samim', 'samim', '300', '2021-09-13', '2', 1, '2021-09-13 09:25:39', '2021-09-13 09:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(6, 'public/uploads/logo/1636105412-1631451266-readyshop logo.png', 'Logo', 1, '2021-09-12 12:51:11', '2021-11-05 09:43:32'),
(7, 'public/uploads/logo/1631451305-readyshop_icon.png', 'Favicon', 1, '2021-09-12 12:55:05', '2021-09-12 12:55:05');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_05_062607_create_roles_table', 1),
(4, '2018_11_14_122716_create_orders_table', 1),
(5, '2018_11_14_122919_create_payments_table', 1),
(6, '2018_11_14_123026_create_orderdetails_table', 1),
(7, '2018_11_26_045231_create_logos_table', 1),
(8, '2019_01_03_075632_create_categories_table', 1),
(9, '2019_01_03_111552_create_sub_categories_table', 1),
(10, '2019_01_05_055510_create_child_categories_table', 1),
(11, '2019_01_05_100733_create_brands_table', 1),
(12, '2019_01_06_084144_create_news_table', 1),
(13, '2019_01_07_054602_create_sliders_table', 1),
(14, '2019_01_08_091955_create_products_table', 1),
(15, '2019_01_08_124649_create_productimages_table', 1),
(16, '2019_01_17_102812_create_customers_table', 1),
(17, '2019_01_22_044004_create_shippings_table', 1),
(19, '2019_05_30_150731_create_socialmedia_table', 1),
(20, '2019_09_09_161229_create_locations_table', 1),
(21, '2019_09_28_105643_create_social_customers_table', 1),
(22, '2019_10_06_161552_create_offercategories_table', 1),
(23, '2019_10_07_180538_create_pagecategories_table', 1),
(24, '2019_10_07_185331_create_createpages_table', 1),
(25, '2019_12_30_163131_create_districts_table', 1),
(26, '2019_12_30_164743_create_areas_table', 1),
(27, '2020_02_15_142318_create_sizes_table', 1),
(28, '2020_02_15_142537_create_colors_table', 1),
(29, '2020_02_15_143519_create_productsizes_table', 1),
(30, '2020_02_15_143546_create_productcolors_table', 1),
(31, '2020_04_23_130355_create_shippingaddresses_table', 1),
(32, '2020_06_20_105300_create_clientfeedbacks_table', 1),
(33, '2020_06_20_113919_create_blogs_table', 1),
(34, '2020_06_20_132042_create_blogcategories_table', 1),
(39, '2020_07_20_215854_create_customerapplies_table', 1),
(40, '2020_07_29_234611_create_productrequests_table', 1),
(41, '2020_07_30_000717_create_sellwithuses_table', 1),
(42, '2020_07_30_124733_create_adcategories_table', 1),
(43, '2020_07_30_125925_create_advertisements_table', 1),
(44, '2020_10_03_200513_create_shippingfees_table', 1),
(46, '2020_11_21_172319_create_ordertypes_table', 2),
(47, '2019_05_27_111248_create_contacts_table', 3),
(51, '2019_05_11_140441_create_reviews_table', 4),
(52, '2020_01_02_154955_create_couponcodes_table', 5),
(53, '2020_03_14_162024_create_coupon_useds_table', 5),
(54, '2019_11_02_052042_create_expencecategories_table', 6),
(55, '2019_11_02_061805_create_expences_table', 6),
(56, '2019_08_19_000000_create_failed_jobs_table', 7),
(57, '2021_08_17_235943_create_table_carts', 8),
(58, '2021_08_18_002037_create_carts_table', 9),
(59, '2021_08_23_153630_create_wishlists_table', 10),
(60, '2021_08_23_182805_create_compares_table', 11),
(61, '2021_09_11_172834_create_paymentmethods_table', 12),
(63, '2021_11_24_123450_create_paypal_sets_table', 13),
(64, '2021_11_24_123500_create_stripe_sets_table', 13),
(65, '2021_11_24_123520_create_cash_on_delivery_sets_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offercategories`
--

CREATE TABLE `offercategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderDetails` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `productName` varchar(299) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productSize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productColor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productPrice` double(10,2) NOT NULL,
  `proPurchaseprice` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderDetails`, `orderId`, `ProductId`, `productName`, `productSize`, `productColor`, `productPrice`, `proPurchaseprice`, `productQuantity`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 07:34:28', '2021-11-06 07:34:28'),
(2, 1, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 07:34:28', '2021-11-06 07:34:28'),
(3, 2, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 07:35:17', '2021-11-06 07:35:17'),
(4, 2, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 07:35:17', '2021-11-06 07:35:17'),
(5, 3, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 07:40:15', '2021-11-06 07:40:15'),
(6, 3, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 07:40:15', '2021-11-06 07:40:15'),
(7, 4, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 07:42:36', '2021-11-06 07:42:36'),
(8, 4, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 07:42:36', '2021-11-06 07:42:36'),
(9, 5, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 08:43:29', '2021-11-06 08:43:29'),
(10, 5, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 08:43:29', '2021-11-06 08:43:29'),
(11, 6, 370, 'Top Product Demo', 'M', 'Red', 5000.00, 5000, 1, '2021-11-06 08:45:13', '2021-11-06 08:45:13'),
(12, 7, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-06 08:49:06', '2021-11-06 08:49:06'),
(13, 8, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-06 08:51:21', '2021-11-06 08:51:21'),
(14, 9, 370, 'Top Product Demo', 'M', 'Red', 5000.00, 5000, 3, '2021-11-06 08:51:59', '2021-11-06 08:51:59'),
(15, 10, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-06 08:59:08', '2021-11-06 08:59:08'),
(16, 10, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-06 08:59:08', '2021-11-06 08:59:08'),
(17, 11, 371, 'MSI B560M PRO-VDH WIFI Intel 10th and 11th Gen Micro ATX Motherboard', '', '', 13000.00, 10000, 1, '2021-11-18 08:59:43', '2021-11-18 08:59:43'),
(18, 11, 345, 'Luxury Rhinestone Bracelet Ladies Quartz Watches Fashion Watch For Women', '', '', 185.00, 176, 1, '2021-11-18 08:59:43', '2021-11-18 08:59:43'),
(19, 12, 60, 'Ocean Automatic Electric Kettle 1.7LTR. Black', '', '', 1910.00, 1815, 1, '2021-11-18 09:02:04', '2021-11-18 09:02:04'),
(20, 12, 62, 'Ocean Electric Air Fryer 3.5LTR. 1450W', '', '', 7720.00, 7334, 1, '2021-11-18 09:02:04', '2021-11-18 09:02:04'),
(21, 13, 59, 'Indian Orange Brand Blender Mixer & Grinder Jumbo Size Heavy Dutty 1000 Watt', '', '', 5200.00, 4940, 1, '2021-11-18 09:10:38', '2021-11-18 09:10:38'),
(22, 14, 20, 'Full sleave shirt', 'XL', 'Red', 750.00, 650, 1, '2021-11-18 13:40:46', '2021-11-18 13:40:46'),
(23, 14, 21, 'Half sleave shirt', 'XL2', 'White', 750.00, 650, 1, '2021-11-18 13:40:46', '2021-11-18 13:40:46'),
(24, 15, 365, 'Huion Kamvas Pro 24 Pen Display', '', '', 95000.00, 70000, 1, '2021-11-19 10:42:12', '2021-11-19 10:42:12'),
(25, 16, 62, 'Ocean Electric Air Fryer 3.5LTR. 1450W', '', '', 7720.00, 7334, 1, '2021-11-20 06:19:02', '2021-11-20 06:19:02'),
(26, 17, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-20 06:19:32', '2021-11-20 06:19:32'),
(27, 18, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-21 09:15:43', '2021-11-21 09:15:43'),
(28, 19, 312, 'Mini Wireless Bluetooth 4.1 Stereo In-Ear Headset Earphone', '', '', 350.00, 333, 1, '2021-11-28 04:45:56', '2021-11-28 04:45:56'),
(29, 20, 345, 'Luxury Rhinestone Bracelet Ladies Quartz Watches Fashion Watch For Women', '', '', 185.00, 176, 1, '2021-11-28 05:01:51', '2021-11-28 05:01:51'),
(30, 21, 62, 'Ocean Electric Air Fryer 3.5LTR. 1450W', '', '', 7720.00, 7334, 1, '2021-11-28 05:14:28', '2021-11-28 05:14:28'),
(31, 22, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-28 09:16:16', '2021-11-28 09:16:16'),
(32, 23, 60, 'Ocean Automatic Electric Kettle 1.7LTR. Black', '', '', 1910.00, 1815, 1, '2021-11-28 09:17:59', '2021-11-28 09:17:59'),
(33, 24, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-28 09:24:07', '2021-11-28 09:24:07'),
(34, 25, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-29 06:05:18', '2021-11-29 06:05:18'),
(35, 26, 345, 'Luxury Rhinestone Bracelet Ladies Quartz Watches Fashion Watch For Women', '', '', 185.00, 176, 1, '2021-11-29 06:37:03', '2021-11-29 06:37:03'),
(36, 27, 311, 'P47 - Top Quality Wireless Bluetooth headphone (5.0+EDR) Latest Version', '', '', 450.00, 428, 1, '2021-11-29 09:51:08', '2021-11-29 09:51:08'),
(37, 28, 63, 'Ocean Electric Induction Cooker IHW', '', '', 4820.00, 4579, 1, '2021-11-29 09:56:04', '2021-11-29 09:56:04'),
(38, 29, 60, 'Ocean Automatic Electric Kettle 1.7LTR. Black', '', '', 1910.00, 1815, 1, '2021-11-29 10:16:14', '2021-11-29 10:16:14'),
(39, 30, 62, 'Ocean Electric Air Fryer 3.5LTR. 1450W', '', '', 7720.00, 7334, 1, '2021-11-29 10:31:49', '2021-11-29 10:31:49'),
(40, 31, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-29 10:36:44', '2021-11-29 10:36:44'),
(41, 32, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-30 03:38:03', '2021-11-30 03:38:03'),
(42, 33, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-30 05:50:15', '2021-11-30 05:50:15'),
(43, 34, 60, 'Ocean Automatic Electric Kettle 1.7LTR. Black', '', '', 1910.00, 1815, 1, '2021-11-30 08:36:48', '2021-11-30 08:36:48'),
(44, 35, 345, 'Luxury Rhinestone Bracelet Ladies Quartz Watches Fashion Watch For Women', '', '', 185.00, 176, 1, '2021-11-30 08:55:37', '2021-11-30 08:55:37'),
(45, 36, 60, 'Ocean Automatic Electric Kettle 1.7LTR. Black', '', '', 1910.00, 1815, 1, '2021-11-30 09:27:30', '2021-11-30 09:27:30'),
(46, 37, 61, 'Ocean Vaccum Flask 0.75LTR. With Strip', '', '', 750.00, 713, 1, '2021-11-30 09:33:24', '2021-11-30 09:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderIdPrimary` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `discount` int(11) DEFAULT 0,
  `transFee` int(11) DEFAULT 0,
  `trackingId` int(11) DEFAULT NULL,
  `orderStatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `cancelRequest` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderIdPrimary`, `customerId`, `shippingId`, `orderTotal`, `discount`, `transFee`, `trackingId`, `orderStatus`, `cancelRequest`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 1550.00, 100, 0, 651761, '1', 0, '2021-11-06 07:34:28', '2021-11-06 07:34:28'),
(2, 20, 2, 1550.00, 100, 0, 858457, '1', 0, '2021-11-06 07:35:17', '2021-11-06 07:35:17'),
(3, 20, 3, 1550.00, 100, 0, 615029, '1', 0, '2021-11-06 07:40:15', '2021-11-06 07:40:15'),
(4, 20, 4, 1550.00, 100, 0, 995886, '1', 0, '2021-11-06 07:42:36', '2021-11-06 07:42:36'),
(5, 20, 5, 1550.00, 100, 0, 365772, '1', 0, '2021-11-06 08:43:29', '2021-11-06 08:43:29'),
(6, 3, 6, 5050.00, 0, 0, 879034, '1', 0, '2021-11-06 08:45:13', '2021-11-06 08:45:13'),
(7, 3, 7, 600.00, 200, 0, 698865, '1', 0, '2021-11-06 08:49:06', '2021-11-06 08:49:06'),
(8, 3, 8, 800.00, NULL, 0, 900792, '1', 0, '2021-11-06 08:51:21', '2021-11-06 08:51:21'),
(9, 3, 9, 15050.00, 0, 0, 953963, '1', 0, '2021-11-06 08:51:59', '2021-11-06 08:51:59'),
(10, 20, 10, 1550.00, 100, 0, 376092, '1', 0, '2021-11-06 08:59:08', '2021-11-06 08:59:08'),
(11, 20, 11, 13335.00, NULL, 0, 144143, '1', 0, '2021-11-18 08:59:43', '2021-11-18 08:59:43'),
(12, 20, 12, 9680.00, NULL, 0, 714481, '1', 0, '2021-11-18 09:02:04', '2021-11-18 09:02:04'),
(13, 20, 13, 5250.00, NULL, 0, 873588, '1', 0, '2021-11-18 09:10:38', '2021-11-18 09:10:38'),
(14, 20, 14, 1550.00, 100, 0, 791597, '1', 0, '2021-11-18 13:40:46', '2021-11-18 13:40:46'),
(15, 3, 15, 95150.00, NULL, 0, 743467, '1', 0, '2021-11-19 10:42:12', '2021-11-19 10:42:12'),
(16, 3, 16, 7770.00, NULL, 0, 215333, '1', 0, '2021-11-20 06:19:02', '2021-11-20 06:19:02'),
(17, 3, 17, 800.00, NULL, 0, 652407, '1', 0, '2021-11-20 06:19:32', '2021-11-20 06:19:32'),
(18, 3, 18, 800.00, NULL, 0, 686382, '1', 0, '2021-11-21 09:15:43', '2021-11-21 09:15:43'),
(19, 48, 19, 400.00, NULL, 0, 232324, '1', 0, '2021-11-28 04:45:56', '2021-11-28 04:45:56'),
(20, 48, 20, 235.00, NULL, 0, 925534, '1', 0, '2021-11-28 05:01:51', '2021-11-28 05:01:51'),
(21, 48, 21, 7770.00, NULL, 0, 651914, '1', 0, '2021-11-28 05:14:28', '2021-11-28 05:14:28'),
(22, 48, 22, 800.00, NULL, 0, 976716, '1', 0, '2021-11-28 09:16:16', '2021-11-28 09:16:16'),
(23, 48, 23, 1960.00, NULL, 0, 872029, '1', 0, '2021-11-28 09:17:59', '2021-11-28 09:17:59'),
(24, 48, 24, 800.00, NULL, 0, 497837, '1', 0, '2021-11-28 09:24:07', '2021-11-28 09:24:07'),
(25, 48, 25, 800.00, NULL, 0, 762485, '1', 0, '2021-11-29 06:05:17', '2021-11-29 06:05:17'),
(26, 48, 26, 235.00, NULL, 0, 304370, '1', 0, '2021-11-29 06:37:03', '2021-11-29 06:37:03'),
(27, 48, 27, 500.00, NULL, 0, 118183, '1', 0, '2021-11-29 09:51:08', '2021-11-29 09:51:08'),
(28, 48, 28, 4870.00, NULL, 0, 604573, '1', 0, '2021-11-29 09:56:03', '2021-11-29 09:56:03'),
(29, 48, 29, 1960.00, NULL, 0, 931638, '1', 0, '2021-11-29 10:16:14', '2021-11-29 10:16:14'),
(30, 48, 30, 7770.00, NULL, 0, 292989, '1', 0, '2021-11-29 10:31:49', '2021-11-29 10:31:49'),
(31, 48, 31, 800.00, NULL, 0, 265122, '1', 0, '2021-11-29 10:36:44', '2021-11-29 10:36:44'),
(32, 48, 32, 800.00, NULL, 0, 118751, '1', 0, '2021-11-30 03:38:03', '2021-11-30 03:38:03'),
(33, 48, 33, 800.00, NULL, 0, 462101, '1', 0, '2021-11-30 05:50:15', '2021-11-30 05:50:15'),
(34, 48, 34, 1960.00, NULL, 0, 808964, '1', 0, '2021-11-30 08:36:48', '2021-11-30 08:36:48'),
(35, 48, 35, 235.00, NULL, 0, 825267, '2', 0, '2021-11-30 08:55:36', '2021-11-30 08:56:53'),
(36, 48, 36, 1960.00, NULL, 0, 457992, '2', 0, '2021-11-30 09:27:30', '2021-11-30 09:31:10'),
(37, 48, 37, 800.00, NULL, 0, 114087, '1', 0, '2021-11-30 09:33:24', '2021-11-30 09:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `ordertypes`
--

CREATE TABLE `ordertypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordertypes`
--

INSERT INTO `ordertypes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', NULL, NULL),
(2, 'Accepted', 'accepted', NULL, NULL),
(3, 'In Process', 'in-process', NULL, NULL),
(4, 'Picked Up', 'picked-u', NULL, NULL),
(5, 'Rescheduled', 'resheduled', NULL, NULL),
(6, 'Delivered', 'delivered', NULL, NULL),
(7, 'Cancelled', 'cancelled', NULL, NULL),
(8, 'Returned', 'return', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagecategories`
--

CREATE TABLE `pagecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `pagename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagecategories`
--

INSERT INTO `pagecategories` (`id`, `pagename`, `slug`, `menu_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', 1, 1, '2020-11-22 03:52:47', '2020-11-22 13:17:13'),
(2, 'Privacy Policy', 'privacy-policy', 1, 1, '2020-11-22 03:53:13', '2020-11-22 03:53:13'),
(3, 'Return Policy', 'return-policy', 1, 1, '2020-11-22 03:53:32', '2020-11-22 03:53:32'),
(4, 'Faq', 'faq', 1, 1, '2020-11-22 03:54:06', '2020-11-22 03:54:06'),
(5, 'How To Registration', 'how-to-registration', 2, 1, '2020-11-22 03:54:29', '2020-11-22 03:54:29'),
(6, 'How To Order', 'how-to-order', 2, 1, '2020-11-22 03:54:45', '2020-11-22 03:54:45'),
(7, 'Recover Password', 'recover-password', 2, 1, '2020-11-22 03:55:12', '2020-11-22 03:55:12'),
(8, 'Order Tracking System', 'order-tracking-system', 2, 1, '2020-11-22 03:56:33', '2020-11-22 03:56:33'),
(9, 'test-page', 'test-page', 1, 0, '2021-08-02 13:08:30', '2021-09-08 09:40:34');

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
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`id`, `title`, `text`, `store_id`, `store_password`, `button`, `value`, `form`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, NULL, NULL, 'cbutton', 'cash', 'codform', 1, '2021-09-11 13:59:43', '2021-09-12 04:59:40'),
(2, 'Online Payment', NULL, 'webso60ab2b84c58d2', 'webso60ab2b84c58d2@ssl', 'bbutton', 'online', 'onlineform', 1, '2021-09-11 14:00:40', '2021-09-19 11:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentIdPrimary` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transectionId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `transFee` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentIdPrimary`, `orderId`, `paymentType`, `senderId`, `transectionId`, `status`, `transFee`, `created_at`, `updated_at`) VALUES
(1, 1, 'cod', NULL, '6186300404a38', 'pending', 0, '2021-11-06 07:34:28', '2021-11-06 07:34:28'),
(2, 2, 'cod', NULL, '6186303563b38', 'pending', 0, '2021-11-06 07:35:17', '2021-11-06 07:35:17'),
(3, 3, 'cod', NULL, '6186315feea6c', 'pending', 0, '2021-11-06 07:40:16', '2021-11-06 07:40:16'),
(4, 4, 'cod', NULL, '618631eca99ea', 'pending', 0, '2021-11-06 07:42:36', '2021-11-06 07:42:36'),
(5, 5, 'cod', NULL, '618640317f6d8', 'pending', 0, '2021-11-06 08:43:29', '2021-11-06 08:43:29'),
(6, 6, 'cod', NULL, '6186409989dae', 'pending', 0, '2021-11-06 08:45:13', '2021-11-06 08:45:13'),
(7, 7, 'online', NULL, '61864182dc730', 'Unpaid', 0, '2021-11-06 08:49:06', '2021-11-06 08:49:06'),
(8, 8, 'cash', NULL, '618642097a746', 'Unpaid', 0, '2021-11-06 08:51:21', '2021-11-06 08:51:21'),
(9, 9, 'cod', NULL, '6186422fdc1b6', 'pending', 0, '2021-11-06 08:51:59', '2021-11-06 08:51:59'),
(10, 10, 'online', NULL, '618643dc4871f', 'pending', 0, '2021-11-06 08:59:08', '2021-11-06 08:59:08'),
(11, 11, 'cash', NULL, '619615ff19212', 'Unpaid', 0, '2021-11-18 08:59:43', '2021-11-18 08:59:43'),
(12, 12, 'cash', NULL, '6196168ca9d83', 'Unpaid', 0, '2021-11-18 09:02:04', '2021-11-18 09:02:04'),
(13, 13, 'online', NULL, '6196188ef3578', 'Unpaid', 0, '2021-11-18 09:10:38', '2021-11-18 09:10:38'),
(14, 14, 'cod', NULL, '619657de1e1f7', 'pending', 0, '2021-11-18 13:40:46', '2021-11-18 13:40:46'),
(15, 15, 'online', NULL, '61977f84b95c3', 'Unpaid', 0, '2021-11-19 10:42:12', '2021-11-19 10:42:12'),
(16, 16, 'online', NULL, '61989356694a6', 'Unpaid', 0, '2021-11-20 06:19:02', '2021-11-20 06:19:02'),
(17, 17, 'online', NULL, '61989374e7457', 'Unpaid', 0, '2021-11-20 06:19:32', '2021-11-20 06:19:32'),
(18, 18, 'online', NULL, '619a0e3f93c70', 'Unpaid', 0, '2021-11-21 09:15:43', '2021-11-21 09:15:43'),
(19, 24, 'cash_on_delivery', NULL, '61a34fd3e1a42', 'Unpaid', 0, '2021-11-28 09:45:55', '2021-11-28 09:45:55'),
(20, 25, 'stripe', NULL, '61a473546bd06', 'Unpaid', 0, '2021-11-29 06:29:40', '2021-11-29 06:29:40'),
(21, 26, 'stripe', NULL, '61a4753224857', 'Unpaid', 0, '2021-11-29 06:37:38', '2021-11-29 06:37:38'),
(22, 27, 'stripe', NULL, '61a4a2c93120f', 'Unpaid', 0, '2021-11-29 09:52:09', '2021-11-29 09:52:09'),
(23, 28, 'stripe', NULL, '61a4a3ca9dc14', 'Unpaid', 0, '2021-11-29 09:56:26', '2021-11-29 09:56:26'),
(24, 29, 'stripe', NULL, '61a4a89ccef2a', 'Unpaid', 0, '2021-11-29 10:17:00', '2021-11-29 10:17:00'),
(25, 30, 'stripe', NULL, '61a4ac390893d', 'Unpaid', 0, '2021-11-29 10:32:25', '2021-11-29 10:32:25'),
(26, 31, 'stripe', 'eeeee', 'txn_3K180JIxvC9PUnDX27mROkax', 'Unpaid', 0, '2021-11-29 11:26:39', '2021-11-29 11:26:39'),
(27, 31, 'stripe', 'eeeee', 'txn_3K187CIxvC9PUnDX13KAIgTg', 'Unpaid', 0, '2021-11-29 11:33:47', '2021-11-29 11:33:47'),
(28, 31, 'stripe', 'eeee', 'txn_3K188uIxvC9PUnDX0m6n5Rqi', 'Unpaid', 0, '2021-11-29 11:35:32', '2021-11-29 11:35:32'),
(29, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:44:32', '2021-11-30 08:44:32'),
(30, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:45:24', '2021-11-30 08:45:24'),
(31, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:48:29', '2021-11-30 08:48:29'),
(32, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:51:15', '2021-11-30 08:51:15'),
(33, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:51:53', '2021-11-30 08:51:53'),
(34, 34, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:52:30', '2021-11-30 08:52:30'),
(35, 35, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 08:55:55', '2021-11-30 08:55:55'),
(36, 36, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 09:30:18', '2021-11-30 09:30:18'),
(37, 37, 'stripe', 'Ismail', 'txn_3K1SjBIxvC9PUnDX2B9Qzigr', 'Unpaid', 0, '2021-11-30 09:34:21', '2021-11-30 09:34:21'),
(38, 37, 'Paypal', 'sb-f2p7i979446@business.example.com', 'YDFYJFVP3QUPG', 'Unpaid', 0, '2021-11-30 09:40:31', '2021-11-30 09:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_sets`
--

CREATE TABLE `paypal_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClientId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `SandboxStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_sets`
--

INSERT INTO `paypal_sets` (`id`, `title`, `ClientId`, `currency`, `Secret`, `Description`, `Status`, `SandboxStatus`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'ASQt_1BoaUsbC8yy8yGDZ3M2D70Bt3eoBO5Mq7LijI0ISR-eYBp1GPe5xhtC7fWtfpakoB_jvAN60_W2', 'USD', 'EIMJsK9A9BndaxgCHj1qTQhKdpsypwhpsSvfA32vlXn14nGtXMMMMdhU04bsZa6-FIFsL9fP6LRor03u', 'Set Paypal Account !!', 1, 1, NULL, '2021-11-24 08:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(2, 5, 2, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(3, 5, 4, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(4, 8, 3, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(5, 8, 4, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(6, 8, 5, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(7, 9, 1, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(8, 9, 2, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(9, 9, 3, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(10, 10, 1, '2021-02-19 13:47:21', '2021-02-19 13:47:21'),
(11, 10, 2, '2021-02-19 13:47:21', '2021-02-19 13:47:21'),
(12, 161, 2, '2021-02-19 14:31:42', '2021-02-19 14:31:42'),
(13, 162, 3, '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(14, 163, 1, '2021-02-19 14:53:33', '2021-02-19 14:53:33'),
(15, 164, 1, '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(16, 164, 3, '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(17, 166, 1, '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(18, 168, 1, '2021-02-19 15:32:27', '2021-02-19 15:32:27'),
(19, 169, 5, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(20, 171, 5, '2021-02-22 05:33:07', '2021-02-22 05:33:07'),
(21, 174, 3, '2021-02-22 05:40:23', '2021-02-22 05:40:23'),
(22, 176, 5, '2021-02-22 05:53:49', '2021-02-22 05:53:49'),
(23, 170, 2, '2021-02-22 06:12:20', '2021-02-22 06:12:20'),
(24, 170, 3, '2021-02-22 06:12:20', '2021-02-22 06:12:20'),
(25, 170, 4, '2021-02-22 06:12:20', '2021-02-22 06:12:20'),
(26, 184, 1, '2021-02-22 06:38:04', '2021-02-22 06:38:04'),
(27, 185, 5, '2021-02-22 06:42:22', '2021-02-22 06:42:22'),
(28, 186, 5, '2021-02-22 06:45:13', '2021-02-22 06:45:13'),
(29, 188, 7, '2021-02-22 07:01:21', '2021-02-22 07:01:21'),
(30, 189, 5, '2021-02-22 07:03:58', '2021-02-22 07:03:58'),
(31, 193, 3, '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(32, 193, 7, '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(33, 195, 1, '2021-02-22 07:29:15', '2021-02-22 07:29:15'),
(34, 205, 1, '2021-02-22 09:26:45', '2021-02-22 09:26:45'),
(35, 206, 1, '2021-02-22 09:31:28', '2021-02-22 09:31:28'),
(36, 207, 5, '2021-02-22 09:34:13', '2021-02-22 09:34:13'),
(37, 209, 1, '2021-02-22 09:40:19', '2021-02-22 09:40:19'),
(38, 210, 1, '2021-02-22 09:41:51', '2021-02-22 09:41:51'),
(39, 213, 1, '2021-02-22 10:10:37', '2021-02-22 10:10:37'),
(40, 215, 1, '2021-02-22 10:15:36', '2021-02-22 10:15:36'),
(41, 217, 1, '2021-02-22 10:37:31', '2021-02-22 10:37:31'),
(42, 231, 2, '2021-02-22 11:33:50', '2021-02-22 11:33:50'),
(44, 237, 7, '2021-02-22 11:55:56', '2021-02-22 11:55:56'),
(45, 253, 1, '2021-02-23 05:25:17', '2021-02-23 05:25:17'),
(46, 283, 1, '2021-02-23 09:36:48', '2021-02-23 09:36:48'),
(47, 180, 1, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(48, 180, 2, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(49, 180, 4, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(50, 365, 1, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(51, 365, 2, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(52, 365, 3, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(53, 365, 4, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(54, 370, 2, '2021-10-07 06:46:25', '2021-10-07 06:46:25'),
(55, 370, 3, '2021-10-07 06:46:25', '2021-10-07 06:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'public/uploads/product/1606896104-1.jpg', '2020-12-02 08:01:44', '2020-12-02 08:01:44'),
(2, 2, 'public/uploads/product/1606896260-2.jpg', '2020-12-02 08:04:20', '2020-12-02 08:04:20'),
(3, 3, 'public/uploads/product/1606896488-3.jpg', '2020-12-02 08:08:08', '2020-12-02 08:08:08'),
(4, 4, 'public/uploads/product/1606897134-4.jpg', '2020-12-02 08:18:54', '2020-12-02 08:18:54'),
(5, 5, 'public/uploads/product/1606897351-5.jpg', '2020-12-02 08:22:31', '2020-12-02 08:22:31'),
(6, 6, 'public/uploads/product/1606897595-6.jpg', '2020-12-02 08:26:35', '2020-12-02 08:26:35'),
(7, 7, 'public/uploads/product/1606897758-7.jpg', '2020-12-02 08:29:18', '2020-12-02 08:29:18'),
(9, 9, 'public/uploads/product/1606898662-9.jpg', '2020-12-02 08:44:23', '2020-12-02 08:44:23'),
(10, 10, 'public/uploads/product/1606898850-10.jpg', '2020-12-02 08:47:30', '2020-12-02 08:47:30'),
(11, 11, 'public/uploads/product/1606899200-11.jpg', '2020-12-02 08:53:20', '2020-12-02 08:53:20'),
(12, 12, 'public/uploads/product/1606899413-12.jpg', '2020-12-02 08:56:53', '2020-12-02 08:56:53'),
(13, 13, 'public/uploads/product/1606899611-13.jpg', '2020-12-02 09:00:11', '2020-12-02 09:00:11'),
(14, 14, 'public/uploads/product/1606899885-14.jpg', '2020-12-02 09:04:45', '2020-12-02 09:04:45'),
(15, 15, 'public/uploads/product/1606974351-1.jpg', '2020-12-03 05:45:51', '2020-12-03 05:45:51'),
(16, 15, 'public/uploads/product/1606974351-2.jpg', '2020-12-03 05:45:51', '2020-12-03 05:45:51'),
(17, 16, 'public/uploads/product/1606975696-3.jpg', '2020-12-03 06:08:16', '2020-12-03 06:08:16'),
(18, 16, 'public/uploads/product/1606975696-4.jpg', '2020-12-03 06:08:16', '2020-12-03 06:08:16'),
(19, 17, 'public/uploads/product/1606976291-star-g430s-500x500.jpg', '2020-12-03 06:18:11', '2020-12-03 06:18:11'),
(20, 18, 'public/uploads/product/1606976421-ipad-2020-01-500x500.jpg', '2020-12-03 06:20:21', '2020-12-03 06:20:21'),
(21, 19, 'public/uploads/product/1606993111-4c40a411c517-6-3.jpg', '2020-12-03 10:58:31', '2020-12-03 10:58:31'),
(22, 19, 'public/uploads/product/1606993111-b0fa55f7fdda-6666.jpg', '2020-12-03 10:58:31', '2020-12-03 10:58:31'),
(23, 20, 'public/uploads/product/1606993305-363e76083a7e-111.jpg', '2020-12-03 11:01:45', '2020-12-03 11:01:45'),
(24, 21, 'public/uploads/product/1606993547-w2.jpg', '2020-12-03 11:05:47', '2020-12-03 11:05:47'),
(25, 21, 'public/uploads/product/1606993547-w-one.jpg', '2020-12-03 11:05:47', '2020-12-03 11:05:47'),
(26, 22, 'public/uploads/product/1606993870-w-three.jpg', '2020-12-03 11:11:10', '2020-12-03 11:11:10'),
(27, 22, 'public/uploads/product/1606993871-w-two.jpg', '2020-12-03 11:11:11', '2020-12-03 11:11:11'),
(28, 8, 'public/uploads/product/1612008616-8.jpg', '2021-01-30 12:10:16', '2021-01-30 12:10:16'),
(29, 23, 'public/uploads/product/1612460876-inbound6819695458492706627.jpg', '2021-02-04 17:47:56', '2021-02-04 17:47:56'),
(30, 24, 'public/uploads/product/1612597766-kristor-instant-electric-heating-tap-500x500.jpg', '2021-02-06 07:49:26', '2021-02-06 07:49:26'),
(31, 25, 'public/uploads/product/1612599193-2 Layer Dish Drainer Rack Stainless Steel.jpg', '2021-02-06 08:13:13', '2021-02-06 08:13:13'),
(32, 26, 'public/uploads/product/1612599613-3 Layer Dish Drainer Rack Stainless Steel.jpg', '2021-02-06 08:20:13', '2021-02-06 08:20:13'),
(33, 27, 'public/uploads/product/1612600488-6 Inch Non Stick Cake Pan Bread Mold - Red and Black.jpg', '2021-02-06 08:34:48', '2021-02-06 08:34:48'),
(34, 28, 'public/uploads/product/1612600824-12 Piece Cake Decorating Set Frosting Icing Piping Bag Tips with Steel Nozzles. Reusable & Washable.jpg', '2021-02-06 08:40:24', '2021-02-06 08:40:24'),
(35, 29, 'public/uploads/product/1612601454-15Cavity Rose Flower Mould Silicone Cake Chocolate Cookie Baking Tray Candy mould.jpg', '2021-02-06 08:50:54', '2021-02-06 08:50:54'),
(36, 30, 'public/uploads/product/1612601954-360 Degree Magic Floor Cleaning Spin Mop With Removable Basket_2.jpg', '2021-02-06 08:59:14', '2021-02-06 08:59:14'),
(37, 31, 'public/uploads/product/1612602432-360 Degree Magic Floor Cleaning Spin Mop With Removable Basket_.jpg', '2021-02-06 09:07:12', '2021-02-06 09:07:12'),
(38, 32, 'public/uploads/product/1612602684-A1 Single SIM Supported Wireless Bluetooth Smartwatch.jpg', '2021-02-06 09:11:24', '2021-02-06 09:11:24'),
(39, 33, 'public/uploads/product/1612604010-Air Filled Rubber Cot Sheet for baby  - Multi Color.jpg', '2021-02-06 09:33:30', '2021-02-06 09:33:30'),
(40, 34, 'public/uploads/product/1612604223-Airpods2.jpg', '2021-02-06 09:37:03', '2021-02-06 09:37:03'),
(41, 35, 'public/uploads/product/1612605086-Baby bouncer Relax Baby Chair2.jpg', '2021-02-06 09:51:26', '2021-02-06 09:51:26'),
(42, 36, 'public/uploads/product/1612605295-Baby Cap Towel.jpg', '2021-02-06 09:54:55', '2021-02-06 09:54:55'),
(44, 37, 'public/uploads/product/1612605718-Baby Cap Towel3.jpg', '2021-02-06 10:01:58', '2021-02-06 10:01:58'),
(45, 38, 'public/uploads/product/1612606059-Baseus Bipow Quick Charge Power Bank PD+QC 10000mAh 18W - Black.jpg', '2021-02-06 10:07:39', '2021-02-06 10:07:39'),
(46, 39, 'public/uploads/product/1612606308-BASEUS Ocean Air Circulation Fan 4 Wind Speeds Automatic Frequency Conversion.jpg', '2021-02-06 10:11:48', '2021-02-06 10:11:48'),
(47, 40, 'public/uploads/product/1612606550-Baseus Qpow 3A 15w Digital Display Power Bank 10000mAh With Type-C Cable.jpg', '2021-02-06 10:15:50', '2021-02-06 10:15:50'),
(48, 41, 'public/uploads/product/1612606897-BATH TUB KIDS SWIMMING Pool with Pumper 45.jpg', '2021-02-06 10:21:37', '2021-02-06 10:21:37'),
(49, 42, 'public/uploads/product/1612607172-BBQ Grill Foldable Portable Barbecue Charcoal Stand Garden Party Outdoor Folding Camping Stove Picnic Cook -.jpg', '2021-02-06 10:26:12', '2021-02-06 10:26:12'),
(50, 43, 'public/uploads/product/1612607514-Blender and spice grinder Nima 2 in 1.jpg', '2021-02-06 10:31:54', '2021-02-06 10:31:54'),
(51, 44, 'public/uploads/product/1612607743-Block Printed Cotton Unstitched Three Piece For Women.jpg', '2021-02-06 10:35:43', '2021-02-06 10:35:43'),
(52, 45, 'public/uploads/product/1612608511-Bosch Hand Mixer and egg beater cake cream mixer.jpg', '2021-02-06 10:48:31', '2021-02-06 10:48:31'),
(53, 46, 'public/uploads/product/1612609630-Cake Cutter Round shape.jpg', '2021-02-06 11:07:10', '2021-02-06 11:07:10'),
(54, 47, 'public/uploads/product/1612609907-Cake Decorating Turn Table 28cm - White.jpg', '2021-02-06 11:11:47', '2021-02-06 11:11:47'),
(55, 48, 'public/uploads/product/1612610453-Cake decorating turntable.png', '2021-02-06 11:20:53', '2021-02-06 11:20:53'),
(56, 49, 'public/uploads/product/1612610569-Cake Smoother.jpg', '2021-02-06 11:22:49', '2021-02-06 11:22:49'),
(57, 50, 'public/uploads/product/1612610762-Car and Home Massage Pillow - Brown.jpg', '2021-02-06 11:26:02', '2021-02-06 11:26:02'),
(58, 51, 'public/uploads/product/1612610945-Car shape kids tent house with 50 ball.jpg', '2021-02-06 11:29:05', '2021-02-06 11:29:05'),
(59, 52, 'public/uploads/product/1612611132-Coconut Fall Romantic single Hurricane Lamp.jpg', '2021-02-06 11:32:12', '2021-02-06 11:32:12'),
(60, 53, 'public/uploads/product/1612611307-Cotton Katha for Baby - 1pcs - Multi-color.jpg', '2021-02-06 11:35:07', '2021-02-06 11:35:07'),
(61, 54, 'public/uploads/product/1612611602-Digital Blood pressure Machine bp machine.jpg', '2021-02-06 11:40:02', '2021-02-06 11:40:02'),
(62, 55, 'public/uploads/product/1612684772-Digital Kitchen Weight Scale - White.jpg', '2021-02-07 07:59:32', '2021-02-07 07:59:32'),
(63, 56, 'public/uploads/product/1612684931-Double Feeder Warmer Multicolor.png', '2021-02-07 08:02:11', '2021-02-07 08:02:11'),
(64, 57, 'public/uploads/product/1612685430-DT78 Full Round IP68 Waterproof Smart Watch Bluetooth Smart Watch with Heart Rate Sensor sleep Monitor Blood Pressure Mileage Blood Oxygen.jpg', '2021-02-07 08:10:30', '2021-02-07 08:10:30'),
(65, 58, 'public/uploads/product/1612685570-Dual Speed Portable Mini Electric Pedal Double Threads Rewind Swing Machine.jpg', '2021-02-07 08:12:50', '2021-02-07 08:12:50'),
(66, 59, 'public/uploads/product/1612687983-c7491ab9285a-18.png', '2021-02-07 08:53:03', '2021-02-07 08:53:03'),
(67, 60, 'public/uploads/product/1612689046-29ed2d3ff619969ab1cdbdb5b571363c.jpg', '2021-02-07 09:10:46', '2021-02-07 09:10:46'),
(68, 61, 'public/uploads/product/1612689349-a25efe327d1abf07dc00338de81faff1.jpg', '2021-02-07 09:15:49', '2021-02-07 09:15:49'),
(69, 62, 'public/uploads/product/1612689866-67e505e463284c66662798d7278f5314-removebg-preview.png', '2021-02-07 09:24:26', '2021-02-07 09:24:26'),
(70, 63, 'public/uploads/product/1612691047-41b658c1c2cc-30.png', '2021-02-07 09:44:07', '2021-02-07 09:44:07'),
(71, 64, 'public/uploads/product/1612691269-f8464bb9a464-3.png', '2021-02-07 09:47:49', '2021-02-07 09:47:49'),
(72, 65, 'public/uploads/product/1612691511-fceb9d645741-31.png', '2021-02-07 09:51:51', '2021-02-07 09:51:51'),
(73, 66, 'public/uploads/product/1612691647-SAHARA-INDIA-Blender-Elegant-3-In-1-750W-White-Blue.jpeg', '2021-02-07 09:54:07', '2021-02-07 09:54:07'),
(74, 67, 'public/uploads/product/1612692004-7121a409d52fa7cfb737a3170e6c0801.jpg', '2021-02-07 10:00:04', '2021-02-07 10:00:04'),
(75, 68, 'public/uploads/product/1612693499-Educational Kids Baby Wooden Solid Wood Stacking Train Toddler Block Toy.jpg', '2021-02-07 10:24:59', '2021-02-07 10:24:59'),
(77, 69, 'public/uploads/product/1612693850-Educational_Multipurpose_Double-Sided_Magnetic___Wooden_Writing_Board_Small_44_x_32cm__White_and_Black_.png-removebg-preview2.png', '2021-02-07 10:30:50', '2021-02-07 10:30:50'),
(78, 70, 'public/uploads/product/1612694036-Egg_Designer_1_pcs.png', '2021-02-07 10:33:56', '2021-02-07 10:33:56'),
(79, 71, 'public/uploads/product/1612694261-Electric Barbecue Grill Machine.png', '2021-02-07 10:37:41', '2021-02-07 10:37:41'),
(80, 72, 'public/uploads/product/1612694390-Electric BBQ grill.jpg', '2021-02-07 10:39:50', '2021-02-07 10:39:50'),
(81, 73, 'public/uploads/product/1612694567-Electric Lunch Box Portable.jpg', '2021-02-07 10:42:47', '2021-02-07 10:42:47'),
(82, 74, 'public/uploads/product/1612694898-Electronic USB Mosquito Killer Lamp.jpg', '2021-02-07 10:48:18', '2021-02-07 10:48:18'),
(84, 75, 'public/uploads/product/1612695119-Fabric_woven_gloves-removebg-preview.png', '2021-02-07 10:51:59', '2021-02-07 10:51:59'),
(85, 76, 'public/uploads/product/1612695369-Fast and Smooth Food Preparation Capsule Cutter blender juicer.png', '2021-02-07 10:56:09', '2021-02-07 10:56:09'),
(87, 77, 'public/uploads/product/1612695844-foldable-barbecue-and-tandoor-grill-briefcase-style-charcoal-bbq-stand-for-cooking-500x500.jpg', '2021-02-07 11:04:04', '2021-02-07 11:04:04'),
(88, 78, 'public/uploads/product/1612696075-Fast and Smooth Food Preparation Capsule Cutter.jpg', '2021-02-07 11:07:55', '2021-02-07 11:07:55'),
(90, 79, 'public/uploads/product/1612696434-Feeder_warmer_Single__For_Kids__Multicolor_-removebg-preview.png', '2021-02-07 11:13:54', '2021-02-07 11:13:54'),
(91, 80, 'public/uploads/product/1612696988-Fisher-Price_Infant-to-Toddler_baby_Rocking_and_Relax_chair-removebg-preview.png', '2021-02-07 11:23:08', '2021-02-07 11:23:08'),
(92, 81, 'public/uploads/product/1612697330-Fisher-Price Infant-to-Toddler baby Rocking and Relax chair1.jpg', '2021-02-07 11:28:50', '2021-02-07 11:28:50'),
(93, 82, 'public/uploads/product/1612697461-Fisher-Price Infant-to-Toddler baby Rocking and Relax chair2.jpg', '2021-02-07 11:31:01', '2021-02-07 11:31:01'),
(94, 83, 'public/uploads/product/1612697648-Foldable Iron Stand.jpg', '2021-02-07 11:34:08', '2021-02-07 11:34:08'),
(95, 84, 'public/uploads/product/1612769400-Food Grade silicone baby teether waterfill nature.jpg', '2021-02-08 07:30:00', '2021-02-08 07:30:00'),
(96, 85, 'public/uploads/product/1612769918-Food Tonge.jpg', '2021-02-08 07:38:38', '2021-02-08 07:38:38'),
(98, 86, 'public/uploads/product/1612770162-Fruit___Vegetable_Manual_Juicer_Hand_Juice_Extractor_Juice_Machine_With_Lock_System-removebg-preview (1).png', '2021-02-08 07:42:42', '2021-02-08 07:42:42'),
(99, 87, 'public/uploads/product/1612770571-Hand Mixer Cappuccino Foamy Coffee Maker.jpg', '2021-02-08 07:49:31', '2021-02-08 07:49:31'),
(100, 88, 'public/uploads/product/1612771051-Havit MX702M5 Mini AI Portable Intelligent Bluetooth Speaker2.jpg', '2021-02-08 07:57:31', '2021-02-08 07:57:31'),
(101, 89, 'public/uploads/product/1612771317-HD mini Camera small cam SPY1080P Sensor Night Vision Camcorder Micro video Camera DVR DV Motion Recorder Camcorder.jpg', '2021-02-08 08:01:57', '2021-02-08 08:01:57'),
(102, 90, 'public/uploads/product/1612771488-High Quality Silicone Dish Washing Kitchen Hand Gloves.jpg', '2021-02-08 08:04:48', '2021-02-08 08:04:48'),
(103, 91, 'public/uploads/product/1612771660-i12 Tws Wireless Bluetooth 5.0 Stereo Earphone Touch Control Headphones.jpg', '2021-02-08 08:07:40', '2021-02-08 08:07:40'),
(104, 92, 'public/uploads/product/1612771807-ILAG Non Stick Cooking Pot.jpg', '2021-02-08 08:10:08', '2021-02-08 08:10:08'),
(105, 93, 'public/uploads/product/1612771949-Indian Orange Brand Lancer Hand Blender.jpg', '2021-02-08 08:12:29', '2021-02-08 08:12:29'),
(106, 94, 'public/uploads/product/1612772210-Indian_Orange_Brand_Non_Stick_Cooking_Pot_20_CM-removebg-preview (1).png', '2021-02-08 08:16:50', '2021-02-08 08:16:50'),
(108, 95, 'public/uploads/product/1612772638-918wQSsJy-L._SL1500_.jpg', '2021-02-08 08:23:58', '2021-02-08 08:23:58'),
(109, 96, 'public/uploads/product/1612773067-Infant Washable Deluxe Baby Bather.png', '2021-02-08 08:31:07', '2021-02-08 08:31:07'),
(110, 97, 'public/uploads/product/1612856869-Infant-to-Toddler Rocker -pink.jpg', '2021-02-09 07:47:49', '2021-02-09 07:47:49'),
(111, 98, 'public/uploads/product/1612857203-png-clipart-hot-tub-swimming-pool-inflatable-air-mattresses-swimming-sports-air-pump-removebg-preview (1).png', '2021-02-09 07:53:23', '2021-02-09 07:53:23'),
(112, 99, 'public/uploads/product/1612857598-Inflatable baby play mat.jpg', '2021-02-09 07:59:58', '2021-02-09 07:59:58'),
(113, 100, 'public/uploads/product/1612857876-Infrared Blood Circulation Foot Massager - White.jpg', '2021-02-09 08:04:36', '2021-02-09 08:04:36'),
(115, 101, 'public/uploads/product/1612858144-Instant_hot_water_mobile_tap-removebg-preview.png', '2021-02-09 08:09:04', '2021-02-09 08:09:04'),
(116, 102, 'public/uploads/product/1612858457-Instant hot water tap with hand shower.jpg', '2021-02-09 08:14:17', '2021-02-09 08:14:17'),
(117, 103, 'public/uploads/product/1612858559-INSTANT HOT WATER TAP.jpg', '2021-02-09 08:15:59', '2021-02-09 08:15:59'),
(118, 104, 'public/uploads/product/1612858701-Instant Tankless Digital Electric Hot Water Tap for any Wall and Basin Mount 2 in 1  with led Display.jpg', '2021-02-09 08:18:21', '2021-02-09 08:18:21'),
(119, 105, 'public/uploads/product/1612858896-Intime Inflatable Baby Bath Tub, Baby Children Shower Tub1.jpg', '2021-02-09 08:21:36', '2021-02-09 08:21:36'),
(120, 106, 'public/uploads/product/1612859096-Jio Exclusive Granite 3 pcs marble non-stick coating Set (Blue) (1).jpg', '2021-02-09 08:24:56', '2021-02-09 08:24:56'),
(121, 107, 'public/uploads/product/1612859242-Kenwood Food Processor blender mixer.jpg', '2021-02-09 08:27:22', '2021-02-09 08:27:22'),
(122, 108, 'public/uploads/product/1612859702-Kids Baby Toy Wooden Stacking Ring Tower Educational Toys Rainbow Stack Up.jpeg', '2021-02-09 08:35:02', '2021-02-09 08:35:02'),
(123, 109, 'public/uploads/product/1612868832-kitchen spice pot  glass 9 pcs.jpg', '2021-02-09 11:07:12', '2021-02-09 11:07:12'),
(124, 110, 'public/uploads/product/1612868960-kitchen stainless steel paper towel holder.jpg', '2021-02-09 11:09:20', '2021-02-09 11:09:20'),
(125, 111, 'public/uploads/product/1612869103-Knife Sharpener.jpg', '2021-02-09 11:11:43', '2021-02-09 11:11:43'),
(126, 112, 'public/uploads/product/1612869254-Large Handy and Compact Chopper Quick Cutter for Kitchen, 3 Blade Stainless Steel, Pull String, (Made In India).jpg', '2021-02-09 11:14:14', '2021-02-09 11:14:14'),
(127, 113, 'public/uploads/product/1612869520-Leather Cross body Charging Bag with USB port unisex.jpg', '2021-02-09 11:18:40', '2021-02-09 11:18:40'),
(128, 114, 'public/uploads/product/1613148976-Linco Silicone Spoon Weaning Bottle - Transparent and Sky Blue.jpg', '2021-02-12 16:56:16', '2021-02-12 16:56:16'),
(129, 115, 'public/uploads/product/1613149143-M3 Smart Band Waterproof Heart Rate Monitor Bluetooth Smart Sleep Bracelet Fitness Tracker Blood Pressure Pedometer Watch.jpg', '2021-02-12 16:59:03', '2021-02-12 16:59:03'),
(130, 116, 'public/uploads/product/1613201222-M4 Pro- Smart band Fitness Tracker Watch Sport bracelet Heart Rate Blood Pressure Smartband Monitor Health Wristband Fitness Tracker.jfif', '2021-02-13 07:27:02', '2021-02-13 07:27:02'),
(131, 117, 'public/uploads/product/1613201569-1d7257c0c098-4.jpg', '2021-02-13 07:32:49', '2021-02-13 07:32:49'),
(132, 118, 'public/uploads/product/1613201801-MICROWEAR L9 SMARTWATCH FULL TOUCH SCREEN.jpg', '2021-02-13 07:36:41', '2021-02-13 07:36:41'),
(133, 119, 'public/uploads/product/1613201971-Microwear W34 Smart Watch Bluetooth Call Touch Screen Smartwatch Intelligent Fitness Tracker Heart Rate Monitor for Android IOS.jpg', '2021-02-13 07:39:31', '2021-02-13 07:39:31'),
(134, 120, 'public/uploads/product/1613202100-Miyako 1000 Watt Black Beauty Electric Blender Machine- Bl-100.jpg', '2021-02-13 07:41:40', '2021-02-13 07:41:40'),
(135, 121, 'public/uploads/product/1613202252-Miyako Electric Room Heater 4 In 1 Model-602.jpg', '2021-02-13 07:44:12', '2021-02-13 07:44:12'),
(136, 122, 'public/uploads/product/1613202593-Miyako_Heavy_Duty__mixer_blender_and_grinder__1000_Watt-removebg-preview.png', '2021-02-13 07:49:53', '2021-02-13 07:49:53'),
(137, 123, 'public/uploads/product/1613202705-Miyako_Red_Sparrow_Heavy_Duty_mixer_grinder___blender_850_Watt-removebg-preview.png', '2021-02-13 07:51:45', '2021-02-13 07:51:45'),
(138, 124, 'public/uploads/product/1613202888-Multi Color Translucent Plastic Bibs For Babies.jpg', '2021-02-13 07:54:48', '2021-02-13 07:54:48'),
(139, 125, 'public/uploads/product/1613203013-Multi Functional Baby Rocking Chair bouncer with Adjustable Angle and Safety Belt.jpg', '2021-02-13 07:56:53', '2021-02-13 07:56:53'),
(140, 126, 'public/uploads/product/1613203168-Multifunction Folding Drain Basket washing and cutting board.jpg', '2021-02-13 07:59:28', '2021-02-13 07:59:28'),
(141, 127, 'public/uploads/product/1613203297-Multipurpose Magic Silicone Hand Gloves.jpg', '2021-02-13 08:01:37', '2021-02-13 08:01:37'),
(142, 128, 'public/uploads/product/1613203459-Nail Cutter for Baby2.jpg', '2021-02-13 08:04:19', '2021-02-13 08:04:19'),
(143, 129, 'public/uploads/product/1613203515-Nail Cutter for Baby.jpg', '2021-02-13 08:05:15', '2021-02-13 08:05:15'),
(144, 130, 'public/uploads/product/1613203633-National Sandwich Maker.jpg', '2021-02-13 08:07:13', '2021-02-13 08:07:13'),
(145, 131, 'public/uploads/product/1613203741-National View S18 Chopper Food Processor Blender and Mixer.jpg', '2021-02-13 08:09:01', '2021-02-13 08:09:01'),
(146, 132, 'public/uploads/product/1613203870-NEW ARRIVAL! Fashion Baby Car Shape Potties & Seats Children Toilet, Kids Potty Trainer Toilets 0-6 Years Old Babies Toilet Travel Potty - Multicolors.jpg', '2021-02-13 08:11:10', '2021-02-13 08:11:10'),
(147, 133, 'public/uploads/product/1613203987-Inflatable baby play mat.jpg', '2021-02-13 08:13:07', '2021-02-13 08:13:07'),
(148, 134, 'public/uploads/product/1613204146-Nima 2 in 1 Electric Spice Grinder & Juicer – Silver.jpg', '2021-02-13 08:15:46', '2021-02-13 08:15:46'),
(149, 135, 'public/uploads/product/1613204282-Non Stick Baking Pans 3Pcs set Metal Cake Baking Pan Round Shaped Oven Baking Tray Cake Mold Bakeware Baking Tools.jpg', '2021-02-13 08:18:02', '2021-02-13 08:18:02'),
(150, 136, 'public/uploads/product/1613204407-Non Stick Cake Pan Bread Mold 6 Inch.png', '2021-02-13 08:20:07', '2021-02-13 08:20:07'),
(151, 137, 'public/uploads/product/1613204657-NutriBullet_12-Piece_High-Speed_Blender_Mixer___grinder-removebg-preview (1).png', '2021-02-13 08:24:17', '2021-02-13 08:24:17'),
(152, 138, 'public/uploads/product/1613204773-Oil brush silicone 2 pcs.jpg', '2021-02-13 08:26:13', '2021-02-13 08:26:13'),
(153, 139, 'public/uploads/product/1613205020-Original Sweat slim belt.jpg', '2021-02-13 08:30:20', '2021-02-13 08:30:20'),
(154, 140, 'public/uploads/product/1613205255-Philips Digital Air Fryer (Hd9238).jpg', '2021-02-13 08:34:15', '2021-02-13 08:34:15'),
(155, 141, 'public/uploads/product/1613205353-Pintar Facil paint Roller.jpg', '2021-02-13 08:35:53', '2021-02-13 08:35:53'),
(156, 142, 'public/uploads/product/1613206176-Plextone G800 Wired Gaming Headset.jfif', '2021-02-13 08:49:36', '2021-02-13 08:49:36'),
(157, 143, 'public/uploads/product/1613206301-Power Free Hand Blender Stainless Steel For Egg & Cream Beater, Milkshake, Lassi, Butter Milk Mixer Maker.jpg', '2021-02-13 08:51:41', '2021-02-13 08:51:41'),
(158, 144, 'public/uploads/product/1613206431-Prints Washable & Reusable Baby Nappies Diaper.jpg', '2021-02-13 08:53:51', '2021-02-13 08:53:51'),
(159, 145, 'public/uploads/product/1613206757-Quigg Mini Deep Fryer.jpg', '2021-02-13 08:59:17', '2021-02-13 08:59:17'),
(160, 146, 'public/uploads/product/1613207048-Rechargeable Handy Fruits Juicer Mixer Blender.jpg', '2021-02-13 09:04:08', '2021-02-13 09:04:08'),
(161, 147, 'public/uploads/product/1613207168-Replace Belt for Mi Band 2.jpg', '2021-02-13 09:06:08', '2021-02-13 09:06:08'),
(162, 148, 'public/uploads/product/1613207268-Reusable Infant Cloth Diapers Grid Soft Covers Washable Size Adjustable(1 Pad).jpg', '2021-02-13 09:07:48', '2021-02-13 09:07:48'),
(163, 149, 'public/uploads/product/1613207391-Reusable Multipurpose Magic Silicone Dishwashing Gloves Wash Scrubber Cleaning Gloves 2 pcs.jpg', '2021-02-13 09:09:51', '2021-02-13 09:09:51'),
(164, 150, 'public/uploads/product/1613207518-Revoflex Xtreme Full Body Workout.jpg', '2021-02-13 09:11:58', '2021-02-13 09:11:58'),
(165, 151, 'public/uploads/product/1613207774-Round_Shape_Exclusive_Wooden_Roti_Maker_jumbo_size_10_with_both_side_gum_tape_and_food_grade_Wrapping_poly_Roll-removebg-preview.png', '2021-02-13 09:16:14', '2021-02-13 09:16:14'),
(166, 152, 'public/uploads/product/1613207911-Sahara Blender and Grinder Delight 3 In 1 600W.png', '2021-02-13 09:18:31', '2021-02-13 09:18:31'),
(167, 153, 'public/uploads/product/1613208103-Santete_Tea_Maker-removebg-preview.png', '2021-02-13 09:21:43', '2021-02-13 09:21:43'),
(168, 154, 'public/uploads/product/1613208229-Anti cracked Heel polka cream (Original Thailand).jfif', '2021-02-13 09:23:49', '2021-02-13 09:23:49'),
(169, 155, 'public/uploads/product/1613208548-Scarlett Electric Egg Beater cake cream and hand Mixer.jpg', '2021-02-13 09:29:08', '2021-02-13 09:29:08'),
(170, 156, 'public/uploads/product/1613208752-Sensor Aircraft Helicopter Flaying Toys-Indoor Flight -Multi-color.jpg', '2021-02-13 09:32:32', '2021-02-13 09:32:32'),
(171, 157, 'public/uploads/product/1613208977-Silicone Baby Finger Tooth Brush with Box.jpg', '2021-02-13 09:36:17', '2021-02-13 09:36:17'),
(172, 158, 'public/uploads/product/1613215944-Silicone Cleaning Gloves with Wash Scrubber Reusable Brush Dish.jpg', '2021-02-13 11:32:24', '2021-02-13 11:32:24'),
(173, 159, 'public/uploads/product/1613216220-Silicone_Dish_Washing_Kitchen_Hand_Gloves_2_pcs-removebg-preview (1).png', '2021-02-13 11:37:00', '2021-02-13 11:37:00'),
(174, 160, 'public/uploads/product/1613216465-Silicone Ice-Cube Chocolate Cake Jelly Tray Pan Heart design Mould.jpg', '2021-02-13 11:41:05', '2021-02-13 11:41:05'),
(175, 161, 'public/uploads/product/1613745101-40366ded1937ae2b9df1c0f15412894a.jpg', '2021-02-19 14:31:41', '2021-02-19 14:31:41'),
(176, 162, 'public/uploads/product/1613746202-3.jpg', '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(177, 162, 'public/uploads/product/1613746202-4.jpg', '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(178, 162, 'public/uploads/product/1613746202-w2.jpg', '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(179, 163, 'public/uploads/product/1613746413-5.jpg', '2021-02-19 14:53:33', '2021-02-19 14:53:33'),
(180, 164, 'public/uploads/product/1613746626-6.jpg', '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(181, 164, 'public/uploads/product/1613746626-7.jpg', '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(182, 164, 'public/uploads/product/1613746626-8.jpg', '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(183, 164, 'public/uploads/product/1613746626-9.jpg', '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(184, 165, 'public/uploads/product/1613746948-10.jpg', '2021-02-19 15:02:28', '2021-02-19 15:02:28'),
(185, 166, 'public/uploads/product/1613747082-11.jpg', '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(186, 167, 'public/uploads/product/1613748112-12.jpg', '2021-02-19 15:21:52', '2021-02-19 15:21:52'),
(187, 168, 'public/uploads/product/1613748747-13.jpg', '2021-02-19 15:32:27', '2021-02-19 15:32:27'),
(188, 169, 'public/uploads/product/1613971646-shirt1.jpeg', '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(189, 170, 'public/uploads/product/1613971832-shirt2.jpeg', '2021-02-22 05:30:32', '2021-02-22 05:30:32'),
(190, 171, 'public/uploads/product/1613971987-shirt3.jpeg', '2021-02-22 05:33:07', '2021-02-22 05:33:07'),
(191, 172, 'public/uploads/product/1613972088-shirt4.jpeg', '2021-02-22 05:34:48', '2021-02-22 05:34:48'),
(192, 173, 'public/uploads/product/1613972272-shirt5.jpeg', '2021-02-22 05:37:52', '2021-02-22 05:37:52'),
(193, 174, 'public/uploads/product/1613972423-shirt6.jpeg', '2021-02-22 05:40:23', '2021-02-22 05:40:23'),
(194, 175, 'public/uploads/product/1613973092-1.jpg', '2021-02-22 05:51:32', '2021-02-22 05:51:32'),
(195, 176, 'public/uploads/product/1613973229-2..jpg', '2021-02-22 05:53:49', '2021-02-22 05:53:49'),
(196, 177, 'public/uploads/product/1613973357-3.jpg', '2021-02-22 05:55:57', '2021-02-22 05:55:57'),
(197, 178, 'public/uploads/product/1613973731-4.jpg', '2021-02-22 06:02:11', '2021-02-22 06:02:11'),
(198, 179, 'public/uploads/product/1613973895-5.jpg', '2021-02-22 06:04:55', '2021-02-22 06:04:55'),
(199, 180, 'public/uploads/product/1613974022-6.jpg', '2021-02-22 06:07:02', '2021-02-22 06:07:02'),
(200, 181, 'public/uploads/product/1613975072-t-shirt1.jpeg', '2021-02-22 06:24:32', '2021-02-22 06:24:32'),
(201, 182, 'public/uploads/product/1613975433-t-shirt2.jpeg', '2021-02-22 06:30:33', '2021-02-22 06:30:33'),
(202, 183, 'public/uploads/product/1613975667-t-shirt3.jpeg', '2021-02-22 06:34:27', '2021-02-22 06:34:27'),
(203, 184, 'public/uploads/product/1613975883-t-shirt4.jpeg', '2021-02-22 06:38:03', '2021-02-22 06:38:03'),
(204, 185, 'public/uploads/product/1613976141-t-shirt5.jpeg', '2021-02-22 06:42:21', '2021-02-22 06:42:21'),
(205, 186, 'public/uploads/product/1613976313--shirt6.jpeg', '2021-02-22 06:45:13', '2021-02-22 06:45:13'),
(206, 187, 'public/uploads/product/1613976877-jaket1.jpeg', '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(207, 188, 'public/uploads/product/1613977281-jaket2.jpeg', '2021-02-22 07:01:21', '2021-02-22 07:01:21'),
(208, 189, 'public/uploads/product/1613977437-jaket3.jpeg', '2021-02-22 07:03:57', '2021-02-22 07:03:57'),
(209, 190, 'public/uploads/product/1613977695-jaket4.jpeg', '2021-02-22 07:08:15', '2021-02-22 07:08:15'),
(210, 191, 'public/uploads/product/1613977842-jaket5.jpeg', '2021-02-22 07:10:42', '2021-02-22 07:10:42'),
(211, 192, 'public/uploads/product/1613977991-jaket6.jpeg', '2021-02-22 07:13:11', '2021-02-22 07:13:11'),
(212, 193, 'public/uploads/product/1613978626-hoode1.jpeg', '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(213, 194, 'public/uploads/product/1613978822-hoode2.jpeg', '2021-02-22 07:27:02', '2021-02-22 07:27:02'),
(214, 195, 'public/uploads/product/1613978955-hoode3.jpeg', '2021-02-22 07:29:15', '2021-02-22 07:29:15'),
(215, 196, 'public/uploads/product/1613979071-hoode4.jpeg', '2021-02-22 07:31:11', '2021-02-22 07:31:11'),
(216, 197, 'public/uploads/product/1613979178-hoode5.jpeg', '2021-02-22 07:32:58', '2021-02-22 07:32:58'),
(217, 198, 'public/uploads/product/1613979312-hoode6.jpeg', '2021-02-22 07:35:12', '2021-02-22 07:35:12'),
(218, 199, 'public/uploads/product/1613984505-bags2.jpg', '2021-02-22 09:01:45', '2021-02-22 09:01:45'),
(219, 200, 'public/uploads/product/1613984626-bags1.jpg', '2021-02-22 09:03:46', '2021-02-22 09:03:46'),
(220, 201, 'public/uploads/product/1613984822-bags3.jpg', '2021-02-22 09:07:02', '2021-02-22 09:07:02'),
(221, 202, 'public/uploads/product/1613985270-bags4.jpg', '2021-02-22 09:14:30', '2021-02-22 09:14:30'),
(222, 203, 'public/uploads/product/1613985348-bags5.jpg', '2021-02-22 09:15:48', '2021-02-22 09:15:48'),
(223, 204, 'public/uploads/product/1613985441-bags6.jpg', '2021-02-22 09:17:21', '2021-02-22 09:17:21'),
(224, 205, 'public/uploads/product/1613986004-shos1.jpg', '2021-02-22 09:26:44', '2021-02-22 09:26:44'),
(225, 206, 'public/uploads/product/1613986287-shos2.jpg', '2021-02-22 09:31:27', '2021-02-22 09:31:27'),
(226, 207, 'public/uploads/product/1613986452-shos3.jpg', '2021-02-22 09:34:13', '2021-02-22 09:34:13'),
(227, 208, 'public/uploads/product/1613986743-shos4.jpg', '2021-02-22 09:39:04', '2021-02-22 09:39:04'),
(228, 209, 'public/uploads/product/1613986819-shos5.jpg', '2021-02-22 09:40:19', '2021-02-22 09:40:19'),
(229, 210, 'public/uploads/product/1613986911-shos6.jpg', '2021-02-22 09:41:51', '2021-02-22 09:41:51'),
(230, 211, 'public/uploads/product/1613988315-belt1.jpg', '2021-02-22 10:05:15', '2021-02-22 10:05:15'),
(231, 212, 'public/uploads/product/1613988508-belt2.jpg', '2021-02-22 10:08:28', '2021-02-22 10:08:28'),
(232, 213, 'public/uploads/product/1613988637-belt3.jpg', '2021-02-22 10:10:37', '2021-02-22 10:10:37'),
(233, 214, 'public/uploads/product/1613988822-belt4.jpg', '2021-02-22 10:13:42', '2021-02-22 10:13:42'),
(234, 215, 'public/uploads/product/1613988936-belt5.jpg', '2021-02-22 10:15:36', '2021-02-22 10:15:36'),
(235, 216, 'public/uploads/product/1613989018-belt6.jpg', '2021-02-22 10:16:58', '2021-02-22 10:16:58'),
(236, 217, 'public/uploads/product/1613990245-belt7.jpg', '2021-02-22 10:37:28', '2021-02-22 10:37:28'),
(237, 218, 'public/uploads/product/1613990856-coats1.jpg', '2021-02-22 10:47:36', '2021-02-22 10:47:36'),
(238, 219, 'public/uploads/product/1613991053-coats2.jpg', '2021-02-22 10:50:53', '2021-02-22 10:50:53'),
(239, 220, 'public/uploads/product/1613991433-salawer1.jpeg', '2021-02-22 10:57:13', '2021-02-22 10:57:13'),
(240, 221, 'public/uploads/product/1613991617-salawer2.jpeg', '2021-02-22 11:00:18', '2021-02-22 11:00:18'),
(241, 222, 'public/uploads/product/1613991741-salawer3.jpeg', '2021-02-22 11:02:21', '2021-02-22 11:02:21'),
(242, 223, 'public/uploads/product/1613991885-salawer4.jpeg', '2021-02-22 11:04:45', '2021-02-22 11:04:45'),
(243, 224, 'public/uploads/product/1613991975-salawer5.jpeg', '2021-02-22 11:06:15', '2021-02-22 11:06:15'),
(244, 225, 'public/uploads/product/1613992118-salawer6.jpg', '2021-02-22 11:08:38', '2021-02-22 11:08:38'),
(245, 226, 'public/uploads/product/1613992866-pakija1.jpeg', '2021-02-22 11:21:06', '2021-02-22 11:21:06'),
(246, 227, 'public/uploads/product/1613993080-pakiza2.jpeg', '2021-02-22 11:24:40', '2021-02-22 11:24:40'),
(247, 228, 'public/uploads/product/1613993231-pakiza3.jpeg', '2021-02-22 11:27:11', '2021-02-22 11:27:11'),
(248, 229, 'public/uploads/product/1613993347-pakiza4.jpeg', '2021-02-22 11:29:07', '2021-02-22 11:29:07'),
(249, 230, 'public/uploads/product/1613993472-pakiza5.jpeg', '2021-02-22 11:31:12', '2021-02-22 11:31:12'),
(250, 231, 'public/uploads/product/1613993630-pakiza6.jpg', '2021-02-22 11:33:50', '2021-02-22 11:33:50'),
(251, 232, 'public/uploads/product/1613993844-kurtis1.jpg', '2021-02-22 11:37:25', '2021-02-22 11:37:25'),
(252, 233, 'public/uploads/product/1613994038-kurtis2.jpg', '2021-02-22 11:40:38', '2021-02-22 11:40:38'),
(253, 234, 'public/uploads/product/1613994202-kurtis3.jpg', '2021-02-22 11:43:22', '2021-02-22 11:43:22'),
(254, 235, 'public/uploads/product/1613994411-kurtis4.jpg', '2021-02-22 11:46:51', '2021-02-22 11:46:51'),
(255, 236, 'public/uploads/product/1613994820-kurtis5.jpg', '2021-02-22 11:53:40', '2021-02-22 11:53:40'),
(256, 237, 'public/uploads/product/1613994956-kurtis6.jpg', '2021-02-22 11:55:56', '2021-02-22 11:55:56'),
(257, 238, 'public/uploads/product/1613995426-saree1.jpg', '2021-02-22 12:03:46', '2021-02-22 12:03:46'),
(258, 239, 'public/uploads/product/1613995547-saree2.jpg', '2021-02-22 12:05:47', '2021-02-22 12:05:47'),
(259, 240, 'public/uploads/product/1613996272-saree3.jpg', '2021-02-22 12:17:52', '2021-02-22 12:17:52'),
(260, 241, 'public/uploads/product/1614055515-bet1.jpg', '2021-02-23 04:45:16', '2021-02-23 04:45:16'),
(261, 242, 'public/uploads/product/1614055713-bet3.jpg', '2021-02-23 04:48:33', '2021-02-23 04:48:33'),
(262, 243, 'public/uploads/product/1614055818-bet2.jpg', '2021-02-23 04:50:18', '2021-02-23 04:50:18'),
(263, 244, 'public/uploads/product/1614055911-bet4.jpg', '2021-02-23 04:51:51', '2021-02-23 04:51:51'),
(264, 245, 'public/uploads/product/1614056093-bet5.jpg', '2021-02-23 04:54:53', '2021-02-23 04:54:53'),
(265, 246, 'public/uploads/product/1614056229-bet6.jpg', '2021-02-23 04:57:09', '2021-02-23 04:57:09'),
(266, 247, 'public/uploads/product/1614057260-bedd1.jpg', '2021-02-23 05:14:20', '2021-02-23 05:14:20'),
(267, 248, 'public/uploads/product/1614057357-bedd2.jpg', '2021-02-23 05:15:57', '2021-02-23 05:15:57'),
(268, 249, 'public/uploads/product/1614057483-bedd3.jpg', '2021-02-23 05:18:03', '2021-02-23 05:18:03'),
(269, 250, 'public/uploads/product/1614057551-bedd4.jpg', '2021-02-23 05:19:11', '2021-02-23 05:19:11'),
(270, 251, 'public/uploads/product/1614057620-bedd5.jpg', '2021-02-23 05:20:20', '2021-02-23 05:20:20'),
(271, 252, 'public/uploads/product/1614057695-bedd6.jpg', '2021-02-23 05:21:35', '2021-02-23 05:21:35'),
(272, 253, 'public/uploads/product/1614057916-decor1.png', '2021-02-23 05:25:16', '2021-02-23 05:25:16'),
(273, 254, 'public/uploads/product/1614058000-decor2.jpg', '2021-02-23 05:26:40', '2021-02-23 05:26:40'),
(274, 255, 'public/uploads/product/1614058082-decor3.jpg', '2021-02-23 05:28:02', '2021-02-23 05:28:02'),
(275, 256, 'public/uploads/product/1614058170-decor4.jpg', '2021-02-23 05:29:30', '2021-02-23 05:29:30'),
(276, 257, 'public/uploads/product/1614058277-decor5.jpg', '2021-02-23 05:31:17', '2021-02-23 05:31:17'),
(277, 258, 'public/uploads/product/1614058380-decor6.jpg', '2021-02-23 05:33:00', '2021-02-23 05:33:00'),
(278, 259, 'public/uploads/product/1614058560-furnitur1.png', '2021-02-23 05:36:00', '2021-02-23 05:36:00'),
(279, 260, 'public/uploads/product/1614058750-furnitur2.jpg', '2021-02-23 05:39:10', '2021-02-23 05:39:10'),
(280, 261, 'public/uploads/product/1614059000-furnitur3.jpg', '2021-02-23 05:43:20', '2021-02-23 05:43:20'),
(281, 262, 'public/uploads/product/1614059375-furnitur4.jpg', '2021-02-23 05:49:35', '2021-02-23 05:49:35'),
(282, 263, 'public/uploads/product/1614059546-furnitur5.jpg', '2021-02-23 05:52:26', '2021-02-23 05:52:26'),
(283, 264, 'public/uploads/product/1614059644-furnitur6.jpg', '2021-02-23 05:54:04', '2021-02-23 05:54:04'),
(284, 265, 'public/uploads/product/1614060072-liting1.jpg', '2021-02-23 06:01:13', '2021-02-23 06:01:13'),
(285, 266, 'public/uploads/product/1614060479-liting2.jpg', '2021-02-23 06:07:59', '2021-02-23 06:07:59'),
(286, 267, 'public/uploads/product/1614060625-liting3.jpg', '2021-02-23 06:10:25', '2021-02-23 06:10:25'),
(287, 268, 'public/uploads/product/1614060759-liting4.jpg', '2021-02-23 06:12:39', '2021-02-23 06:12:39'),
(288, 269, 'public/uploads/product/1614060860-liting5.jpg', '2021-02-23 06:14:20', '2021-02-23 06:14:20'),
(289, 270, 'public/uploads/product/1614060938-liting6.jpg', '2021-02-23 06:15:38', '2021-02-23 06:15:38'),
(290, 271, 'public/uploads/product/1614061220-celining1.png', '2021-02-23 06:20:20', '2021-02-23 06:20:20'),
(291, 272, 'public/uploads/product/1614061327-celining2.png', '2021-02-23 06:22:08', '2021-02-23 06:22:08'),
(292, 273, 'public/uploads/product/1614061487-celining3.jpg', '2021-02-23 06:24:47', '2021-02-23 06:24:47'),
(293, 274, 'public/uploads/product/1614061572-celining4.png', '2021-02-23 06:26:12', '2021-02-23 06:26:12'),
(294, 275, 'public/uploads/product/1614062502-celining5.jpg', '2021-02-23 06:41:43', '2021-02-23 06:41:43'),
(295, 276, 'public/uploads/product/1614062569-celining6.jpg', '2021-02-23 06:42:49', '2021-02-23 06:42:49'),
(296, 277, 'public/uploads/product/1614063133-tools1.jpg', '2021-02-23 06:52:13', '2021-02-23 06:52:13'),
(297, 278, 'public/uploads/product/1614070932-tools2.jpg', '2021-02-23 09:02:12', '2021-02-23 09:02:12'),
(298, 279, 'public/uploads/product/1614071095-tools3.jpg', '2021-02-23 09:04:55', '2021-02-23 09:04:55'),
(299, 280, 'public/uploads/product/1614071403-tools4.jpg', '2021-02-23 09:10:03', '2021-02-23 09:10:03'),
(300, 281, 'public/uploads/product/1614072005-tools5.jpg', '2021-02-23 09:20:05', '2021-02-23 09:20:05'),
(301, 282, 'public/uploads/product/1614072233-tools6.jpg', '2021-02-23 09:23:53', '2021-02-23 09:23:53'),
(302, 283, 'public/uploads/product/1614073008-stasonary1.jpg', '2021-02-23 09:36:48', '2021-02-23 09:36:48'),
(303, 284, 'public/uploads/product/1614073267-stasonary2.jpg', '2021-02-23 09:41:07', '2021-02-23 09:41:07'),
(304, 285, 'public/uploads/product/1614073363-stasonry3.jpg', '2021-02-23 09:42:43', '2021-02-23 09:42:43'),
(305, 286, 'public/uploads/product/1614073595-stasonary3.jpg', '2021-02-23 09:46:35', '2021-02-23 09:46:35'),
(306, 287, 'public/uploads/product/1614073959-stasonary5.png', '2021-02-23 09:52:40', '2021-02-23 09:52:40'),
(307, 288, 'public/uploads/product/1614074063-stasonary6.jpg', '2021-02-23 09:54:23', '2021-02-23 09:54:23'),
(308, 289, 'public/uploads/product/1614074273-media1.jpg', '2021-02-23 09:57:53', '2021-02-23 09:57:53'),
(309, 290, 'public/uploads/product/1614074451-media2.png', '2021-02-23 10:00:51', '2021-02-23 10:00:51'),
(310, 291, 'public/uploads/product/1614074584-media3.jpg', '2021-02-23 10:03:04', '2021-02-23 10:03:04'),
(311, 292, 'public/uploads/product/1614074661-media4.jpg', '2021-02-23 10:04:21', '2021-02-23 10:04:21'),
(312, 293, 'public/uploads/product/1614074737-media5.jpg', '2021-02-23 10:05:37', '2021-02-23 10:05:37'),
(313, 294, 'public/uploads/product/1614074856-media6.jpg', '2021-02-23 10:07:36', '2021-02-23 10:07:36'),
(314, 295, 'public/uploads/product/1614075298-baby1.png', '2021-02-23 10:14:58', '2021-02-23 10:14:58'),
(315, 296, 'public/uploads/product/1614075358-baby2.jpg', '2021-02-23 10:15:58', '2021-02-23 10:15:58'),
(316, 297, 'public/uploads/product/1614075432-baby3.jpg', '2021-02-23 10:17:12', '2021-02-23 10:17:12'),
(317, 298, 'public/uploads/product/1614075503-baby4.jpg', '2021-02-23 10:18:23', '2021-02-23 10:18:23'),
(318, 299, 'public/uploads/product/1614075682-baby5.jpg', '2021-02-23 10:21:22', '2021-02-23 10:21:22'),
(319, 300, 'public/uploads/product/1614075803-baby6.jpg', '2021-02-23 10:23:23', '2021-02-23 10:23:23'),
(320, 301, 'public/uploads/product/1614076084-mobile1.jpg', '2021-02-23 10:28:04', '2021-02-23 10:28:04'),
(321, 302, 'public/uploads/product/1614076172-mobile2.jpg', '2021-02-23 10:29:32', '2021-02-23 10:29:32'),
(322, 303, 'public/uploads/product/1614076263-mobile3.jpg', '2021-02-23 10:31:03', '2021-02-23 10:31:03'),
(323, 304, 'public/uploads/product/1614076347-mobile4.jpg', '2021-02-23 10:32:27', '2021-02-23 10:32:27'),
(324, 305, 'public/uploads/product/1614076452-mobile5.jpg', '2021-02-23 10:34:12', '2021-02-23 10:34:12'),
(325, 306, 'public/uploads/product/1614076536-mobile6.jpg', '2021-02-23 10:35:36', '2021-02-23 10:35:36'),
(326, 307, 'public/uploads/product/1614076720-audio1.png', '2021-02-23 10:38:40', '2021-02-23 10:38:40'),
(327, 308, 'public/uploads/product/1614076833-audio2.png', '2021-02-23 10:40:33', '2021-02-23 10:40:33'),
(328, 309, 'public/uploads/product/1614076969-audio3.jpg', '2021-02-23 10:42:49', '2021-02-23 10:42:49'),
(329, 310, 'public/uploads/product/1614077035-audio4.jpg', '2021-02-23 10:43:55', '2021-02-23 10:43:55'),
(330, 311, 'public/uploads/product/1614077099-audio5.jpg', '2021-02-23 10:44:59', '2021-02-23 10:44:59'),
(331, 312, 'public/uploads/product/1614077162-audio6.jpg', '2021-02-23 10:46:02', '2021-02-23 10:46:02'),
(332, 313, 'public/uploads/product/1614077494-colting1.jpg', '2021-02-23 10:51:34', '2021-02-23 10:51:34'),
(333, 314, 'public/uploads/product/1614077689-colting2.png', '2021-02-23 10:54:49', '2021-02-23 10:54:49'),
(334, 315, 'public/uploads/product/1614077771-colting3.jpg', '2021-02-23 10:56:11', '2021-02-23 10:56:11'),
(335, 316, 'public/uploads/product/1614077841-colting4.png', '2021-02-23 10:57:21', '2021-02-23 10:57:21'),
(336, 317, 'public/uploads/product/1614077913-colting5.jpg', '2021-02-23 10:58:33', '2021-02-23 10:58:33'),
(337, 318, 'public/uploads/product/1614078030-colting6.jpg', '2021-02-23 11:00:30', '2021-02-23 11:00:30'),
(338, 319, 'public/uploads/product/1614078219-clener1.jpg', '2021-02-23 11:03:39', '2021-02-23 11:03:39'),
(339, 320, 'public/uploads/product/1614078307-clener2.jpg', '2021-02-23 11:05:07', '2021-02-23 11:05:07'),
(340, 321, 'public/uploads/product/1614078393-clener3.jpg', '2021-02-23 11:06:33', '2021-02-23 11:06:33'),
(341, 322, 'public/uploads/product/1614078471-clener4.jpg', '2021-02-23 11:07:51', '2021-02-23 11:07:51'),
(342, 323, 'public/uploads/product/1614078647-clener5.jpg', '2021-02-23 11:10:47', '2021-02-23 11:10:47'),
(343, 324, 'public/uploads/product/1614078769-clener6.jpg', '2021-02-23 11:12:49', '2021-02-23 11:12:49'),
(344, 325, 'public/uploads/product/1614079243-sports1.jpg', '2021-02-23 11:20:43', '2021-02-23 11:20:43'),
(345, 326, 'public/uploads/product/1614079340-sports2.jpg', '2021-02-23 11:22:20', '2021-02-23 11:22:20'),
(346, 327, 'public/uploads/product/1614079447-sports3.jpg', '2021-02-23 11:24:07', '2021-02-23 11:24:07'),
(347, 328, 'public/uploads/product/1614079571-sports4.jpg', '2021-02-23 11:26:11', '2021-02-23 11:26:11'),
(348, 329, 'public/uploads/product/1614079653-sports5.jpg', '2021-02-23 11:27:33', '2021-02-23 11:27:33'),
(349, 330, 'public/uploads/product/1614079775-sports6.jpg', '2021-02-23 11:29:35', '2021-02-23 11:29:35'),
(350, 331, 'public/uploads/product/1614080044-health1.jpg', '2021-02-23 11:34:04', '2021-02-23 11:34:04'),
(351, 332, 'public/uploads/product/1614080162-health2.jpg', '2021-02-23 11:36:02', '2021-02-23 11:36:02'),
(352, 333, 'public/uploads/product/1614080316-health3.jpg', '2021-02-23 11:38:36', '2021-02-23 11:38:36'),
(353, 334, 'public/uploads/product/1614080583-health4.jpg', '2021-02-23 11:43:03', '2021-02-23 11:43:03'),
(354, 335, 'public/uploads/product/1614080807-health5.jpg', '2021-02-23 11:46:47', '2021-02-23 11:46:47'),
(355, 336, 'public/uploads/product/1614080983-health6.jpg', '2021-02-23 11:49:43', '2021-02-23 11:49:43'),
(356, 337, 'public/uploads/product/1614081231-watch1.jpg', '2021-02-23 11:53:52', '2021-02-23 11:53:52'),
(357, 338, 'public/uploads/product/1614081335-watch2.jpg', '2021-02-23 11:55:35', '2021-02-23 11:55:35'),
(358, 339, 'public/uploads/product/1614081489-watch3.png', '2021-02-23 11:58:09', '2021-02-23 11:58:09'),
(359, 340, 'public/uploads/product/1614081702-watch4.jpg', '2021-02-23 12:01:42', '2021-02-23 12:01:42'),
(360, 341, 'public/uploads/product/1614081945-watch5.jpg', '2021-02-23 12:05:45', '2021-02-23 12:05:45'),
(361, 342, 'public/uploads/product/1614082070-watch6.jpg', '2021-02-23 12:07:51', '2021-02-23 12:07:51'),
(362, 343, 'public/uploads/product/1614082376-watchw1.jpg', '2021-02-23 12:12:56', '2021-02-23 12:12:56'),
(363, 344, 'public/uploads/product/1614082471-watchw2.jpg', '2021-02-23 12:14:31', '2021-02-23 12:14:31'),
(364, 345, 'public/uploads/product/1614082553-watchw3.jpg', '2021-02-23 12:15:53', '2021-02-23 12:15:53'),
(365, 346, 'public/uploads/product/1614082689-watchw4.jpg', '2021-02-23 12:18:09', '2021-02-23 12:18:09'),
(366, 347, 'public/uploads/product/1614082817-watchw5.jpg', '2021-02-23 12:20:17', '2021-02-23 12:20:17'),
(367, 348, 'public/uploads/product/1614082892-watchw6.jpg', '2021-02-23 12:21:32', '2021-02-23 12:21:32'),
(368, 349, 'public/uploads/product/1614083309-realmi1.jpg', '2021-02-23 12:28:29', '2021-02-23 12:28:29'),
(369, 350, 'public/uploads/product/1614083444-realmi2.jpg', '2021-02-23 12:30:44', '2021-02-23 12:30:44'),
(370, 351, 'public/uploads/product/1614083568-realmi3.jpg', '2021-02-23 12:32:48', '2021-02-23 12:32:48'),
(371, 352, 'public/uploads/product/1614083869-realmi4.jpg', '2021-02-23 12:37:49', '2021-02-23 12:37:49'),
(372, 353, 'public/uploads/product/1614084119-relami5.jpg', '2021-02-23 12:41:59', '2021-02-23 12:41:59'),
(373, 354, 'public/uploads/product/1614084300-realmi6.jpg', '2021-02-23 12:45:00', '2021-02-23 12:45:00'),
(374, 355, 'public/uploads/product/1614084626-tablets1.jpg', '2021-02-23 12:50:26', '2021-02-23 12:50:26'),
(375, 356, 'public/uploads/product/1614084717-tablets2.jpg', '2021-02-23 12:51:57', '2021-02-23 12:51:57'),
(376, 357, 'public/uploads/product/1614084804-tablets3.jpg', '2021-02-23 12:53:24', '2021-02-23 12:53:24'),
(377, 358, 'public/uploads/product/1614085180-laptop1.jpg', '2021-02-23 12:59:40', '2021-02-23 12:59:40'),
(378, 359, 'public/uploads/product/1614085387-laptop2.png', '2021-02-23 13:03:07', '2021-02-23 13:03:07'),
(379, 360, 'public/uploads/product/1614085558-laptopp3.png', '2021-02-23 13:05:58', '2021-02-23 13:05:58'),
(380, 361, 'public/uploads/product/1614085737-laptop4.jpg', '2021-02-23 13:08:57', '2021-02-23 13:08:57'),
(381, 362, 'public/uploads/product/1614085951-laptop5.png', '2021-02-23 13:12:31', '2021-02-23 13:12:31'),
(382, 363, 'public/uploads/product/1614086090-laptop6.jpg', '2021-02-23 13:14:50', '2021-02-23 13:14:50'),
(383, 364, 'public/uploads/product/1615886268-159385606_2839926092913732_6324867402317546680_n.jpg', '2021-03-16 09:17:48', '2021-03-16 09:17:48'),
(384, 365, 'public/uploads/product/1628060606-Huion-Kamvas-Pro-24-Pen-Display-4-1000x1000.jpg', '2021-08-04 07:03:26', '2021-08-04 07:03:26'),
(385, 366, 'public/uploads/product/1633534434-freddie-marriage-X9Za3VjKIgc-unsplash.jpg', '2021-10-06 15:33:54', '2021-10-06 15:33:54'),
(386, 367, 'public/uploads/product/1633536705-freddie-marriage-X9Za3VjKIgc-unsplash.jpg', '2021-10-06 16:11:45', '2021-10-06 16:11:45'),
(387, 368, 'public/uploads/product/1633536769-1622965634045_0.-removebg-preview.png', '2021-10-06 16:12:49', '2021-10-06 16:12:49'),
(388, 369, 'public/uploads/product/1633536791-1622965634045_0.-removebg-preview.png', '2021-10-06 16:13:12', '2021-10-06 16:13:12'),
(389, 370, 'public/uploads/product/1633578388-bag_fashion.png', '2021-10-07 03:46:28', '2021-10-07 03:46:28'),
(390, 365, 'public/uploads/product/1633585422-demo card by samim.jpg', '2021-10-07 05:43:42', '2021-10-07 05:43:42'),
(391, 365, 'public/uploads/product/1633585422-card.png', '2021-10-07 05:43:42', '2021-10-07 05:43:42'),
(392, 371, 'public/uploads/product/1635941675-olex 3.jpg', '2021-11-03 12:14:35', '2021-11-03 12:14:35'),
(393, 240, 'public/uploads/product/1636093541-4ceb8c54a5bbb3c8941c06cd9cf1e983.jpg_200x200q80.jpg_.webp', '2021-11-05 06:25:41', '2021-11-05 06:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `productrequests`
--

CREATE TABLE `productrequests` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `proCategory` int(11) NOT NULL,
  `proSubcategory` int(11) DEFAULT NULL,
  `proChildCategory` int(11) DEFAULT NULL,
  `proBrand` int(11) DEFAULT NULL,
  `proName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proPurchaseprice` int(11) NOT NULL,
  `proOldprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proNewprice` int(11) NOT NULL,
  `proCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proQuantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aditionalshipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullpaid` tinyint(4) DEFAULT NULL,
  `deal` tinyint(4) DEFAULT NULL,
  `feature` tinyint(4) DEFAULT NULL,
  `bestsell` tinyint(4) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, NULL, NULL, 'Winter Hoodie For Men - Red', 'winter-hoodie-for-men---red', 569, '650', 599, NULL, '<p><br>Fabric: Cotton<br><br>:Color: Same As picture<br><br>Smart &amp; Stylish Design<br><br>N:B: Color can be slightly vary based on your device color &amp; contrast setting<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 07:54:00', '2021-03-09 18:57:23'),
(2, 6, NULL, NULL, NULL, 'Winter Hoodie For Men - Black', 'winter-hoodie-for-men---black', 569, '699', 599, NULL, '<p><br>Fabric: Cotton<br><br>:Color: Same As picture<br><br>Smart &amp; Stylish Design<br><br>N:B: Color can be slightly vary based on your device color &amp; contrast setting<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:04:20', '2021-03-09 18:57:23'),
(3, 6, 0, NULL, NULL, 'Valury Hoodie - Navy Blue', 'valury-hoodie---navy-blue', 1188, '1299', 1250, NULL, '<ul><li><br>&nbsp;&nbsp;&nbsp; Color: Navy Blue<br><br>&nbsp;&nbsp;&nbsp; Fabric: 100% French Terry Cotton<br><br>&nbsp;&nbsp;&nbsp; Small Print on the Chest<br><br>&nbsp;&nbsp;&nbsp; Brand: Valury<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:08:08', '2021-03-09 18:57:23'),
(4, 6, 0, NULL, NULL, 'Gents Winter Hoodie', 'gents-winter-hoodie', 428, '550', 450, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; ফেব্রিক: ফ্লিচ, ইলাস্টিক মিক্সড<br><br>&nbsp;&nbsp;&nbsp; ফেব্রিকেশন: 280-300 GSM<br><br>&nbsp;&nbsp;&nbsp; এক্সপোর্ট কোয়ালিটি<br><br>&nbsp;&nbsp;&nbsp; স্টাইলিশ ও আকর্ষনীয় ডিজাইন<br><br>&nbsp;&nbsp;&nbsp; হাই কোয়ালিটি ফেব্রিক<br><br>&nbsp;&nbsp;&nbsp; বি: দ্র: ইমেজে পণ্যের রঙ দেখুন; আপনার কম্পিউটার রেজ্যুলেশন ও লাইটিং এর জন্য ইমেজ ও প্রকৃত পণ্যের রঙ -এ সামান্য তারতম্য ঘটতে পারে <br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:18:54', '2021-03-09 18:57:23'),
(5, 7, 7, 0, 2, 'Full-Sleeve Cotton Hoodie - Blue', 'full-sleeve-cotton-hoodie---blue', 569, '699', 599, NULL, '<br>&nbsp;&nbsp;&nbsp; Product Type-Hoodies<br><br>&nbsp;&nbsp;&nbsp;&nbsp; Body - Cotton<br><br>&nbsp;&nbsp;&nbsp;&nbsp; GSM - 320<br><br>&nbsp;&nbsp;&nbsp;&nbsp; Main Material- Turkey Cotton.<br><br>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:22:31', '2021-03-09 18:57:23'),
(6, 6, NULL, NULL, NULL, 'Winter Jacket For Men - Red', 'winter-jacket-for-men---red', 474, '599', 499, NULL, '<ul><li><br>&nbsp;&nbsp;&nbsp; Fabrics : Font Side Nylon And inner Side Cotton<br><br>&nbsp;&nbsp;&nbsp; Main Material: 100% Nylon and Cotton<br><br>&nbsp;&nbsp;&nbsp; Brand : SAREZMI Brand original<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:26:35', '2021-03-09 18:57:23'),
(7, 6, 0, NULL, NULL, 'Artificial Lather Jacket for Men - Black and White', 'artificial-lather-jacket-for-men---black-and-white', 1188, '1350', 1250, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; Men\'s Jacket<br><br>&nbsp;&nbsp;&nbsp; Main Material: Artificial Leather<br><br>&nbsp;&nbsp;&nbsp; Machine Wash<br><br>&nbsp;&nbsp;&nbsp; Comfortable to wear<br><br>&nbsp;&nbsp;&nbsp; Classic fit<br><br>&nbsp;&nbsp;&nbsp; Round neck cut<br><br>&nbsp;&nbsp;&nbsp; Long sleeves with adjustable cuffs<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:29:18', '2021-03-09 18:57:23'),
(8, 7, 7, 0, 2, '88 Winter Jacket 88 Winter Jacket', '88-winter-jacket-88-winter-jacket', 523, '599', 550, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; Style : Sporty<br><br>&nbsp;&nbsp;&nbsp; Top Type : Sweatshirt<br><br>&nbsp;&nbsp;&nbsp; Sleeve Length: Long Sleeve<br><br>&nbsp;&nbsp;&nbsp; Sleeve Type : Regular Sleeve<br><br>&nbsp;&nbsp;&nbsp; Season : Winter<br><br>&nbsp;&nbsp;&nbsp; Composition: Poly-cotton<br><br>&nbsp;&nbsp;&nbsp; Fit Type : Regular Fit<br><br>&nbsp;&nbsp;&nbsp; Occasion : Walking, Jogging, Casual Winter Wear and sports.<br><br>&nbsp;&nbsp;&nbsp; Lightweight and comfortable provides you the freedom to enjoy fashion<br><br>&nbsp;&nbsp;&nbsp; Please note: Products color may slightly vary due to sources of your monitor/display setting.<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:33:16', '2021-03-09 18:57:23'),
(9, 7, 7, 0, 2, 'Fashion Winter Jacket', 'fashion-winter-jacket', 428, '500', 450, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; Style : Sporty<br><br>&nbsp;&nbsp;&nbsp; Top Type : Sweatshirt<br><br>&nbsp;&nbsp;&nbsp; Sleeve Length: Long Sleeve<br><br>&nbsp;&nbsp;&nbsp; Sleeve Type : Regular Sleeve<br><br>&nbsp;&nbsp;&nbsp; Season : Winter<br><br>&nbsp;&nbsp;&nbsp; Composition: Poly-cotton<br><br>&nbsp;&nbsp;&nbsp; Fit Type : Regular Fit<br><br>&nbsp;&nbsp;&nbsp; Occasion : Walking, Jogging, Casual Winter Wear and sports.<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:44:22', '2021-03-09 18:57:23'),
(10, 7, 7, 0, 2, 'Western Denim Jacket for Women', 'western-denim-jacket-for-women', 1093, '1250', 1150, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; Quality: Full Export<br><br>&nbsp;&nbsp;&nbsp; Fabrics: Denim<br><br>&nbsp;&nbsp;&nbsp; Fit Description: Regular fit<br><br>&nbsp;&nbsp;&nbsp; Design: Plain<br><br>&nbsp;&nbsp;&nbsp; Regular Cut<br><br>&nbsp;&nbsp;&nbsp; Buttoned Cuffs and hem<br><br>&nbsp;&nbsp;&nbsp; Functional pockets<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:47:30', '2021-03-09 18:57:23'),
(11, 6, 4, 2, NULL, 'Map Gents Half Sleeve Cotton T-Shirt', 'map-gents-half-sleeve-cotton-t-shirt', 385, '455', 405, NULL, '<ul><li><br><br>Map T-Shirt,<br><br>Size: S-M-L-Xl<br><br>Composition: 100% cotton Slub Single Jersey<br><br>Gsm: 160<br><br>Color: White-Black-Dark Navy Blue-Grey Melange.<br><br>Embellishment: Rubber Print &amp; High Density Print<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 08:53:20', '2021-03-09 18:57:23'),
(12, 6, 0, NULL, NULL, 'Men\'s Round Neck T-Shirt', 'men\'s-round-neck-t-shirt', 181, '210', 190, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; হাই কোয়ালিটি কটন ফেব্রিক<br><br>&nbsp;&nbsp;&nbsp; ফেব্রিকেশনঃ 180 GSM<br><br>&nbsp;&nbsp;&nbsp; স্টাইলিশ ডিজাইন<br><br>&nbsp;&nbsp;&nbsp; সাইজঃ M, L, XL<br><br>&nbsp;&nbsp;&nbsp; M-লেন্থঃ ২৭\"/ চেস্টঃ ৩৬\"<br><br>&nbsp;&nbsp;&nbsp; L-লেন্থঃ ২৮\"/ চেস্টঃ ৩৮\"<br><br>&nbsp;&nbsp;&nbsp; XL-লেন্থঃ ২৯\"/ চেস্টঃ ৪০\"<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-12-02 08:56:52', '2021-03-09 18:57:24'),
(13, 6, 4, 2, NULL, 'Half Sleeve Cotton Shirt For Men Black Text Printed', 'half-sleeve-cotton-shirt-for-men-black-text-printed', 228, '255', 240, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; T-SHIRT DETAILS : Band Name: Ultra Fashion Sleeve: Half Sleeve Fabric: 100 % Cotton Type: Round Neck 165 GSM<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 09:00:11', '2021-03-09 18:57:24'),
(14, 6, 3, 0, NULL, 'Means Full Slave Causal Shirt', 'means-full-slave-causal-shirt', 618, '680', 650, NULL, '<ul><li><br><br>&nbsp;&nbsp;&nbsp; ফেব্রিক: ১০০% কটন<br><br>&nbsp;&nbsp;&nbsp; হাই কোয়ালিটি ফেব্রিক<br><br>&nbsp;&nbsp;&nbsp; আধুনিকতার সাথে মানানসই<br><br>&nbsp;&nbsp;&nbsp; টুইস্ট বাটন<br><br>&nbsp;&nbsp;&nbsp; সাইজ: S, M, L, XL, XXL<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-02 09:04:45', '2021-03-09 18:57:24'),
(15, 5, 0, NULL, NULL, 'MSI ALPHA 15 A3DD-003 15.6\" Thin Bezel Full HD 4GB Gaming Laptop - Aluminum Black', 'msi-alpha-15-a3dd-003-15.6\"-thin-bezel-full-hd-4gb-gaming-laptop---aluminum-black', 104500, '120000', 110000, NULL, '<p>AMD 2nd Gen. Ryzen™ 7 3750H processor<br>Windows 10 Home<br>AMD Radeon™ RX 5500M 4GB GDDR6 Graphics<br>15.6\" FHD (1920x1080), 144Hz IPS-Level, FreeSync Display<br>15.6\" FHD (1920x1080), 120Hz IPS-Level, FreeSync Display<br>Per-Key RGB gaming keyboard by SteelSeries (optional)<br>5X bigger Upgraded Giant Speakers<br>High-Resolution Audio ready<br>MSI App Player for seamless gaming experience between mobile and PC<br><br>&nbsp;&nbsp;&nbsp; Model<br>&nbsp;&nbsp;&nbsp; ALPHA 15 A3DD-003<br>&nbsp;&nbsp;&nbsp; Color<br>&nbsp;&nbsp;&nbsp; Aluminum Black<br>&nbsp;&nbsp;&nbsp; Processor<br>&nbsp;&nbsp;&nbsp; AMD Ryzen 7 3750H Processor<br>&nbsp;&nbsp;&nbsp; DISPLAY<br>&nbsp;&nbsp;&nbsp; 15.6\" FHD (1920x1080), 144Hz, IPS-Level<br>&nbsp;&nbsp;&nbsp; GRAPHICS<br>&nbsp;&nbsp;&nbsp; AMD Radeon™ RX 5500M with 4GB GDDR6<br>&nbsp;&nbsp;&nbsp; MEMORY<br>&nbsp;&nbsp;&nbsp; DDR4 Memory Type Max 64GB Max Capacity 2 Slots Number of SO-DIMM Slot<br>&nbsp;&nbsp;&nbsp; DIMENSION (WXDXH)<br>&nbsp;&nbsp;&nbsp; 357.7 x 248 x 27.5 mm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 05:45:51', '2021-03-09 18:57:24'),
(16, 5, 0, NULL, NULL, 'MSI GF63 Thin 10SCSR Laptop - 15.6\" - Core i7 10th Gen - 512GB SSD - 8GB - Black - MSI NOTEBOOK GF63 Thin 10SCSR', 'msi-gf63-thin-10scsr-laptop---15.6\"---core-i7-10th-gen---512gb-ssd---8gb---black---msi-notebook-gf63-thin-10scsr', 152000, '180000', 160000, NULL, '<p>The MSI GF63 10SCSR Laptop is designed for gamers who favor portability slightly more so than performance. Specs-wise, it\'s equipped with a Latest 10th Gen Intel® Core™ i7 processor, 8GB of DDR4 memory, a 512GB NVMe PCIe M.2 SSD, and an NVIDIA GeForce GTX 1650 ti graphics card. Thanks to its dedicated graphics card, you\'ll be able to enable additional graphical options and turn up in-game visual settings to enjoy games at their best. Should you need more storage, you can connect external storage solutions using its multiple USB ports. Other integrated features include an HDMI output, 802.11ac Wi-Fi, Bluetooth 5.0, a backlit keyboard, a webcam, microphones, speakers, and audio jacks. The operating system installed is Free DOS<br><br>&nbsp;&nbsp;&nbsp; Product Type<br>&nbsp;&nbsp;&nbsp; Laptop<br>&nbsp;&nbsp;&nbsp; Model<br>&nbsp;&nbsp;&nbsp; GF63 THIN 10SCSR<br>&nbsp;&nbsp;&nbsp; Chipset Brand<br>&nbsp;&nbsp;&nbsp; NVIDIA<br>&nbsp;&nbsp;&nbsp; Processor<br>&nbsp;&nbsp;&nbsp; Core i7 10th Gen<br>&nbsp;&nbsp;&nbsp; Display<br>&nbsp;&nbsp;&nbsp; 15.6\"<br>&nbsp;&nbsp;&nbsp; Ram<br>&nbsp;&nbsp;&nbsp; 8GB<br>&nbsp;&nbsp;&nbsp; GPU<br>&nbsp;&nbsp;&nbsp; NVIDIA GTX1650 TI 4GB<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 06:08:16', '2021-03-09 18:57:24'),
(17, 5, 0, NULL, NULL, 'XP-Pen Star-G430S Ultra-Thin Digital Drawing Graphics Tablet', 'xp-pen-star-g430s-ultra-thin-digital-drawing-graphics-tablet', 3800, NULL, 4000, NULL, '<p>A 4x3” active area, only 2mm thick, the G430S is as slim as all primary level graphic tablets. Save space on your desk while keeping the same accuracy when playing OSU! Ultra-thin and portable, allowing you hold it in one hand and carry it on the go. Capable of reaching 8192 levels of pressure sensitivity, allowing you to modify, navigate and create with a full pallet of brush and pens. The P01 works just like a real pen, no battery and no charging required, allowing for constant uninterrupted use. Easy to operate and holds up to the tempo of the game. Designed for both right and left hand users, now you can set it to left hand or right hand mode through easy access. Remove all limitations and set out to what you want to be! Designed for OSU! gamers! No need to install our driver software to use the tablet for OSU! Battery free, sensitive brush, allowing you to play with music and enjoy the game. Synchronized with Adobe Acrobat Reader DC signature Application. The G430S can be used with Windows 10/8/7, Mac OS X 10.10 or above, and is compatible with all major graphic applications such as Photoshop, Painter, Adobe Illustrator etc. <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 06:18:11', '2021-03-09 18:57:24'),
(18, 5, 0, NULL, NULL, 'Apple iPad 2020 MYL92CH/A 10.2\" 8th Gen Wi-Fi 32GB Space Gray', 'apple-ipad-2020-myl92ch/a-10.2\"-8th-gen-wi-fi-32gb-space-gray', 39900, NULL, 42000, NULL, '<p>Apple iPad 2020 MYL92CH/A comes with 10.2 inches Retina display, A10 Fusion chip, Touch ID fingerprint sensor and Apple Pay. This iPad os featured with 8MP wide-angle camera, Lightning interface, 1.2MP FaceTime HD front camera, Chip: A12 Bionic (has a neural network engine). This iPad has 32GB storage capacity. It is designed with height: 250.6 mm (9.8 inches), width: 174.1 mm (6.8 inches), 7.5 mm (0.29 inch) thickness and 490 g Weight (1.08 lb wireless LAN model). This iPad is featured with 10.2 inches (diagonal) LED backlight, with multi-touch and IPS technology, 2160 x 1620 pixel resolution, 264 ppi, 500 nits maximum brightness (typical), Here, use wireless LAN to browse the web, or watch videos, up to 10 hours of use. This Apple iPad is compatible with Apple Pencil (1st generation), Smart keyboard. In this iPad, the camera comes with 8-megapixel wide-angle camera, ƒ/2.4 aperture, Live photos, Back-illuminated, Five mirror lens, Hybrid infrared filter, auto focus, Tap to focus. This is also provides Exposure control, HDR photos, Panorama mode (up to 43 million pixels), Continuous snapshot mode, Timekeeping mode, Photo geotagging function. In this iPad, It is also has some exclusive videro features, these are - 1080p HD video recording: 30 fps, 720p slow motion video: 120 fps, Time-lapse video (support anti-shake function), Video anti-shake function, Tap to focus during shooting, Three times video zoom, Back-illuminated, Video geotagging function. The latest iPad 2020 has Touch ID and Fingerprint recognition sensor built into the home button. The the Siri function means only responds to your voice, Use voice to send messages, set reminders, and perform more actions, Listen to and identify songs. This iPad has Lightning interface as well as Smart contact. This iPad is featured with Three-axis gyroscope, Acceleration sensor, Ambient light sensor, Barometer sensor. This latest Apple iPad 2020 MYL92CH/A has 01 Year International Warranty.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 06:20:21', '2021-03-09 18:57:24'),
(19, 10, 0, NULL, NULL, 'CURREN 8331 Stainless Steel Analog Watch For Men - RoseGold and Black', 'curren-8331-stainless-steel-analog-watch-for-men---rosegold-and-black', 1976, NULL, 2080, NULL, 'An analog watch (American) or analogue watch (UK and Commonwealth) is a watch whose display is not digital but rather analog with a traditional clock face. The name is an example of a retronym; it was coined to distinguish analog watches, which had simply been called \"watches\", from newer digital watches. It strictly refers to the design of the display,[1] regardless of the timekeeping technology used within the watch movement or module, although its counterpart, \"digital watch\", usually connotes (in most minds) digital electronics in both<br><br>The shop, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Evaly. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Evaly are not only serving top class products but also are dedicated to acquiring brand loyalty.<br>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 10:58:31', '2021-03-09 18:57:24'),
(20, 10, NULL, NULL, NULL, 'CURREN 8106 Stainless Steel Analog Watch For Men - White and Silver', 'curren-8106-stainless-steel-analog-watch-for-men---white-and-silver', 1501, NULL, 1580, NULL, '<p>An analog watch (American) or analogue watch (UK and Commonwealth) is a watch whose display is not digital but rather analog with a traditional clock face. The name is an example of a retronym; it was coined to distinguish analog watches, which had simply been called \"watches\", from newer digital watches. It strictly refers to the design of the display,[1] regardless of the timekeeping technology used within the watch movement or module, although its counterpart, \"digital watch\", usually connotes (in most minds) digital electronics in both<br><br>The shop, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Evaly. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Evaly are not only serving top class products but also are dedicated to acquiring brand loyalty.<br></p>', NULL, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 11:01:45', '2021-10-03 04:48:33'),
(21, 10, NULL, NULL, NULL, 'Shengke K8047 Leather Analog Watch for Women - Brown', 'shengke-k8047-leather-analog-watch-for-women---brown', 1881, NULL, 1980, NULL, '<p>The Analog Watch, a new trend started in the tech arena, today the most inexpensive and medium-priced watches, used mainly for timekeeping, have quartz movements and a smart and fashionable look. Expensive collectable watches valued more for their elaborate craftsmanship, aesthetic appeal and glamorous design than for simple timekeeping, often have traditional mechanical movements, even though they are less accurate and more expensive than electronic ones.<br><br>The shop, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Evaly. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Evaly are not only serving top class products but also are dedicated to acquiring brand loyalty<br></p>', NULL, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 11:05:47', '2021-10-03 04:48:33'),
(22, 10, NULL, NULL, NULL, 'Stainless Steel Watch for Women - Navy Blue', 'stainless-steel-watch-for-women---navy-blue', 1424, '1600', 1499, NULL, '<p>Place of Origin:Guangdong, China<br>Material:Stainless Steel<br>Feature:Auto Date, Water Resistant<br>Gender:Men\'s<br>Type:Digital, Fashion, Luxury, Quartz, sport<br>Age:2020<br>Movement:Quartz<br>Dial Display:Analog<br>Band Material Type:Stainless Steel<br>Case Material:ALLOY<br>Total Length:24cm<br>Band Width:2.2cm<br>case diameter:4.45cm<br>band material:stainless steel band<br>Net weight:170g<br>color:5 colors choice<br>plating:Environmental plating<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-03 11:11:10', '2021-03-09 18:57:24'),
(23, 1, 0, NULL, NULL, 'Kitchen weight scale', 'kitchen-weight-scale', 361, '590', 380, 'Kwsm', '<p>Kitchen weight scale&nbsp;</p><p><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, '2021-02-04 17:47:56', '2021-03-09 18:57:24'),
(24, 1, 0, NULL, NULL, 'Hot water tap', 'hot-water-tap', 741, '990', 780, 'HWT', '<ul><li>Instant hot water tap&nbsp;</li><li>For wall use only&nbsp;</li><li><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 07:49:26', '2021-03-09 18:57:24'),
(25, 2, 0, NULL, NULL, '2 Layer Dish Drainer Rack Stainless Steel', '2-layer-dish-drainer-rack-stainless-steel', 941, '1190', 990, 'DRSS', '<p style=\"text-align: left;\">⚫ Made of high quality, durable stainless steel</p><p style=\"text-align: left;\">⚫ Easy to assemble</p><p style=\"text-align: left;\">⚫ Curved handles make it easy to lift</p><p style=\"text-align: left;\">⚫ Higher stability due to non-slip base</p><p style=\"text-align: left;\">⚫ Side-mounted cutlery holder</p><p style=\"text-align: left;\">⚫ Bottom Plastic tray for easy cleaning</p><p style=\"text-align: left;\">⚫ Dimensions: 39x11x25cm</p><p style=\"text-align: left;\">⚫ Looking Smart</p><p style=\"text-align: left;\">⚫ Very Good quality</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:13:13', '2021-03-09 18:57:24'),
(26, 2, 0, NULL, NULL, '3 Layer Dish Drainer Rack Stainless Steel', '3-layer-dish-drainer-rack-stainless-steel', 1701, '1990', 1790, 'DRSS', '<p>• Kitchen Dish Cup Drying Rack:</p><p>• Dish Rack System features sturdy construction and space saving design with Chrome with easy to clean removable tray and flatware holder.</p><p>• Use the top tier for dishes, bottom tier for saucers, cups, bowls etc, side rack for glasses and flatware holder for flatware.</p><p>• Perfect for any home, camper, dor and so on.100% brand new and high quality.</p><p>• Each item has been inspect before shippment</p><p>• Product is strong and smart oweing to a rolling process.</p><p>• A waterspout makes the dish hygienic and clean.</p><p>• Dimension :21.7\"*10\"*20.4\" L*W*H</p><p>• Package :1X Dish Rack</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:20:13', '2021-03-09 18:57:24'),
(27, 2, NULL, NULL, NULL, '6 Inch Non Stick Cake Pan Bread Mold - Red and Black', '6-inch-non-stick-cake-pan-bread-mold---red-and-black', 171, '320', 180, 'CPBM', '<p>• Product Type:&nbsp;Non Stick Cake Pan Bread Mold</p><p>• Heavy-duty steel construction prevents warping</p><p>• Easy to clean</p><p>• Won’t stick</p><p>• This professional weight formed metal bake ware is a wonderful addition to any kitchen.&nbsp;</p><p>• Easy to clean&nbsp;</p><p>• Long lasting&nbsp;</p><p>• Beautiful looking&nbsp;</p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:34:48', '2021-11-03 05:46:34'),
(28, 2, NULL, NULL, NULL, '12 Piece Cake Decorating Set Frosting Icing Piping Bag Tips with Steel Nozzles. Reusable & Washable', '12-piece-cake-decorating-set-frosting-icing-piping-bag-tips-with-steel-nozzles.-reusable-&-washable', 89, '160', 94, 'CDS', '<p>• 100% New and in high quality</p><p>• Includes 12 stainless steel nozzles and one sturdy coupler</p><p>• Great for decorating cakes and desserts</p><p>• Made of stainless steel and plastic.</p><p>• Can be washed and reused.</p><p>• Great addition to your baking collection The 6 piece cake decorating set is a great addition to any baking set. It is used for decorating cakes and desserts.</p><p>• The nozzles are made of high quality stainless steel and the coupler is made of food grade plastic.</p><p>• Specifications It is a set 6 of 6 nozzels with one coupler.</p><p>• SOLD BY Way Beyond Great for decorating cakes and desserts Made of stainless steel</p><p>• Ideal for home kitchen cake decorating</p><p>• Made from quality stainless steel material</p><p>• 12 Stainless steel nozzles</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:40:24', '2021-03-09 18:57:24'),
(29, 2, NULL, NULL, NULL, '15 Cavity Rose Flower Mould Silicone Cake Chocolate Cookie Baking Tray Candy mould', '15-cavity-rose-flower-mould-silicone-cake-chocolate-cookie-baking-tray-candy-mould', 180, '400', 189, NULL, '<p>• Material：Silicone</p><p>• Mould Size: About 22.8x10.6x1.5cm</p><p>• Individual Size: About 2.7x2.7x1.5cm</p><p>• Wide range temperature tolerance: -40~+230℃</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:50:54', '2021-03-09 18:57:24'),
(30, 1, NULL, NULL, NULL, '360 Degree Magic Floor Cleaning Spin Mop With Removable Basket', '360-degree-magic-floor-cleaning-spin-mop-with-removable-basket', 945, '1240', 995, 'FCSM', '<p><span style=\"font-size: 1rem;\">• Exclusive bucket design has built-in wringer that allows for hands-free wringing. Bucket with exclusive design wringer for easily wringing the tip of the foot. Deep-cleaning microfibre removes and absorbs tough dirt and grime. Mop made entirely of microfiber to lift, scour and absorb dirt. High-quality foot pedal designed to activate spin wringing, allowing the level of moisture to be controlled. Pedal of high quality designed to operate the wringer and dose the moisture level of the mop.</span><br></p><p>• Hanger with strands doubled over the hanger</p><p>• Plastic claws attached to the strands</p><p>• A pouch as with many professional flat mops</p><p>• Screwing as with the classic yarn mop</p><p>• Velcro as with many professional flat mops</p><p>• Mop Bucket Capacity: Approximately 15 liters</p><p>• Mop Bucket Size: 51.5x29.5x26.5cm</p><p>• Mop Handle Length: 120 cm</p><p>• Wheel is available (2 Big wheel)</p><p>• Color: Pest and Brown</p><p>• Packaging: Total 2 Microfiber Mop heads (Mop Refill)</p><p>• Convenient washing bottle</p><p>• A long with a suitable handle for easy to move</p><p>• Easy Drainage System</p><p>• The mop heads are made of deep-cleaning microfiber</p><p>• 360° rotating heads allow you to easily get into those hard-to-reach places</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 08:59:14', '2021-03-09 18:57:24'),
(31, 1, NULL, NULL, NULL, '360 Degree Magic Floor Cleaning Spin Mop With Removable Basket', '360-degree-magic-floor-cleaning-spin-mop-with-removable-basket', 945, '1140', 995, 'FCSM', '<p><span style=\"font-size: 1rem;\">• Exclusive bucket design has built-in wringer that allows for hands-free wringing. Bucket with exclusive design wringer for easily wringing the tip of the foot. Deep-cleaning microfibre removes and absorbs tough dirt and grime. Mop made entirely of microfiber to lift, scour and absorb dirt. High-quality foot pedal designed to activate spin wringing, allowing the level of moisture to be controlled. Pedal of high quality designed to operate the wringer and dose the moisture level of the mop.</span><br></p><p>• Hanger with strands doubled over the hanger</p><p>• Plastic claws attached to the strands</p><p>• A pouch as with many professional flat mops</p><p>•Screwing as with the classic yarn mop</p><p>• Velcro as with many professional flat mops</p><p>• Mop Bucket Capacity: Approximately 15 liters</p><p>• Mop Bucket Size: 51.5x29.5x26.5cm</p><p>• Mop Handle Length: 120 cm</p><p>• Wheel is available (2 Big wheel)</p><p>• Color: Pest and Brown</p><p>• Packaging: Total 2 Microfiber Mop heads (Mop Refill)</p><p>• Convenient washing bottle</p><p>• A long with a suitable handle for easy to move</p><p>• Easy Drainage System</p><p>• The mop heads are made of deep-cleaning microfiber</p><p>• 360° rotating heads allow you to easily get into those hard-to-reach places</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:07:12', '2021-03-09 18:57:25'),
(32, 10, 0, NULL, NULL, 'A1 Single SIM Supported Wireless Bluetooth Smartwatch', 'a1-single-sim-supported-wireless-bluetooth-smartwatch', 561, '730', 590, 'WBS', '<p><span style=\"font-size: 1rem;\">• Design Like Apple Watch - i watch More Functions than Smart Band Fitness Tracker Amazfit - A1 Smart Watch Android Smart Watch Mobile • Watch Phone - Support iOS and Android Smartphones</span><br></p><p>• SIM Support (NANO SIM)</p><p>• Micro SD Card Supported ( upto 32GB)</p><p>• 1.5 Megapixel Camera</p><p>• Bluetooth 4.0</p><p>• Call, SMS, Contacts,</p><p>• Facebook, Whatsapp , Twitter, Browser</p><p>• Gallery, Sound Recorder, Calender,Calculator, Music Player</p><p>• Sync- You can sync the smartwatch with your iOS or Android Smartphone.</p><p>• 1.56 Inch TFT LCD Touch Screen</p><p>• 240x240 Resolution</p><p>• Pedometer</p><p>• Sleep Monitor</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:11:24', '2021-03-09 18:57:25'),
(33, 4, 0, NULL, NULL, 'Air Filled Rubber Cot Sheet for baby  - Multi Color', 'air-filled-rubber-cot-sheet-for-baby---multi-color', 1606, '1880', 1690, 'RCS', '<h4><b>Product details of Farlin Air Filled Rubber Cot Sheet - Multi Color</b></h4><p>• Easily passing air between baby and this special matt</p><p>• Waterproof Cot Sheet</p><p>• Super soft</p><p>• Made of waterproof material</p><p>• Use for a changing mat or cot sheet</p><p>• 90 x 60cm</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:33:30', '2021-03-09 18:57:25'),
(34, 5, NULL, NULL, NULL, 'Airpods2', 'airpods2', 1853, '2170', 1950, 'AP', '<p>• Master copy</p><p>• Designed by Apple</p><p>• Automatically on, automatically connected.</p><p>• Easy setup for all your android and Apple devices</p><p>• Quick access to Siri by saying “Hey Siri” or setting up double-tap.</p><p>• Double-tap to play or skip forward.</p><p>• Charges quickly in the case.</p><p>• Case can be charged either wirelessly using a Qi-compatible charging mat or with the Lightning connector.</p><p>• Rich, high-quality audio and voice.</p><p>• Seamless switching between devices.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:37:03', '2021-03-09 18:57:25'),
(35, 4, 0, NULL, NULL, 'Baby Bouncer Relax Baby Chair', 'baby-bouncer-relax-baby-chair', 1131, '1390', 1190, 'BRBC', '<h2><b>Product details of Baby Bouncer</b></h2><p>• Soft mesh support conforms to a newborns baby</p><p>• Adjusts to three positions: Play, Rest and Sleep</p><p>• Full support to your baby’s back, neck and head</p><p>• Add comfort to baby whilst bathing</p><p>• Compact, lightweight and easy to carry</p><p>• Integrated soft feet help to prevent slipping</p><p>• Anti-skid pads keep sitter firmly in place</p><p>• Machine washable cover is easy to remove and clean</p><p>• Suitable for children 0-24 months (8-29 lbs.)</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:51:26', '2021-03-09 18:57:25'),
(36, 4, NULL, NULL, NULL, 'Baby Cap Towel', 'baby-cap-towel', 252, '430', 265, 'BCT', '<h4><b>Product details of Sky Blue Cotton Cap Towels for Baby</b></h4><p>• Product Type: Towel</p><p>• Color: Sky Blue</p><p>• Main Material: Cotton</p><p>• Gender: Baby</p><p>• Good quality product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 09:54:55', '2021-03-09 18:57:25'),
(37, 4, 0, NULL, NULL, 'Baby Cap Towel', 'baby-cap-towel', 252, '430', 265, 'BCT', '<h5><b>Product details of Sky Blue Cotton Cap Towels for Baby</b></h5><div>• Product Type: Towel</div><div>• Color: Sky Blue</div><div>• Main Material: Cotton</div><div>• Gender: Baby</div><div>• Good quality product</div>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:01:58', '2021-03-09 18:57:25'),
(38, 5, NULL, NULL, NULL, 'Baseus Bipow Quick Charge Power Bank PD+QC 10000mAh 18W - Black', 'baseus-bipow-quick-charge-power-bank-pd+qc-10000mah-18w---black', 930, '1240', 979, 'PB', '<p>• Charge your USB-C phones and recent Apple mobile devices at high speed with max 18W Power Delivery charging. It just takes 30 minutes to fast charge your smartphone to 50%.</p><p>• It supports QC 3.0 / HUAWEI FCP / Apple 2.4A fast charging, working flawlessly with the full range of USB-C and USB-A phones, tablets, and more.</p><p>• Baseus is smaller than most of 10000mAh power banks, so it fits in virtually any bag or pocket.</p><p>• Both USB-C and Micro USB ports support the maximum input of 18W. Just 3.5 hours to get to 100% full power.</p><p>• The 10000mAh capacity meets your daily charging demand. It can charge your iPhone XS up to 2.4 times, a Galaxy S10 up to 1.7 times, or a HUAWEI P30 for 1.6 times.</p><p>• Brand: Baseus</p><p>• Model: N1PD</p><p>• Battery Capacity 10,000mAh</p><p>• Charging Ports: 1 x USB Type-C1 x USB Type-A1 x Micro-USB</p><p>• Fast Charging Technology:USB Power DeliveryQualcomm Quick Charge 3.0HUAWEI FCP</p><p>• Output USB Type-C Port: 5V⎓3A / 9V⎓2A / 12V⎓1.5A (USB Power Delivery Max 18W)(Compatible with Quick Charge 3.0, HUAWEI FCP, and Apple 2.4A Fast Charging)</p><p>• USB Type-A Port: 5V⎓3A / 9V⎓2A / 12V⎓1.5A (Quick Charge 3.0) (Compatible with HUAWEI FCP and Apple 2.4A Fast Charging)</p><p>• Input USB Type-C : 5V⎓3A / 9V⎓2A / 12V⎓1.5A (USB Power Delivery, Quick Charge 3.0 and HUAWEI FCP)</p><p>• Micro USB : 5V⎓2A / 9V⎓2A / 12V⎓1.5A (Quick Charge 3.0 and HUAWEI FCP)</p><p>• Recharging Time 3.5 – 4 Hours (via 18W Power Delivery Charger or QC 3.0 Charger)6 Hours (via 5V⎓2A Charger)</p><p>• Very nice and valuable product&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:07:39', '2021-03-09 18:57:25'),
(39, 1, NULL, NULL, NULL, 'BASEUS Ocean Air Circulation Fan 4 Wind Speeds Automatic Frequency Conversion', 'baseus-ocean-air-circulation-fan-4-wind-speeds-automatic-frequency-conversion', 1558, '1850', 1640, 'ACF', '<p>• 4 wind speeds adjustable</p><p>• The fourth speed capable of automatically varying frequency</p><p>• 3 blades, more uniform wind</p><p>• 55° up and down angle adjustment</p><p>• Fan mask can be removable and washable</p><p>• 35dB in breeze mode, low noise, quieter and more comfortable</p><p>• Built-in li-polymer battery, it can still work after power off</p><p>• Smart Looking&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:11:48', '2021-03-09 18:57:25'),
(40, 5, NULL, NULL, NULL, 'Baseus Qpow 3A 15w Digital Display Power Bank 10000mAh With Type-C Cable', 'baseus-qpow-3a-15w-digital-display-power-bank-10000mah-with-type-c-cable', 1229, '1580', 1294, 'PB', '<p>• Designed with charging cable</p><p>• Designed with the iP/type c charging cable, never worry about forgetting to take the cable when you go out.</p><p>• Two-in-one functionality</p><p>• Capacity: 10000mAh</p><p>• It’s both a charging cable and a lanyard.</p><p>• 15W high power output</p><p>• 15W output, quick charging and never wait again.</p><p>• Dual inputs and four outputs</p><p>• Dual inputs and four outputs, support simultaneous power supply for multiple devices, what you need is only one cable when you go out.</p><p>• LED mirror digital display</p><p>• LED digital display enables the real-time viewing of the remaining battery level.</p><p>• Very nice and valuable product&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:15:50', '2021-03-09 18:57:25'),
(41, 4, 0, NULL, NULL, 'BATH TUB KIDS SWIMMING Pool with Pumper 45', 'bath-tub-kids-swimming-pool-with-pumper-45', 1216, '1410', 1280, 'SP', '<p>• Size:45\"</p><p>• Shape:Round</p><p>• Product Type: Bathtub</p><p>• Color: Multicolour</p><p>• Water capacity: 9 gallons</p><p>• Inflatable</p><p>• For Kids</p><p>• Intex Wet Set Baby Pool Bath tub is just perfect to have fun with your kid in water.</p><p>• The Baby Pool Tub is soft &amp; cute and perfect for baby\'s bath-time.</p><p>• Intex baby pool has 3 air chambers with double valves.</p><p>• Soft inflatable floor</p><p>• Ideal play mate for children till the age of 4.</p><p>• Its a real fun time for bay bathing</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:21:37', '2021-03-09 18:57:25'),
(42, 2, NULL, NULL, NULL, 'BBQ Grill Foldable Portable Barbecue Charcoal Stand Garden Party Outdoor Folding Camping Stove Picnic Cook', 'bbq-grill-foldable-portable-barbecue-charcoal-stand-garden-party-outdoor-folding-camping-stove-picnic-cook', 1321, '1980', 1390, 'BFCS', '<p>• Product Name:BBQ Stand</p><p>• Colour: Black</p><p>• Product Details: 36*29*7.5 CM</p><p>• With Handle and Net.</p><p>• Country of Origin: China</p><p>• BBQ Fuel Type:Charcoal</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:26:12', '2021-03-09 18:57:25'),
(43, 2, NULL, NULL, NULL, 'Blender and spice grinder Nima 2 in 1', 'blender-and-spice-grinder-nima-2-in-1', 903, '1200', 950, NULL, '<p>• With Nima 2 in one you can easily make spices and any juice.</p><p>• Any dry, wet and watery spice powder and any fruit juice can be made very easily.</p><p>•&nbsp;<span style=\"font-size: 1rem;\">Attractive design.</span></p><p>•&nbsp;<span style=\"font-size: 1rem;\">Black cumin, dried chillies, cumin, fenugreek, mustard, black pepper, cardamom, cinnamon, any kind of pulses, black cumin, any kind of nuts etc. can be powdered in just a few seconds to 1 minute.</span></p><p>•&nbsp;<span style=\"font-size: 1rem;\">You can easily make mango, papaya, malt, pineapple, apple, orange, any juice.</span></p><p>\r\n</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:31:54', '2021-03-09 18:57:25'),
(44, 7, 8, 0, 3, 'Block Printed Cotton Unstitched Three Piece For Women', 'block-printed-cotton-unstitched-three-piece-for-women', 561, '1520', 590, 'TP', '<p><span style=\"font-size: 1rem;\">• Block Printed Cotton Salwar Kamiz</span><br></p><p>• Cloth: Voel Cloth.</p><p>• Kamiz: Cotton with block print.</p><p>• Dupatta: Pure Shiffon.</p><p>• Salwar: Cotton Voel Cloth.</p><p>• Perfect and comfortable thin cloth.</p><p>• Regular usable product.</p><p>• Simple and comfortable to use.</p><p>• Constructive colors.</p><p>• Fit for everyone.</p><p>• Free size given.</p><p>• Fashionable Attire</p><p>• Ideal wear for any gathering or event</p><p>• Qualityful textures</p><p>• An uncommon present for the extraordinary individu</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:35:43', '2021-03-09 18:57:25'),
(45, 2, 0, NULL, NULL, 'Bosch Hand Mixer and egg beater cake cream mixer', 'bosch-hand-mixer-and-egg-beater-cake-cream-mixer', 1511, '1990', 1590, 'CCM', '<p><span style=\"font-size: 1rem;\">• 220V-240V 50/60Hz</span><br></p><p>• 450 Watt</p><p>• Pure Copper and High torque motor</p><p>• Spiral Radiating Fin</p><p>• Five gear speed regulating function</p><p>• A Key acceleration function</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 10:48:31', '2021-03-09 18:57:25'),
(46, 2, 0, NULL, NULL, 'Cake Cutter Round shape', 'cake-cutter-round-shape', 423, '620', 445, 'CCRS', '<p>• Product Type: Round Cake Cater</p><p>• Durable and Flexible</p><p>• Easy to use&nbsp;</p><p>• Long lasting&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:07:10', '2021-03-09 18:57:25'),
(47, 2, 0, NULL, NULL, 'Cake Decorating Turn Table 28cm - White', 'cake-decorating-turn-table-28cm---white', 147, '430', 155, 'CDTT', '<h4><b>Product details of Cake Decorating Turn Table 28cm - White</b></h4><p>• Decorating Turntable and Cake Stand</p><p>• Rotates 360 Degrees</p><p>• Easy to Clean</p><p>• Material: Plastic</p><p>• Package Contents: 1-Piece Decorating Stand (28cm)</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:11:47', '2021-03-09 18:57:25'),
(48, 2, 0, NULL, NULL, 'Cake Decorating Turntable', 'cake-decorating-turntable', 171, '350', 180, 'CDTT', '<p>• Cake Tools</p><p>• Stocked, Eco-Friendly</p><p>• Turntables</p><p>• Made byPlastic</p><p>• Certified byCIQ</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:20:53', '2021-03-09 18:57:25'),
(49, 2, 0, NULL, NULL, 'Cake Smoother', 'cake-smoother', 366, '590', 385, 'CS', '<p>• Cake Smoother</p><p>• Color: White</p><p>• Main Materials: Plastic</p><p>• Easy to use</p><p>• High quality product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:22:49', '2021-03-09 18:57:25'),
(50, 2, 0, NULL, NULL, 'Car and Home Massage Pillow - Brown', 'car-and-home-massage-pillow---brown', 922, '1180', 970, 'MP', '<h4><b>Product details of Car and Home Massage Pillow - Brown</b></h4><p>• The square design</p><p>• Light and lovely</p><p>• Beautiful novel</p><p>• The perfect tapping combined with kneading massage</p><p>• Easy to use the switch design</p><p>• Apply to the neck</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:26:02', '2021-03-09 18:57:26'),
(51, 4, 0, NULL, NULL, 'Car shape kids tent house with 50 ball', 'car-shape-kids-tent-house-with-50-ball', 2518, '2975', 2650, 'CS', '<h1><b>Product Description</b></h1><p><span style=\"font-size: 1rem;\">• Play Police Vehicle</span><br></p><p>• This play tent sets up quickly and is very sturdy</p><p>• Created with durable, soft and colorful materials</p><p>• Lightweight and portable for easy play anywhere with a carry case</p><p>• Features 2 large openings doors for easy entry and exit</p><p>• Great visibility and air flow with a full 360°mesh window</p><p>• A sports car wheel and the 110 design,really like a police car</p><p>• Ages 1 and up,Playhut tent fits up to 2 kids</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:29:05', '2021-03-09 18:57:26'),
(52, 1, 0, NULL, NULL, 'Coconut Fall Romantic single Hurricane Lamp', 'coconut-fall-romantic-single-hurricane-lamp', 352, '850', 370, 'HL', '<p>• Its hand madeby Bangladeshi Rural people.</p><p>• Its Housing materials made by coconut Fall and wood.</p><p>• Electric cable with bulb</p><p>• Perfectly fit in as your home décor</p><p>• It will bring in some extra coziness</p><p>• Beautiful looking</p><p>• Its use in home, office, restaurent etc.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:32:12', '2021-03-09 18:57:26'),
(53, 4, 0, NULL, NULL, 'Cotton Katha for Baby - 1pcs - Multi-color', 'cotton-katha-for-baby---1pcs---multi-color', 128, '350', 135, 'CK', '<h4><b>Product details of Combo Pack of 10Pcs Baby Katha - Multi-Color</b></h4><p>• Please message me for your choice color&nbsp;</p><p>• Product Type: Baby Katha</p><p>• Color : Multi-Color</p><p>• Materials: Cotton</p><p>• Soft and comfortable use for baby</p><p>• Random10pcs in a set</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:35:07', '2021-03-09 18:57:26'),
(54, 11, 0, NULL, NULL, 'Digital Blood pressure Machine bp machine', 'digital-blood-pressure-machine-bp-machine', 1473, '1780', 1550, 'BP', '<h3><b>Product details of Digital Blood pressure Machine</b></h3><p>• Best Quality</p><p>• Brand:Race</p><p>• Color Display</p><p>• Speaking option</p><p>• Using the oscillometric blood pressure measurement,accurately measure the blood pressure.</p><p>• LCD digital display legible.</p><p>• Intelligent pressure.</p><p>• WHO warning message function.</p><p>• Double mode,each of the 99 set of measurements of memory.</p><p>• No operation in 1 minutes automatic shutdown.</p><p>• The over pressure protection function.</p><p>• An irregular heartbeat tips.</p><p>• The clock feature.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-06 11:40:02', '2021-03-09 18:57:26'),
(55, 2, 0, NULL, NULL, 'Digital Kitchen Weight Scale - White', 'digital-kitchen-weight-scale---white', 304, '990', 320, 'KWS', '<p>• 2 pcs Battery free&nbsp;</p><p>• East to use</p><p>• High quality</p><p>• Good quality &amp; brand new</p><p>• Durable &amp; lightweight</p><p>• Maximum Weight : 10 kg</p><p>• Running By Battery</p><p>• Color : White</p><p>• User Friendly</p><p>• Looking Smart</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 07:59:32', '2021-03-09 18:57:26'),
(56, 4, 0, NULL, NULL, 'Double Feeder Warmer Multicolor', 'double-feeder-warmer-multicolor', 561, '800', 590, 'DFW', '<p>• Product Type: Warmer Feeder</p><p>• Main Material:High-Grade PVC, Foam, PE Liner</p><p>• No Side effect for baby</p><p>• No possibility of liquids leakage</p><p>• It keeps hot continuously four (04) hours</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 08:02:11', '2021-03-09 18:57:26'),
(57, 10, 0, NULL, NULL, 'DT78 Full Round IP68 Waterproof Smart Watch Bluetooth Smart Watch with Heart Rate Sensor sleep Monitor Blood Pressure Mileage Blood Oxygen', 'dt78-full-round-ip68-waterproof-smart-watch-bluetooth-smart-watch-with-heart-rate-sensor-sleep-monitor-blood-pressure-mileage-blood-oxygen', 1900, '2210', 2000, 'BSW', '<p>• 1.3 inch 240 x 240 resolution, full-round HD screen display</p><p>• Brand :DT NO.1</p><p>• Model : DT78</p><p>• Bluetooth Version:BT 4.0 or above</p><p>• Compatible OS :Android 5.1 or above , iOS 10.0 or above</p><p>• Operating Mode : Full Touch+Press Button</p><p>• APP Name : Wearfit2.0</p><p>• App Language English,Czech,German,Spanish,French,Italian,Japanese,Korean,Portuguese,Russian,Thai, Simplified Chinese,Traditional Chinese.</p><p>• Smart Looking&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 08:10:30', '2021-03-09 18:57:26'),
(58, 11, NULL, NULL, NULL, 'Dual Speed Portable Mini Electric Pedal Double Threads Rewind Swing Machine', 'dual-speed-portable-mini-electric-pedal-double-threads-rewind-swing-machine', 945, '1140', 995, 'ESM', '<p><span style=\"font-size: 1rem;\">• Mini desktop used sewing machine offers double thread sewing, neat and straight stitch.</span><br></p><p>• Automatic winding of bobbin thread and upper thread, easy to replace.</p><p>• The speed can be switchable: low or high speed.</p><p>• With a light, convenient to thread the needle.</p><p>• Come with a pedal, you can choose hand switch or foot pedal to control.</p><p>• Lightweight, compact and portable, can save more space and man power.</p><p>• Can be powered by power adapter or batteries (not included).</p><p>• Perfect for craftspeople or DIY enthusiasts to use at home.</p><p>• 100% Original product.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 08:12:50', '2021-03-09 18:57:26'),
(59, 2, NULL, NULL, NULL, 'Indian Orange Brand Blender Mixer & Grinder Jumbo Size Heavy Dutty 1000 Watt', 'indian-orange-brand-blender-mixer-&-grinder-jumbo-size-heavy-dutty-1000-watt', 4940, '5900', 5200, 'OBM1000W', '<h4><b>Indian Orange Brand Blender Mixer &amp; Grinder Details:-</b></h4><p>• Made in:India</p><p>• Power Consumption:1000 Watts</p><p>• Rating&nbsp;:30 Min</p><p>• Speed:18000 RPM (at no load)</p><p>• Speed Control&nbsp;:3 Speeds with Incher</p><p>• Material of Housing&nbsp;:ABS Plastic</p><p>• Blade:S.S Polished</p><p>• Liquidizer Capacity:2.0 Ltr</p><p>• Grinding Capacity&nbsp;:1.75 Ltr</p><p>• Voltage&nbsp;:230 v.a.c/50Hz</p><p>• Jar 1:Liquidiser jar (2 ltr)</p><p>• Jar-2:Dry grinder jar (1.75 Ltr)</p><p>• Jar-3:Chutney Jar (75Gms)</p><p>• Motor:Universal Heavy duty</p><p>• Dome&nbsp;:Polycarbonate</p><p>• Jar Materials:100% Stainless Steel</p>', NULL, '7', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 08:53:03', '2021-10-07 06:42:15'),
(60, 1, NULL, NULL, NULL, 'Ocean Automatic Electric Kettle 1.7LTR. Black', 'ocean-automatic-electric-kettle-1.7ltr.-black', 1815, '2240', 1910, 'OEKB16B', '<h3><b>Ocean Automatic Electric Kettle Details</b></h3><p>• Automatically Turns Off When Water Boils.</p><p>• Concealed Heating Element.</p><p>• External water level indicator filter</p><p>• Automatic and Manual switch off</p><p>• 360 degree electric kettle</p><p>• Overheat protection</p><p>• Indicator light</p><p>• Exclusive design</p><p><span style=\"font-size: 1rem;\">•&nbsp; Capacity 1.7 litre</span></p><p>• Water Gauge</p><p><br></p>', NULL, '6', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:10:46', '2021-10-03 05:35:47'),
(61, 1, NULL, NULL, NULL, 'Ocean Vaccum Flask 0.75LTR. With Strip', 'ocean-vaccum-flask-0.75ltr.-with-strip', 713, '920', 750, 'OVF750C', '<p>• Feature: Portable, Sustainable, Temperature Display</p><p>• Drink ware Type: Vacuum Flasks &amp; Thermoses</p><p>• Metal Type: Stainless Steel</p><p>• Thermal Insulation Performance: 12-24 hours</p><p>• Bottle Type: Vacuum</p><p>• Shape: Straight Cup</p><p>• Production: Vacuum Flasks</p><p>• Product name: Smart water bottle thermal travel coffee mug with temperature display</p><p>• Structure: Double wall s/s vacuum structure</p><p>• Drinkware Type: Smart mug</p><p>• Capacity: 750ml</p><p>• Single package size: 7.2X7.2X24 cm</p><p>• Single gross weight: 0.300 kg</p><p>• Function: Keep drinks hot or cold for 24hrs</p><p>• Usage: Home, Outdoor, Travel</p><p>• Color available: White, Red &amp; Black</p><p>• Applicable People: All</p><p>• Certification: LFGB, Sgs</p><p>• Place of Origin: China</p><p>• Food grade material, BPA free</p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:15:49', '2021-10-03 05:35:47'),
(62, 2, NULL, NULL, NULL, 'Ocean Electric Air Fryer 3.5LTR. 1450W', 'ocean-electric-air-fryer-3.5ltr.-1450w', 7334, '7900', 7720, 'OAF5010', '<p>• Rapid Air Technology.\r\n</p><p>• Fries without oil.\r\n</p><p>• Upto 80% less fat.\r\n</p><p>• Pullout Food Basket.\r\n</p><p>• Temperature Control, Timerr.\r\n</p><p>• Capacity-3.5 Lt.\r\n</p><p>• Crispy Fries within 12 minutes.\r\n</p><p>• 1 year warannty.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:24:26', '2021-03-09 18:57:26'),
(63, 2, NULL, NULL, NULL, 'Ocean Electric Induction Cooker IHW', 'ocean-electric-induction-cooker-ihw', 4579, '5100', 4820, 'IIC1400', '<h2><b>IHW Induction Cooker IIc1400 Details\r\n</b></h2><p>• ULTRA SLIM SILVER DESIGN + AUTO SHUT OFF FEATURE Unit Stops heating immediately without a pan.</p><p>• INSTANT HEAT Dramatically Reduces Cook Time + SUPERB SIMMER – 10 Convenient Precise Temperature Settings Ranging from 140 degrees Fahrenheit – 460 degrees Fahrenheit + 15 Levels of Power Ranging from 100W-1500W for maximum control during cooking.</p><p>• BRIGHT LCD DISPLAY with High Sensor Touch Controls &amp; Child-Lock Safety &amp; Diagnostic System.</p><p>• USEFUL BUILT-IN TIMER keeps track of the cooking for you, adjustable to the minute up to 4 hours (240 minutes).</p><p>• PROPER COOKWARE REQUIRED. Designed to meet all North American Electrical Standards 120V – 60 Hz AC, ETL approved.</p><p>\r\n</p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:44:07', '2021-10-03 05:35:47');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(64, 2, NULL, NULL, NULL, 'Ocean Electric Meat Grinder 1600W', 'ocean-electric-meat-grinder-1600w', 8541, '9500', 8990, 'OMG3250R', '<h4><b>Ocean Electric Meat Grinder 1600W Details</b></h4><p>• Powerful Motor 650 watt.\r\n</p><p>• Different cutting blades\r\n</p><p>• Stainless steel blade\r\n</p><p>• Large/ Medium/ Fine/ Coarse cutting blade\r\n</p><p>• 150 kg par hours.\r\n</p><p>• Speed of blade-193/225r par minutes</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:47:49', '2021-03-09 18:57:26'),
(65, 2, NULL, NULL, NULL, 'Shahara Blender Elegent (3 IN 1) 750W Red & Black', 'shahara-blender-elegent-(3-in-1)-750w-red-&-black', 7695, '8700', 8100, 'ELEGANTRB', '<h4><b>Shahara Blender Elegent (3 IN 1) 750W Red &amp; Black Details</b></h4><p>• Fastest &amp; Finest Mixing Grinding\r\n</p><p>• Powerful Motor\r\n</p><p>• Superior Jars\r\n</p><p>• Cascade body design\r\n</p><p>• Auto cut off protection for safety of motor life\r\n</p><p>• Detachable blade unit for easy cleaning\r\n</p><p>• Voltage: 230V AC, 50Hz\r\n</p><p>• Power Consumption: 750W\r\n</p><p>• R.P.M: Approx 18000 No Load\r\n</p><p>• Rating: 30 Minutes\r\n</p><p>• Motor: Universal Heavy Duty Dynamically Balanced\r\n</p><p>• Speed: Three Speed with Incher.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:51:51', '2021-03-09 18:57:27'),
(66, 2, NULL, NULL, NULL, 'Shahara Blender Elegent (3 IN 1) 750W White & Blue', 'shahara-blender-elegent-(3-in-1)-750w-white-&-blue', 7695, '8700', 8100, 'ELEGANTRB', '<h4><b>Shahara Blender Elegent (3 IN 1) 750W White &amp; Blue Details\r\n</b></h4><p>• Fastest &amp; Finest Mixing Grinding\r\n</p><p>• Powerful Motor\r\n</p><p>• Superior Jars\r\n</p><p>• Cascade body design\r\n</p><p>• Auto cut off protection for safety of motor life\r\n</p><p>• Detachable blade unit for easy cleaning\r\n</p><p>• Voltage: 230V AC, 50Hz\r\n</p><p>• Power Consumption: 750W\r\n</p><p>• R.P.M: Approx 18000 No Load\r\n</p><p>• Rating: 30 Minutes\r\n</p><p>• Motor: Universal Heavy Duty Dynamically Balanced\r\n</p><p>• Speed: Three Speed with Incher.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 09:54:06', '2021-03-09 18:57:27'),
(67, 1, NULL, NULL, NULL, 'Ocean Electric OCM6639SS Coffee Maker 1.2LTR', 'ocean-electric-ocm6639ss-coffee-maker-1.2ltr', 4465, '5100', 4700, 'OCM6639SS', '<h4><b>Ocean Electric OCM6639SS Coffee Maker 1.2LTR Details</b></h4><p>• Capacity 1.2L\r\n</p><p>• Removable Filter Basket\r\n</p><p>• Anti Drip Function\r\n</p><p>• ON / OFF Lighted Switch\r\n</p><p>• Warming Plate Keeps Coffee\r\n</p><p>• Hot Automatically\r\n</p><p>• Visible Water Level Mark\r\n</p><p>• Permanent Filter\r\n</p><p>• S/S Decoration\r\n</p><p>• Single Layer S.S Jug\r\n</p><p>• VDE Plug\r\n</p><p>• 220V / 50Hz 800W</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-02-07 10:00:04', '2021-03-09 18:57:27'),
(68, 4, 0, NULL, NULL, 'Educational Kids Baby Wooden Solid Wood Stacking Train Toddler Block Toy', 'educational-kids-baby-wooden-solid-wood-stacking-train-toddler-block-toy', 456, '690', 480, 'TTBT', '<p><span style=\"font-size: 1rem;\"><b>Educational Kids Baby Wooden Solid Wood Stacking Train Toddler Block Toy Details</b></span></p><p><span style=\"font-size: 1rem;\">• Material:wood,none-toxic paint</span><br></p><p>• With different shapes and colors</p><p>• Increase interest of games</p><p>• Explore brain\'s implied function</p><p>• Improve intelligence and behavior</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:24:59', '2021-03-09 18:57:27'),
(69, 4, NULL, NULL, NULL, 'Educational Multipurpose Double-Sided Magnetic & Wooden Writing Board Small(44 x 32cm, White and Black)', 'educational-multipurpose-double-sided-magnetic-&-wooden-writing-board-small(44-x-32cm,-white-and-black)', 903, '1150', 950, 'WRB', '<h5><b>Educational Multipurpose Double-Sided Magnetic &amp; Wooden Writing Board Small(44 x 32cm, White and Black)</b></h5><p>• White and black board both</p><p>• Let your child\'s imagination paint on board.</p><p>• Magnetic alphabets,Numerical and signs will help them with formation of words; solving mathematics in imaginative way.</p><p>• Purely Wooden product hence harmless</p><p>• 1 multipurpose double-sided magnetic wooden writing drawing board, magnetic alphabets, duster, 1 marker, chalk</p><p>• Recommended for small kids. this educational learning board multipurpose double-sided magnetic wooden board is best suited for early learner for age of 2 to 4 years kids. the bestow everything your child\'s creativity needs with this all-in-1 wooden chalkboard and whiteboard</p><p>• Inferior product,product from fun blast. Easy wipe clean black / white boards with smooth surface. A fun way for children to be creative</p><p>• It can be folded and put away when not in use</p><p>• Comes with 26 magnetic alphabet wooden letters and 0 to 20 numbers with mathematical symbols</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:27:51', '2021-03-09 18:57:27'),
(70, 2, 0, NULL, NULL, 'Egg Designer 1 pcs', 'egg-designer-1-pcs', 100, '200', 105, 'ED', '<h3><b>Egg Designer 1 pcs</b></h3><p>• Material: Stainless Steel</p><p>• Ideal Kitchen Products for Shaping Omelet</p><p>• Shape: Heart, Circle, Mickey Mouse, Star, Floral</p><p>• Let Your Eggs Have More Patterns</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:33:56', '2021-03-09 18:57:27'),
(71, 2, 0, NULL, NULL, 'Electric Barbecue Grill Machine', 'electric-barbecue-grill-machine', 1325, '1580', 1395, 'BGM', '<h3><b>Electric Barbecue Grill Machine Details</b></h3><p><span style=\"font-size: 1rem;\">• Product Type: Barbeque Grill Machine.&nbsp;</span><br></p><p>• Stainless steel grill.&nbsp;</p><p>• Power indicator.&nbsp;</p><p>• Cooking height adjustments.&nbsp;</p><p>• Cool touch handles.&nbsp;</p><p>• Power: 2000W.&nbsp;</p><p>• Dimension: 51 x 50 x 37cm.&nbsp;</p><p>• Weight: 15-17KG.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:37:41', '2021-03-09 18:57:27'),
(72, 2, 0, NULL, NULL, 'Electric BBQ grill', 'electric-bbq-grill', 3306, '3990', 3480, 'EBG', '<h3><b>Product details of Electric BBQ Grill Machine&nbsp;</b></h3><p>• AC220-240v/50Hz</p><p>• Power:2000W</p><p>• Outer-casing:6PCS/CTN 51x50x37CM</p><p>• N.W/G.W:15/17KG</p><p>• 20FTQty: 1890PCS 40FT Qty:3810PCS</p><p>• 40HQQty: 4446PCS.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:39:50', '2021-03-09 18:57:27'),
(73, 2, 0, NULL, NULL, 'Electric Lunch Box Portable', 'electric-lunch-box-portable', 556, '710', 585, 'ELBP', '<h2><b>Electric Lunch Box Portable Details</b></h2><p>• Electric Heating Lunch Box is made by food-grade PP plastic, the Food Heater Portable Lunch Containers are totally nontoxic and healthy.</p><p>• Electrical lunch box have two compartments design, and there is also a individual box, which is very convenient to separate different dishes, but pls noted that electric lunch box has no seal ring on the cover.</p><p>• Heating Notes:Indicator light up, it means the food is heating. 40W power cyclic heating, please heat 50 minutes at least befor eating, don\'t worry about forgetting to pull out the plug, electric lunch box heater will keep the temperature on 35-70°.</p><p>• Suitable for a variety of people: Electronic lunch box which is used for food storage and heating. You can use it everyday to carry and conveniently heat meals in your office and you can also use it to whenever you travel. Suitable for driver, student, teacher and etc.</p><p>• Portable electric lunch box is high temperature resistance, environmentally friendly, and healthy.</p><p>• Made of food grade PP materia</p><p>• Product Size: 9.1 x 6.3 x 4.1 inch</p><p>•&nbsp; Voltage: 110V</p><p>• Capacity: 1.05L</p><p>• 1x Electric Heating Lunch Box</p><p>• 1x Plastic food container</p><p>• 1x Spoon</p><p>• 1x Power cable</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:42:47', '2021-03-09 18:57:27'),
(74, 11, 0, NULL, NULL, 'Electronic USB Mosquito Killer Lamp', 'electronic-usb-mosquito-killer-lamp', 523, '950', 550, 'EMKL', '<h2><b>Electronic USB Mosquito Killer Lamp</b></h2><p>• The new upgraded digital electric total solution for mosquitoes trap lamp.</p><p>• Energy saver, hassle free modern and smart solution for mosquitoes.</p><p>• Quite modern design outlook what reflects your own smart choice and develop your own and family health too.</p><p>• Complete solution for all of your years and let you enjoy anywhere in peace without the irritation of mosquitoes.</p><p>• Applicable Area: 20-40 square meters</p><p>• Material: ABS:</p><p>• Dimmable: No</p><p>• Voltage: 110-240V</p><p>• Power: 5W</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:48:18', '2021-03-09 18:57:27'),
(75, 2, NULL, NULL, NULL, 'Fabric woven gloves', 'fabric-woven-gloves', 171, '250', 180, 'FWG', '<h2><b>Fabric woven gloves Details</b></h2><p>• Product Type: Kitchen Gloves</p><p>• Color: Light Slate Gray</p><p>• Main Material: Fabric</p><p>• Good quality product</p><p>• Easy to use</p><p>• Easy to carry</p><p>• Easy to clean</p><p>• long lasting&nbsp;</p><p>• Save your hand.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:50:46', '2021-03-09 18:57:27'),
(76, 2, 0, NULL, NULL, 'Fast and Smooth Food Preparation Capsule Cutter blender juicer', 'fast-and-smooth-food-preparation-capsule-cutter-blender-juicer', 808, '1480', 850, 'CCBJ', '<h4><b>Fast and Smooth Food Preparation Capsule Cutter blender juicer</b></h4><p>• Power: Alternating voltage 220V</p><p>• Consumption Power: 200W</p><p>• Size: Width 11.6* depth 11.6* height 23.3cm</p><p>• Weight: 900gram</p><p>• Length of power cable: About 1m</p><p>• Rated time: Maximal one minute ( after working for one minute, please stop 10 minutes)</p><p>• Texture: Protective cover :PP/ Blade: Stainless steel/ Machine Body: ABS resin</p><p>• Material: this body: ABS resin / ■ Cover: Toraitan resin / ■ Cup: Toraitan resin / ■ Blade: stainless / ■ original spatula: polyethylene</p><p>• The set includes: ■ body / ■ cup / ■ blade / ■ cover / ■ original spa</p><p>• Very usefull product&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 10:56:09', '2021-03-09 18:57:27'),
(77, 2, NULL, NULL, NULL, 'Foldable Barbecue and Tandoor Grill Briefcase Style Charcoal BBQ Stand for Cooking Outdoor', 'foldable-barbecue-and-tandoor-grill-briefcase-style-charcoal-bbq-stand-for-cooking-outdoor', 808, '1280', 850, 'FBGB', '<h5><b>Foldable Barbecue and Tandoor Grill Briefcase Style Charcoal BBQ Stand for Cooking Outdoor</b></h5><p>• GO ANYWHERE: This tiny portable charcoal grill can go with you and your family for a road trip or a beach party etc. Perfect for 3-5 people family/party.</p><p>• COMPACT and STURDY: Made of cold-rolled iron and premium chrome Wire mesh. Heat-resistant and scratch-resistant. Legs are more sturdy than similar products.</p><p>• FOLDABLE EASY STORAGE: It can be folded away after you use. Handle designed make it save space and is convenient to take it to anywhere to have fun.</p><p>• 12 AIRWAY VENT: Star a fire Faster and Easier with 12 Airway Vent design. Easy to clean as the baking net can be pulled out. WARNING: Use it on a flat, sturdy surface or table.</p><p>• PERFECT GIFT: Uten folding portable lightweight BBQ grill is a perfect BBQ tool for beach, picnics, parties, trailers, a camping trip or anywhere you want.</p><h3><b>&gt;&gt;</b>Specifications:</h3><p>• ight &amp; portable</p><p>• Clean and smokeless grilling</p><p>• Durable stainless steel heating element</p><p>• With ignition device: Not included</p><p>• Fuel: Charcoal</p><p>• Model: KYZ-SKL013</p><p>• Structure: One piece</p><p>• Applicable: 3 - 5 persons</p><p>• Stove type: Combination stove</p><p>• Material: Stainless Steel</p><p>• Outdoor use</p><p>• Weight: 2kg</p><p>• Packing Size: 35 x 27 x 6cm</p><p>• Open Size: 35 x 27 x 19.5cm</p><p>• Heat resistant painted, health care</p><p>• Chrome plated, stainless quality</p><p>• Good air vents design, easy to make fire</p><p>• Cooking equipment for outdoor camping</p><p>•&nbsp;<span style=\"font-size: 1rem;\">Family gathering party barbecue roasting picnic</span></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:01:57', '2021-03-09 18:57:27'),
(78, 2, 0, NULL, NULL, 'Fast and Smooth Food Preparation Capsule Cutter', 'fast-and-smooth-food-preparation-capsule-cutter', 808, '1350', 850, 'FCC', '<h4><b>Fast and Smooth Food Preparation Capsule Cutter Details</b></h4><p>• Size: width 116 x d 116 x 233 mm</p><p>• Material: main body: ABS resin</p><p>• Cover Cup: Triton blade: stainless steel</p><p>• Power consumption: 200 W</p><p>• Voltage rating: 100V 50 / 60 Hz</p><p>• Cable length: 1 m</p><p>• Estimated amount: up to approx. 200 g (Cup MAX line before)</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:07:55', '2021-03-09 18:57:27'),
(79, 4, NULL, NULL, NULL, 'Feeder warmer Single For Kids (Multicolor)', 'feeder-warmer-single-for-kids-(multicolor)', 371, '520', 390, 'FWS', '<h3><b>Feeder warmer Single  For Kids (Multicolor)</b></h3><p><span style=\"font-size: 1rem;\">• Product Type: Warmer Feeder</span><br></p><p>• Main Material:High-Grade PVC, Foam, PE Liner</p><p>• No Side effect for baby</p><p>• No possibility of liquids leakage</p><p>• It keeps hot continuously four (04) hours</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:11:02', '2021-03-09 18:57:27'),
(80, 4, 0, NULL, NULL, 'Fisher Price Infant to Toddler baby Rocking and Relax Chair', 'fisher-price-infant-to-toddler-baby-rocking-and-relax-chair', 3316, '3990', 3490, 'RC', '<h4><b>Product details of Fisher-Price Infant-to-Toddler Rocker, Princess Mouse</b></h4><p>• Doubles as a rocker and feeding chair</p><p>• Features calming vibration for naptime and stimulating toys for play time</p><p>• Toy bar has 3 fun removable toys</p><p>• Soft plush fabrics for baby\'s comfort</p><p>• Maximum weight recommendation : 18 KG (40 Pounds)</p><p>• Product Dimensions : 26 x 18.5 x 25.5 inches</p><p>• Batteries required : Yes</p><p>• Batteries :1 D batteries required</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:23:08', '2021-03-09 18:57:27'),
(81, 4, 0, NULL, NULL, 'Fisher-Price Infant-to-Toddler baby Rocking and Relax chair', 'fisher-price-infant-to-toddler-baby-rocking-and-relax-chair', 3316, '3990', 3490, 'RC', '<h4><b>Product details of Fisher-Price Infant-to-Toddler Rocker, Princess Mouse</b></h4><p>• Doubles as a rocker and feeding chair</p><p>• Features calming vibration for naptime and stimulating toys for play time</p><p>• Toy bar has 3 fun removable toys</p><p>• Soft plush fabrics for baby\'s comfort</p><p>• Maximum weight recommendation : 18 KG (40 Pounds)</p><p>• Product Dimensions : 26 x 18.5 x 25.5 inches</p><p>• Batteries required : Yes</p><p>• Batteries :1 D batteries required</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:28:50', '2021-03-09 18:57:27'),
(82, 4, 0, NULL, NULL, 'Fisher-Price Infant-to-Toddler baby Rocking and Relax chair', 'fisher-price-infant-to-toddler-baby-rocking-and-relax-chair', 3316, '3990', 3490, 'BRC', '<h4><b>Product details of Fisher-Price Infant-to-Toddler Rocker, Princess Mouse\r\n</b></h4><p>• Doubles as a rocker and feeding chair\r\n</p><p>• Features calming vibration for naptime and stimulating toys for play time\r\n</p><p>• Toy bar has 3 fun removable toys\r\n</p><p>• Soft plush fabrics for baby\'s comfort\r\n</p><p>• Maximum weight recommendation : 18 KG (40 Pounds)\r\n</p><p>• Product Dimensions : 26 x 18.5 x 25.5 inches\r\n</p><p>• Batteries required : Yes\r\n</p><p>• Batteries :1 D batteries required\r\n</p><p><br></p><p>\r\n</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:31:01', '2021-03-09 18:57:28'),
(83, 1, 0, NULL, NULL, 'Foldable Iron Stand', 'foldable-iron-stand', 850, '1150', 895, 'FIS', '<h4><b>Foldable Iron Stand Details</b></h4><p>• Folding Iron Table</p><p>• Use to mash</p><p>• Easy to carry</p><p>• Light</p><p>• Easily transferable</p><p>• Made of stainless steel material</p><p>• Strong &amp; Durable Frame With Rubber Grips.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-07 11:34:08', '2021-03-09 18:57:28'),
(84, 4, 0, NULL, NULL, 'Food Grade silicone baby teether waterfill nature', 'food-grade-silicone-baby-teether-waterfill-nature', 276, '340', 290, 'BTW', '<h3>Food Grade silicone baby teether waterfill nature Details</h3><p>•&nbsp;<span style=\"font-size: 1rem;\">3 pcs set</span></p><p>• Brand: Nature</p><p>• Applicable for above 3 months baby</p><p>• Clean before initial use</p><p>• Easy to hold shapes</p><p>• Wash before fist use</p><p>• Cool in refrigerator</p><p>• Chewing on a soft</p><p>• It is durable material and easy to hold</p><p>• Filled with sanitized Drinking water</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 07:30:00', '2021-03-09 18:57:28'),
(85, 1, 0, NULL, NULL, 'Food Tonge', 'food-tonge', 181, '350', 190, 'FT', '<h3>&nbsp;Food Tonge Details</h3><p>• Color: Silver</p><p>• Stainless Steel</p><p>• Quality Construction</p><p>• Durable and Flexible</p><p>• Dishwasher Safe</p><p>• High Quality Product</p><p>• 9 inch * 12 inch * 16 inch</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 07:38:38', '2021-03-09 18:57:28'),
(86, 2, NULL, NULL, NULL, 'Fruit & Vegetable Manual Juicer Hand Juice Extractor Juice Machine With Lock System', 'fruit-&-vegetable-manual-juicer-hand-juice-extractor-juice-machine-with-lock-system', 694, '990', 730, 'EJM', '<h5>Product details of Fruit &amp; Vegetable Manual Juicer Hand Juice Extractor Juice Machine With Lock System</h5><p>• Type:Manual Juicer</p><p>• Function: Gift for home use, restaurant</p><p>• Colour: Green</p><p>• Material: ABS resin</p><p>• Package Size: 26 cm * 18 cm * 12.7 cm / 10.25 \"* 7.09\" * 5 \"</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 07:40:44', '2021-03-09 18:57:28'),
(87, 2, 0, NULL, NULL, 'Hand Mixer Cappuccino Foamy Coffee Maker', 'hand-mixer-cappuccino-foamy-coffee-maker', 86, '250', 90, 'CM', '<h4>Hand Mixer Cappuccino Foamy Coffee Maker Details</h4><p>Drink frother for foamy coffee, milk, juice</p><p>Suitable for whisking coffee, milk, juice etc</p><p>Safe, easy and quick operation</p><p>Runs on 2 AA size batteries (not included)</p><p>Produces 100% nice foamy cappuccino coffee or foamy milk for making Latte</p><p>You can also use this as egg bitter/mixer</p><p>Handle material: ABS plastic</p><p>Stirrer: Stainless steel</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 07:49:31', '2021-03-09 18:57:28'),
(88, 5, 0, NULL, NULL, 'Havit MX702/M5 Mini AI Portable Intelligent Bluetooth Speaker', 'havit-mx702/m5-mini-ai-portable-intelligent-bluetooth-speaker', 755, '990', 795, 'M5BS', '<h4>Product details of Havit MX702/M5 Mini AI Portable Intelligent Bluetooth Speaker</h4><p>• Brand Havit</p><p>• Model: M5/ MX702</p><p>• Case Material: Plastic</p><p>• Battery: 500mAh</p><p>• Playtime: 4-6 hours</p><p>• Product Weight: 83g</p><p>• Output Power: 3W</p><p>• A perfect balance: small in size, big on sound.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 07:57:31', '2021-03-09 18:57:28'),
(89, 5, 0, NULL, NULL, 'HD mini Camera small cam SPY1080P Sensor Night Vision Camcorder Micro video Camera DVR DV Motion Recorder Camcorder', 'hd-mini-camera-small-cam-spy1080p-sensor-night-vision-camcorder-micro-video-camera-dvr-dv-motion-recorder-camcorder', 618, '850', 650, 'SPYRC', '<p><b>Product details of HD mini Camera small cam SPY1080P Sensor Night Vision Camcorder Micro video Camera DVR DV Motion Recorder Camcorder</b></p><p>SQ11 HD mini Camera small cam 1080P Sensor Night Vision Camcorder Micro video Camera DVR DV Motion Recorder Camcorder SQ 11&nbsp;&nbsp;This super Mini high definition camera is equipped with various practical functions integrating digital photography, video recorder and audio recorder function, with fashionable and dainty appearance, stable and outstanding quality, wide and diversified purposes. It will bring you the new and memorable experiences of use and is the indispensable tool for you.</p><p>The main functions of this machine include high definition, video recording, high definition photography, quality audio record, PC camera, and movable disk. You can also use it as a lovely accouterment.This super mini camera is applicable for the purposes of reporter interview, wonderful snap shoot, emergency record, living fragment record, recreation record, sports record, aided teaching record, family security monitoring, criminal investigation and evidence-collecting for legal purpose, landscape record during travel, outdoors exploration record and backing memory, etc..Support systemWindows ME / 2000 / XP / 2003 / Vista, Mac OS, LinuxTF CardSupport 32GB TF card max. (Memory card not included)Battery capacity200mAhInfrared Night Vision CameraWorking timeAbout 100 minutes at 1080P 30fpsCharging time2 - 3 hoursPortable SQ11 SQ12 HD 1080P Car Home CMOSCharging voltageDC 5V, Sensor Night Vision Mini CamerasInterface typeMini 8 pin USB SQ11DigitalRecording deviceCable length80CM Digital Sports CameraBatteryLithium BatterySmall Micro Camera Camcorder Night Vision Motion Detection Cam CameraStyle1080P Mini Camera Camcorder Motion Detection Micro Cam Sport Recorder&nbsp;&nbsp;Specification:Type: Full HD Dashcam</p><p>• System requirements: Mac OS x 10.3.6 above,Win 7,Windows 2000 / XP / Vista</p><p>• Max External Card Supported: TF 32G (not included)</p><p>• Class Rating Requirements: Class 10 or Above</p><p>• Battery Type: Built-in</p><p>• Charge way: USB charge by PC</p><p>• Working Time: About 100 minutes at 1080P 30fps</p><p>• Camera Pixel : 12MP</p><p>• Decode Format: MJPG</p><p>• Video format: AVI</p><p>• Video Resolution: 1080P (1920 x 1080),720P (1280 x 720)</p><p>• Video Frame Rate : 30fps</p><p>• Image Format : JPG</p><p>• Image resolution: 12M (4032 x 3024)</p><p>• Audio System : Built-in microphone/speacker (AAC)</p><p>• Motion Detection: Yes</p><p>• USB Function: USB-Disk</p><p>• Interface Type: Mini USB</p><p>• Night Version: Yes</p><p>• Package weight: 0.105 kg</p><p>• Product size (L x W x H): 2.30 x 2.30 x 2.30 cm</p><p>• Package size (L x W x H): 8.50 x 8.00 x 3.50 cm / 3.35 x 3.15 x 1.38 inches</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:01:57', '2021-03-09 18:57:28'),
(90, 2, 0, NULL, NULL, 'High Quality Silicone Dish Washing Kitchen Hand Gloves', 'high-quality-silicone-dish-washing-kitchen-hand-gloves', 185, '250', 195, 'KHG', '<h4>Product details of High Quality Silicone Dish Washing Kitchen Hand Gloves 2pcs</h4><p>• 100% Brand New &amp; Best Quality Product</p><p>• Dimantion 13*6*1</p><p>• This soft Dishwashing Gloves is made of high-quality and environment friendly silicone</p><p>• Food grade silicone</p><p>• Material: rubber and latex</p><p>• Quantity: 1 Pairleft right mixed</p><p>• Resistant, flexible, unbreakable</p><p><span style=\"font-size: 1rem;\">• Beautiful color, elegant appearance, easy to wear</span><br></p><p>• The unique non-slip texture design, but also increase the holding force</p><p>• Usage: daily household washing bowls, plates, utensils, clothes, using a variety of detergents, not to hurt the hand, not afraid of hot water, safe</p><p>• Super Easy to Clean! Restrains Germs! Can be sterilized in Boiled water, Microwave or Dishwasher</p><p>• Easier to use and clean: use this silicone brush to replace your old style brush for improving kitchen hygiene</p><p>• Super easy to clean the brush, just rinse with water or put it in the dishwasher, it will has no residue</p><p>• Easy and convenientto use</p><p>• Good Quality&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:04:48', '2021-03-09 18:57:28'),
(91, 5, 0, NULL, NULL, 'i12 Tws Wireless Bluetooth 5.0 Stereo Earphone Touch Control Headphones', 'i12-tws-wireless-bluetooth-5.0-stereo-earphone-touch-control-headphones', 466, '600', 490, 'i12TCH', '<h4>i12 Tws Wireless Bluetooth 5.0 Stereo Earphone Touch Control Headphones</h4><p>• Bluetooth version:V5.0+EDR</p><p>• Wireless distance: 10m.</p><p>• Play time: 3hours</p><p>• Battery : 40mAh*2</p><p>• Charging time: 0.5 hours</p><p>• Charger Box Betty: 350mAh</p><p>• wake up Siri</p><p>• Pop-up pairi</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:07:40', '2021-03-09 18:57:28'),
(92, 2, 0, NULL, NULL, 'ILAG Non Stick Cooking Pot', 'ilag-non-stick-cooking-pot', 1895, '2185', 1995, 'ILAGCP', '<h3>ILAG Non Stick Cooking Pot Details</h3><p>• Designed for reliable everyday cooking, and built to outlive and outlast conventional non-stick aluminum cast cooking pot.</p><p>• Colour:Titanium Gray</p><p>• Alumunium Die Cast Pot</p><p>• Induction Cooking Available</p><p>• Microwave Proof&nbsp;</p><p>• Dishwasher Safe&nbsp;</p><p>• Size:24 CM&nbsp;</p><p>• Country of Origin: SWISS MADE&nbsp;</p><p>• Best and best quality&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:10:07', '2021-03-09 18:57:28'),
(93, 2, 0, NULL, NULL, 'Indian Orange Brand Lancer Hand Blender', 'indian-orange-brand-lancer-hand-blender', 1701, '1990', 1790, 'OBHL', '<h4>Indian Orange Brand Lancer Hand Blender Details</h4><p><span style=\"font-size: 1rem;\">• Powerful 1000Copper Winding Motor</span><br></p><p>• Perfect Blending and Juicing Performance</p><p>• Grooved Body for Perfect Hand Grip</p><p>• Different Purpose Stainless Steel Blade</p><p>• Attachments:</p><p>• 3 Jars</p><p>• 3 Blades</p><p>• 1&nbsp;Holder</p><p>• 1 clamp</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:12:29', '2021-03-09 18:57:28'),
(94, 2, 0, NULL, NULL, 'Indian Orange Brand Non Stick Cooking Pot 20 CM', 'indian-orange-brand-non-stick-cooking-pot-20-cm', 1596, '2180', 1680, 'NSCP', '<h4>Indian Orange Brand Non Stick Cooking Pot 20 CM</h4><p>A handi is a deep, wide-mouthed cooking vessel, originating from the Indian subcontinent, used in north Indian, Pakistani and Bangladeshi cooking. Because there are many specific dishes from the Indian subcontinent cooked in this vessel, their names reflect its use, such as handi Biriyani. Our Orange Black Magic is nonstick and hard anodized material.</p><p>• Brand:Orange</p><p>• Made in:India</p><p>• Size:20 CM&nbsp;</p><p>• Unique and Stylish cookware set add beauty to your kitchen</p><p>• Triple Layer Coating Helps Efficient Cooking with Less Oil and Healthy Cooking.</p><p>• Glass lid for the kadai makes it easier to check the food as the cooking progress</p><p>• Long Lasting Aluminium Body and PTFE Non Stick Coating, Soft Touch Handle Remains Cool While Cooking and Does not Get Loose in Longer Run</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:16:50', '2021-03-09 18:57:28'),
(95, 4, NULL, NULL, NULL, 'Infant Washable Deluxe Baby Bather', 'infant-washable-deluxe-baby-bather', 1226, '1510', 1290, 'DBB', '<h4>Product Details Infant Washable Deluxe Baby Bather</h4><p>• Soft mesh support conforms to a newborns baby</p><p>• Padded head and leg rest</p><p>• Add comfort to baby whilst bathing</p><p>• Folds flat for compact storage</p><p>• Integrated soft feet help to prevent slipping</p><p>• Machine washable cover is easy to remove and clean</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:21:40', '2021-03-09 18:57:28'),
(96, 4, 0, NULL, NULL, 'Infant Washable Deluxe Baby Bather', 'infant-washable-deluxe-baby-bather', 1226, '1510', 1290, 'DBB', '<h3>Product details of Deluxe Baby Bather - Pink</h3><p>• Soft mesh support conforms to a newborns baby</p><p>• Padded head and leg rest</p><p>• Add comfort to baby whilst bathing</p><p>• Folds flat for compact storage</p><p>• Integrated soft feet help to prevent slipping</p><p>• Machine washable cover is easy to remove and clean</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-08 08:31:07', '2021-03-09 18:57:28'),
(97, 4, 0, NULL, NULL, 'Infant-to-Toddler Rocker', 'infant-to-toddler-rocker', 2651, '5700', 2790, 'ITR', '<h3>Infant-to-Toddler Rocker Details</h3><p>• Use from infant to Toddler up to 18kgs.</p><p>• Sensory:colorful bed and flip toys help stimulate baby\'s sense</p><p>• Security and happiness:Extra Deep Cardle seat calming vibrations help Comfort and soothe younger babies</p><p>• Foldout kickstand and reclining for Feeding or napping</p><p>• Toy bar easily removes for toddlers to sit up and play</p><p>• Easy conversion to toddler rocker</p><p>• Secure,Three-points Restraint</p><p>• Removabl,machine,washable pad</p><p>• Lightweight</p><p>• Requires1-D battery</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 07:47:49', '2021-03-09 18:57:28'),
(98, 4, 0, NULL, NULL, 'Inflatable Air Mattress Swimming Pool for Babies', 'inflatable-air-mattress-swimming-pool-for-babies', 1853, '2390', 1950, 'MSP', '<h3>Product details of Inflatable Air Mattress Swimming Pool for Babies</h3><p>• Color: Light Blue</p><p>• Unique design both internal, external</p><p>• Fully printed design</p><p>• Stimulates baby\'s visual nerve</p><p>• Safety gas plugs needed</p><p>• More convenient, more practical</p><p>• Gas leak safety plug</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 07:53:23', '2021-03-09 18:57:28'),
(99, 4, 0, NULL, NULL, 'Inflatable baby play mat', 'inflatable-baby-play-mat', 660, '990', 695, 'IBPM', '<p>• Food Grade 16P Environmentally PVC</p><p>• <b>SUPREME QUALITY &amp; 100% LEAK PROOF</b>: Our baby water matt is made of durable 100% BPA-free &amp; non-toxic HEAVY DUTY PVC materials. Each of our play mats has been strictly tested for NO LEAK and durability. No need to worry about messy accident</p><p>• <b>BEST TUMMY TIME TOY</b>: Enjoy the water time without getting wet! Your infant baby would be fascinated by the bright sea world graph and cute floating toys in the water. Parents can also have a fun time for watching the baby laugh and play</p><p>• <b>PROMOTE BABY DEVELOPMENT</b>:Tummy time play mat helps strengthen baby’s leg and arm muscles to prepare to crawl. Aside from preventing a flat head, this sensory baby mat can also delight brain development and enhancing hand-eye coordination</p><p>• <b>EASY TO USE &amp; PACK</b>:Set the baby water mat by simply inflate the outer ring and fill the interior part with water! After use it, you can just empty the mat, fold it or roll it up, and pack it into your purse or suitcase! It would also be a great gift for baby shower</p><p>• For ages 3 months and up with a large roomy play size area designed to keep your baby boy or girl\'s interest riveted. Product size is 26\" wide by 20\" tall by 2.5\" high. Six brightly colored toys are included inside each mat.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 07:59:58', '2021-03-09 18:57:28'),
(100, 4, 0, NULL, NULL, 'Infrared Blood Circulation Foot Massager - White', 'infrared-blood-circulation-foot-massager---white', 1121, '1500', 1180, 'IBCFM', '<h4>Infrared Blood Circulation Foot Massager - White Details</h4><p><span style=\"font-size: 1rem;\">• Its effective for those who can not go and walk</span><br></p><p>• Helps in blood circulation</p><p>• You can get 10 minutes of usage every day</p><p>• It is a complete external so there are no side effects</p><p>• Deep kneading and shiatsu massage, relieve stress and fatigue</p><p>• Eighteen massage heads for a massage the foot fully</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:04:36', '2021-03-09 18:57:28'),
(101, 1, NULL, NULL, NULL, 'Instant hot water mobile tap', 'instant-hot-water-mobile-tap', 1891, '2550', 1990, 'HWMT', '<h3>Instant hot water mobile tap Details</h3><p><b>Advantages of </b>:-</p><p>• Heats water to 60 degrees Celsius.</p><p>• It does not require complicated installation - you can easily install it yourself.</p><p>• It takes up much less space than conventional boilers and storage water heaters.</p><p>• Significantly saves electricity compared to conventional heaters.</p><p>• The instantaneous electric water heater on the LCD faucet is equipped with an LCD display that allows you to precisely control the temperatureof the water.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:07:40', '2021-03-09 18:57:29'),
(102, 1, 0, NULL, NULL, 'Instant hot water tap with hand shower', 'instant-hot-water-tap-with-hand-shower', 2071, '4890', 2180, 'HWTHS', '<p><span style=\"font-size: 1rem;\">• 5 Seconds instant heating</span><br></p><p>• Fully-automatic control.</p><p>• Separate electricity wall design.</p><p>• Dry burning prevention.</p><p>• Rated frequency: 50-60Hz</p><p>• Sink mounted</p><p>• Rated input power: 3000W</p><p>• Rated voltage: 220V-250V</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:14:17', '2021-03-09 18:57:29'),
(103, 1, 0, NULL, NULL, 'INSTANT HOT WATER TAP', 'instant-hot-water-tap', 2470, '3800', 2600, 'IHWT', '<h3>Product details of Instant Water Heater Tap - White</h3><p>• 5 Seconds instant heating</p><p>• Fully-automatic control.</p><p>• Separate electricity wall design.</p><p>• Dry burning prevention.</p><p>• Rated frequency: 50-60Hz</p><p>• Sink mounted</p><p>• Rated input power: 3000W</p><p>• Rated voltage: 220V-250V</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:15:59', '2021-03-09 18:57:29'),
(104, 1, 0, NULL, NULL, 'Instant Tankless Digital Electric Hot Water Tap for any Wall and Basin Mount 2 in 1  with led Display', 'instant-tankless-digital-electric-hot-water-tap-for-any-wall-and-basin-mount-2-in-1-with-led-display', 1511, '1890', 1590, 'EHWT', '<p>• 1 year Warranty</p><p>• Hot Water within 3 second</p><p>• Easy to fitting sink and tap both 2 in 1</p><p>• Save Electricity</p><p>• Easy to Install</p><p>• Hot and normal water both are possible as per your requirement</p><p>• Elegent Design</p><p>• Its will be use in Kitchen sink and bathroom tap and besin.</p><p>• Temperature : 30 - 60° C</p><p>• Voltage : 220V</p><p>• Watt- 3000+</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:18:21', '2021-03-09 18:57:29'),
(105, 4, 0, NULL, NULL, 'Intime Inflatable Baby Bath Tub, Baby Children Shower Tub', 'intime-inflatable-baby-bath-tub,-baby-children-shower-tub', 1121, '1720', 1180, 'IBBT', '<h4><span style=\"font-size: 1rem;\"><b>Intime Inflatable Baby Bath Tub, Baby Children Shower Tub Details</b></span></h4><p><span style=\"font-size: 1rem;\">• Material : PVC</span><br></p><p>• Color : Red</p><p>• Storage Capacity : 80% Pool Wall</p><p>• Product Size : 98 x 65 x 30cm/35.43 x 21.65 x 11.81 inch</p><p>• For Ages : 0-3 Years</p><p>• High quality product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:21:36', '2021-03-09 18:57:29'),
(106, 2, 0, NULL, NULL, 'Jio Exclusive Granite 3 pcs marble non-stick coating Set (Blue)', 'jio-exclusive-granite-3-pcs-marble-non-stick-coating-set-(blue)', 5225, '8800', 5500, 'MNSCS', '<p><span style=\"font-size: 1rem;\">• Brand:Jio</span><br></p><p>• Non-stick Marble coating</p><p>• Healthy premium granite coated</p><p>• Dishwasher safe</p><p>• Can be used on either gas or electric stove</p><p>• Durable and long lasting</p><p>• The set includes:</p><p>• 20 cm casserole</p><p>• 24 cm casserole</p><p>• 28 cm casserole</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:24:56', '2021-03-09 18:57:29'),
(107, 2, 0, NULL, NULL, 'Kenwood Food Processor blender mixer', 'kenwood-food-processor-blender-mixer', 3696, '5800', 3890, 'KBM', '<p>• Brand:Kenwood&nbsp;</p><p>• 850 Watt</p><p>• 2 speed control and Pulse operation for greater blending control</p><p>• 1.5 l Jug with thick glass</p><p>&nbsp;• 250 g grinding glass</p><p>• Food Stir Bar</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:27:22', '2021-03-09 18:57:29'),
(108, 4, 0, NULL, NULL, 'Kids Baby Toy Wooden Stacking Ring Tower Educational Toys Rainbow Stack Up', 'kids-baby-toy-wooden-stacking-ring-tower-educational-toys-rainbow-stack-up', 379, '499', 399, 'KBT', '<p><b>Product details of Baby Kids Wooden Toy Ring Stacking Rainbow Tower for Early Learning Central Educational Toys for Children</b></p><p>• Product details of Baby Kids Wooden Toy Ring Stacking Rainbow Tower for Early Learning Central Educational Toys for Children</p><p>• Odorless, environmental protection, very safe and healthy to use</p><p>• Suit for children aging 3 years or older</p><p>• Bright color, good for training baby\'s ability of recognize colors and eye-hand coordination, imagination, confidence and ability to think</p><p>• Eight wood blocks with different colors, can be stack up according to size order or reverse</p><p>• High quality wooden material, round smooth surface, it won\'t scratchProduct details of Baby Kids Wooden Toy Ring Stacking Rainbow Tower for Early Learning Central Educational Toys for Children</p><p>• Odorless, environmental protection, very safe and healthy to use</p><p>• Suit for children aging 3 years or older</p><p>• Bright color, good for training baby\'s ability of recognize colors and eye-hand coordination, imagination, confidence and ability to think</p><p>• Eight wood blocks with different colors, can be stack up according to size order or reverse</p><p>• High quality wooden material, round smooth surface, it won\'t scratchOdorless, environmental protection, very safe and healthy to use</p><p>• Suit for children aging 3 years or older</p><p>• Bright color, good for training baby\'s ability of recognize colors and eye-hand coordination, imagination, confidence and ability to think</p><p>• Eight wood blocks with different colors, can be stack up according to size order or reverse</p><p>• High quality wooden material, round smooth surface, it won\'t scratch</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 08:35:02', '2021-03-09 18:57:29'),
(109, 2, 0, NULL, NULL, 'kitchen spice pot  glass 9 pcs', 'kitchen-spice-pot-glass-9-pcs', 1121, '1500', 1180, 'KSPG', '<h4>Product details of 8 pis kitchen storage spice pot</h4><p>• KSP Spin Spice Rack</p><p>• CODE: KSP</p><p>• 8 Stainless Steel</p><p>• High Quality</p><p>• Durable</p><p>• Easy to clean&nbsp;</p><p>• Long lasting&nbsp;</p><p>• Glass jar&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 11:07:12', '2021-03-09 18:57:29'),
(110, 2, 0, NULL, NULL, 'Kitchen Stainless Steel Paper Towel Holder', 'kitchen-stainless-steel-paper-towel-holder', 470, '1110', 495, 'SPTH', '<p>• Elegant and Fashion: The fixed pillar is changed to the European and American design style, and the embossing process with more artistic appreciation is adopted. The rounded end treatment, stylish and beautiful, more scratch-proof.</p><p>• Excellent Material: The paper towel holder is made of high quality stainless steel, and the base is stamped with thick steel plate, the stability is good, and the paper towel is not easy to turn over.</p><p>• Save Space: Perfect size for standard paper towel rolls, measured 29.8*14cm, can be placed inside the cabinet to save space.</p><p>• Easy to Use: The paper towel holder can for any size paper towels, and you can tear with one hand easily every time.</p><p>• Wide Use: Sleek simple design works in any room of the home, kitchen, bathroom, garage, laundry room and more.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 11:09:20', '2021-03-09 18:57:29'),
(111, 2, 0, NULL, NULL, 'Knife Sharpener', 'knife-sharpener', 276, '585', 290, 'KS', '<p>• Metal Type: Plastic + Stainless Steel</p><p>• Size: Approx 20.5*7*6 cm</p><p>• Style: convenient</p><p>• Material: Plastic + Stainless Steel</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 11:11:43', '2021-03-09 18:57:29'),
(112, 2, 0, NULL, NULL, 'Large Handy and Compact Chopper Quick Cutter for Kitchen, 3 Blade Stainless Steel, Pull String, (Made In India)', 'large-handy-and-compact-chopper-quick-cutter-for-kitchen,-3-blade-stainless-steel,-pull-string,-(made-in-india)', 309, '550', 325, 'CQC', '<p><span style=\"font-size: 1rem;\">• Product:Handy Copper&nbsp;</span><br></p><p>• Kitchenware&nbsp;</p><p>• Made In India</p><p>• Sturdy 3-blade design made from Stainless Steel</p><p>• Unique string function to chop vegetables and fruits with ease</p><p>• No electricity required</p><p>• Easy to use - easy to detach</p><p>• unbreakable ABS food grade plastic for long-lasting use</p><p>•&nbsp; Material: Plastic</p><p>• Package Contents: 1 Handy chopper</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 11:14:14', '2021-03-09 18:57:29'),
(113, 1, 0, NULL, NULL, 'Leather Cross body Charging Bag with USB port unisex', 'leather-cross-body-charging-bag-with-usb-port-unisex', 323, '500', 340, 'LBCB', '<p><span style=\"font-size: 1rem;\">• 2 in 1 PU Leather Slide Bag - Brown made of genuine leather</span></p><p>• Men\'s Small Single Strap Backpack Material: PU Leather Size: Phone &amp; Pen Holder Suitable for Travel</p><p>• Product measurement/size : 31 x 15 cm Color: Chocolate brown</p><p>• Lining Material: Polyester Zipper Closure High Quality Imported Product Imported From China</p><p>• Men’s Anti Theft Chest Sling Bag with USB Port for Powerbank</p><p>• Shoulder Back Pack Sling Bag Fashion Chest Bag</p><p>• Rucksack Outdoor Hiking Travel Multipurpose</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-09 11:18:40', '2021-03-09 18:57:29'),
(114, 4, 0, NULL, NULL, 'Linco Silicone Spoon Weaning Bottle - Transparent and Sky Blue', 'linco-silicone-spoon-weaning-bottle---transparent-and-sky-blue', 318, '450', 335, 'LSSWB', '<h4>Product details of Linco Silicone Spoon Weaning Bottle - Transparent and Sky Blue</h4><p>• Material: Silica gel / PP</p><p>• Volume: 90ml</p><p>• Applicable age range: 4 months or more</p><p>• 100% Brand New and High Quality.</p><p>• Designed for Mom to feed young baby.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-12 16:56:16', '2021-03-09 18:57:29'),
(115, 5, 0, NULL, NULL, 'M3 Smart Band Waterproof Heart Rate Monitor Bluetooth Smart Sleep Bracelet Fitness Tracker Blood Pressure Pedometer Watch', 'm3-smart-band-waterproof-heart-rate-monitor-bluetooth-smart-sleep-bracelet-fitness-tracker-blood-pressure-pedometer-watch', 371, '500', 390, 'M3SW', '<h5><b>Product details of M3 Smart Band Waterproof Heart Rate Monitor Bluetooth Smart Sleep Bracelet Fitness Tracker Blood Pressure Pedometer Watch</b></h5><p>• 0.42-inch OLED screen to display time</p><p>• Pedometer to count the number of steps taken</p><p>• Calories meter to track calories lost during a physical activity</p><p>• Heart Rate Sensor to check heart rate</p><p>• Sleep Monitor checks the quality of sleep using app</p><p>• Sedentary Reminder reminds you when you don’t move from one hour</p><p>• Calling Function lets you make and disconnect calls when connected to a phone</p><p>• SMS Notifications (only for Android smartphones)</p><p>• Water and dust resistant (IP67, upto 30 mtrs)</p><p>• Alarm Reminder</p><p>• Low-power acceleration sensor</p><p>• 70 mAh battery provides a stand by time of up to 300 hours</p><p>• Weighs just 6.9 grams.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-12 16:59:03', '2021-03-09 18:57:29'),
(116, 5, 0, NULL, NULL, 'M4 Pro- Smart band Fitness Tracker Watch Sport bracelet Heart Rate Blood Pressure Smartband Monitor Health Wristband Fitness Tracker', 'm4-pro--smart-band-fitness-tracker-watch-sport-bracelet-heart-rate-blood-pressure-smartband-monitor-health-wristband-fitness-tracker', 371, '500', 390, 'M4SW', '<h5><b>Product details of M4 Pro- Smart band Fitness Tracker Watch Sport bracelet Heart Rate Blood Pressure Smartband Monitor Health Wristband Fitness Tracker</b></h5><p>- All-day activity tracking: steps, calories burned, mileage, and heart rate.</p><p>- Smart reminder:call reminder, messaging push, sedentary reminder.</p><p>- More features: phone search, remote camera shoot, stop watch.</p><p>- Continuous heart rate monitor:Continuous, automatic heart rate .</p><p>- 0.96\" TFT color touch screen:HD screen, easy to read all fitness data.</p><p>- Customizable clock faces</p><p>- Compatible with Android 4.4 and above system, ios 8.0 and above.</p><p>-smart band support language ： English</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:27:02', '2021-03-09 18:57:29'),
(117, 2, 0, NULL, NULL, 'Manual Wooden Roti Maker Jambu size 10 inch with Roti maker Wrapping poly and both side tape', 'manual-wooden-roti-maker-jambu-size-10-inch-with-roti-maker-wrapping-poly-and-both-side-tape', 1606, '1990', 1690, 'MRM10IN', '<h4><b>Product Details Manual Wooden Roti Maker Jambu size 10 inch with Roti maker Wrapping poly and both side tape</b></h4><p>• One pcs Roti Maker Wrapping Food Grade Polly Roll and one pcs Both side Gum Tape Free&nbsp;</p><p>• This 9 inch is standard size and most salable products&nbsp;</p><p>• We are the manufacturer of Roti Maker.</p><p>• This Is the original Picture of our product.We do not edit the picture.</p><p>• I request to our valuable customer please see the original picture of Roti Maker than take decesion about purchase it.</p><p>• Made By original Mehagoni Wood.</p><p>• Our Roti Maker Color is Looking Very Beautiful and attractive.</p><p>• Nice Design&nbsp;&nbsp;</p><p>• Easy to Use and operate</p><p>• Perfect Round Shape Roti</p><p>• Best value</p><p>• Ruti up to 10 inch+&nbsp;</p><p>• No electricity costs</p><p>• Saves time and energy</p><p>• Perfect round shape roti</p><p>• Prepare more than 15 routes in just 1 minute</p><p>• Color: Wooden</p><p>• Durable</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:32:49', '2021-03-09 18:57:29'),
(118, 5, 0, NULL, NULL, 'MICROWEAR L9 SMARTWATCH FULL TOUCH SCREEN', 'microwear-l9-smartwatch-full-touch-screen', 2413, '2990', 2540, 'ML9SW', '<h3>Product details of MICROWEAR L9 SMARTWATCH FULL TOUCH SCREEN</h3><p>• Brand: Microwear</p><p>• Model: L9</p><p>• Bluetooth Version: BT 4.0 or above</p><p>• Compatible OS Android: 4.4 or above , iOS 8.0 or above</p><p>• Operating Mode: Full Touch Screen+Press Button</p><p>• APP Name: Fundo</p><p>• G-sensor, Heart Rate Sensor</p><p>• Screen Size: 1.3inch</p><p>• Type: IPS</p><p>• Resolution: 240*240pixels</p><p>• Battery Battery Capacity: 300mAh</p><p>• Standby Time: About 15 days</p><p>• Using time: About 5-10 days</p><p>• Charging Time: About 1.5 hours</p><p>• Charging Type: Magnetic charging</p><p>• Material: Silicone&amp;Stainless Steel&amp;Leather</p><p>• Length: 233mm</p><p>• Width: 22mm</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:36:41', '2021-03-09 18:57:29'),
(119, 5, 0, NULL, NULL, 'Microwear W34 Smart Watch Bluetooth Call Touch Screen Smartwatch Intelligent Fitness Tracker Heart Rate Monitor for Android IOS', 'microwear-w34-smart-watch-bluetooth-call-touch-screen-smartwatch-intelligent-fitness-tracker-heart-rate-monitor-for-android-ios', 1511, '1990', 1590, 'W34SW', '<p>• Call receiving ,call dialing and speaking is possible with this smart watch without SIM card.</p><p>• Model: W34</p><p>• Compatibility: IOS, Android</p><p>• System: Android iOS</p><p>• Band Material: TPDIV</p><p>• Case Material: aluminum</p><p>• CPU Manufacturer: Mediatek</p><p>• CPU Model: MTK2502</p><p>• Bluetooth: 4.0</p><p>• Display Size: 1.54 Inch</p><p>• Resolution: 240X240</p><p>• Band Detachable: Yes</p><p>• Battery Capacity: 210mAh</p><p>• Charging Capacity: 3-4 days (depend on use)</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:39:31', '2021-03-09 18:57:30'),
(120, 2, 0, NULL, NULL, 'Miyako 1000 Watt Black Beauty Electric Blender Machine- Bl-100', 'miyako-1000-watt-black-beauty-electric-blender-machine--bl-100', 5311, '6590', 5590, 'MBM1000', '<h4><b>Product Details Miyako 1000 Watt Black Beauty Electric Blender Machine- Bl-100</b></h4><p>• Black Beauty</p><p>• Electric Blender Machine</p><p>• Model: BL-100</p><p>• 3 in 1</p><p>• Made In India</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:41:40', '2021-03-09 18:57:30'),
(121, 11, 0, NULL, NULL, 'Miyako Electric Room Heater 4 In 1 Model-602', 'miyako-electric-room-heater-4-in-1-model-602', 2841, '3590', 2990, 'MERH602', '<h4><b>Product Details Miyako Electric Room Heater 4 In 1 Model-602</b></h4><p>• Brand :Miyako</p><p>• Model:PTC-602</p><p>• Cool/Heat/Warm</p><p>• 70 degree oscilation function</p><p>• High thermal efficiency</p><p>• Overheat protection</p><p>• Adjustable thermostat</p><p>• Manual control</p><p>• Watt:2000 watt</p><p>• Voltage:220-240~50/60 Hz</p><p>• Origin:China</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:44:12', '2021-03-09 18:57:30');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(122, 2, 0, NULL, NULL, 'Miyako Heavy Duty  mixer blender and grinder  1000 Watt', 'miyako-heavy-duty-mixer-blender-and-grinder-1000-watt', 5691, '8590', 5990, 'MBG1000', '<p>• Brand : Miyako</p><p>• Made in India</p><p>• Model : Lock &amp; Lock</p><p>• Watt : 1000</p><p>• one mixer grinder baseunit</p><p>• 3 stainless jar</p><p>• SS wet jar - 1500 ML</p><p>• SS Dry jar - 1000ML</p><p>• SS - Chutney jar - 300ML</p><p>• Copper motor</p><p>• inter Locking Dual Safety</p><p>• Motor Safety Lock</p><p>• Highly durable</p><p>• Ergonomic design</p><p>• 220-240v / 50 ~ 60Hz</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:49:53', '2021-03-09 18:57:30'),
(123, 2, 0, NULL, NULL, 'Miyako Red Sparrow Heavy Duty mixer grinder & blender 850 Watt', 'miyako-red-sparrow-heavy-duty-mixer-grinder-&-blender-850-watt', 4560, '5600', 4800, 'MBG850', '<p>• 3 in 1 Electric Blender</p><p>• Extra strong and sharp stainless-steel blades</p><p>• Liquid jar dome with clips for hand free operations</p><p>• Over load protection</p><p>• Three speed with pulse</p><p>• Special grade nylon couplers for firm grip</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:51:45', '2021-03-09 18:57:30'),
(124, 4, 0, NULL, NULL, 'Multi Color Translucent Plastic Bibs For Babies', 'multi-color-translucent-plastic-bibs-for-babies', 143, '299', 150, 'TPB', '<h4><b>Product details of 3 pcs cotton Bib for kids-Blue,Pink &amp;yellow(china)</b></h4><p>• Brand:Master Deal&nbsp;</p><p>• Product Type:CottonBib</p><p>• Color:Blue,pink &amp;yellow</p><p>• Main material:Cotton</p><p>• Gender:kids</p><p>• Use it during feeding</p><p>• Height:11inch</p><p>• Easy to wash</p><p>• Made in China</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:54:48', '2021-03-09 18:57:30'),
(125, 4, 0, NULL, NULL, 'Multi Functional Baby Rocking Chair bouncer with Adjustable Angle and Safety Belt', 'multi-functional-baby-rocking-chair-bouncer-with-adjustable-angle-and-safety-belt', 1796, '2290', 1890, 'BRC', '<p>• Best Quality Baby bouncher and Rocking chair.</p><p>• From newborn to approximately 2 years (8-29 lbs/3.5 13kg)</p><p>• The fabric is easy to take off and machine wash, warm (40 C)</p><p>• Dimensions highest position: 35 15.5 23 inch (l w h)</p><p>• Dimensions transport position: 35 15.5 4.5 inch (l w h)</p><p>• Weight: 4.6 lbs / 2.1kg</p><p>• Material: cotton 60% cotton and 40% polyester</p><p>• Multifunctional Premium Baby Rocking Chair</p><p>• Soft plush fabrics with 6D mesh for baby’s comfort</p><p>• Easily converts the rocker to a stationary seat for feeding or sleeping</p><p>• The baby easily falls asleep in the rocking chair</p><p>• Adjustable features allow the newborn to toddler portable rocker to grow with baby</p><p>• Light weight and portable to bring along everywhere</p><p>• Foldable and can keep in small space when not in us</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:56:53', '2021-03-09 18:57:30'),
(126, 2, 0, NULL, NULL, 'Multifunction Folding Drain Basket washing and cutting board', 'multifunction-folding-drain-basket-washing-and-cutting-board', 504, '790', 530, 'MCB', '<p>• Multifunction Cutting Board -</p><p>• Durable chopping board for cutting,</p><p>• it can be used as dish tub, fruit and vegetables colander, washing Basin, drainer sink and storage basket.</p><p>• Made of food grade premium PP + TPR material</p><p>• BPA Free</p><p>• Durable, not easily deformed.</p><p>• Siliconized rubber,</p><p>• lightweight, does not retain odors.</p><p>• Collapsible &amp; Portable -- Strainer is foldable,</p><p>• Designed for easy storage when not in use.</p><p>• Folding it will save space in your kitchen.</p><p>• It do not take up much room in your kitchen cupboards.</p><p>• Non-slip design - Ergonomically non-slip handle and rubber bottom surfaces to keep the board securely in place during use.</p><p>• Suction cup water plug for store and drain water.</p><p>• Wide Application - Suitable for indoor kitchen &amp; outdoor activities, can be used as dish tub or basket for camping clean-up such as washing dishes and carrying iced beverages.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 07:59:28', '2021-03-09 18:57:30'),
(127, 2, 0, NULL, NULL, 'Multipurpose Magic Silicone Hand Gloves', 'multipurpose-magic-silicone-hand-gloves', 185, '490', 195, 'MSHG', '<h4><b>product details of Multipurpose Magic Silicone Hand Gloves&nbsp;</b></h4><p>• Silicone eco-friendly product ,It is easy to rinse with water</p><p>• As it canbe sterilized in hot water,it realizes bacteria ZERO.</p><p>• Thi product is more durable than the rubber gloves and cna be used for a long time .</p><p>• It can be uesd for bathroom cleaning ,</p><p>• Dusting,Dish Washing,Pet Care Grooming Hair Car,Insulated kitchen helper,etc</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:01:37', '2021-03-09 18:57:30'),
(128, 4, 0, NULL, NULL, 'Nail Cutter for Baby', 'nail-cutter-for-baby', 109, '295', 115, 'NCFB', '<h4><b>Product details of Nail Cutter for Baby - Multicolor</b></h4><p>• Product Type: Baby Nail Clippers</p><p>• Color: Pink,Blue</p><p>• Gender: Kids</p><p>• Easy to use</p><p>• High quality metarial</p><p>• Brand new and high quality product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:04:19', '2021-03-09 18:57:30'),
(129, 4, NULL, NULL, NULL, 'Nail Cutter for Baby', 'nail-cutter-for-baby', 185, '295', 195, 'NCFB', '<h3><b>Product details of Nail Cutter for Baby - Multicolor\r\n</b></h3><p>• Product Type: Baby Nail Clippers\r\n</p><p>• Color: Pink,Blue\r\n</p><p>• Gender: Kids\r\n</p><p>• Easy to use\r\n</p><p>• High quality metarial\r\n</p><p>• Brand new and high quality product</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:05:15', '2021-03-09 18:57:30'),
(130, 2, 0, NULL, NULL, 'National Sandwich Maker', 'national-sandwich-maker', 1406, '2360', 1480, 'NSM', '<p>650-780 Watt</p><p>• 2 slice Triangle Sandwich Toaster</p><p>• Non-Stick coating</p><p>• Cool Touch Housing</p><p>• Safety clip</p><p>• Indicator Light Power</p><p>• Indicator Light Ready</p><p>• Comfortable Cool Touch Handle</p><p>• Easy to clean&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:07:13', '2021-03-09 18:57:30'),
(131, 2, 0, NULL, NULL, 'National View S18 Chopper Food Processor Blender and Mixer', 'national-view-s18-chopper-food-processor-blender-and-mixer', 1420, '2180', 1495, 'S18B&M', '<p>• 300W Powerful Motor</p><p>• 1500ML Polycarbonate Jar</p><p>• 4 Heavy Duty Blade</p><p>• 220V-50HZ Voltage</p><p>• Made in China&nbsp;Product Name: Instamixx S18</p><p>• Model: National View S18 Chopper</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:09:01', '2021-03-09 18:57:30'),
(132, 4, 0, NULL, NULL, 'NEW ARRIVAL! Fashion Baby Car Shape Potties & Seats Children Toilet, Kids Potty Trainer Toilets 0-6 Years Old Babies Toilet Travel Potty - Multicolors', 'new-arrival!-fashion-baby-car-shape-potties-&-seats-children-toilet,-kids-potty-trainer-toilets-0-6-years-old-babies-toilet-travel-potty---multicolors', 1321, '1750', 1390, 'TTP', '<h5><b>Product details of NEW ARRIVAL! Fashion Baby Car Shape Potties &amp; Seats Children Toilet, Kids Potty Trainer Toilets 0-6 Years Old Babies Toilet Travel Potty - Multicolors</b></h5><p>• Type:&nbsp;Potties</p><p>• Age Group:&nbsp;Babies</p><p>• Pattern Type: Cartoon</p><p>• Material: PP Plastic</p><p>• Color: 3 Colors (Pink, Sky Blue, Yellow-green)</p><p>• Style: Ride on Toys Car, Toilet Chair</p><p>• Feature: removeable inner toilet ( easy to clean )</p><p>• Attachment: with steering wheel, four rotating</p><p>• Usage: baby training toilet</p><p>• Size (cm): 40*31*21*17*12</p><p>• Suitable for 0-2&nbsp;years baby</p><p>• Color will be send as per available (Random)</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:11:10', '2021-03-09 18:57:30'),
(133, 4, 0, NULL, NULL, 'Newborn Infant Baby Bear Pattern Pillow Sleeping Support Prevent Flat Head Cushion Plush Animal Shape Cute Soft Pillow', 'newborn-infant-baby-bear-pattern-pillow-sleeping-support-prevent-flat-head-cushion-plush-animal-shape-cute-soft-pillow', 276, '590', 290, 'BTPB', '<h4><b>Product details of Baby Toddler Infant Newborn Sleep Positioner Pillow Bear Pattern Pillow Infant Newborn Baby Prevent Flat Head Support Pillows</b></h4><p>• Multiple places are ideal for use, such as, Cot, Crib, pram, car etc</p><p>• Made from cotton fabric, it is very soft and comfortable for newborn to use</p><p>• It can be water washed, easy to carry out, very convenient for daily use</p><p>• Cute bear pattern, is adorable to babies. Make them love to sleep</p><p>• With sunken area in the center, it is very helpful for preventing baby from flat head</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:13:07', '2021-03-09 18:57:30'),
(134, 2, 0, NULL, NULL, 'Nima 2 in 1 Electric Spice Grinder & Juicer – Silver', 'nima-2-in-1-electric-spice-grinder-&-juicer-–-silver', 903, '1150', 950, 'NEG&J', '<p><span style=\"font-size: 1rem;\">• 100% Brand New &amp; High Quality Product</span><br></p><p>• Product Type: Electric Grinder &amp; Juicer</p><p>• Material: Stainless Steel + PP</p><p>• High Quality Stainless Steel Blade</p><p>• Color: Silver</p><p>• 50G Bowl</p><p>• 500ml of Juice Jar</p><p>• Size: 10.5 X 10.5 X 28 CM (Approx.)</p><p>• Controls Type: Push Button</p><p>• Motor: AC</p><p>• Power: 150 W</p><p>• Voltage: 220-240V, 50/60 Hz</p><p>• Ideal for Grinding Of Coffee, nuts, sugar &amp; Dry Spices</p><p>• Easy to Use &amp; Easy to Clean</p><p>• Country Origin P.R.C</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:15:46', '2021-03-09 18:57:31'),
(135, 2, 0, NULL, NULL, 'Non Stick Baking Pans 3Pcs set Metal Cake Baking Pan Round Shaped Oven Baking Tray Cake Mold Bakeware Baking Tools', 'non-stick-baking-pans-3pcs-set-metal-cake-baking-pan-round-shaped-oven-baking-tray-cake-mold-bakeware-baking-tools', 551, '730', 580, 'NSBP', '<p>• Product Type: 3Pcs Round Shaoe Cake Mould</p><p>• Color: Black</p><p>• Main Material: Nonstic</p><p>• Size: Diameter-9\", 8\", 7\"</p><p>• Easy to Use and High Quality Product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:18:02', '2021-03-09 18:57:31'),
(136, 2, 0, NULL, NULL, 'Non Stick Cake Pan Bread Mold 6 Inch', 'non-stick-cake-pan-bread-mold-6-inch', 162, '455', 170, 'CP6IN', '<p>• Product Type:&nbsp;Non Stick Cake Pan Bread Mold</p><p>• Heavy-duty steel construction prevents warping</p><p>• Easy to clean</p><p>• Won’t stick</p><p>• This professional weight formed metal bake ware is a wonderful addition to any kitchen.&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:20:07', '2021-03-09 18:57:31'),
(137, 2, 0, NULL, NULL, 'NutriBullet 12-Piece High-Speed Blender Mixer & grinder', 'nutribullet-12-piece-high-speed-blender-mixer-&-grinder', 2945, '4500', 3100, 'NBM&G', '<p>• Don\'t just blend - Extract the nutrients from your fruits, vegetables, spices, nuts to create delicious and nutritious NutriBlast smoothies. It’s 600 Watt Powerful high-torque based motor, ingenious bullet cyclonic technology and specially designed extractor blade can even break Ice</p><p>• Product Name: NutriBullet</p><p>• BPA-Free</p><p>• 600W Powerful Motor</p><p>• Extractor Blade</p><p>• Dedicated Lid for better hygiene</p><p>• Complete Set for Grinding, Juicing and Blend</p><p>• 12 pcs set includes:</p><p>• High-torque Power Base</p><p>• 1 Extractor Blade</p><p>• 1 Milling Blade</p><p>• 1 Tall Cup (800 ml)</p><p>• 2 Short Cups (500 ml)</p><p>• 1 Handled Lip Ring</p><p>• 1 Regular Lip Ring</p><p>• 2 stay-fresh Resealable Lids</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:24:17', '2021-03-09 18:57:31'),
(138, 2, 0, NULL, NULL, 'Oil brush silicone 2 pcs', 'oil-brush-silicone-2-pcs', 95, '290', 100, 'OBS', '<p>• Product Type: 2 PCS Oil Brush</p><p>• Color: Transparent</p><p>• Main Material: silicone</p><p>• Size: Packet Size L-10.5\", W-2.75\"</p><p>• Easy to Use and High Quality Product</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:26:13', '2021-03-09 18:57:31'),
(139, 1, 0, NULL, NULL, 'Original Sweat slim belt', 'original-sweat-slim-belt', 371, '499', 390, 'OSSB', '<p>• We have come up with Original Sweat Slim Belt for you to reduce excess belly fat easily.</p><p>• Which is very fast (tested) 100% guarantee will make you slim and attractive by reducing your excess fat (belly) and fat.</p><p>• It is very easy to use. For your convenience, some original pictures have been provided.</p><p>• A unique gadget for women and men (which will help you reduce excess fat).</p><p>• Your figure will be in shape.</p><p>• Very easy to use.</p><p>• You can use it at home, while walking, at work, in shopping, jogging.</p><p>• Do not bother to use it, you will feel comfortable and comfortable.</p><p>• It will make you more attractive and slim.</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:30:20', '2021-03-09 18:57:31'),
(140, 2, 0, NULL, NULL, 'Philips Digital Air Fryer (Hd9238)', 'philips-digital-air-fryer-(hd9238)', 23655, '28900', 24900, 'PDAF', '<p>• Fry, grill, roast and even bake with up to 80% less fat</p><p>• Digital screen for easy control of time and temperature</p><p>• Patented Rapid Air technology for healthier cooking</p><p>• Unique Starfish design for delicious and low-fat cooking</p><p>• 220 Volt for Overseas use</p><p>• Low fat fryer</p><p>• Multicooker</p><p>• Black/red</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:34:15', '2021-03-09 18:57:31'),
(141, 1, 0, NULL, NULL, 'Pintar Facil paint Roller', 'pintar-facil-paint-roller', 903, '1150', 950, 'PFPR', '<p>• This product comes with extension poles/rods which allow you the freedom &amp; flexibility to extend up to 37\" for those hard to reach areas such as stairs hallways, ceilings and etc</p><p>• The paint is stored inside the roller, removing the need for trays or going up and down ladders to refill</p><p>• It is the smart decorating tool that will save time and effort, enabling you to paint a room quicker than ever before</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:35:53', '2021-03-09 18:57:31'),
(142, 5, 0, NULL, NULL, 'Plextone G800 Wired Gaming Headset', 'plextone-g800-wired-gaming-headset', 1416, '1990', 1490, 'GHG800', '<h3><b>Product details of Plextone G800 Wired Gaming Headset</b></h3><p>• 190mm Mic Adjust and rotate storage</p><p>• Metal arm with scale</p><p>• 3.5mm interface</p><p>• Lightweight game weight reduction design</p><p>• 50mm high fidelity horn unit</p><p>• Brand: Plextone</p><p>• Model: G800</p><p>• Communication: Wired</p><p>• Cord Length: 1.2M</p><p>• Waterproof Standard: IPX-4</p><p>• Driver: 50mm</p><p>• Impedance: 32Ω</p><p>• Sensitivity: 101dB</p><p>• Frequency range: 20Hz-20KHz</p><p>• Control: with Volume and Mic</p><p>• Cable length: 1.2M</p><p>• Plug: 3.5mm</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:49:36', '2021-03-09 18:57:31'),
(143, 2, 0, NULL, NULL, 'Power Free Hand Blender Stainless Steel For Egg & Cream Beater, Milkshake, Lassi, Butter Milk Mixer Maker', 'power-free-hand-blender-stainless-steel-for-egg-&-cream-beater,-milkshake,-lassi,-butter-milk-mixer-maker', 143, '250', 150, 'PFHB', '<p>• 1Brand New &amp; Best Quality Hand Blender</p><p>• Product Type: Power Free Blender</p><p>• Heavy Gear System</p><p>• Easy to Grip</p><p>• Convenient to Use</p><p>• Quick to clean</p><p>• Easy to Store</p><p>• Multipurpose Blade</p><p>• Material: ABS Plastic material for extra durability, 100% Stainless Steel Blades</p><p>• Heavy Duty Gear System, Easy to Grip.</p><p>• Convenient to use, Quick to Clean, Easy to Store.</p><p>• By Using Power Free Hand Blander Not Only You Can Blend The Things But Also It Gives You An Exercise To Your Finger</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:51:41', '2021-03-09 18:57:31'),
(144, 4, 0, NULL, NULL, 'Prints Washable & Reusable Baby Nappies Diaper', 'prints-washable-&-reusable-baby-nappies-diaper', 466, '600', 490, 'PBND', '<h4><b>Product details of Prints Washable Baby Nappies Diaper</b></h4><p>• Prints Washable Baby Nappies Diaper All In One Size</p><p>• 1 heavy pad included</p><p>• washable</p><p>• New gins stylish diaper</p><p>• good quality diaper</p><p>• quantity-1 pcs</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:53:51', '2021-03-09 18:57:31'),
(145, 2, 0, NULL, NULL, 'Quigg Mini Deep Fryer', 'quigg-mini-deep-fryer', 2370, '3590', 2495, 'QMDF', '<p>• Brand:Quigg</p><p>• Power: 900 Watt</p><p>• Capacity approx. 1.5 liter</p><p>• Thermostat adjustable from 150 to 190 ° C</p><p>• Brushed stainless steel body with transport handles</p><p>• Thermos-insulating handle</p><p>• Removable cover with viewing window and filter</p><p>• Lid opening button</p><p>• Non-stick coating tank</p><p>• Operation indicator light</p><p>• Overheating protection</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 08:59:17', '2021-03-09 18:57:31'),
(146, 2, 0, NULL, NULL, 'Rechargeable Handy Fruits Juicer Mixer Blender', 'rechargeable-handy-fruits-juicer-mixer-blender', 1169, '1890', 1230, 'RFJB', '<p>• Power: 30W</p><p>• Capacity: 300ml</p><p>• High resistant stainless steel blades</p><p>• Motor rotation speed: 22000 RPM</p><p>• Charging time: about 2 hours</p><p>• Full charged using time: 10 times</p><p>• 1x650mAh rechargeable lithium batteries</p><p>• Safety cut off and safety protection</p><p>• Easy to clean</p><p>• Magnetic contact charging</p><p>• Dimensions (mm): 95x95x190</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:04:08', '2021-03-09 18:57:31'),
(147, 5, 0, NULL, NULL, 'Replace Belt for Mi Band', 'replace-belt-for-mi-band', 188, '250', 198, 'MiRB', '<h4><b>Product details of Replace Belt for Mi Band 2</b></h4><p>• Magnetic suction strap brings moderate softness</p><p>• Easy to assemble without tools, perfect fit</p><p>• No gaps, comfortable to wear</p><p>• The size can be freely adjusted according to individual wrists</p><p>• Provide you with the best wearing experience</p><p>• Easy to install and remove</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:06:08', '2021-03-09 18:57:31'),
(148, 4, 0, NULL, NULL, 'Reusable Infant Cloth Diapers Grid Soft Covers Washable Size Adjustable(1 Pad)', 'reusable-infant-cloth-diapers-grid-soft-covers-washable-size-adjustable(1-pad)', 371, '590', 390, 'RCD', '<p>• Product Type: Washable Diaper</p><p>• Main Material: Soft Cotton</p><p>• Very Comfortable to Wear for Baby</p><p>• Very Stylish and Washable</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:07:48', '2021-03-09 18:57:32'),
(149, 2, 0, NULL, NULL, 'Reusable Multipurpose Magic Silicone Dishwashing Gloves Wash Scrubber Cleaning Gloves 2 pcs', 'reusable-multipurpose-magic-silicone-dishwashing-gloves-wash-scrubber-cleaning-gloves-2-pcs', 171, '290', 180, 'NSDG', '<p><span style=\"font-size: 1rem;\">• This soft Dishwashing Gloves is made of high-quality and environment friendly silicone</span><br></p><p>• Food grade silicone</p><p>• Material: rubber and latex</p><p>• Quantity: 1 Pair</p><p>• Resistant, flexible, unbreakable</p><p>• Beautiful color, elegant appearance, easy to wear</p><p>• The unique non-slip texture design, but also increase the holding force</p><p>• Usage: daily household washing bowls, plates, utensils, clothes, using a variety of detergents, not to hurt the hand, not afraid of hot water, safe</p><p>• Super Easy to Clean! Restrains Germs! Can be sterilized in Boiled water, Microwave or Dishwasher</p><p>• Easier to use and clean: use this silicone brush to replace your old style brush for improving kitchen hygiene</p><p>• Super easy to clean the brush, just rinse with water or put it in the dishwasher, it will has no residue</p><p>• Easy and convenientto use</p><p>• Package included: 1 x Pair of Gloves</p><p>• Marketed by Etcetera BD</p><p>• Country Origin P.R.C</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:09:51', '2021-03-09 18:57:32'),
(150, 1, 0, NULL, NULL, 'Revoflex Xtreme Full Body Workout', 'revoflex-xtreme-full-body-workout', 618, '990', 650, 'RXBW', '<p><span style=\"font-size: 1rem;\">• Item Type: Massage &amp; Relaxation</span><br></p><p>• Material: ABS+PP+EVA</p><p>• Size:16*43*5m</p><p>• Perform up to 40 different exercises</p><p>• Provides up to 6 levels of training</p><p>• Shapes your body quickly, easily</p><p>• Resistance workout at home</p><p>• Compact design for good portability</p><p>• Two easy-grip handles works as guides</p><p>• Works every major upper body</p><p>• Muscle group and your abdomen</p><p>• 6 Training Levels and 40 Exercises</p><p>• Intense, Light, Effortless Abdominal Training</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:11:58', '2021-03-09 18:57:32'),
(151, 2, 0, NULL, NULL, 'Round Shape Exclusive Wooden Roti Maker jumbo size 10 with both side gum tape and food grade Wrapping poly Roll', 'round-shape-exclusive-wooden-roti-maker-jumbo-size-10-with-both-side-gum-tape-and-food-grade-wrapping-poly-roll', 1796, '2480', 1890, 'RSRM', '<p>• Exceptional Round Shape Model&nbsp;</p><p>• Manual Operating</p><p>• Size:10 Inches</p><p>• Made by mehagoni wood</p><p>• Best Quality</p><p>• Round shape</p><p>• 1 box food grade Roti maker wrapping poly paper is free</p><p>• 1 pcs both side gum tape is free.</p><p>• Easy To Clean</p><p>• Easy To Use</p><p>• 100% Guranty about Round shape Roti.</p><p>• All type of Roti is possible to make by it.</p><p>• Beautiful Design</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:16:14', '2021-03-09 18:57:32'),
(152, 2, 0, NULL, NULL, 'Sahara Blender and Grinder Delight 3 In 1 600W', 'sahara-blender-and-grinder-delight-3-in-1-600w', 3981, '5500', 4190, 'SBG600', '<p>• Fastest &amp; Finest Mixing Grinding</p><p>• Powerful Motor</p><p>• Superior Jars</p><p>• Cascade body design</p><p>• Auto cut off protection for safety of motor life</p><p>• Made in India&nbsp;</p><p>• All jars are Stainless steel&nbsp;</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:18:31', '2021-03-09 18:57:32'),
(153, 2, 0, NULL, NULL, 'Santete Tea Maker', 'santete-tea-maker', 6555, '9900', 6900, 'STM', '<p>• Santete Riviera &amp; Bar 1.7LTR</p><p>• Experience the luxury of wellbeing..</p><p>• Strix controller from England.</p><p>•&nbsp; Korean Posco 304 Stainless Steel</p><p>• TUV Quality Tested</p><p>• 1200Watt</p><p>• 220V-60HZ</p><p>• Designed by Samsung</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:21:43', '2021-03-09 18:57:32'),
(154, 9, NULL, NULL, NULL, 'Anti cracked Heel polka cream (Original Thailand)', 'anti-cracked-heel-polka-cream-(original-thailand)', 656, '850', 690, 'HPC', '<p>• Polka Cracked Heel Cream Foot Care Moisturizers</p><p>• Intensive action hydrating for healthy heel</p><p>• Natural moisturizer with seaweed extracts</p><p>• nourish cracked heels and leave smooth skin</p><p>• Product of Thailand</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:23:49', '2021-03-09 18:57:32'),
(155, 2, 0, NULL, NULL, 'Scarlett Electric Egg Beater cake cream and hand Mixer', 'scarlett-electric-egg-beater-cake-cream-and-hand-mixer', 565, '780', 595, 'SEHM', '<p>• Good quality</p><p>• Heavy speed</p><p>• Power: 180 W</p><p>• Good looking</p><p>• Small hand mixer</p><p>• Great functionality</p><p>• Very powerful</p><p>• Speed control in 7 level</p><p>• 4 stirrers</p><p>• 1 pair for mixing egg and stirring</p><p>• 1 pair for a dough mixer</p><p>• Product Parameter</p><p>• Easy to use</p><p>• Durable</p><p>• Easy to clean</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:29:08', '2021-03-09 18:57:32'),
(156, 4, 0, NULL, NULL, 'Sensor Aircraft Helicopter Flaying Toys-Indoor Flight -Multi-color', 'sensor-aircraft-helicopter-flaying-toys-indoor-flight--multi-color', 245, '500', 258, 'SAHFT', '<p>• Product type - Sensor Flying Helicopter</p><p>• Material- Plastic, Metal</p><p>• Battery: Built-in 75mAh li-ion Rechargeable Battery</p><p>• Action Time: About 15 mins</p><p>• Age Range: More than 3 years old</p><p>• Charging Time: 30 mins</p><p>• Control Channels: 2 channels</p><p>• Power Source: Electric</p><p>• Charging Time-30 minutes</p><p>• Package Weight</p><p>• 1. Infrared sensor technology, uses your hand to fly the helicopter</p><p>• 2. Turn on the helicopter and holding it for 3 seconds, it will start automatically</p><p>• 3. The helicopter will fall after reaching certain height, it will fly up after sensing object underneath it</p><p>• 4. The helicopter will turn off if you grab it</p><p>• 5. Sensing distance: 1m</p><p>• Material- Plastic, Metal</p><p>• Battery: Built-in 75mAh li-ion Rechargeable Battery</p><p>• Action Time: About 15 mins</p><p>• Age Range: More than 3 years old</p><p>• Charging Time: 30 mins</p><p>• Control Channels: 2 channels</p><p>• Power Source: Electric</p><p>• Charging Time-30 minutes</p><p>• Package Weight</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:32:32', '2021-03-09 18:57:32'),
(157, 4, 0, NULL, NULL, 'Silicone Baby Finger Tooth Brush with Box', 'silicone-baby-finger-tooth-brush-with-box', 86, '150', 90, 'SFTB', '<h4><b>Product details of Silicone Baby Finger Tooth Brush with Box 2PCS</b></h4><p>• td {border: 1.0px solid #cccccc;}br {mso-data-placement: same-cell;}Item:Toothbursh</p><p>• Suitable for: 0-24 months</p><p>• Material:silicone</p><p>• Colour: Clear</p><p>• Item Size: 57*20mm</p><p>• Hair length:4MM</p><p>• Box Color:Pink,Blue,Yellow White</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 09:36:17', '2021-03-09 18:57:32'),
(158, 2, 0, NULL, NULL, 'Silicone Cleaning Gloves with Wash Scrubber Reusable Brush Dish', 'silicone-cleaning-gloves-with-wash-scrubber-reusable-brush-dish', 157, '300', 165, 'SCG', '<h4><b>Product details of Reusable Multipurpose Magic Silicone Dishwashing Gloves Wash Scrubber Cleaning Gloves</b></h4><p>• 100% Brand New &amp; Best Quality Product</p><p>• This soft Dishwashing Gloves is made of high-quality and environment friendly silicone</p><p>• Food grade silicone</p><p>• Material: rubber and latex</p><p>• Quantity: 1 Pair</p><p>• Resistant, flexible, unbreakable</p><p>• Beautiful color, elegant appearance, easy to wear</p><p>• The unique non-slip texture design, but also increase the holding force</p><p>• Usage: daily household washing bowls, plates, utensils, clothes, using a variety of detergents, not to hurt the hand, not afraid of hot water, safe</p><p>• Super Easy to Clean! Restrains Germs! Can be sterilized in Boiled water, Microwave or Dishwasher</p><p>• Easier to use and clean: use this silicone brush to replace your old style brush for improving kitchen hygiene</p><p>• Super easy to clean the brush, just rinse with water or put it in the dishwasher, it will has no residue</p><p>• Easy and convenientto use</p><p>• Package included: 1 x Pair of Gloves</p><p>• Marketed by Etcetera BD</p><p>• Country Origin P.R.C</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 11:32:24', '2021-03-09 18:57:32'),
(159, 2, 0, NULL, NULL, 'Silicone Dish Washing Kitchen Hand Gloves 2 pcs', 'silicone-dish-washing-kitchen-hand-gloves-2-pcs', 171, '299', 180, 'SKHG', '<p><span style=\"font-size: 1rem;\">• This soft Dishwashing Gloves is made of high-quality and environment friendly silicone</span><br></p><p>• Food grade silicone</p><p>• Material: rubber and latex</p><p>• Quantity: 1 Pair</p><p>• Resistant, flexible, unbreakable</p><p>• Beautiful color, elegant appearance, easy to wear</p><p>• The unique non-slip texture design, but also increase the holding force</p><p>• Usage: daily household washing bowls, plates, utensils, clothes, using a variety of detergents, not to hurt the hand, not afraid of hot water, safe</p><p>• Super Easy to Clean! Restrains Germs! Can be sterilized in Boiled water, Microwave or Dishwasher</p><p>• Easier to use and clean: use this silicone brush to replace your old style brush for improving kitchen hygiene</p><p>• Super easy to clean the brush, just rinse with water or put it in the dishwasher, it will has no residue</p><p>• Easy and convenientto use</p><p>• 100% Brand New &amp; Best Quality Product</p><p>• This soft Dishwashing Gloves is made of high-quality and environment friendly silicone</p><p>• Food grade silicone</p><p>• Material: rubber and latex</p><p>• Quantity: 1 Pair</p><p>• Resistant, flexible, unbreakable</p><p>• Beautiful color, elegant appearance, easy to wear</p><p>• The unique non-slip texture design, but also increase the holding force</p><p>• Usage: daily household washing bowls, plates, utensils, clothes, using a variety of detergents, not to hurt the hand, not afraid of hot water, safe</p><p>•&nbsp; Super Easy to Clean! Restrains Germs! Can be sterilized in Boiled water, Microwave or Dishwasher</p><p>• Easier to use and clean: use this silicone brush to replace your old style brush for improving kitchen hygiene</p><p>• Super easy to clean the brush, just rinse with water or put it in the dishwasher, it will has no residue</p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 11:37:00', '2021-03-09 18:57:32'),
(160, 2, 0, NULL, NULL, 'Silicone Ice-Cube Chocolate Cake Jelly Tray Pan Heart design Mould', 'silicone-ice-cube-chocolate-cake-jelly-tray-pan-heart-design-mould', 157, '387', 165, 'SCCJT', '<h4><b>Product details of Silicone Ice-Cube Chocolate Cake Jelly Tray Pan Heart Maker Mold Mould</b></h4><p>• Cake Tools Type:Moulds</p><p>• Net weight:66g</p><p>• Quantity:1Pcs</p><p>• Size:21.3cmL X 10.5cmW X 2.3cmH</p><p>• Temperature tolerance:-60 to 260 MAX</p><p>• Type:Baking &amp; Pastry Tools</p><p>• Baking &amp; Pastry Tools Type:Chocolate Mold</p><p>• Kit Number:11</p><p>• Feature:Eco-Friendly/Stocked</p><p>• Material:Silicone&nbsp;</p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-13 11:41:05', '2021-10-31 04:14:56'),
(161, 7, 6, 0, 2, 'Girls Fashion Sweater ( Maroon )', 'girls-fashion-sweater-(-maroon-)', 641, '780', 675, NULL, '<p>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : মেরুন<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br>&nbsp;&nbsp;&nbsp; Made In Chaina<br><br>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : মেরুন<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br>&nbsp;&nbsp;&nbsp; Made In Chaina<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 14:31:41', '2021-03-09 18:57:32'),
(162, 7, 6, 0, 2, 'Stylist Full Sleeve cardigan', 'stylist-full-sleeve-cardigan', 627, '1800', 660, NULL, '<p>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : গ্রে<br>&nbsp;&nbsp;&nbsp; ডিজাইন : কুশি কাটা<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br><br>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : গ্রে<br>&nbsp;&nbsp;&nbsp; ডিজাইন : কুশি কাটা<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 14:50:01', '2021-03-09 18:57:32'),
(163, 7, 6, 0, NULL, 'Women Black Self Design Longline Front-Open Sweater', 'women-black-self-design-longline-front-open-sweater', 561, '1800', 590, NULL, '<p>&nbsp;&nbsp;&nbsp; Size &amp; Fit<br>&nbsp;&nbsp;&nbsp; The model (height 5\'8\'\') is wearing a size Free<br>&nbsp;&nbsp;&nbsp; Material &amp; Care<br>&nbsp;&nbsp;&nbsp; 100% Cotton<br>&nbsp;&nbsp;&nbsp; Machine-wash<br>&nbsp;&nbsp;&nbsp; Specifications<br>&nbsp;&nbsp;&nbsp; Fabric: Cotton<br>&nbsp;&nbsp;&nbsp; Pattern: Self Design<br>&nbsp;&nbsp;&nbsp; Sleeve Length: Long Sleeves<br>&nbsp;&nbsp;&nbsp; Neck: Shawl Collar<br>&nbsp;&nbsp;&nbsp; Occasion: Casual<br>&nbsp;&nbsp;&nbsp; Type; Front-Open<br>&nbsp;&nbsp;&nbsp; Print or Pattern Type: Geometric<br>&nbsp;&nbsp;&nbsp; Wash Care: Hand Wash<br>&nbsp;&nbsp;&nbsp; Hemline: Ribbed<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 14:53:32', '2021-03-09 18:57:32'),
(164, 7, 6, 0, 2, 'Women Black & Grey Front Open Short Cardigans ( Free Size )', 'women-black-&-grey-front-open-short-cardigans-(-free-size-)', 561, '1950', 590, NULL, '<p>&nbsp;&nbsp;&nbsp; Size &amp; Fit<br>&nbsp;&nbsp;&nbsp; The model (height 5\'8\'\') is wearing a size Free<br>&nbsp;&nbsp;&nbsp; Material &amp; Care<br>&nbsp;&nbsp;&nbsp; 100% Cotton<br>&nbsp;&nbsp;&nbsp; Machine-wash<br>&nbsp;&nbsp;&nbsp; Specifications<br>&nbsp;&nbsp;&nbsp; Fabric: Cotton<br>&nbsp;&nbsp;&nbsp; Pattern: Self Design<br>&nbsp;&nbsp;&nbsp; Sleeve Length: Long Sleeves<br>&nbsp;&nbsp;&nbsp; Neck: Shawl Collar<br>&nbsp;&nbsp;&nbsp; Occasion: Casual<br>&nbsp;&nbsp;&nbsp; Type; Front-Open<br>&nbsp;&nbsp;&nbsp; Print or Pattern Type: Geometric<br>&nbsp;&nbsp;&nbsp; Wash Care: Hand Wash<br>&nbsp;&nbsp;&nbsp; Hemline: Ribbed<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 14:57:06', '2021-03-09 18:57:32'),
(165, 7, 6, 0, 2, 'Women Grey Solid Hooded Sweaters ( Free Size )', 'women-grey-solid-hooded-sweaters-(-free-size-)', 618, '1200', 650, NULL, '<ul><li>&nbsp;&nbsp;&nbsp; PRODUCT DETAILS<br>&nbsp;&nbsp;&nbsp; Grey crop sweatshirt, has a hood, long sleeves, zip closure, straight hem<br>&nbsp;&nbsp;&nbsp; Size &amp; Fit<br>&nbsp;&nbsp;&nbsp; The model (height 5\'8\") is wearing a size Free<br>&nbsp;&nbsp;&nbsp; Material &amp; Care<br>&nbsp;&nbsp;&nbsp; 100% cotton<br>&nbsp;&nbsp;&nbsp; Machine-wash<br>&nbsp;&nbsp;&nbsp; Specifications<br>&nbsp;&nbsp;&nbsp; Size: Free<br>&nbsp;&nbsp;&nbsp; Sleeve Length: Long Sleeves<br>&nbsp;&nbsp;&nbsp; Neck: Hood<br>&nbsp;&nbsp;&nbsp; Pattern: Fashion Design<br>&nbsp;&nbsp;&nbsp; Length: Crop<br>&nbsp;&nbsp;&nbsp; Type: Front-Open<br>&nbsp;&nbsp;&nbsp; Print or Pattern Type: Solid<br>&nbsp;&nbsp;&nbsp; Hood: Hooded<br>&nbsp;&nbsp;&nbsp; Closure: Button<br>&nbsp;&nbsp;&nbsp; Occasion: Casual<br>&nbsp;&nbsp;&nbsp; Hemline: Straight<br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 15:02:27', '2021-03-09 18:57:32'),
(166, 7, 6, 0, 2, 'Fashionable Full Sleeve cardigan sweater', 'fashionable-full-sleeve-cardigan-sweater', 675, '1850', 710, NULL, '<ul><li>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : মাল্টি কালার<br>&nbsp;&nbsp;&nbsp; ডিজাইন : জেকার্ড<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল, কটন<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br><br>&nbsp;&nbsp;&nbsp; প্রডাক্ট টাইপ : লেডিস সুয়েটার ফুল স্লিভ<br>&nbsp;&nbsp;&nbsp; কালার : মাল্টি কালার<br>&nbsp;&nbsp;&nbsp; ডিজাইন : জেকার্ড<br>&nbsp;&nbsp;&nbsp; সফট এন্ড কমফোর্টেবল<br>&nbsp;&nbsp;&nbsp; উইন্টার ওয়্যার<br>&nbsp;&nbsp;&nbsp; ফেব্রিক: উল, কটন<br>&nbsp;&nbsp;&nbsp; সাইজ: S,M, L, XL<br>&nbsp;&nbsp;&nbsp; S : চেস্ট - 17.5”, লেন্থ - 34”<br>&nbsp;&nbsp;&nbsp; M : চেস্ট - 18”, লেন্থ - 35”<br>&nbsp;&nbsp;&nbsp; L : চেস্ট - 20”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; XL :চেস্ট - 21”, লেন্থ - 36”<br>&nbsp;&nbsp;&nbsp; Export Quality<br><br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 15:04:42', '2021-03-09 18:57:32'),
(167, 7, 8, 0, 3, 'Fagun Special Yellow & Golden Halfsilk Saree for Women', 'fagun-special-yellow-&-golden-halfsilk-saree-for-women', 304, '550', 320, NULL, '<ul><li>&nbsp;&nbsp;&nbsp; Product Type: Saree<br>&nbsp;&nbsp;&nbsp; Main Material: Halfsilk<br>&nbsp;&nbsp;&nbsp; Gender: Women<br>&nbsp;&nbsp;&nbsp; Occasion: Casual, Party &amp; Festive<br>&nbsp;&nbsp;&nbsp; Attractive designs<br>&nbsp;&nbsp;&nbsp; Fashionable<br>&nbsp;&nbsp;&nbsp; An uncommon present for the extraordinary individual<br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 15:21:52', '2021-03-09 18:57:32'),
(168, 7, 8, 0, 3, 'Exclusive Jum Sharee For Women', 'exclusive-jum-sharee-for-women', 418, '1350', 440, NULL, '<ul><li>&nbsp;&nbsp;&nbsp; Product type: saree<br>&nbsp;&nbsp;&nbsp; Main materials:half silk<br>&nbsp;&nbsp;&nbsp; Bohor:12 haat<br>&nbsp;&nbsp;&nbsp; Only saree<br>&nbsp;&nbsp;&nbsp; Bohor:46 inch<br>&nbsp;&nbsp;&nbsp; Product size:saree-4.80mtrs<br>&nbsp;&nbsp;&nbsp; No lace will fitted<br>&nbsp;&nbsp;&nbsp; Occasion:casual,party,&amp;festive<br>&nbsp;&nbsp;&nbsp; Colour: As same as picture<br>&nbsp;&nbsp;&nbsp; Perfect wear for formal occasions<br>&nbsp;&nbsp;&nbsp; Easy to wash<br></li></ul>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-19 15:32:27', '2021-03-09 18:57:33'),
(169, 6, 3, 1, 6, 'Richman Ultra Slim Fit Denim Shirt for Men', 'richman-ultra-slim-fit-denim-shirt-for-men', 1682, '1990', 1770, 'Product Code: M-700-78935', '<p><br>&nbsp;&nbsp; Richman Ultra Slim Fit Denim Shirt for Men - 4106010078.<br>&nbsp;&nbsp;&nbsp; Brand: Richman.<br>&nbsp;&nbsp;&nbsp; Full sleeve shirt.<br>&nbsp;&nbsp;&nbsp; Stylish and comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Fabric: Cotton.<br>&nbsp;&nbsp;&nbsp; Color: As given picture.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement Chart (Inch): M (Neck 15.5\", Front Length 30\", Chest 41\", Sleeve Length 25.5\"); L (Neck 16\", Front Length 30.7\", Chest 42\", Sleeve Length 25.5\"), XL (Neck 17\", Front Length 32\", Chest 44\", Sleeve Length 26\"). &nbsp;<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:27:25', '2021-03-09 18:57:33'),
(170, 6, 3, 1, 6, 'Richman Ultra Slim Fit Denim Shirt for Men - 4107310023', 'richman-ultra-slim-fit-denim-shirt-for-men---4107310023', 1891, '2250', 1990, 'Product Code: M-700-78936', '<p><br><br>&nbsp;&nbsp;&nbsp; Richman Ultra Slim Fit Denim Shirt for Men - 4107310023.<br>&nbsp;&nbsp;&nbsp; Brand: Richman.<br>&nbsp;&nbsp;&nbsp; Full sleeve shirt.<br>&nbsp;&nbsp;&nbsp; Stylish and comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Fabric: Cotton.<br>&nbsp;&nbsp;&nbsp; Color: As given picture.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement Chart (Inch): M (Neck 15.5\", Front Length 30\", Chest 41\", Sleeve Length 25.5\"); L (Neck 16\", Front Length 30.7\", Chest 42\", Sleeve Length 25.5\"), XL (Neck 17\", Front Length 32\", Chest 44\", Sleeve Length 26\"). &nbsp;<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:30:31', '2021-03-09 18:57:33'),
(171, 6, 3, 1, 6, 'Richman Ultra Slim Fit Denim Shirt for Men - 4106010073', 'richman-ultra-slim-fit-denim-shirt-for-men---4106010073', 1796, '2000', 1890, 'M-700-78934', '<p><br>&nbsp;&nbsp;&nbsp; Richman Ultra Slim Fit Denim Shirt for Men - 4106010073.<br>&nbsp;&nbsp;&nbsp; Brand: Richman.<br>&nbsp;&nbsp;&nbsp; Full sleeve shirt.<br>&nbsp;&nbsp;&nbsp; Stylish and comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Fabric: Cotton.<br>&nbsp;&nbsp;&nbsp; Color: As given picture.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement Chart (Inch): M (Neck 15.5\", Front Length 30\", Chest 41\", Sleeve Length 25.5\"); L (Neck 16\", Front Length 30.7\", Chest 42\", Sleeve Length 25.5\"), XL (Neck 17\", Front Length 32\", Chest 44\", Sleeve Length 26\"). &nbsp;<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:33:07', '2021-03-09 18:57:33'),
(172, 6, 3, 1, 6, 'Richman Ultra Slim Fit Denim Shirt for Men - 4106010093', 'richman-ultra-slim-fit-denim-shirt-for-men---4106010093', 1511, '1880', 1590, 'M-700-78931', '<p>ichman Ultra Slim Fit Denim Shirt for Men - 4106010093.<br>Brand: Richman.<br>Full sleeve shirt.<br>Stylish and comfortable to wear.<br>Fabric: Cotton.<br>Color: As given picture.<br>Size: M, L, XL.<br>Measurement Chart (Inch): M (Neck 15.5\", Front Length 30\", Chest 41\", Sleeve Length 25.5\"); L (Neck 16\", Front Length 30.7\", Chest 42\", Sleeve Length 25.5\"), XL (Neck 17\", Front Length 32\", Chest 44\", Sleeve Length 26\").<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:34:48', '2021-03-09 18:57:33'),
(173, 6, 3, 1, 6, 'Richman Ultra Slim Fit Shirt - 4107310013', 'richman-ultra-slim-fit-shirt---4107310013', 2184, '2499', 2299, 'M-700-67020', '<p>&nbsp; &nbsp; Brand: Richman.<br>&nbsp;&nbsp;&nbsp; Full Sleeve Shirt.<br>&nbsp;&nbsp;&nbsp; Fabrics: Cotton.<br>&nbsp;&nbsp;&nbsp; Available Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement Chart (Inch): M (Neck 15.5, Front Length 30, Chest 41, Sleeve Length 25.5); L (Neck 16, Front Length 30.5, Chest 42, Sleeve Length 25.5), XL (Neck 16.5, Front Length 31.5, Chest 44, Sleeve Length 26).<br>&nbsp;&nbsp;&nbsp; Color: As same as picture.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:37:52', '2021-03-09 18:57:33'),
(174, 6, 3, 2, 6, 'Richman Ultra Slim Fit Band Collar Shirt - 4106510038', 'richman-ultra-slim-fit-band-collar-shirt---4106510038', 1899, '2199', 1999, 'M-700-69942', '<p><br>&nbsp;&nbsp;&nbsp; Brand Name: Richman.<br>&nbsp;&nbsp;&nbsp; Fabrics: Cotton.<br>&nbsp;&nbsp;&nbsp; Available Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement Chart (Inch): M (Neck 15.5, Front Length 30, Chest 41, Sleeve Length 25.5); L (Neck 16, Front Length 30.5, Chest 42, Sleeve Length 25.5), XL (Neck 16.5, Front Length 31.5, Chest 44, Sleeve Length 26).<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:40:23', '2021-03-09 18:57:33'),
(175, 6, 3, 3, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস', 474, '599', 499, NULL, '<p>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:51:32', '2021-03-09 18:57:33'),
(176, 6, 3, 3, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস ব্লু', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস-ব্লু', 428, '550', 450, NULL, '<p>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:53:49', '2021-03-09 18:57:33'),
(177, 6, 3, 3, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস', 474, '550', 499, NULL, '<p><br>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 05:55:57', '2021-03-09 18:57:33'),
(178, 6, 3, 3, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস', 474, '540', 499, NULL, '<p>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:02:11', '2021-03-09 18:57:33'),
(179, 6, 3, 3, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস', 474, '600', 499, NULL, '<p>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:04:55', '2021-03-09 18:57:33'),
(180, 6, 3, 1, NULL, 'হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেনস', 'হাফ-স্লিভ-ক্যাজুয়াল-শার্ট-ফর-মেনস', 428, '500', 450, NULL, '<p>হাফ স্লিভ ক্যাজুয়াল শার্ট ফর মেন্স<br>ফেব্রিক ৯৮% কটন এবং ২% মিক্সড সাইজ- M.L.XL Measurment : M- chest-39\" ( length -28.5\" L- chest -41\" ( length -29.5\" XL- chest-43\" ( length -30.5\"<br>ফরমাল কোয়ালিটি<br>স্টান্ডার্ড কোয়ালিটি<br>বি: দ্র: ইমেজে পন্যের রঙ দেখুন আপনার কম্পিউটার রেজ্যুলেশন লাইটিং এর জন্য ইমেজ ও প্রকৃতি পন্যের রঙ এ সামন্য তারতম্য ঘটতে পারে &gt;<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:07:02', '2021-03-09 18:57:33'),
(181, 6, 4, 2, 7, 'Half Sleeve Polo T-shirt - EXPTS09', 'half-sleeve-polo-t-shirt---expts09', 380, '450', 400, 'M-1009-106841', '<p><br>&nbsp;&nbsp; Half Sleeve Polo T-shirt - EXPTS09.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme<br>&nbsp;&nbsp;&nbsp; Product Type: Polo T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 220-230<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest-40\", Length-27\'\'), L (Chest-42\", Length-28\'\'), XL (Chest-44\", Length-29\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: As same as picture.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:24:32', '2021-03-09 18:57:33'),
(182, 6, 4, 2, 7, 'Half Sleeve Polo T-shirt - EXPTS07', 'half-sleeve-polo-t-shirt---expts07', 380, '450', 400, 'M-1009-106835', '<p><br>&nbsp;&nbsp;&nbsp; Half Sleeve Polo T-shirt - EXPTS07.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme<br>&nbsp;&nbsp;&nbsp; Product Type: Polo T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 220-230<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest-40\", Length-27\'\'), L (Chest-42\", Length-28\'\'), XL (Chest-44\", Length-29\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: Purple.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:30:33', '2021-03-09 18:57:33');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(183, 6, 4, 2, 7, 'Half Sleeve Polo T-shirt - EXPTS06 Half SleHalf Sleeve Polo T-shirt - EXPTS06', 'half-sleeve-polo-t-shirt---expts06-half-slehalf-sleeve-polo-t-shirt---expts06', 428, '500', 450, 'M-1009-106834', '<p><br>&nbsp;&nbsp;&nbsp; Half Sleeve Polo T-shirt - EXPTS06.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme<br>&nbsp;&nbsp;&nbsp; Product Type: Polo T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 220-230<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest-40\", Length-27\'\'), L (Chest-42\", Length-28\'\'), XL (Chest-44\", Length-29\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: Sky Blue.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:34:27', '2021-03-09 18:57:33'),
(184, 6, 4, 2, 7, 'Half Sleeve Polo T-shirt - EXPTS05', 'half-sleeve-polo-t-shirt---expts05', 428, '500', 450, 'M-1009-106832', '<p><br>&nbsp;&nbsp;&nbsp; Half Sleeve Polo T-shirt - EXPTS05.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme.<br>&nbsp;&nbsp;&nbsp; Product Type: Polo T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 220-230.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest-40\", Length-27\'\'), L (Chest-42\", Length-28\'\'), XL (Chest-44\", Length-29\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: Black.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:38:03', '2021-03-09 18:57:33'),
(185, 6, 4, 2, 7, 'Full Sleeve T-shirt for Men - EXFTS05', 'full-sleeve-t-shirt-for-men---exfts05', 284, '399', 299, 'M-1009-106828', '<p><br><br>&nbsp;&nbsp;&nbsp; Full Sleeve T-shirt for Men - EXFTS05.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme.<br>&nbsp;&nbsp;&nbsp; Product Type: T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: 100% Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 180-190.<br>&nbsp;&nbsp;&nbsp; Export Fabric.<br>&nbsp;&nbsp;&nbsp; Size: S, M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): S (Chest-38\", Length-27\'\'), M (Chest-40\", Length-28\'\'), L (Chest-42\", Length-29\'\'), XL (Chest-44\", Length-30\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: Navy Blue.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:42:21', '2021-03-09 18:57:33'),
(186, 6, 4, 2, 7, 'Full Sleeve T-shirt for Men - EXFTS06', 'full-sleeve-t-shirt-for-men---exfts06', 284, '399', 299, 'M-1009-106829', '<p><br><br>&nbsp;&nbsp;&nbsp; Full Sleeve T-shirt for Men - EXFTS06.<br>&nbsp;&nbsp;&nbsp; Brand: Extreme.<br>&nbsp;&nbsp;&nbsp; Product Type: T-shirt.<br>&nbsp;&nbsp;&nbsp; Main Material: 100% Cotton.<br>&nbsp;&nbsp;&nbsp; GSM: 180-190.<br>&nbsp;&nbsp;&nbsp; Export Fabric.<br>&nbsp;&nbsp;&nbsp; Size: S, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): S (Chest-38\", Length-27\'\'), M (Chest-40\", Length-28\'\'), L (Chest-42\", Length-29\'\'), XL (Chest-44\", Length-30\'\').<br>&nbsp;&nbsp;&nbsp; Trendy and Fashionable.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Color: Royal Blue.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:45:12', '2021-03-09 18:57:34'),
(187, 6, 5, 0, 8, 'SaRa Jacket for Men THMBJ2007N', 'sara-jacket-for-men-thmbj2007n', 759, '899', 799, 'M-642-116343', '<p><br><br>&nbsp;&nbsp;&nbsp; SaRa Jacket for Men THMBJ2007N.<br>&nbsp;&nbsp;&nbsp; Brand: SaRa Lifestyle.<br>&nbsp;&nbsp;&nbsp; Product Type: Jacket.<br>&nbsp;&nbsp;&nbsp; Material: Synthetic.<br>&nbsp;&nbsp;&nbsp; Pocket: Both side Jacket.<br>&nbsp;&nbsp;&nbsp; 100% Export Quality.<br>&nbsp;&nbsp;&nbsp; Fashionable &amp; Comfortable.<br>&nbsp;&nbsp;&nbsp; Size: XS, S, M, L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (In Inch): XS (Chest 38.5\", Length 25\"), S (Chest 40.5\", Length 25.5\"), M (Chest 42.5\", Length 26.5\"), L (Chest 44.5\", Length 27\"), XL (Chest 46.5\", Length 28\"), XXL (Chest 48.5\", Length 28.5\").<br>&nbsp;&nbsp;&nbsp; Authentic Product.<br>&nbsp;&nbsp;&nbsp; For an Effortlessly Trendy Look.<br>&nbsp;&nbsp;&nbsp; Unique Design.<br>&nbsp;&nbsp;&nbsp; Best Production Quality.<br>&nbsp;&nbsp;&nbsp; Color: As Same as Picture.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting. <br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 06:54:37', '2021-03-09 18:57:34'),
(188, 6, 5, 0, 8, 'Meghna Reversible Jacket for Men - 03', 'meghna-reversible-jacket-for-men---03', 1234, '1399', 1299, 'M-1187-110708', '<p><br><br>&nbsp;&nbsp;&nbsp; Meghna Reversible Jacket for Men - 03.<br>&nbsp;&nbsp;&nbsp; Fabric: Polyester.<br>&nbsp;&nbsp;&nbsp; Lining Material: 210T Taeta 100% Polyester Solid.<br>&nbsp;&nbsp;&nbsp; Weight: 300 gm.<br>&nbsp;&nbsp;&nbsp; Size: M, L.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest 43\", Length 27\"); L (Chest 45\", Length 28\").<br>&nbsp;&nbsp;&nbsp; Thickness: Light Padding.<br>&nbsp;&nbsp;&nbsp; Filling: Polyester.<br>&nbsp;&nbsp;&nbsp; Closure Type: Zipper.<br>&nbsp;&nbsp;&nbsp; Cuff Style: Rib.<br>&nbsp;&nbsp;&nbsp; Color: Gray.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:01:21', '2021-03-09 18:57:34'),
(189, 6, 5, 0, 8, 'Sharaz Jacket for Men', 'sharaz-jacket-for-men', 949, '1380', 999, 'M-1187-110732', '<p><br><br>&nbsp;&nbsp;&nbsp; Sharaz Jacket for Men.<br>&nbsp;&nbsp;&nbsp; Fabric: Polyester.<br>&nbsp;&nbsp;&nbsp; Lining Material: 210T Taeta 100% Polyester Solid.<br>&nbsp;&nbsp;&nbsp; Size: L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): L (Chest 45\", Length 28\"); XL (Chest 47\", Length 28.75\"), XXL (Chest 49\", Length 29.5\").<br>&nbsp;&nbsp;&nbsp; Thickness: Standard Padding.<br>&nbsp;&nbsp;&nbsp; Weight: 300 gm.<br>&nbsp;&nbsp;&nbsp; Filling: Polyester.<br>&nbsp;&nbsp;&nbsp; Closure Type: Zipper.<br>&nbsp;&nbsp;&nbsp; Cuff Style: Rib.<br>&nbsp;&nbsp;&nbsp; Color: Blue.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:03:57', '2021-03-09 18:57:34'),
(190, 6, 5, 0, 8, 'PU Leather Jacket for Men - 02 (Brown)', 'pu-leather-jacket-for-men---02-(brown)', 1139, '1300', 1199, 'M-1187-110729', '<p><br>&nbsp;&nbsp;&nbsp; PU Leather Jacket for Men - 02.<br>&nbsp;&nbsp;&nbsp; Product Type: Jacket.<br>&nbsp;&nbsp;&nbsp; Material: Artificial Leather.<br>&nbsp;&nbsp;&nbsp; Size: M, L.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest 43\", Length 27\"); L (Chest 45\", Length 28\").<br>&nbsp;&nbsp;&nbsp; Weight: 300 gm.<br>&nbsp;&nbsp;&nbsp; Fashion and trendy.<br>&nbsp;&nbsp;&nbsp; Perfect for winter.<br>&nbsp;&nbsp;&nbsp; Comfortable and warm.<br>&nbsp;&nbsp;&nbsp; Color: Brown.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:08:15', '2021-03-09 18:57:34'),
(191, 6, 5, 0, 8, 'Ali Baba Full Sleeve Jacket for Men', 'ali-baba-full-sleeve-jacket-for-men', 949, '1099', 999, 'M-1187-110704', '<p><br><br>&nbsp;&nbsp;&nbsp; Ali Baba Full Sleeve Jacket for Men.<br>&nbsp;&nbsp;&nbsp; Fabric: Polyester.<br>&nbsp;&nbsp;&nbsp; Lining Material:210T Taeta 100% Polyester Solid.<br>&nbsp;&nbsp;&nbsp; Size: M, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest 43\", Length 27\"); XL (Chest 47\", Length 28.75\"), XXL (Chest 49\", Length 29.5\").<br>&nbsp;&nbsp;&nbsp; Thickness: Standard Padding.<br>&nbsp;&nbsp;&nbsp; Filling: Mix Cotton and Polyester.<br>&nbsp;&nbsp;&nbsp; Closure Type: Zipper.<br>&nbsp;&nbsp;&nbsp; Cuff Style: Rib.<br>&nbsp;&nbsp;&nbsp; Color: Olive &amp; Black.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:10:42', '2021-03-09 18:57:34'),
(192, 6, 5, 0, 8, 'Vision Bomber Jacket for Men - 03', 'vision-bomber-jacket-for-men---03', 1614, '1899', 1699, 'M-1187-110448', '<p><br><br>&nbsp;&nbsp;&nbsp; Vision Bomber Jacket for Men - 03.<br>&nbsp;&nbsp;&nbsp; Product Type: Jacket.<br>&nbsp;&nbsp;&nbsp; Style: Classical fit Vision Bomber Jacket with Sleeve Zipper.<br>&nbsp;&nbsp;&nbsp; Collar: Baseball Collar.<br>&nbsp;&nbsp;&nbsp; Zipper: T5 Vislon Zipper.<br>&nbsp;&nbsp;&nbsp; Fit: Tight fit to the Body &amp; Slim Cut Sleeves.<br>&nbsp;&nbsp;&nbsp; Pocket: Side Pocket /Sleeve Pocket in Left Side &amp; Internal Bon Pocket.<br>&nbsp;&nbsp;&nbsp; Rib: Neck, Cuff, &amp; Bottom for Comfortable Wearing.<br>&nbsp;&nbsp;&nbsp; Thread: 20/2, 40/2.<br>&nbsp;&nbsp;&nbsp; Size: S, M, L, XL, XXL, XXXL.<br>&nbsp;&nbsp;&nbsp; Measurement (In Inch): S (Chest 40\", Length 26\"); M (Chest 40\", Length 27\"); L (Chest 44\", Length 27\"); XL (Chest 48\", Length 27.5\"); XXL (Chest 50\", Length 28\"); XXXL (Chest 54\", Length 28.35\").<br>&nbsp;&nbsp;&nbsp; For an Effortlessly Trendy Look.<br>&nbsp;&nbsp;&nbsp; Best Production Quality.<br>&nbsp;&nbsp;&nbsp; Color: Olive.<br>&nbsp;&nbsp;&nbsp; Disclamation: The color of the image and the actual product may vary slightly for your computer resolution and lighting. <br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:13:11', '2021-03-09 18:57:34'),
(193, 6, 21, 0, 9, 'Crocodile Winter Fleece Full Sleeve Sweat Shirt cWF-004', 'crocodile-winter-fleece-full-sleeve-sweat-shirt-cwf-004', 1329, '1500', 1399, 'M-907-113256', '<p><br><br>&nbsp;&nbsp;&nbsp; Crocodile Winter Fleece Full Sleeve Sweat Shirt cWF-004.<br>&nbsp;&nbsp;&nbsp; Brand: Crocodile.<br>&nbsp;&nbsp;&nbsp; Product Type: Full Sleeve Sweat Shirt.<br>&nbsp;&nbsp;&nbsp; Material: 100% Cotton.<br>&nbsp;&nbsp;&nbsp; Gender: Men.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL.<br>&nbsp;&nbsp;&nbsp; Measurement (In Inch): M (Chest 40\", Length 27.5\"), L (Chest 45\", Length 27.5\"), XL (Chest 48\", Length 28.5\").<br>&nbsp;&nbsp;&nbsp; Color: Ash Grey.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:23:46', '2021-03-09 18:57:34'),
(194, 6, 21, 0, 10, 'Light Grey Blazer Hoodie For Men MH-010', 'light-grey-blazer-hoodie-for-men-mh-010', 428, '599', 450, 'M-608-112938', '<p><br><br>&nbsp;&nbsp;&nbsp; Product type: Hoodie.<br>&nbsp;&nbsp;&nbsp; Fabrics: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Fleece Fabric: 270 GSM.<br>&nbsp;&nbsp;&nbsp; Fabrication: Inside Brush 270 GSM.<br>&nbsp;&nbsp;&nbsp; Sleeve: Full.<br>&nbsp;&nbsp;&nbsp; Trendy look.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Fashionable and attractive design.<br>&nbsp;&nbsp;&nbsp; Contrast design.<br>&nbsp;&nbsp;&nbsp; Export quality.<br>&nbsp;&nbsp;&nbsp; Gender: Male.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (In Inch): M (Chest: 39\", Length: 28\"); L (Chest: 41\", Length: 29\"); XL (Chest: 43\", Length: 30\"). XXL (Chest: 45\", Length: 31\").<br>&nbsp;&nbsp;&nbsp; Color: As same as picture.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:27:02', '2021-03-09 18:57:34'),
(195, 6, 21, 0, 10, 'Fleece Cotton Hoodie for Men – H5', 'fleece-cotton-hoodie-for-men-–-h5', 523, '650', 550, 'M-967-111601', '<p><br><br>&nbsp;&nbsp;&nbsp; Fleece Cotton Hoodie for Men – H5.<br>&nbsp;&nbsp;&nbsp; Product Type: Hoodie.<br>&nbsp;&nbsp;&nbsp; Material: Imported Fleece Cotton.<br>&nbsp;&nbsp;&nbsp; Inside Fabric: Soft Brushed Fabric.<br>&nbsp;&nbsp;&nbsp; GSM: 30 GSM.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Length 27\", Chest 40\"), L (Length 27\", Chest 42\"), XL (Length 28\", Chest 44\"), XXL (Length 29\", Chest 46\").<br>&nbsp;&nbsp;&nbsp; High density print (better quality than rubber print or screen print).<br>&nbsp;&nbsp;&nbsp; Comfortable to wear and warm.<br>&nbsp;&nbsp;&nbsp; Color: As same as the picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:29:15', '2021-03-09 18:57:34'),
(196, 6, 21, 0, 10, 'Fleece Cotton Hoodie for Men - H1', 'fleece-cotton-hoodie-for-men---h1', 569, '699', 599, 'M-967-111593', '<p><br><br>&nbsp;&nbsp;&nbsp; Fleece Cotton Hoodie for Men - H1.<br>&nbsp;&nbsp;&nbsp; Product Type: Hoodie.<br>&nbsp;&nbsp;&nbsp; Material: Imported Fleece Cotton.<br>&nbsp;&nbsp;&nbsp; Inside Fabric: Soft Brushed Fabric.<br>&nbsp;&nbsp;&nbsp; GSM: 30 GSM.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Length 27\", Chest 40\"), L (Length 27\", Chest 42\"), XL (Length 28\", Chest 44\"), XXL (Length 29\", Chest 46\").<br>&nbsp;&nbsp;&nbsp; High-density print (better quality than rubber print or screen print).<br>&nbsp;&nbsp;&nbsp; Comfortable to wear and warm.<br>&nbsp;&nbsp;&nbsp; Color: As same as the picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:31:11', '2021-03-09 18:57:34'),
(197, 6, 21, 0, 10, 'Cotton Casual Sweatshirt For Men - MST-004', 'cotton-casual-sweatshirt-for-men---mst-004', 333, '499', 350, 'M-608-112948', '<p><br>&nbsp;&nbsp;&nbsp; Product type: Hoodie.<br>&nbsp;&nbsp;&nbsp; Fabrics: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Fleece Fabric: 240 GSM.<br>&nbsp;&nbsp;&nbsp; Sleeve: Full.<br>&nbsp;&nbsp;&nbsp; Trendy look.<br>&nbsp;&nbsp;&nbsp; Comfortable to wear.<br>&nbsp;&nbsp;&nbsp; Fashionable and attractive design.<br>&nbsp;&nbsp;&nbsp; Contrast design.<br>&nbsp;&nbsp;&nbsp; Export quality.<br>&nbsp;&nbsp;&nbsp; Gender: Male.<br>&nbsp;&nbsp;&nbsp; Size: M, L, XL, XXL.<br>&nbsp;&nbsp;&nbsp; Measurement (In Inch): M (Chest: 39\", Length: 28\"); L (Chest: 41\", Length: 29\"); XL (Chest: 43\", Length: 30\"). XXL (Chest: 45\", Length: 31\").<br>&nbsp;&nbsp;&nbsp; Color: As same as picture.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:32:58', '2021-03-09 18:57:34'),
(198, 6, 21, 0, 10, 'Full Sleeve Sweat Shirt for Men - NVI', 'full-sleeve-sweat-shirt-for-men---nvi', 664, '799', 699, 'M-1011-110790', '<p><br>&nbsp;&nbsp;&nbsp; Full Sleeve Sweat Shirt for Men - NVI.<br>&nbsp;&nbsp;&nbsp; Material: 95% cotton 5% spandex.<br>&nbsp;&nbsp;&nbsp; Size: M, L,XL<br>&nbsp;&nbsp;&nbsp; Measurement (in Inch): M (Chest 39\", Length 27.5\"), L (Chest 40\", Length 28.5\"),XL(Chest 41\", Length 29.5\")<br>&nbsp;&nbsp;&nbsp; 100% export quality.<br>&nbsp;&nbsp;&nbsp; Comfortable to use.<br>&nbsp;&nbsp;&nbsp; Gender: Men.<br>&nbsp;&nbsp;&nbsp; Color: Navy Blue.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color may slightly vary due to photographic lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 07:35:12', '2021-03-09 18:57:34'),
(199, 6, 22, 0, 11, 'Outdoor Small Mini Backpac Colorful Mini Backpack', 'outdoor-small-mini-backpac-colorful-mini-backpack', 209, '250', 220, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: Polyester Fabric<br>&nbsp;&nbsp;&nbsp; Height: 14inch<br>&nbsp;&nbsp;&nbsp; Width: 10 inch<br>&nbsp;&nbsp;&nbsp; 1 Front Kit pocket Shoulder<br>&nbsp;&nbsp;&nbsp; Belt: Adjustable<br>&nbsp;&nbsp;&nbsp; Country of Origin: Bangladesh<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:01:45', '2021-03-09 18:57:34'),
(200, 6, 22, 0, 11, 'Outdoor Small Mini Backpack Daypack Bookbags 10L', 'outdoor-small-mini-backpack-daypack-bookbags-10l', 190, '250', 200, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: This small hiking backpack is made of water and Tear Resistant Nylon; UKX Buckle. Outer Dimensions: 15.75 x 9.06 x 4.53 Inches. Padded shoulder strap: 2.2\" wide,prefect for short Trips or hiking and daily use<br>&nbsp;&nbsp;&nbsp; Characteristic: Weight: 5.3 Oz(150g), 6mm anti-shock foam, anti-cut, water repellent,a super lightweight mini pack for kids,men or women<br>&nbsp;&nbsp;&nbsp; Feature Design: Two main compartment; Adjustable thicken padded shoulder straps. Three zippers,multiple compartments to make your stuff more regular<br>&nbsp;&nbsp;&nbsp; OCCASION: Daily walk-around, day trips, vacation, travel, day hikes, school, camping, carry-on for your excess baggage<br>&nbsp;&nbsp;&nbsp; Fits books,phone,one day\'s clothing,ipad,bottle and other small things you want to store,you can categorise your little pieces stuff so it is easy to find them<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:03:46', '2021-03-09 18:57:34'),
(201, 6, 22, 0, 11, 'Yellow - Colorful Mini Backpack 10L', 'yellow---colorful-mini-backpack-10l', 238, '299', 250, NULL, '<p>roduct details of Yellow - Colorful Mini Backpack 10L<br><br>&nbsp;&nbsp;&nbsp; Features: Water Bottle Pocket,Wearable<br>&nbsp;&nbsp;&nbsp; For: Daily Use,Fishing,Outdoor,Shopping,Traveling<br>&nbsp;&nbsp;&nbsp; Gender: Unisex<br>&nbsp;&nbsp;&nbsp; Material: Polyester<br>&nbsp;&nbsp;&nbsp; Style: Casual,Fashion<br>&nbsp;&nbsp;&nbsp; Type: Backpacks<br>&nbsp;&nbsp;&nbsp; Package Size(L x W x H): 20.00 x 15.00 x 8.00 cm / 7.87 x 5.91 x 3.15 inches<br>&nbsp;&nbsp;&nbsp; Package weight: 0.1800 kg<br>&nbsp;&nbsp;&nbsp; Product Size(L x W x H): 34.00 x 23.00 x 13.00 cm / 13.39 x 9.06 x 5.12 inches<br>&nbsp;&nbsp;&nbsp; Product weight: 0.1600 kg<br>&nbsp;&nbsp;&nbsp; Packing List: 1 x Backpack<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:07:02', '2021-03-09 18:57:34'),
(202, 6, 22, 0, 11, 'Outdoor Small Mini Backpack Daypack Bookbags 10L', 'outdoor-small-mini-backpack-daypack-bookbags-10l', 238, '350', 250, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: Polyester Fabric<br>&nbsp;&nbsp;&nbsp; Height: 14inch<br>&nbsp;&nbsp;&nbsp; Width: 10 inch<br>&nbsp;&nbsp;&nbsp; 1 Front Kit pocket Shoulder<br>&nbsp;&nbsp;&nbsp; Belt: Adjustable<br>&nbsp;&nbsp;&nbsp; Country of Origin: Bangladesh<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:14:30', '2021-03-09 18:57:35'),
(203, 6, 22, 0, 11, 'Smart & Best Quality Waterproof Fashion 10L Backpack for travel/school-College-University Student Unisex Men Women', 'smart-&-best-quality-waterproof-fashion-10l-backpack-for-travel/school-college-university-student-unisex-men-women', 284, '352', 299, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: Polyester Fabric<br>&nbsp;&nbsp;&nbsp; Height: 14inch<br>&nbsp;&nbsp;&nbsp; Width: 12 inch<br>&nbsp;&nbsp;&nbsp; Number of Compartment: 1<br>&nbsp;&nbsp;&nbsp; 1 Front Kit pocket<br>&nbsp;&nbsp;&nbsp; 2 side Bottle pocket<br>&nbsp;&nbsp;&nbsp; Shoulder Belt: Adjustable<br>&nbsp;&nbsp;&nbsp; Best gift for your loved one.<br>&nbsp;&nbsp;&nbsp; Fine workmanship perfect quality stylish appearance.<br>&nbsp;&nbsp;&nbsp; Fully use of your space make you more tidy and beautiful.<br>&nbsp;&nbsp;&nbsp; Use the high quality material more durable and practical.<br>&nbsp;&nbsp;&nbsp; Perfect for organizing your various things.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:15:47', '2021-03-09 18:57:35'),
(204, 6, 22, 0, NULL, 'water proof men backpack', 'water-proof-men-backpack', 284, '350', 299, NULL, '<p>Material: This small hiking backpack is made of water and Tear Resistant Nylon; UKX Buckle. Outer Dimensions: 15.75 x 9.06 x 4.53 Inches. Padded shoulder strap: 2.2\" wide,prefect for short Trips or hiking and daily use<br>Characteristic: Weight: 5.3 Oz(150g), 6mm anti-shock foam, anti-cut, water repellent,a super lightweight mini pack for kids,men or women<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:17:21', '2021-03-09 18:57:35'),
(205, 6, 23, 0, 12, 'Black Casual Slip-On Shoe For Men', 'black-casual-slip-on-shoe-for-men', 854, '999', 899, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Black Casual Slip-On Shoe For Men<br>&nbsp;&nbsp;&nbsp; Brand: North Star<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Upper Material: Synthetic<br>&nbsp;&nbsp;&nbsp; Sole Material: PVC<br>&nbsp;&nbsp;&nbsp; Gender: Men<br>&nbsp;&nbsp;&nbsp; Closing: Closed<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:26:43', '2021-03-09 18:57:35'),
(206, 6, 23, 0, 12, 'Bata Slip-On Formal Shoe', 'bata-slip-on-formal-shoe', 2469, '2999', 2599, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Slip-on Formal<br>&nbsp;&nbsp;&nbsp; Brand: Bata<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Upper Material: PU<br>&nbsp;&nbsp;&nbsp; Sole Material: TPR<br>&nbsp;&nbsp;&nbsp; Gender: Men<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:31:26', '2021-03-09 18:57:35'),
(207, 6, 23, 0, 12, 'Airborne Sneaker by Bata for Men', 'airborne-sneaker-by-bata-for-men', 2089, '2599', 2199, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Lace-up Casual<br>&nbsp;&nbsp;&nbsp; Gender: Men<br>&nbsp;&nbsp;&nbsp; Upper Material: Knit<br>&nbsp;&nbsp;&nbsp; Color: Blue<br>&nbsp;&nbsp;&nbsp; Sole: Phylon+TPR<br>&nbsp;&nbsp;&nbsp; Closing: Closed<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:34:12', '2021-03-09 18:57:35'),
(208, 6, 23, 0, 12, 'Bata Casual Loafer for Men', 'bata-casual-loafer-for-men', 1519, '1999', 1599, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Loafer<br>&nbsp;&nbsp;&nbsp; Gender: Men<br>&nbsp;&nbsp;&nbsp; Upper Material: PU Leather<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Sole: TPR<br>&nbsp;&nbsp;&nbsp; Closing: Closed<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:39:03', '2021-03-09 18:57:35'),
(209, 6, 23, 0, 12, 'Black Synthetic Loafer For Men', 'black-synthetic-loafer-for-men', 1614, '1999', 1699, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Loafer<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Main Material: Synthetic<br>&nbsp;&nbsp;&nbsp; Gender: Men<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:40:19', '2021-03-09 18:57:35'),
(210, 6, 23, 0, 12, 'Black Leather Formal Shoes for Men', 'black-leather-formal-shoes-for-men', 2279, '2599', 2399, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Formal Shoes<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Main Material: Leather<br>&nbsp;&nbsp;&nbsp; Gender: Men<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 09:41:50', '2021-03-09 18:57:35'),
(211, 6, 24, 0, 13, 'Chocolate Leather Belt for Men', 'chocolate-leather-belt-for-men', 443, '599', 466, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Belt<br>&nbsp;&nbsp;&nbsp; Main Material: Leather<br>&nbsp;&nbsp;&nbsp; Color: Chocolate<br>&nbsp;&nbsp;&nbsp; Gender: Men<br>&nbsp;&nbsp;&nbsp; Stylish and fashionable<br>&nbsp;&nbsp;&nbsp; Standard and smart design<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:05:15', '2021-03-09 18:57:35'),
(212, 6, 24, 0, 13, 'Sky Blue Styliest Wallet For Men', 'sky-blue-styliest-wallet-for-men', 94, '120', 99, NULL, '<p>&nbsp;&nbsp;&nbsp; Men\'s Artificial Leather Wallet<br>&nbsp;&nbsp;&nbsp; Brand: YSL<br>&nbsp;&nbsp;&nbsp; Material: Artificial leather<br>&nbsp;&nbsp;&nbsp; Color: Sky Blue<br>&nbsp;&nbsp;&nbsp; Best gifts for boyfriend, husband, lover and friends<br>&nbsp;&nbsp;&nbsp; Extra card holder and wallet<br>&nbsp;&nbsp;&nbsp; Perfect for Wedding, Party, Prom, Ball and evening events<br>&nbsp;&nbsp;&nbsp; Country of Origin:Made in China<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:08:28', '2021-03-09 18:57:35'),
(213, 6, 24, 0, 13, 'Black Best Export Quality Cap for Men and Women', 'black-best-export-quality-cap-for-men-and-women', 284, '400', 299, NULL, '<p>Brand: Raaz<br>Product Full Details<br>Product Type: Cap<br>Color: Navy Blue<br>Gender: Men and Women<br>Main Material: Denim , Jeans<br>Fashion type: Casual and formal<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:10:37', '2021-03-09 18:57:35'),
(214, 6, 0, NULL, 13, 'Multicolor Artificial lether belt Combo for men', 'multicolor-artificial-lether-belt-combo-for-men', 189, '299', 199, NULL, '<p>&nbsp;&nbsp;&nbsp; Brand:Zara Lether BD<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Material:Artificial lether<br>&nbsp;&nbsp;&nbsp; Formal and casual belt<br>&nbsp;&nbsp;&nbsp; Width2\"<br>&nbsp;&nbsp;&nbsp; Gender:male<br>&nbsp;&nbsp;&nbsp; Formal and casual belt <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:13:42', '2021-03-09 18:57:35'),
(215, 6, 24, 0, 13, 'Black Artificial Leather Belt For Men', 'black-artificial-leather-belt-for-men', 238, '299', 250, NULL, '<p><br>&nbsp;&nbsp;&nbsp; Product Type: Belt<br>&nbsp;&nbsp;&nbsp; Mian Material:Artificial Leather<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Gender: Men<br>&nbsp;&nbsp;&nbsp; Best Quality Product<br>&nbsp;&nbsp;&nbsp; Standard and Smart Design<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:15:35', '2021-03-09 18:57:35'),
(216, 6, 24, 0, 13, 'Brown belt and wallet combo offer', 'brown-belt-and-wallet-combo-offer', 379, '599', 399, NULL, '<p>&nbsp;&nbsp;&nbsp; Colour: Brown<br>&nbsp;&nbsp;&nbsp; Width: 2\"<br>&nbsp;&nbsp;&nbsp; Buckle: Golden<br>&nbsp;&nbsp;&nbsp; Material: Artificial leather<br>&nbsp;&nbsp;&nbsp; Casual belt<br>&nbsp;&nbsp;&nbsp; Colour: Brown<br>&nbsp;&nbsp;&nbsp; Length: 3.50\"<br>&nbsp;&nbsp;&nbsp; Width: 5\"<br>&nbsp;&nbsp;&nbsp; Material: Artificial leather<br>&nbsp;&nbsp;&nbsp; Card holder and wallet <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:16:58', '2021-03-09 18:57:35'),
(217, 6, 24, NULL, 13, 'Brown Artificial leather Belt for Men', 'brown-artificial-leather-belt-for-men', 143, '200', 150, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Belt<br>&nbsp;&nbsp;&nbsp; Colour: Brown<br>&nbsp;&nbsp;&nbsp; Material: Leather<br>&nbsp;&nbsp;&nbsp; Gender: Men<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:37:16', '2021-03-09 18:57:35'),
(218, 7, 7, 0, 7, 'Light Ash Colour Winter Ladies Jacket', 'light-ash-colour-winter-ladies-jacket', 523, '699', 550, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Printed Winter Jacket<br>&nbsp;&nbsp;&nbsp; Fabrics: Philies<br>&nbsp;&nbsp;&nbsp; GSM: 250+<br>&nbsp;&nbsp;&nbsp; Color: Pink<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:47:35', '2021-03-09 18:57:35'),
(219, 7, 7, 0, 7, 'Denim Jacket for Women', 'denim-jacket-for-women', 523, '699', 550, NULL, '<p>&nbsp;&nbsp;&nbsp; Quality: Full Export<br>&nbsp;&nbsp;&nbsp; Fabrics: Denim<br>&nbsp;&nbsp;&nbsp; Fit Description: Regular fit<br>&nbsp;&nbsp;&nbsp; Design: Plain<br>&nbsp;&nbsp;&nbsp; Regular Cut<br>&nbsp;&nbsp;&nbsp; Buttoned Cuffs and hem<br>&nbsp;&nbsp;&nbsp; Functional pockets<br>&nbsp;&nbsp;&nbsp; Measurement : Asian<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:50:53', '2021-03-09 18:57:35'),
(220, 7, 9, 0, NULL, 'Designer Embroidery Dress Set – UC 0122', 'designer-embroidery-dress-set-–-uc-0122', 2043, '2550', 2150, 'M-1238-116849', '<p><br><br>&nbsp;&nbsp;&nbsp; Designer Embroidery Dress Set – UC 0122.<br>&nbsp;&nbsp;&nbsp; High quality imported replica embroidery dress set.<br>&nbsp;&nbsp;&nbsp; Un-stitched.<br>&nbsp;&nbsp;&nbsp; Latest design with quality finishing.<br>&nbsp;&nbsp;&nbsp; Dress: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Bottom: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Dupatta: Chiffon Georgette.<br>&nbsp;&nbsp;&nbsp; Color: Same as picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color/design may slightly vary due to replica version, photography, lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 10:57:12', '2021-03-09 18:57:36'),
(221, 7, 9, 0, NULL, 'Designer Embroidery Dress Set – UC 0135', 'designer-embroidery-dress-set-–-uc-0135', 1709, '2199', 1799, 'M-1238-116865', '<p><br><br>&nbsp;&nbsp;&nbsp; Designer Embroidery Dress Set – UC 0135.<br>&nbsp;&nbsp;&nbsp; High quality imported replica embroidery dress set.<br>&nbsp;&nbsp;&nbsp; Un-stitched.<br>&nbsp;&nbsp;&nbsp; Latest design with quality finishing.<br>&nbsp;&nbsp;&nbsp; Dress: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Salwar: Santoon.<br>&nbsp;&nbsp;&nbsp; Dupatta: Chiffon Georgette.<br>&nbsp;&nbsp;&nbsp; Color: Same as picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color/design may slightly vary due to replica version, photography, lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:00:16', '2021-03-09 18:57:36'),
(222, 7, 9, 0, NULL, 'Designer Embroidery Dress Set – UC 0117', 'designer-embroidery-dress-set-–-uc-0117', 2043, '2699', 2150, 'M-1238-115067', '<p><br><br>&nbsp;&nbsp;&nbsp; Designer Embroidery Dress Set – UC 0117.<br>&nbsp;&nbsp;&nbsp; High quality imported replica embroidery dress set.<br>&nbsp;&nbsp;&nbsp; Semi-stitched.<br>&nbsp;&nbsp;&nbsp; Latest design with quality finishing.<br>&nbsp;&nbsp;&nbsp; Dress: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Bottom: Georgette with embroidery design.<br>&nbsp;&nbsp;&nbsp; Inner: Santoon.<br>&nbsp;&nbsp;&nbsp; Dupatta: Chiffon Georgette.<br>&nbsp;&nbsp;&nbsp; Color: Same as picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color/design may slightly vary due to replica version, photography, lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:02:21', '2021-03-09 18:57:36'),
(223, 7, 9, 0, NULL, 'Designer Embroidery Dress Set – UC 0101', 'designer-embroidery-dress-set-–-uc-0101', 1994, '2500', 2099, 'M-1238-115030', '<p><br>&nbsp;&nbsp;&nbsp; Designer Embroidery Dress Set – UC 0101.<br>&nbsp;&nbsp;&nbsp; High quality imported replica embroidery dress set.<br>&nbsp;&nbsp;&nbsp; Semi-stitched.<br>&nbsp;&nbsp;&nbsp; Latest design with quality finishing.<br>&nbsp;&nbsp;&nbsp; Dress: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Bottom: Georgette with embroidery design.<br>&nbsp;&nbsp;&nbsp; Inner: Santoon.<br>&nbsp;&nbsp;&nbsp; Dupatta: Chiffon Georgette.<br>&nbsp;&nbsp;&nbsp; Color: Same as picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color/design may slightly vary due to replica version, photography, lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:04:44', '2021-03-09 18:57:36'),
(224, 7, 9, 0, NULL, 'Designer Embroidery Dress Set – UC 0114', 'designer-embroidery-dress-set-–-uc-0114', 1758, '2500', 1850, 'M-1238-115057', '<p><br><br>&nbsp;&nbsp;&nbsp; Designer Embroidery Dress Set – UC 0114.<br>&nbsp;&nbsp;&nbsp; High quality imported replica embroidery dress set.<br>&nbsp;&nbsp;&nbsp; Semi-stitched.<br>&nbsp;&nbsp;&nbsp; Latest design with quality finishing.<br>&nbsp;&nbsp;&nbsp; Dress: Georgette with Embroidery.<br>&nbsp;&nbsp;&nbsp; Salwar: Santoon.<br>&nbsp;&nbsp;&nbsp; Dupatta: Chiffon Georgette.<br>&nbsp;&nbsp;&nbsp; Color: Same as picture.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Product color/design may slightly vary due to replica version, photography, lighting sources or your monitor settings.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:06:15', '2021-03-09 18:57:36'),
(225, 7, 9, 0, NULL, 'Three piece unstiched indian weightless Georgette,suitable, stylish and comfortable jorjet kamiz for women[kameez+orna+sloar]', 'three-piece-unstiched-indian-weightless-georgette,suitable,-stylish-and-comfortable-jorjet-kamiz-for-women[kameez+orna+sloar]', 854, '1000', 899, NULL, '<p>&nbsp;&nbsp;&nbsp; Product type:kamizMain<br>&nbsp;&nbsp;&nbsp; material: weightless Georgette<br>&nbsp;&nbsp;&nbsp; Work:embroidery work with glass<br>&nbsp;&nbsp;&nbsp; Selor:butarsilk<br>&nbsp;&nbsp;&nbsp; Orna:semi pure sath orna.<br>&nbsp;&nbsp;&nbsp; Attractive and fashionable design<br>&nbsp;&nbsp;&nbsp; Comfortable to wear this kamiz.<br>&nbsp;&nbsp;&nbsp; Brand: S Code<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:08:38', '2021-03-09 18:57:36'),
(226, 7, 10, 0, 14, 'Pakiza Unstitched Cotton 3 Pieces Dress Set OJD-3845', 'pakiza-unstitched-cotton-3-pieces-dress-set-ojd-3845', 1044, '1299', 1099, 'M-1380-118036', '<p><br><br>&nbsp;&nbsp;&nbsp; Unstitched Cotton 3 Pieces Dress Set OJD-3845.<br>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kamiz.<br>&nbsp;&nbsp;&nbsp; Brand: Pakiza.<br>&nbsp;&nbsp;&nbsp; Material: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Reactive Print.<br>&nbsp;&nbsp;&nbsp; Kamiz: Cotton (3.33 Yards).<br>&nbsp;&nbsp;&nbsp; Salwar: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Dupatta: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Good quality fabrics.<br>&nbsp;&nbsp;&nbsp; Easy to wash.<br>&nbsp;&nbsp;&nbsp; Comfortable &amp; Soft.<br>&nbsp;&nbsp;&nbsp; Color: Purple.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:21:06', '2021-03-09 18:57:36'),
(227, 7, 10, 0, 14, 'Pakiza Unstitched Cotton 3 Pieces Dress Set OJB-3844', 'pakiza-unstitched-cotton-3-pieces-dress-set-ojb-3844', 949, '1200', 999, 'M-1380-118022', '<p><br><br>&nbsp;&nbsp;&nbsp; Unstitched Cotton 3 Pieces Dress Set OJB-3844.<br>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kamiz.<br>&nbsp;&nbsp;&nbsp; Brand: Pakiza.<br>&nbsp;&nbsp;&nbsp; Material: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Reactive Print.<br>&nbsp;&nbsp;&nbsp; Kamiz: Cotton (3.33 Yards).<br>&nbsp;&nbsp;&nbsp; Salwar: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Dupatta: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Good quality fabrics.<br>&nbsp;&nbsp;&nbsp; Easy to wash.<br>&nbsp;&nbsp;&nbsp; Comfortable &amp; Soft.<br>&nbsp;&nbsp;&nbsp; Color: Purple.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:24:40', '2021-03-09 18:57:36'),
(228, 7, 10, 0, 14, 'Pakiza Unstitched Cotton 3 Pieces Dress Set AKB-3849', 'pakiza-unstitched-cotton-3-pieces-dress-set-akb-3849', 1329, '1550', 1399, 'M-1380-117983', '<p><br>&nbsp;&nbsp;&nbsp; Unstitched Cotton 3 Pieces Dress Set AKB-3849.<br>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kamiz.<br>&nbsp;&nbsp;&nbsp; Brand: Pakiza.<br>&nbsp;&nbsp;&nbsp; Material: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Reactive Print.<br>&nbsp;&nbsp;&nbsp; Kamiz: Cotton (3.33 Yards).<br>&nbsp;&nbsp;&nbsp; Salwar: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Dupatta: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Good quality fabrics.<br>&nbsp;&nbsp;&nbsp; Easy to wash.<br>&nbsp;&nbsp;&nbsp; Comfortable &amp; Soft.<br>&nbsp;&nbsp;&nbsp; Color: Light Blue.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:27:11', '2021-03-09 18:57:36'),
(229, 7, 10, 0, 14, 'Pakiza Unstitched Cotton 3 Pieces Dress Set OJD -3832', 'pakiza-unstitched-cotton-3-pieces-dress-set-ojd--3832', 1044, '1250', 1099, 'M-1380-118010', '<p><br><br>&nbsp;&nbsp;&nbsp; Unstitched Cotton 3 Pieces Dress Set OJD-3832.<br>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kamiz.<br>&nbsp;&nbsp;&nbsp; Brand: Pakiza.<br>&nbsp;&nbsp;&nbsp; Material: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Reactive Print.<br>&nbsp;&nbsp;&nbsp; Kamiz: Cotton (3.33 Yards).<br>&nbsp;&nbsp;&nbsp; Salwar: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Dupatta: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Good quality fabrics.<br>&nbsp;&nbsp;&nbsp; Easy to wash.<br>&nbsp;&nbsp;&nbsp; Comfortable &amp; Soft.<br>&nbsp;&nbsp;&nbsp; Color: Pink.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:29:07', '2021-03-09 18:57:36'),
(230, 7, 10, 0, 14, 'Pakiza Unstitched Cotton 3 Pieces Dress Set EB-3760', 'pakiza-unstitched-cotton-3-pieces-dress-set-eb-3760', 1234, '1599', 1299, 'M-1380-117918', '<p><br>&nbsp;&nbsp;&nbsp; Unstitched Cotton 3 Pieces Dress Set EB-3760.<br>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kamiz.<br>&nbsp;&nbsp;&nbsp; Material: 100% cotton.<br>&nbsp;&nbsp;&nbsp; Reactive Print.<br>&nbsp;&nbsp;&nbsp; Kamiz: Cotton (3.33 Yards).<br>&nbsp;&nbsp;&nbsp; Salwar: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Dupatta: Cotton (2.5 Yards).<br>&nbsp;&nbsp;&nbsp; Good quality fabrics.<br>&nbsp;&nbsp;&nbsp; Easy to wash.<br>&nbsp;&nbsp;&nbsp; Comfortable &amp; Soft.<br>&nbsp;&nbsp;&nbsp; Color: Red.<br>&nbsp;&nbsp;&nbsp; Disclaimer: Due to the light and screen difference, the item\'s color may be slightly different from the pictures.<br><br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:31:12', '2021-03-09 18:57:36'),
(231, 7, 10, 0, 14, 'Unstitched Red Cotton Block Printed Shalwar Kameez For Women', 'unstitched-red-cotton-block-printed-shalwar-kameez-for-women', 569, '899', 599, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Salwar Kameez<br>&nbsp;&nbsp;&nbsp; Color: Red<br>&nbsp;&nbsp;&nbsp; Gender: Women<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Country Of Origin: India<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:33:50', '2021-03-09 18:57:36'),
(232, 7, 11, 0, NULL, 'New Exclusive Hot Kurti For Stylish Women', 'new-exclusive-hot-kurti-for-stylish-women', 1140, '2500', 1200, NULL, '<p>Main Materials : Indian Weightless Georgette<br>Work : embroidery work.<br>Design : Indian elite design.<br>Look : like as catelogue.<br>Dupatta : georgette.<br>Condition : stitched.<br>Gender : women.<br>Quality : Ensuring High quality.<br>Gorgious &amp; flexible to use.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:37:24', '2021-03-09 18:57:36'),
(233, 7, 11, 0, NULL, 'Ledies New Exclusive Kurti For Stylish', 'ledies-new-exclusive-kurti-for-stylish', 523, '899', 550, NULL, '<p>Color: Same as Picture<br>· Main Material: Cotton<br>· Kameez: Cotton<br>· Skirt: Cotton<br>· Gender: Women<br>· Rich fabric· Designed according to latest patterns<br>· Offered in various sizes and colors<br>· Easy to wash· Perfect fitting<br>· Comfortable &amp; soft<br>· High quality fabric, stylish design, and comfortable.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:40:38', '2021-03-09 18:57:36'),
(234, 7, 11, 0, NULL, 'Linel Kurti And Palazzo Set', 'linel-kurti-and-palazzo-set', 854, '1299', 899, NULL, '<p>&nbsp;&nbsp;&nbsp; Fabric- LILEN<br>&nbsp;&nbsp;&nbsp; Body- LILEN<br>&nbsp;&nbsp;&nbsp; Palazzo-LINEN<br>&nbsp;&nbsp;&nbsp; Work- High-quality Embroidery <br><br>About alebibi<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:43:21', '2021-03-09 18:57:36'),
(235, 7, 11, 0, NULL, 'Multi-Color Satin Silk Kurti for Women', 'multi-color-satin-silk-kurti-for-women', 3088, '4000', 3250, NULL, '<p>&nbsp;&nbsp;&nbsp; Stitched Ready to Wear Long Kurti<br>&nbsp;&nbsp;&nbsp; Kurti Fabric: Satin<br>&nbsp;&nbsp;&nbsp; Inner Fabric: K.T Silk<br>&nbsp;&nbsp;&nbsp; Sleeve Fabric: Georgette<br>&nbsp;&nbsp;&nbsp; Work: Embroderhy, Stone<br>&nbsp;&nbsp;&nbsp; Size: L(40), XL(42)<br>&nbsp;&nbsp;&nbsp; Occasion: Party wear<br>&nbsp;&nbsp;&nbsp; Wash Care: Dry clean recommended<br>&nbsp;&nbsp;&nbsp; Manufacturer: Vinay Fashion LLP (Surat, India)<br>&nbsp;&nbsp;&nbsp; Color: Multi-Color<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:46:50', '2021-03-09 18:57:36'),
(236, 7, 11, 0, NULL, 'Linen Stitched Kurti for Womens', 'linen-stitched-kurti-for-womens', 759, '1000', 799, NULL, '<p>roduct details of Linen Stitched Kurti for Womens<br><br>&nbsp;&nbsp;&nbsp; Product type: Kurti<br>&nbsp;&nbsp;&nbsp; Color : Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material:100% Linen with Embroidery Work.<br>&nbsp;&nbsp;&nbsp; Size : S-36, M- 38, L-40, XL-42<br>&nbsp;&nbsp;&nbsp; Length : 45<br>&nbsp;&nbsp;&nbsp; Gender: Women<br>&nbsp;&nbsp;&nbsp; Well Swing,Ready to wear<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:53:40', '2021-03-09 18:57:36'),
(237, 7, 11, 0, NULL, 'Gray Linen Stylish Fashionable Single Top Kurti for Women Bend The Trend - (Tailor Made)', 'gray-linen-stylish-fashionable-single-top-kurti-for-women-bend-the-trend---(tailor-made)', 1139, '1599', 1199, NULL, '<p>&nbsp;&nbsp;&nbsp; Tailor Made Product<br>&nbsp;&nbsp;&nbsp; Material: Linen<br>&nbsp;&nbsp;&nbsp; Stitched Kurti<br>&nbsp;&nbsp;&nbsp; Gender: Women<br>&nbsp;&nbsp;&nbsp; Product\'s Color May Vary a Bit Due to Photography<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 11:55:55', '2021-03-09 18:57:36'),
(238, 7, 8, 0, NULL, 'Multicolor Cotton Tangail Tat Chumki Saree For Women Without Blouse Piece', 'multicolor-cotton-tangail-tat-chumki-saree-for-women-without-blouse-piece', 1044, '1500', 1099, NULL, '<p>&nbsp;&nbsp;&nbsp; Length : 13.5ft<br>&nbsp;&nbsp;&nbsp; Made From : Tangail Tant<br>&nbsp;&nbsp;&nbsp; Made By : Handloom<br>&nbsp;&nbsp;&nbsp; Perfect wear for formal occasions<br>&nbsp;&nbsp;&nbsp; Colour : Multicoloured<br>&nbsp;&nbsp;&nbsp; Saree without Matching Blouse Piece<br>&nbsp;&nbsp;&nbsp; Material : Cotton<br></p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 12:03:46', '2021-10-03 05:35:47'),
(239, 7, 8, 0, NULL, 'Jhum Tower Sarees For Women Blue Tanjin Tisha', 'jhum-tower-sarees-for-women-blue-tanjin-tisha', 949, '1599', 999, NULL, '<p>roduct Type: Soft Zoom Cotton Saree<br>Original Monipuri joom saree<br>Gender: Women<br>Occasion: Casual, Party &amp; Festive wear<br>Saree Style: Regular wear Saree<br>hand wash<br>Size-13 Haat<br>Very comfortable to use in any weather<br>Colour Garanty<br></p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 12:05:47', '2021-10-03 05:35:47'),
(240, 7, 8, NULL, NULL, 'Japani Silk Sharee - Deep Jam', 'japani-silk-sharee---deep-jam', 1139, '2000', 1199, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Sharee<br>&nbsp;&nbsp;&nbsp; Color: Deep Majenta<br>&nbsp;&nbsp;&nbsp; Main Material: Silk<br>&nbsp;&nbsp;&nbsp; 12 Haat Bohor<br>&nbsp;&nbsp;&nbsp; Perfect wear for formal occasions<br></p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-22 12:17:52', '2021-11-05 06:25:41'),
(241, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 2043, '3000', 2150, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:45:15', '2021-03-09 18:57:37'),
(242, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 1663, '2200', 1750, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:48:33', '2021-03-09 18:57:37'),
(243, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 1663, '2200', 1750, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:50:18', '2021-03-09 18:57:37'),
(244, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 1709, '2000', 1799, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:51:51', '2021-10-30 15:51:01'),
(245, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 1473, '2000', 1550, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:54:53', '2021-03-09 18:57:37'),
(246, 3, 12, 0, 15, 'Classical Home tex King Size Cotton Bed Sheet', 'classical-home-tex-king-size-cotton-bed-sheet', 1663, '1900', 1750, NULL, '<p>roduct details of Classical Home tex King Size Cotton Bed Sheet<br><br>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Orginal classical home tex<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x 8 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20 x 28 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 04:57:09', '2021-03-09 18:57:37');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(247, 3, 13, 0, NULL, 'Cotton Fabric Multicolor Print 7.5 by 8.5 Feet Double King Size Bedsheet Set with Two Pillow Covers By Sharee Ghar', 'cotton-fabric-multicolor-print-7.5-by-8.5-feet-double-king-size-bedsheet-set-with-two-pillow-covers-by-sharee-ghar', 949, '1500', 999, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bed Sheet with Pillow Covers<br>&nbsp;&nbsp;&nbsp; Color: Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Bed Sheet Size: 7.5 x8.5 Feet<br>&nbsp;&nbsp;&nbsp; Pillow Cover Size:20x 36 Inch<br>&nbsp;&nbsp;&nbsp; Double Size Bed Sheet<br>&nbsp;&nbsp;&nbsp; Bed Sheet with Matching 2 Pillow Covers<br>&nbsp;&nbsp;&nbsp; Product color may slightly vary due to photographic lighting sources or your monitor settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:14:20', '2021-03-09 18:57:37'),
(248, 3, 13, 0, NULL, 'Lazy adult Mosquito Net Magic mosari Single Bed-বড়দের স্টাইলিশ মশারি', 'lazy-adult-mosquito-net-magic-mosari-single-bed-বড়দের-স্টাইলিশ-মশারি', 1234, '1900', 1299, NULL, '<p>&nbsp;&nbsp;&nbsp; সাধারণ মশারি বাদ দিয়েবাসায় নিয়ে আসুন স্টাইলিশ স্মার্ট মশারি<br>&nbsp;&nbsp;&nbsp; একজন বড় মানুষের জন্য উপযুক্ত, অথবা মা ও শিশু জন্য উপযুক্ত<br>&nbsp;&nbsp;&nbsp; সর্বশেষ রিচার্চ সর্বশেষ প্রযুক্তি<br>&nbsp;&nbsp;&nbsp; কয়েক সেকেন্ডে সেট আপ,কোনও বাহ্যিক সমর্থন বা ঝুলন্ত পয়েন্টের প্রয়োজন নেই।<br>&nbsp;&nbsp;&nbsp; পপ-আপ ফ্রেম একটি প্রশস্ত ঘের তৈরি করে<br>&nbsp;&nbsp;&nbsp; ব্যবহার দীর্ঘ সময় জন্য যথেষ্ট টেকসই<br>&nbsp;&nbsp;&nbsp; বাসায় মেহমান আসলে ও মশারি নিয়া চিন্তা করার প্রয়োজন নেই<br>&nbsp;&nbsp;&nbsp; আকার 3× 5.2 Feet<br>&nbsp;&nbsp;&nbsp; বেডে/খাটেই/ ফ্লোরে সহজে ব্যবহার করা যায়<br>&nbsp;&nbsp;&nbsp; 100% নিরাপদ।মশা, মাছি এবং কীটপতঙ্গের জন্য স্বাস্থ্যকর উপায়<br>&nbsp;&nbsp;&nbsp; সব বয়সীরা খুব সহজে ব্যবহার করতে পারে<br>&nbsp;&nbsp;&nbsp; খুব সহজে পরিষ্কার করা যায়<br>&nbsp;&nbsp;&nbsp; বাসায়,ভ্রমণ, ক্যাম্পিং, হাইকিং এবং অলস ব্যক্তি জন্যফোল্ডিংমশারিপারফেক্ট<br>&nbsp;&nbsp;&nbsp; সেট আপ সহজে জন্য শক্তিশালী ইস্পাত ফ্রেম<br>&nbsp;&nbsp;&nbsp; কমফোর্টেবল এবং অনেক স্টাইলিশ ডিজাইন<br>&nbsp;&nbsp;&nbsp; অফুরন্ত বাতাস প্রবেশ করে<br>&nbsp;&nbsp;&nbsp; টেকসই হাল্কা ওজন ও সহজে বহনযোগ্য,ওজন মাত্র 1.5 kg<br>&nbsp;&nbsp;&nbsp; ভাজ করে ছোট করা যায়,পোর্টেবল সহজে ব্যাগ ফিট<br>&nbsp;&nbsp;&nbsp; উপহার হিসাবেও চমৎকার<br>&nbsp;&nbsp;&nbsp; সংরক্ষণ করার জন্য সাথে পাচ্ছেন একটি অসাধারণ ব্যাগ<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:15:57', '2021-03-09 18:57:37'),
(249, 3, 13, 0, NULL, 'Comfortable Pregnancys Body Pillow U Shape Comfort Bedding Cushion Case - 1 Pcs', 'comfortable-pregnancys-body-pillow-u-shape-comfort-bedding-cushion-case---1-pcs', 1140, '1900', 1200, NULL, '<p>&nbsp;&nbsp;&nbsp; Made in Bangladesh.<br>&nbsp;&nbsp;&nbsp; Pregnancy Pillow.<br>&nbsp;&nbsp;&nbsp; Same type looks as Picture.<br>&nbsp;&nbsp;&nbsp; Healthy, comfortable, washable, soft, perfect size, beautiful designed cover<br>&nbsp;&nbsp;&nbsp; Dimension:Length 5 Feet+ Wide-2.5 Feet<br>&nbsp;&nbsp;&nbsp; Package- 1 Pc ( We send various design and color pillow on our availity color and design.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:18:03', '2021-03-09 18:57:37'),
(250, 3, 13, 0, NULL, 'Impoted luxurious 4 pc Bed sheet set, With digital printed, 1 set bedsheet, 2 set pillow cover, 1 set comfoter cover with zipper. 2 kg 200 g weight.', 'impoted-luxurious-4-pc-bed-sheet-set,-with-digital-printed,-1-set-bedsheet,-2-set-pillow-cover,-1-set-comfoter-cover-with-zipper.-2-kg-200-g-weight.', 2089, '2599', 2199, NULL, '<p>&nbsp;&nbsp;&nbsp; Impoted from China<br>&nbsp;&nbsp;&nbsp; digtal printed<br>&nbsp;&nbsp;&nbsp; colour guarantee cotton fabric<br>&nbsp;&nbsp;&nbsp; king size 230 Cm x 220 <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:19:11', '2021-03-09 18:57:37'),
(251, 3, 13, 0, NULL, 'HOME TEX New High Quality Cotton Bed sheet Set (3 pcs) JB-112', 'home-tex-new-high-quality-cotton-bed-sheet-set-(3-pcs)-jb-112', 1139, '2000', 1199, NULL, '<p>&nbsp;&nbsp;&nbsp; ১০০%সূতিসাইজ হচ্ছে - ৭.৫×৮.৫ ফিট।দুই পিছ বালিশের কাবার সহ তিন পিচের সেট<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:20:20', '2021-03-09 18:57:37'),
(252, 3, 13, 0, NULL, 'Cotton Double Size Bed Sheet Set - MultiColor', 'cotton-double-size-bed-sheet-set---multicolor', 664, '1299', 699, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Bedsheet Set<br>&nbsp;&nbsp;&nbsp; Color:Multicolor<br>&nbsp;&nbsp;&nbsp; Main Material: Cotton<br>&nbsp;&nbsp;&nbsp; Product Measures: 7.5 X 8 Fit<br>&nbsp;&nbsp;&nbsp; With 2 pillow covers...<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:21:35', '2021-03-09 18:57:37'),
(253, 3, 14, 0, NULL, 'Wall Clock Daraz DIY Clock for wall decor - Avengers logo', 'wall-clock-daraz-diy-clock-for-wall-decor---avengers-logo', 494, '600', 520, NULL, '<p>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Shape: Round<br>&nbsp;&nbsp;&nbsp; Size: 9\" by 9\"<br>&nbsp;&nbsp;&nbsp; Depth:1.5 inch<br>&nbsp;&nbsp;&nbsp; Material: High Quality Plastic Body along with high quality transparent glass<br>&nbsp;&nbsp;&nbsp; Smooth white back<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:25:16', '2021-03-09 18:57:37'),
(254, 3, 14, 0, NULL, 'Hometex Curtain 4kuchi--1pis', 'hometex-curtain-4kuchi--1pis', 664, '1500', 699, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Solid Color Transparent Curtain with Eyelet<br>&nbsp;&nbsp;&nbsp; Blend: Single Color Textile<br>&nbsp;&nbsp;&nbsp; DyingMaterial: Synthetic &amp; color guaranteed<br>&nbsp;&nbsp;&nbsp; Size (about): 44 by 84 inch with 4kuchi &amp; 8 eyelets<br>&nbsp;&nbsp;&nbsp; Curtain are stitchedSober Color with good quality product, makes your home more gorgeous.<br>&nbsp;&nbsp;&nbsp; Single color products, as an impressive gift for your beloved, friends or even customers<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:26:39', '2021-03-09 18:57:38'),
(255, 3, 14, 0, NULL, 'Synthetic curtain Blue,coffee,off white,Red, from Golden plus', 'synthetic-curtain-blue,coffee,off-white,red,-from-golden-plus', 284, '599', 299, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type:ailet Curtain<br>&nbsp;&nbsp;&nbsp; 4 kuci 8 pieces ailet<br>&nbsp;&nbsp;&nbsp; Color: coffee,Red,Blue,off white.<br>&nbsp;&nbsp;&nbsp; Country of Origin: Bangladesh<br>&nbsp;&nbsp;&nbsp; Size: 43×82 Inch<br>&nbsp;&nbsp;&nbsp; Brand New Product<br>&nbsp;&nbsp;&nbsp; semi transparent curtain<br>&nbsp;&nbsp;&nbsp; products as like as picture.<br>&nbsp;&nbsp;&nbsp; Inshallah we will send you 100% good products ( promise)<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:28:02', '2021-03-09 18:57:38'),
(256, 3, 14, 0, NULL, 'Transparence Color Crystal Stone & White Color Wall Clock-4 Color', 'transparence-color-crystal-stone-&-white-color-wall-clock-4-color', 1139, '1599', 1199, NULL, '<p>&nbsp;&nbsp;&nbsp; Transparence Color Crystal Stone &amp; White Color Wall Clock<br>&nbsp;&nbsp;&nbsp; White color dial.<br>&nbsp;&nbsp;&nbsp; Color:White,Golden,Brown.<br>&nbsp;&nbsp;&nbsp; Transparence crystal stone.<br>&nbsp;&nbsp;&nbsp; Total width: 24 Inches<br>&nbsp;&nbsp;&nbsp; Dial diameter: 12 Inches<br>&nbsp;&nbsp;&nbsp; 1 battery needed to run<br>&nbsp;&nbsp;&nbsp; Soundless sewing machine<br>&nbsp;&nbsp;&nbsp; Easy to hang on the wall as like a normal clock<br>&nbsp;&nbsp;&nbsp; Made in China<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:29:30', '2021-03-09 18:57:38'),
(257, 3, 14, 0, NULL, 'Islamic Mosque Azan Wall Clock 5 Prayer Time Table Digital Clock AC220V ( ৫ ওয়াক্ত নামাজের সময়সূচী )', 'islamic-mosque-azan-wall-clock-5-prayer-time-table-digital-clock-ac220v-(-৫-ওয়াক্ত-নামাজের-সময়সূচী-)', 4084, '5000', 4299, NULL, '<p>&nbsp;&nbsp;&nbsp; ডিজিটাল ওয়াল ঘড়ি ও নামাজের সময়সূচী<br>&nbsp;&nbsp;&nbsp; এই ঘড়িকে ৫ ওয়াক্ত নামাজের সময়সূচী / আজানের সময়সূচী হিসাবেও ব্যবহার করতে পারবেন<br>&nbsp;&nbsp;&nbsp; এটা সরাসরি এসি-২২০ ভোল্টে চলে<br>&nbsp;&nbsp;&nbsp; বিদ্যুৎ চলে গেলে ডিসপ্লে অফ থাকবে কিন্ত সময় চলতে থাকবে আবার বিদ্যুৎ আসলে বর্তমান সময়ই ডিসপ্লেতে দেখাবে<br>&nbsp;&nbsp;&nbsp; এই ঘড়ির সময় ও নামজের ওয়াক্তের সময় বাটন সুইচ দিয়ে বা রিমোট দিয়ে সেট/এডজাস্ট করতে পারবেন<br>&nbsp;&nbsp;&nbsp; এই ঘড়ির সাইজ লম্বায় ৩০ ইঞ্চি ও প্রস্তে ১৮ ইঞ্চি <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:31:17', '2021-03-09 18:57:38'),
(258, 3, 14, 0, NULL, 'Turkey Style Fashion Living Room\\ Bedroom Carpet carpet Red 5feet7 feet carpets rugs turkey Design can changable (ডিজাইনপরিবর্তনহতেপারে )Furniture & Décor / Home Décor / Rugs & Carpets', 'turkey-style-fashion-living-room\\-bedroom-carpet-carpet-red-5feet7-feet-carpets-rugs-turkey-design-can-changable-(ডিজাইনপরিবর্তনহতেপারে-)furniture-&-décor-/-home-décor-/-rugs-&-carpets', 8454, '12099', 8899, NULL, '<p>&nbsp;&nbsp;&nbsp; size: 5feet x7feet<br>&nbsp;&nbsp;&nbsp; colour : RED<br>&nbsp;&nbsp;&nbsp; Material: Polyester + flannel<br>&nbsp;&nbsp;&nbsp; item : floor carpet<br>&nbsp;&nbsp;&nbsp; Thickness: About 12mm<br>&nbsp;&nbsp;&nbsp; Soft and flannel rug for your house decoration<br>&nbsp;&nbsp;&nbsp; Makes you relax, comfortable and warm<br>&nbsp;&nbsp;&nbsp; Comfortable floor carpets, perfect for home decor<br>&nbsp;&nbsp;&nbsp; Material: Polyester + flannel<br>&nbsp;&nbsp;&nbsp; Style: Turkey made<br>&nbsp;&nbsp;&nbsp; Thickness: About 12mm<br>&nbsp;&nbsp;&nbsp; Soft and flannel rug for your house decoration<br>&nbsp;&nbsp;&nbsp; Makes you relax, comfortable and warm<br>&nbsp;&nbsp;&nbsp; Comfortable floor carpets, perfect for home decor<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:33:00', '2021-03-09 18:57:38'),
(259, 3, 15, 0, NULL, 'Laptop Table - Wooden', 'laptop-table---wooden', 1899, '2500', 1999, NULL, '<p>It\'s light strong with nice compact design<br>The joint is auto-locked design,both the angle and height could be adjustable by pressed the joint,suitable for bed,lawn,carpet,sofa,etc<br>Will bring you more comfortable<br>Excellent cooling fan keeps your laptops always cool<br>Folding and portable Multifunctional stand will organize your working space better<br>Panel size: 520*300*12MM<br>Height of desktop: 235~315MM adjustable<br>Angle of panel: 0~30 degree adjustable<br>Fan speed: 1800RPM<br>Input: DC 5V 200MA(Max)<br>Power: 2Watt<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:36:00', '2021-03-09 18:57:38'),
(260, 3, 15, 0, NULL, '(JZ-OF66) 360 Degree Rotary mesh chair for home to office', '(jz-of66)-360-degree-rotary-mesh-chair-for-home-to-office', 3039, '4599', 3199, NULL, '<p>&nbsp;&nbsp;&nbsp; Breathable mesh<br>&nbsp;&nbsp;&nbsp; Curved backrest design<br>&nbsp;&nbsp;&nbsp; High density sponge seat<br>&nbsp;&nbsp;&nbsp; Body linked armrest concept<br>&nbsp;&nbsp;&nbsp; High quality chrome finishing leg<br>&nbsp;&nbsp;&nbsp; 5pcs PVC 2\"wheel<br>&nbsp;&nbsp;&nbsp; Adjustable chair height<br>&nbsp;&nbsp;&nbsp; Max holding 80kg<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:39:09', '2021-03-09 18:57:38'),
(261, 3, 15, 0, NULL, 'Caino Sofa 4 Pcs Set - Black (839727) Caino Sofa 4 Pcs Set - Black (839727)', 'caino-sofa-4-pcs-set---black-(839727)-caino-sofa-4-pcs-set---black-(839727)', 11400, '14000', 12000, NULL, '<p>&nbsp;&nbsp;&nbsp; Caino Sofa 4 Pcs Set W/O Foam Black<br>&nbsp;&nbsp;&nbsp; Item code: 839727<br>&nbsp;&nbsp;&nbsp; Type: Home furniture<br>&nbsp;&nbsp;&nbsp; Brand: Caino<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:43:20', '2021-03-09 18:57:38'),
(262, 3, 15, 0, NULL, 'Box Bed / Khat', 'box-bed-/-khat', 10449, '12999', 10999, NULL, '<p>Colour Picture<br>Best quality particle Board imported from Malaysia<br>Best quality melamine paper imported from Hong Kong which made furniture scratch free and enhances glossiness<br>Melamine paper is joined by heat pressed machine which enhances the durability of the Board<br>Finest quality imported accessories ensure the strong structure<br>1 year service warranty<br>Stock Limited<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:49:34', '2021-03-09 18:57:38'),
(263, 3, 15, 0, NULL, 'Dinning Table Ring', 'dinning-table-ring', 20900, '25000', 22000, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: Malaysian Process Wood<br>&nbsp;&nbsp;&nbsp; Italian Paint<br>&nbsp;&nbsp;&nbsp; Lacquer Polish<br>&nbsp;&nbsp;&nbsp; Scratch Removal<br>&nbsp;&nbsp;&nbsp; Weather Resistance<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:52:26', '2021-03-09 18:57:38'),
(264, 3, 15, 0, NULL, 'Almirah 3 Door', 'almirah-3-door', 25175, '32500', 26500, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Almirah 3Door<br>&nbsp;&nbsp;&nbsp; Material: Canadian Process Wood with mature fibre<br>&nbsp;&nbsp;&nbsp; Measurement:5/6 Feet<br>&nbsp;&nbsp;&nbsp; Italian Paint<br>&nbsp;&nbsp;&nbsp; Lacquer Polish<br>&nbsp;&nbsp;&nbsp; Scratch Removal<br>&nbsp;&nbsp;&nbsp; Weather Resistance<br>&nbsp;&nbsp;&nbsp; Disclaimer:The actual color of the physical product may slightly vary due to the deviation of lighting sources, photography or your device display settings.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 05:54:04', '2021-03-09 18:57:38'),
(265, 3, 16, NULL, NULL, 'Fairy Decorative Light 100 Led- Multi Colur , Weeding Festival Party Warm White 33 Feets waterproof Led Light.', 'fairy-decorative-light-100-led--multi-colur-,-weeding-festival-party-warm-white-33-feets-waterproof-led-light.', 190, '399', 200, NULL, '<p>&nbsp;&nbsp;&nbsp; Light clour -- Multi Colur<br>&nbsp;&nbsp;&nbsp; Led quantity--100<br>&nbsp;&nbsp;&nbsp; Length --- 33 Feet<br>&nbsp;&nbsp;&nbsp; Voltage----220V<br>&nbsp;&nbsp;&nbsp; Power--plug in play<br>&nbsp;&nbsp;&nbsp; Material --- plustic and wire<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:01:06', '2021-03-09 18:57:38'),
(266, 3, 16, 0, NULL, 'Techno E-Tail Waterdrop 20 Led Decorative Lights For Home,Warm White', 'techno-e-tail-waterdrop-20-led-decorative-lights-for-home,warm-white', 379, '599', 399, NULL, '<p>&nbsp;&nbsp;&nbsp; Lights for DecorationGolden Color Water Drop shapeFeaturefairy string lights are perfect decorative lights for Home DecorFeatureDiwaliFeatureChristmas Decorations LightFeatureFestival.FeatureThis wonderful string lights illuminate during nightFeatureadd warm and charming atmosphere to your Living RoomFeatureWallFeatureTreeFeatureGardenFeatureGateFeatureYardFeatureetcPackage contents20- LED String Water drop shape Decorative LED LightsFeatureApprox 3.5 meter LongFeatureWhite flexible wireFeaturepowered by electric with plug-in design<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:07:59', '2021-03-09 18:57:38'),
(267, 3, 16, 0, NULL, 'Mushroom Shape Automatic Sensor Light', 'mushroom-shape-automatic-sensor-light', 143, '220', 150, NULL, '<p>&nbsp;&nbsp;&nbsp; Romantic bed lamp<br>&nbsp;&nbsp;&nbsp; Automatic Sensor<br>&nbsp;&nbsp;&nbsp; Creative mushroom shape<br>&nbsp;&nbsp;&nbsp; It is an automatic sensor Night LED bulb, so it will work when the room is completely dark<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:10:25', '2021-03-09 18:57:38'),
(268, 3, 16, 0, NULL, '360 Degree LED Rotating Bulb Magic Disco Light for Party/Home/Diwali Decoration', '360-degree-led-rotating-bulb-magic-disco-light-for-party/home/diwali-decoration', 189, '299', 199, NULL, '<p>&nbsp;&nbsp;&nbsp; Multi Colour LED Light<br>&nbsp;&nbsp;&nbsp; Easy installation, just plug and play<br>&nbsp;&nbsp;&nbsp; No uv rays, environment friendly<br>&nbsp;&nbsp;&nbsp; Rotation automatically, having the stage lighting effect<br>&nbsp;&nbsp;&nbsp; Amazing and long life working hours<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:12:39', '2021-03-09 18:57:38'),
(269, 3, 16, 0, NULL, 'LED CANDLE BULB', 'led-candle-bulb', 95, '150', 100, NULL, '<p>&nbsp;&nbsp;&nbsp; Capacity: 12w<br>&nbsp;&nbsp;&nbsp; Occasion: living room<br>&nbsp;&nbsp;&nbsp; Voltage: 100V-240V<br>&nbsp;&nbsp;&nbsp; Luminous Flux: 1000 - 1999 Lumens<br>&nbsp;&nbsp;&nbsp; Shape: Bar<br>&nbsp;&nbsp;&nbsp; Average Life (hrs): 50000<br>&nbsp;&nbsp;&nbsp; Item Type: LED Bulbs<br>&nbsp;&nbsp;&nbsp; Led Bulb Type: Corn Bulb<br>&nbsp;&nbsp;&nbsp; Certification: ROHS<br>&nbsp;&nbsp;&nbsp; Certification: ce<br>&nbsp;&nbsp;&nbsp; Beam Angle(°): 360°<br>&nbsp;&nbsp;&nbsp; Base Type: E27<br>&nbsp;&nbsp;&nbsp; Power Tolerance: 10%<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:14:20', '2021-03-09 18:57:38'),
(270, 3, 16, 0, NULL, 'Baseus USB Led Light Rechargeable Mini Clip-On Desk Lamp Light Flexible Nightlight', 'baseus-usb-led-light-rechargeable-mini-clip-on-desk-lamp-light-flexible-nightlight', 760, '1200', 800, NULL, '<p>&nbsp;&nbsp;&nbsp; Clip and ready<br>&nbsp;&nbsp;&nbsp; Mini and portable<br>&nbsp;&nbsp;&nbsp; Universal lamp post<br>&nbsp;&nbsp;&nbsp; Enduring battery life<br>&nbsp;&nbsp;&nbsp; Three levels of brightness<br>&nbsp;&nbsp;&nbsp; Eye protection<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:15:37', '2021-03-09 18:57:38'),
(271, 3, 17, 0, NULL, '360 Degree Magic Floor Cleaning Spin Mop With Removable Basket_ RM-0582', '360-degree-magic-floor-cleaning-spin-mop-with-removable-basket_-rm-0582', 1425, '2100', 1500, NULL, '<p>Product details of 360 Degree Magic Floor Cleaning Spin Mop With Removable Basket_ RM-0582<br><br>&nbsp;&nbsp;&nbsp; 1.Mop Bucket Capacity: Approximately 15 liters<br>&nbsp;&nbsp;&nbsp; 2. Mop Bucket Size: 51.5x29.5x26.5cm<br>&nbsp;&nbsp;&nbsp; 3. Mop Handle Length: 120 cm<br>&nbsp;&nbsp;&nbsp; 4. Wheel is available (2 Big wheel)<br>&nbsp;&nbsp;&nbsp; 5. Color: Pest and Brown<br>&nbsp;&nbsp;&nbsp; 6. Packaging: Total 2 Microfiber Mop heads (Mop Refill)<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:20:19', '2021-03-09 18:57:38'),
(272, 3, 17, 0, NULL, '2 Pcs Planet Grass Broom (Ful Jharu)', '2-pcs-planet-grass-broom-(ful-jharu)', 238, '350', 250, NULL, '<p>&nbsp;&nbsp;&nbsp; Natural Grass Broom<br>&nbsp;&nbsp;&nbsp; Perfect For Home Cleaning<br>&nbsp;&nbsp;&nbsp; Soft,Smooth &amp; High Durability<br>&nbsp;&nbsp;&nbsp; Hand Made Regular Phool Jhadu<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:22:07', '2021-03-09 18:57:39'),
(273, 3, 17, 0, NULL, '360 Premium Magic Flat Mop Bucket Cleaner With 2 Ultrafine Microfiber Refill', '360-premium-magic-flat-mop-bucket-cleaner-with-2-ultrafine-microfiber-refill', 1425, '2000', 1500, NULL, '<p>&nbsp;&nbsp;&nbsp; 360° Rotating<br>&nbsp;&nbsp;&nbsp; Bucket size: 25x23x38cm<br>&nbsp;&nbsp;&nbsp; color box size: 27x25x42cm<br>&nbsp;&nbsp;&nbsp; Total Mop heads : 2<br>&nbsp;&nbsp;&nbsp; Stainless steel strainer<br>&nbsp;&nbsp;&nbsp; Package includes : Bucket 1, Handle 1, Mop heads 2<br>&nbsp;&nbsp;&nbsp; Available Color : Khaki<br>&nbsp;&nbsp;&nbsp; All products are original pictures and Product will be same as pictures<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:24:47', '2021-03-09 18:57:39'),
(274, 3, 17, 0, NULL, 'Healthy Spray MOP', 'healthy-spray-mop', 854, '1200', 899, NULL, '<p>Model: Stainless Steel Microfiber Floor Cleaning Healthy Spray Mop<br>Product Type: Cleaning, Degerming, Maintaing<br>Material: Standard Plastic<br>Weight: 739 g<br>Dimention:4×10 cm<br>Easy to Use<br>All parts can be assembled for transportation convenienk easy to store<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:26:12', '2021-03-09 18:57:39'),
(275, 3, 17, 0, NULL, 'High Quality Silicone Dish Washing Kitchen Hand Gloves', 'high-quality-silicone-dish-washing-kitchen-hand-gloves', 143, '700', 150, NULL, '<p>100% Brand New &amp; Best Quality Product<br>This soft Dishwashing Gloves is made of high-quality and environment friendly silicone<br>Food grade silicone<br>Material: rubber and latex<br>Quantity: 1 Pair<br>Resistant, flexible, unbreakable<br>Beautiful color, elegant appearance, easy to wear<br>The unique non-slip texture design, but also increase the holding force<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:41:42', '2021-03-09 18:57:39'),
(276, 3, 17, 0, NULL, 'Water Spray Glass Cleaner', 'water-spray-glass-cleaner', 114, '300', 120, NULL, '<p>100%brand new and high quality<br>Spray evenly, clean more convenient <br>Make cleaning easier and simpler and moreconvenient and faster. <br>No scratch surface, no water mark <br>Detachable, free add water, considerate design <br>Material:Plastic + Rubber + Aluminum<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:42:49', '2021-03-09 18:57:39'),
(277, 3, 18, 0, NULL, 'Sunflower - 20 pcs Hybrid Seed - হাইব্রিড বারমাসি সূর্যমুখি', 'sunflower---20-pcs-hybrid-seed---হাইব্রিড-বারমাসি-সূর্যমুখি', 62, '150', 65, NULL, '<p>&nbsp;&nbsp;&nbsp; জাতঃ হাইব্রিড ও বারমাসি<br>&nbsp;&nbsp;&nbsp; গাছের ধরণঃ লম্বা বা খাটো ও অল্প সময়ে বড় ফুল হয়।<br>&nbsp;&nbsp;&nbsp; সারা বছর লাগানো যায় এবং সারা বছর ফুল দেয়।<br>&nbsp;&nbsp;&nbsp; জার্মিনেশন রেটঃ ৯০-৯৫%<br>&nbsp;&nbsp;&nbsp; জার্মিনেশন টেস্ট করা<br>&nbsp;&nbsp;&nbsp; সহজেই চারা করা সম্ভব<br>&nbsp;&nbsp;&nbsp; বাড়ীতে ছোট টবেই লাগানো যাবে ও সহজে ফুল ফোটানো যাবে।<br>&nbsp;&nbsp;&nbsp; চারা হবার পর ৩০-৪৫ দিনের ফুল আসে<br>&nbsp;&nbsp;&nbsp; লাগানোর পদ্ধতি ডিস্ক্রিপশনে পাবেন <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 06:52:13', '2021-03-09 18:57:39'),
(278, 3, 18, 0, NULL, 'ভিয়েতনাম হাইব্রিড নারিকেল গাছ', 'ভিয়েতনাম-হাইব্রিড-নারিকেল-গাছ', 949, '1500', 999, NULL, '<p>text<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:02:12', '2021-03-09 18:57:39'),
(279, 3, 18, 0, NULL, 'Multi extension socket 10 port HP-0555', 'multi-extension-socket-10-port-hp-0555', 271, '385', 285, NULL, '<p>&nbsp;&nbsp;&nbsp; Cable Length: 2M<br>&nbsp;&nbsp;&nbsp; Cord:2Pin<br>&nbsp;&nbsp;&nbsp; Safety Shutter<br>&nbsp;&nbsp;&nbsp; Power Switch<br>&nbsp;&nbsp;&nbsp; Power Indicator Light<br>&nbsp;&nbsp;&nbsp; Copper Bar Connection Inside<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:04:55', '2021-03-09 18:57:39'),
(280, 3, 18, 0, NULL, 'নয়নতারা ফুল - ১৫ টি বীজ - Vinca Flower Mix Color F2 Hybrid Seed', 'নয়নতারা-ফুল---১৫-টি-বীজ---vinca-flower-mix-color-f2-hybrid-seed', 71, '99', 75, NULL, '<p><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:10:03', '2021-03-09 18:57:39'),
(281, 3, 18, 0, NULL, 'TOTAL High Pressure Washer 1800W TGT11356', 'total-high-pressure-washer-1800w-tgt11356', 9453, '12500', 9950, NULL, '<p>&nbsp;&nbsp;&nbsp; Voltage: 220-240V~50/60Hz<br>&nbsp;&nbsp;&nbsp; Carbon brush motor<br>&nbsp;&nbsp;&nbsp; Pure copper wire<br>&nbsp;&nbsp;&nbsp; Input power:1800W<br>&nbsp;&nbsp;&nbsp; Max Pressure:150Bar (2200PSI)<br>&nbsp;&nbsp;&nbsp; Flow rate:6.0L/min<br>&nbsp;&nbsp;&nbsp; Auto stop system<br>&nbsp;&nbsp;&nbsp; 1pcs soap bottle<br>&nbsp;&nbsp;&nbsp; 1 set water spray gun<br>&nbsp;&nbsp;&nbsp; 5m high pressure hose<br>&nbsp;&nbsp;&nbsp; Packed by color box<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:20:05', '2021-03-09 18:57:39'),
(282, 3, 18, 0, NULL, 'TOLSEN Bypass Pattern Garden Pruning Shear (200mm 8 ) Dipped Handle 31018', 'tolsen-bypass-pattern-garden-pruning-shear-(200mm-8-)-dipped-handle-31018', 333, '550', 350, NULL, '<p>CERTIFIED ORIGINAL TOLSEN BRAND<br>Model: 31018<br>Size:200mm 8\"<br>Fine polished<br>Dipped handle<br>Packing: blister card<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:23:53', '2021-03-09 18:57:39'),
(283, 3, 19, 0, NULL, 'Casio FX-100MS-2 AAA × 1 (R03) Scientific Calculator', 'casio-fx-100ms-2-aaa-×-1-(r03)-scientific-calculator', 1135, '1500', 1195, NULL, '<p>&nbsp; color:black<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:36:48', '2021-03-09 18:57:39'),
(284, 3, 19, 0, NULL, 'Combo of MX5500 Price Labeller Machine with 10 rolls Price Tag Sticker (2 in 1)', 'combo-of-mx5500-price-labeller-machine-with-10-rolls-price-tag-sticker-(2-in-1)', 474, '988', 499, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Price Labeller<br>&nbsp;&nbsp;&nbsp; Quality: High<br>&nbsp;&nbsp;&nbsp; Colour: Blue<br>&nbsp;&nbsp;&nbsp; Material: Plastic<br>&nbsp;&nbsp;&nbsp; Product Type: Price Tag Sticker<br>&nbsp;&nbsp;&nbsp; Original<br>&nbsp;&nbsp;&nbsp; Best Quality Product<br>&nbsp;&nbsp;&nbsp; Standard<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:41:07', '2021-03-09 18:57:39'),
(285, 3, 19, 0, NULL, 'ECONO 786 PENS-30 pcs of Ball point pens', 'econo-786-pens-30-pcs-of-ball-point-pens', 189, '250', 199, NULL, '<p>Satisfaction Guaranteed: If you are not entirely satisfied with our product, you can either Exchange or receive a full refund.<br>Designed for Official use, commonly known as the “Pocket pen”. It’s sole purpose is to give your writing experience in office and school a smooth feeling. Also gives you a professional look for it’s outlook and suitable in Office desks.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:42:42', '2021-03-09 18:57:39'),
(286, 3, 19, 0, NULL, 'Money Counting Machine ML-6300', 'money-counting-machine-ml-6300', 15856, '22500', 16690, NULL, '<p>&nbsp;&nbsp;&nbsp; Fake Note Detection with Batching 100%<br>&nbsp;&nbsp;&nbsp; Hopper Capacity : 200 notes<br>&nbsp;&nbsp;&nbsp; Stacker Capacity ; 200 notes<br>&nbsp;&nbsp;&nbsp; Dimension : 300*253*206 mm<br>&nbsp;&nbsp;&nbsp; Size of countable notes: 50*11-90*180 mm<br>&nbsp;&nbsp;&nbsp; Counting Speed: 1000 Piece Per Minute<br>&nbsp;&nbsp;&nbsp; The Thickness of Countable Note: 0.075-0.15mm<br>&nbsp;&nbsp;&nbsp; Counting Display : 4 digits<br>&nbsp;&nbsp;&nbsp; Batch display : 3 digits<br>&nbsp;&nbsp;&nbsp; Net weight : 5.3 kg<br>&nbsp;&nbsp;&nbsp; Gross weight : 6.3 kg<br>&nbsp;&nbsp;&nbsp; Power Supply : AC 220V+/-10% 50Hz AC 110V+/-10% 60Hz<br>&nbsp;&nbsp;&nbsp; Power Consumption : &lt;80W<br>&nbsp;&nbsp;&nbsp; Size of Colour Box : 355*305*235 mm<br>&nbsp;&nbsp;&nbsp; Made in China<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:46:35', '2021-03-09 18:57:39'),
(287, 3, 19, 0, NULL, 'Valentine Day Love Gift Box (Flowers With Soft Teddy) - 11cm*11.8cm', 'valentine-day-love-gift-box-(flowers-with-soft-teddy)---11cm*11.8cm', 189, '250', 199, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Gift Box<br>&nbsp;&nbsp;&nbsp; Color: sweet pink<br>&nbsp;&nbsp;&nbsp; Main material: N/A<br>&nbsp;&nbsp;&nbsp; Artificial Flower and Soft Toy<br>&nbsp;&nbsp;&nbsp; Fragrant Soap Paper Roses<br>&nbsp;&nbsp;&nbsp; Good Quality Product &amp; Good Gift<br>&nbsp;&nbsp;&nbsp; Valentine supper gift Box<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:52:39', '2021-03-09 18:57:39'),
(288, 3, 19, 0, NULL, 'Quran sharif Cover Box wooden', 'quran-sharif-cover-box-wooden', 238, '350', 250, NULL, '<p>&nbsp;&nbsp;&nbsp; Dimension : 10 inchi x 6 inchi<br>&nbsp;&nbsp;&nbsp; Materials : Board<br>&nbsp;&nbsp;&nbsp; Color : Brown<br>&nbsp;&nbsp;&nbsp; Good Quality,<br>&nbsp;&nbsp;&nbsp; Nice Product,<br>&nbsp;&nbsp;&nbsp; Easy to Use,<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:54:23', '2021-03-09 18:57:39'),
(289, 3, 20, 0, NULL, 'ML: Cajon The Standered', 'ml:-cajon-the-standered', 1986, '2590', 2090, NULL, '<p>&nbsp;&nbsp;&nbsp; Concert ready sound<br>&nbsp;&nbsp;&nbsp; Strong personality<br>&nbsp;&nbsp;&nbsp; A compensated sound<br>&nbsp;&nbsp;&nbsp; Low pulsation<br>&nbsp;&nbsp;&nbsp; Powerful bass and a surprising response<br>&nbsp;&nbsp;&nbsp; Rich color, design and finishing<br>&nbsp;&nbsp;&nbsp; Professional quality<br>&nbsp;&nbsp;&nbsp; Bright premium tone<br>&nbsp;&nbsp;&nbsp; Crunchy sound<br>&nbsp;&nbsp;&nbsp; The style made Cajon<br>&nbsp;&nbsp;&nbsp; Body Material: Plywood<br>&nbsp;&nbsp;&nbsp; Length: 12inch<br>&nbsp;&nbsp;&nbsp; Depth: 12inch<br>&nbsp;&nbsp;&nbsp; Height: 19inch<br>&nbsp;&nbsp;&nbsp; With an elegant design that makes it stand out for its sobriety and vintage touch<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 09:57:53', '2021-03-09 18:57:40'),
(290, 3, 20, 0, NULL, 'The miracle morning By Hal Elrod', 'the-miracle-morning-by-hal-elrod', 143, '190', 150, NULL, '<p>&nbsp;&nbsp;&nbsp; Title : দ্য মিরাকল মর্নিং-সকালের সাফল্যে স্বপ্নের জীবন (হার্ডকভার)<br>&nbsp;&nbsp;&nbsp; Author : হ্যাল এলরড<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:00:51', '2021-03-09 18:57:40'),
(291, 3, 20, 0, NULL, 'Yamaha F310 Acoustic Guitar - Wooden ( China )', 'yamaha-f310-acoustic-guitar---wooden-(-china-)', 12349, '15000', 12999, NULL, '<p>&nbsp;&nbsp;&nbsp; Top: Spruce<br>&nbsp;&nbsp;&nbsp; Back: Meranti<br>&nbsp;&nbsp;&nbsp; Side/Rib: Meranti<br>&nbsp;&nbsp;&nbsp; Neck: Nato<br>&nbsp;&nbsp;&nbsp; Finger Board: Rosewood<br>&nbsp;&nbsp;&nbsp; Bridge: Rosewood.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:03:04', '2021-03-09 18:57:40'),
(292, 3, 19, NULL, NULL, 'Islami Akidha by Dr. Khandaker Abdullah Jahangir', 'islami-akidha-by-dr.-khandaker-abdullah-jahangir', 337, '555', 355, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type : Book<br>&nbsp;&nbsp;&nbsp; Book Name : Islami Akidha<br>&nbsp;&nbsp;&nbsp; Author : Dr. Khandaker Abdullah Jahangir<br>&nbsp;&nbsp;&nbsp; Publisher\'s Name : As-Sunnah Publications<br>&nbsp;&nbsp;&nbsp; ISBN : 9789849328100<br>&nbsp;&nbsp;&nbsp; Year of Publication : 2018<br>&nbsp;&nbsp;&nbsp; Number of Pages : 192<br>&nbsp;&nbsp;&nbsp; Edition : 1st<br>&nbsp;&nbsp;&nbsp; Country : Bangladesh<br>&nbsp;&nbsp;&nbsp; Language : Bangla<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:04:20', '2021-03-09 18:57:40'),
(293, 3, 20, 0, NULL, 'Quran sunnahara aloke jamayata o aikya by Dr. Khandaker Abdullah Jahangir', 'quran-sunnahara-aloke-jamayata-o-aikya-by-dr.-khandaker-abdullah-jahangir', 95, '120', 100, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type : Book<br>&nbsp;&nbsp;&nbsp; Book Name : Quran sunnahara aloke jamayata o aikya<br>&nbsp;&nbsp;&nbsp; Author : Dr. Khandaker Abdullah Jahangir<br>&nbsp;&nbsp;&nbsp; Publish er\'s Name : As-Sunnah Publications<br>&nbsp;&nbsp;&nbsp; ISBN : null<br>&nbsp;&nbsp;&nbsp; Year of Publication : 2017<br>&nbsp;&nbsp;&nbsp; Number of Pages : 16<br>&nbsp;&nbsp;&nbsp; Edition : 1st<br>&nbsp;&nbsp;&nbsp; Country : Bangladesh<br>&nbsp;&nbsp;&nbsp; Language : Bangla<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:05:37', '2021-03-09 18:57:40'),
(294, 3, 20, 0, NULL, 'The Productive Muslim By Mohammed Faris', 'the-productive-muslim-by-mohammed-faris', 280, '400', 295, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Book<br>&nbsp;&nbsp;&nbsp; Book Name:The Productive Muslim<br>&nbsp;&nbsp;&nbsp; Author:Mohammed Faris<br>&nbsp;&nbsp;&nbsp; Publisher\'s Name: গার্ডিয়ান পাবলিকেশন<br>&nbsp;&nbsp;&nbsp; ISBN:9789848254547<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:07:36', '2021-03-09 18:57:40'),
(295, 4, 25, 0, NULL, 'Baby Food Grinding Bowl', 'baby-food-grinding-bowl', 379, '700', 399, NULL, '<p>&nbsp;&nbsp;&nbsp; good quality and hygenic<br>&nbsp;&nbsp;&nbsp; bpa free<br>&nbsp;&nbsp;&nbsp; Stylish Look<br>&nbsp;&nbsp;&nbsp; Trendy Design<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:14:58', '2021-03-09 18:57:40'),
(296, 4, 25, 0, NULL, 'ELDOBABY 2 (6-12 Month) Follow Up Formula BIB', 'eldobaby-2-(6-12-month)-follow-up-formula-bib', 561, '699', 590, NULL, '<p>ELDOBABY 2 (6-12 Month) Follow Up Formula BIB<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:15:58', '2021-03-09 18:57:40'),
(297, 4, 25, 0, NULL, '(HAVEit360) High Quality UK Brand Baby Fashionable Shortall Adjustable Dress 2pcs Set (Overalls + T-Shirt) For 0-12 Month', '(haveit360)-high-quality-uk-brand-baby-fashionable-shortall-adjustable-dress-2pcs-set-(overalls-+-t-shirt)-for-0-12-month', 941, '1290', 990, NULL, '<p>Product Description: -<br>T-shirt &amp; Overall : Main Material Cotton.<br>Color: As Like Picture.<br>Brand: Jainco (UK) (100% Original Product)<br>Size With Recommended Age: - (Measurement in INCH)<br>00-03 Month = (Overall ,Full Length -17.5\" &amp; Shoulder To Fly Length - 15.5\") = (T-Shirt Chest - 19.0\" &amp; Length - 11.0\")<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:17:12', '2021-03-09 18:57:40'),
(298, 4, 25, 0, NULL, 'Winter Clothes Newborn Baby Set - 5 Pcs ( 0 - 6 month)', 'winter-clothes-newborn-baby-set---5-pcs-(-0---6-month)', 561, '999', 590, NULL, '<p>Item:baby Clothing Set<br>100% Cotton,breathable,comfortable And Lightweight.<br>Cute And Fashion Suitable For Daily Wear Or Photograph.<br>Brand New And High Quality.<br>5pcs Newborn Layette Set: 1pcs Buttons Closure Tops,1pcs Footed Bottoms,1pcs Long Pants,1 Pcs Bibs,1pcs Newborn Baby Hat.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:18:23', '2021-03-09 18:57:40'),
(299, 4, 25, 0, NULL, 'Duck Baby Musical Walker', 'duck-baby-musical-walker', 1900, '2500', 2000, NULL, '<p>&nbsp;&nbsp;&nbsp; This walker will help your Baby\'s initial walking. Soft foaming seat enhance babys comfort. Colorful design with light and smooth music entertain your baby. You can use it as feeding table by detaching front music plate. Also you can adjust necessary height according to your baby at 3 steps. Multiple wheels of this walker will help easy balancing and running. Fully washable. Baby recommeded age 6 to 18 month ,If you do not have this color, you need another color,<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:21:22', '2021-03-09 18:57:40'),
(300, 4, 25, 0, NULL, 'Food Grade Silicone Baby Pacifiers Teethers Toddler Pacifier Orthodontic Soothers Teat For Baby Pacifier (1 Pieces)', 'food-grade-silicone-baby-pacifiers-teethers-toddler-pacifier-orthodontic-soothers-teat-for-baby-pacifier-(1-pieces)', 86, '270', 90, NULL, '<p>&nbsp;&nbsp;&nbsp; Bendable soft silicone reduces risk of injury<br>&nbsp;&nbsp;&nbsp; Providing the safest learning experience possible.<br>&nbsp;&nbsp;&nbsp; Food Grade silicone material, very durable.<br>&nbsp;&nbsp;&nbsp; Easy for baby to hold, while preventing choking<br>&nbsp;&nbsp;&nbsp; Use the tongue brush to establish good oral hygiene<br>&nbsp;&nbsp;&nbsp; Cleans without hurting the surface of the tongue<br>&nbsp;&nbsp;&nbsp; Apple Bear<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:23:23', '2021-03-09 18:57:40'),
(301, 5, 34, 0, NULL, 'iPhone 12 Pro Max Silicone Case', 'iphone-12-pro-max-silicone-case', 561, '999', 590, NULL, '<p>&nbsp;&nbsp;&nbsp; Product details of iPhone 12 Pro Max Case iPhone 12 Pro Max Silky Silicone Cover Soft-Touch Back Protective <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:28:04', '2021-03-09 18:57:40'),
(302, 5, 34, 0, NULL, 'BASEUS 10000mAh 18W PD+QC Quick Charge Portable Power Bank', 'baseus-10000mah-18w-pd+qc-quick-charge-portable-power-bank', 808, '1250', 850, NULL, '<p>Brand: BASEUS<br>Model: PPDMNA<br>Core: Polymer lithium battery<br>Battery capacity: 10000mAh / 3.7V 37Wh<br>Rated capacity: 5700mAh<br>Energy conversion rate: ≥77%<br>Input:<br>Micro: DC 5V / 2.1A, 9V / 2.0A, 12V / 1.5A 18W Max.<br>Type-C: DC 5V / 2.1A, 9V / 2.0A, 12V / 1.5A Max.<br>Output:<br>USB: DC 5V / 3A, 9V / 2A, 12V / 1.5A Max.<br>Type-C: DC 5V / 3A, 9V / 2A, 12V / 1.5A Max.<br>USB+Type-C: DC 5V / 3A Max.<br>Product size: 136 x 67 x 16mm<br>Product weight: 218g<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:29:32', '2021-03-09 18:57:40'),
(303, 5, 34, 0, NULL, 'Luxury Back Cover Glass Case For iPhone 6/6s -Black', 'luxury-back-cover-glass-case-for-iphone-6/6s--black', 238, '350', 250, NULL, '<p>&nbsp;&nbsp;&nbsp; Protect your phone from damage<br>&nbsp;&nbsp;&nbsp; Shockproof<br>&nbsp;&nbsp;&nbsp; Pressure-Resistant<br>&nbsp;&nbsp;&nbsp; Durable and lightweight<br>&nbsp;&nbsp;&nbsp; Best Mobile Case for your Smartphone<br>&nbsp;&nbsp;&nbsp; High-precision machine molding<br>&nbsp;&nbsp;&nbsp; Provides instant protection from scratches and dust<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:31:03', '2021-03-09 18:57:40'),
(304, 5, 34, 0, NULL, 'Xiaomi_Mi USB Cable 3A Type B -White', 'xiaomi_mi-usb-cable-3a-type-b--white', 138, '220', 145, NULL, '<p>&nbsp;&nbsp;&nbsp; The lightning logo refers to 3A charging.<br>&nbsp;&nbsp;&nbsp; 100% original xioami_Mi USB data cable<br>&nbsp;&nbsp;&nbsp; Perfect Mobility: It can be used as a decoration and it\'s very convenient and portable.<br>&nbsp;&nbsp;&nbsp; Quick Charging: The short USB line can reduce the internal resistance, which makes the output up to 3A<br>&nbsp;&nbsp;&nbsp; Type B cable<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:32:27', '2021-03-09 18:57:40'),
(305, 5, 34, 0, NULL, 'Apple iPhone 11 Back Case Cover | Frosted Translucent Frameless Design | Hard Case With Ring (Free)', 'apple-iphone-11-back-case-cover-|-frosted-translucent-frameless-design-|-hard-case-with-ring-(free)', 181, '350', 190, NULL, '<p>&nbsp;&nbsp;&nbsp; Unique design<br>&nbsp;&nbsp;&nbsp; Fashionable<br>&nbsp;&nbsp;&nbsp; Stylish Frosted Matte Texture<br>&nbsp;&nbsp;&nbsp; Support Wireless Charging.<br>&nbsp;&nbsp;&nbsp; Full Protection<br>&nbsp;&nbsp;&nbsp; Easy to remove your buttons.<br>&nbsp;&nbsp;&nbsp; Non-Slippery with comfortable grip.<br>&nbsp;&nbsp;&nbsp; Easy Installation &amp; Removal.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:34:12', '2021-03-09 18:57:40'),
(306, 5, 34, 0, NULL, 'Armor Back Cover for Redmi Note 6 Pro -Blue', 'armor-back-cover-for-redmi-note-6-pro--blue', 147, '250', 155, NULL, '<p>&nbsp;&nbsp;&nbsp; Protects your device perfectly<br>&nbsp;&nbsp;&nbsp; Vibrant Color Border<br>&nbsp;&nbsp;&nbsp; Material: Soft Rubber<br>&nbsp;&nbsp;&nbsp; High-precision machine molding<br>&nbsp;&nbsp;&nbsp; Ultra-thin and easy for operation<br>&nbsp;&nbsp;&nbsp; Tough and scratch-resistant yet flexible<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:35:36', '2021-03-09 18:57:40'),
(307, 5, 35, 0, NULL, 'Lenovo XT90 TWS True Wireless Bluetooth 5.0 Earphones Touch Control Mini Earbuds Sport Handsfree Headset', 'lenovo-xt90-tws-true-wireless-bluetooth-5.0-earphones-touch-control-mini-earbuds-sport-handsfree-headset', 941, '1560', 990, NULL, '<p>&nbsp;&nbsp;&nbsp; Bluetooth version: V5.0<br>&nbsp;&nbsp;&nbsp; Transmission range: 10m<br>&nbsp;&nbsp;&nbsp; Headphone battery capacity: 35mAh / 3.7V<br>&nbsp;&nbsp;&nbsp; Charging box battery capacity: 300mAh / 3.7V<br>&nbsp;&nbsp;&nbsp; Listening time (used with charging box): 20 hours<br>&nbsp;&nbsp;&nbsp; Earphone charging time: 1.5 hours (plug in)<br>&nbsp;&nbsp;&nbsp; Earphone listening time: 1.5 hours (actually depends on the volume)<br>&nbsp;&nbsp;&nbsp; Standby time: 300 hours<br>&nbsp;&nbsp;&nbsp; Interface: Type-C<br>&nbsp;&nbsp;&nbsp; The charging box provides charging times for the headset: 3 times<br>&nbsp;&nbsp;&nbsp; Headphone rated input: DC 5V 20mA<br>&nbsp;&nbsp;&nbsp; Rated current consumption of earphone: 10mA<br>&nbsp;&nbsp;&nbsp; Frequency response range: 20Hz-20KHz<br>&nbsp;&nbsp;&nbsp; Material: ABS<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:38:40', '2021-03-09 18:57:41'),
(308, 5, 35, 0, NULL, 'Lenovo HE05 Neckband Bluetooth Headset', 'lenovo-he05-neckband-bluetooth-headset', 523, '1000', 550, NULL, '<p>&nbsp;&nbsp;&nbsp; This wireless earphone of Lenovo brand ischeifly designed for long-time and high quality of playing. The awesome stereo earphones not only equiped with the fastest and stablest BT 5.0 chip, but also built-in the premium CVC noise canceling microphones which allow you a ultimate music pleasure.What\'s more, the earphones come with large capacity of battery providing 8 hours paying time, absolutely the best choice for gym sports, running, joggcing etc.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:40:33', '2021-03-09 18:57:41'),
(309, 5, 35, 0, NULL, 'Ahuja Wired Microphone AUD 100XLR', 'ahuja-wired-microphone-aud-100xlr', 428, '990', 450, NULL, '<p><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:42:49', '2021-03-09 18:57:41'),
(310, 5, 35, 0, NULL, 'Creative High Bass Audio Earphone (EP-530 )', 'creative-high-bass-audio-earphone-(ep-530-)', 428, '660', 450, NULL, '<p>Easy to take to anywhere. Support the use of Earphone/Headphone<br>Super bass sound quality effects<br>Metal Body<br>Impedance : 16 Ohm<br>Jack : 3.5 mm<br>Cable : 1.2 m<br>Mic: Yes<br>Rubber effects painting<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:43:55', '2021-03-09 18:57:41'),
(311, 5, 35, 0, NULL, 'P47 - Top Quality Wireless Bluetooth headphone (5.0+EDR) Latest Version', 'p47---top-quality-wireless-bluetooth-headphone-(5.0+edr)-latest-version', 428, '980', 450, NULL, '<p>Model: P47 (5.0 + EDR).<br>Type: Wireless Bluetooth headphone.<br>Microphone Included: Yes.<br>Noise Cancelling: Yes.<br>Connectivity: Wireless (Bluetooth).<br>Talk Time: 6 hours.<br>Standby Time: Up to 15 hours.<br>TF Card/FM Stereo Radio/MP3 Player/Wireless/Bluetooth.<br>Driver Unit: 40mm Diameter.<br>Scope of Work: 10 meters.<br>USB Charging Cable: AC input 110-240VDC input 5V.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:44:58', '2021-03-09 18:57:41'),
(312, 5, 35, 0, NULL, 'Mini Wireless Bluetooth 4.1 Stereo In-Ear Headset Earphone', 'mini-wireless-bluetooth-4.1-stereo-in-ear-headset-earphone', 333, '700', 350, NULL, '<p>&nbsp;&nbsp;&nbsp; Operate independently<br>&nbsp;&nbsp;&nbsp; Fast audio switching speed<br>&nbsp;&nbsp;&nbsp; Humanized audio track<br>&nbsp;&nbsp;&nbsp; HD voice<br>&nbsp;&nbsp;&nbsp; All Android device supported<br>&nbsp;&nbsp;&nbsp; Indication Light<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Bluetooth 4.1<br>&nbsp;&nbsp;&nbsp; Silicon Ear Cap<br>&nbsp;&nbsp;&nbsp; Intelligent Noise Reduction<br>&nbsp;&nbsp;&nbsp; Talk Duration: 2.5 hours<br>&nbsp;&nbsp;&nbsp; Built-in HD Microphone<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:46:02', '2021-03-09 18:57:41'),
(313, 1, 1, 0, NULL, 'Conion Ceiling Fan Signature 56”- 4 Blades - Sparking Blue', 'conion-ceiling-fan-signature-56”--4-blades---sparking-blue', 3325, '4500', 3500, NULL, '<p>&nbsp;&nbsp;&nbsp; Blades: 4<br>&nbsp;&nbsp;&nbsp; RPM: 305<br>&nbsp;&nbsp;&nbsp; Color: Sparkling Blue<br>&nbsp;&nbsp;&nbsp; Consumption in watts: 80<br>&nbsp;&nbsp;&nbsp; Energy Saving System<br>&nbsp;&nbsp;&nbsp; Ultra High Speed (UHS) Technology<br>&nbsp;&nbsp;&nbsp; Air Delivery: 280 CBM/min<br>&nbsp;&nbsp;&nbsp; Ribbed Aluminum Blades<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:51:34', '2021-03-09 18:57:41'),
(314, 1, 1, 0, NULL, 'Mira Industrial Stand Fan - 18 Inch', 'mira-industrial-stand-fan---18-inch', 4038, '5500', 4250, NULL, '<p>&nbsp;&nbsp;&nbsp; Brand: Mira<br>&nbsp;&nbsp;&nbsp; Model: M-187<br>&nbsp;&nbsp;&nbsp; Propeller size: 18 inch<br>&nbsp;&nbsp;&nbsp; Voltage/Volt: 220 V, 50 Hz<br>&nbsp;&nbsp;&nbsp; Power: 120 Watt<br>&nbsp;&nbsp;&nbsp; Speed: 1300 RPM<br>&nbsp;&nbsp;&nbsp; Air volume (cubic meters/minute): 140<br>&nbsp;&nbsp;&nbsp; Adjustable height as needed<br>&nbsp;&nbsp;&nbsp; Adjust the wind with three levels<br>&nbsp;&nbsp;&nbsp; Line adjustment – left, right freely<br>&nbsp;&nbsp;&nbsp; 18-inch rotors provide consistent wind<br>&nbsp;&nbsp;&nbsp; Durable steel construction<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:54:49', '2021-03-09 18:57:41'),
(315, 1, 1, 0, NULL, 'Stormy Desk Fan', 'stormy-desk-fan', 941, '1950', 990, NULL, '<p>&nbsp;&nbsp;&nbsp; Stormy Hi-Speed Desk Fan<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:56:11', '2021-03-09 18:57:41'),
(316, 1, 1, 0, NULL, 'Misushita FAN Table Fan 40cm (17-1T)', 'misushita-fan-table-fan-40cm-(17-1t)', 3325, '4500', 3500, NULL, '<p>&nbsp;&nbsp;&nbsp; Made In Thailand<br>&nbsp;&nbsp;&nbsp; Model No: FAN 17-1T<br>&nbsp;&nbsp;&nbsp; Voltage 220 V 50 HZ<br>&nbsp;&nbsp;&nbsp; 46 W<br>&nbsp;&nbsp;&nbsp; 0.20 A<br>&nbsp;&nbsp;&nbsp; Fan Size 16 inch<br>&nbsp;&nbsp;&nbsp; Weight 4.8kg<br>&nbsp;&nbsp;&nbsp; Revolution Speed 1.3m3/min/W<br>&nbsp;&nbsp;&nbsp; Box Size (545*330*505) mm<br>&nbsp;&nbsp;&nbsp; 12/16 inch(3 Part,) Fan blade.<br>&nbsp;&nbsp;&nbsp; Special standard front and black safety grill.<br>&nbsp;&nbsp;&nbsp; 3 Speed Fan<br>&nbsp;&nbsp;&nbsp; 3 Years Warranty <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:57:21', '2021-03-09 18:57:41'),
(317, 1, 1, 0, NULL, 'Nova 2000W Element Room Heater- White', 'nova-2000w-element-room-heater--white', 941, '1500', 990, NULL, '<p>oduct details of Nova 2000W Element Room Heater- White<br><br>&nbsp;&nbsp;&nbsp; 2000W Element Room Heater 2000W Element Room Heater ACB-15 – White is the best choice when it comes to portable room heaters. This room heater is made from long-lasting heating element and a 100% pure copper wire motor. The device can be used as a fan as well in summer thanks to the variable thermostat setting feature.<br><br>&nbsp;&nbsp;&nbsp; Product Type: Heater<br>&nbsp;&nbsp;&nbsp; Power: (1000W / 2000W)<br>&nbsp;&nbsp;&nbsp; Heater Settings: 2<br>&nbsp;&nbsp;&nbsp; Cool-touch housing<br>&nbsp;&nbsp;&nbsp; Carrying handle<br>&nbsp;&nbsp;&nbsp; Thermostat<br>&nbsp;&nbsp;&nbsp; Safety cut-off switch<br>&nbsp;&nbsp;&nbsp; Thermal cutoff device<br><br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 10:58:33', '2021-03-09 18:57:41'),
(318, 1, 1, 0, NULL, 'Luxury Ceiling Fan (ESC - 402) Luxury Ceiling Fan (ESC - 402)', 'luxury-ceiling-fan-(esc---402)-luxury-ceiling-fan-(esc---402)', 9500, '12000', 10000, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Size: 36 inch, 42 inch<br>&nbsp;&nbsp;&nbsp; Product color: as picture show<br>&nbsp;&nbsp;&nbsp; Product material:stainless steel,ABS,iron<br>&nbsp;&nbsp;&nbsp; Process: plated<br>&nbsp;&nbsp;&nbsp; Bulb type: LED (bulb included)<br>&nbsp;&nbsp;&nbsp; Light source: LED chips<br>&nbsp;&nbsp;&nbsp; Voltage: AC 90-240V (Available in all countries)<br>&nbsp;&nbsp;&nbsp; Package: carton + foam (1*ceiling lamp)<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:00:30', '2021-03-09 18:57:41'),
(319, 1, 46, 0, NULL, 'Best Vacuum Cleaner Cum Electric Blower - Yellow and Black', 'best-vacuum-cleaner-cum-electric-blower---yellow-and-black', 3401, '5500', 3580, NULL, '<p>&nbsp;&nbsp;&nbsp; All types of dust sand are used for cleaning with vacuum cleaner.<br>&nbsp;&nbsp;&nbsp; Portable Hand Electric Air Blower Cum Vacuum Cleaner<br>&nbsp;&nbsp;&nbsp; Dust Remover of all types<br>&nbsp;&nbsp;&nbsp; Input power: 800 Watts<br>&nbsp;&nbsp;&nbsp; Air circulation rate: 3.5 m / min<br>&nbsp;&nbsp;&nbsp; No-load speed: 13000r / min<br>&nbsp;&nbsp;&nbsp; Can also be used as a blower or as a vacuum cleaner<br>&nbsp;&nbsp;&nbsp; Color: Yellow<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:03:39', '2021-03-09 18:57:41'),
(320, 1, 46, 0, NULL, 'Baseus Mini Handheld Auto Vacuum Cleaner with 5000Pa Powerful Suction For Home, Car and Office Baseus Mini Handheld Auto Vacuum Cleaner with 5000Pa Powerful Suction For Home, Car and Office', 'baseus-mini-handheld-auto-vacuum-cleaner-with-5000pa-powerful-suction-for-home,-car-and-office-baseus-mini-handheld-auto-vacuum-cleaner-with-5000pa-powerful-suction-for-home,-car-and-office', 2993, '4500', 3150, NULL, '<p>&nbsp;&nbsp;&nbsp; Easy to deal with all kinds of garbage<br>&nbsp;&nbsp;&nbsp; Compact and Delicate<br>&nbsp;&nbsp;&nbsp; Two in one suction nozzle<br>&nbsp;&nbsp;&nbsp; Wireless handheld convenient to use<br>&nbsp;&nbsp;&nbsp; Concentrated suction to take away soot and residues<br>&nbsp;&nbsp;&nbsp; Prevent secondary pollution not get dirt for a long time<br>&nbsp;&nbsp;&nbsp; Dust in the gap can also be cleaned<br>&nbsp;&nbsp;&nbsp; Clean every place for sunken corners, bookcase, home<br>&nbsp;&nbsp;&nbsp; Dust removal equipment exclusive for cars<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:05:07', '2021-03-09 18:57:41'),
(321, 1, 46, 0, NULL, '4Pcs Durable Cleaning For Xiaomi Deerma Tb500 Spray Water Mop Swivel 360 Cleaning Cloth Replace Cloth 355X120Mm', '4pcs-durable-cleaning-for-xiaomi-deerma-tb500-spray-water-mop-swivel-360-cleaning-cloth-replace-cloth-355x120mm', 941, '1500', 990, NULL, '<p>&nbsp;&nbsp;&nbsp; Replace Cloth<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:06:33', '2021-03-09 18:57:41');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(322, 1, 46, NULL, NULL, 'Philips FC8087/01, Bagless Vacuum Cleaner,1400w.', 'philips-fc8087/01,-bagless-vacuum-cleaner,1400w.', 8123, '11450', 8550, NULL, '<p>&nbsp;&nbsp;&nbsp; Bagless vacuum cleaner.<br>&nbsp;&nbsp;&nbsp; Motor Power : 1400 watts.<br>&nbsp;&nbsp;&nbsp; Easy to Clean Container.<br>&nbsp;&nbsp;&nbsp; Power Cyclone 3.<br>&nbsp;&nbsp;&nbsp; Dust Capacity : 1.1 Liters.<br>&nbsp;&nbsp;&nbsp; Cord Length : 4.5 Meters.<br>&nbsp;&nbsp;&nbsp; 3 Accessories : Hard and Soft Floor Nozzle, Crevice tool, Long bend.<br>&nbsp;&nbsp;&nbsp; Power supply : 220 volts, 50-60 Hz.<br>&nbsp;&nbsp;&nbsp; Anti-bacteria Filter, Dust Filter.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:07:51', '2021-03-09 18:57:41'),
(323, 1, 46, 0, NULL, 'BASEUS A2 CAR VACUUM CLEANER', 'baseus-a2-car-vacuum-cleaner', 2138, '3550', 2250, NULL, '<p>&nbsp;&nbsp;&nbsp; Material: ABS+PC<br>&nbsp;&nbsp;&nbsp; Suction: ≥5,000Pa<br>&nbsp;&nbsp;&nbsp; Charging time: 3-3.5h<br>&nbsp;&nbsp;&nbsp; Battery capacity: 21.6Wh<br>&nbsp;&nbsp;&nbsp; Input: 5V/2.4A（Max.<br>&nbsp;&nbsp;&nbsp; Working time: 18 mins<br>&nbsp;&nbsp;&nbsp; Battery Type: Li-ion battery<br>&nbsp;&nbsp;&nbsp; Battery capacity: 6000mAh<br>&nbsp;&nbsp;&nbsp; Rated power: 70W<br>&nbsp;&nbsp;&nbsp; Battery duration: &gt;18min<br>&nbsp;&nbsp;&nbsp; Noise: &lt;75dB<br>&nbsp;&nbsp;&nbsp; Charging port: Type-C interface<br>&nbsp;&nbsp;&nbsp; Size: 253*60mm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:10:47', '2021-03-09 18:57:41'),
(324, 1, 46, 0, NULL, '72W-Joyroom Car Wet & Dry Amphibious Vacuum Cleaner', '72w-joyroom-car-wet-&-dry-amphibious-vacuum-cleaner', 1159, '1920', 1220, NULL, '<p>&nbsp;&nbsp;&nbsp; Features:<br>&nbsp;&nbsp;&nbsp; Dry &amp; wet amphibious cleaner<br>&nbsp;&nbsp;&nbsp; Safe &amp; fast<br>&nbsp;&nbsp;&nbsp; Easy to carry<br>&nbsp;&nbsp;&nbsp; Low noise<br>&nbsp;&nbsp;&nbsp; Super vacuum<br>&nbsp;&nbsp;&nbsp; Washable filter<br>&nbsp;&nbsp;&nbsp; Long Chord with built in plug<br>&nbsp;&nbsp;&nbsp; One brush &amp; One cleaner mouth<br>&nbsp;&nbsp;&nbsp; <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:12:49', '2021-03-09 18:57:41'),
(325, 8, 0, 0, NULL, 'DK-40AA Treadmill- Black WITH FREE MASSAGER', 'dk-40aa-treadmill--black-with-free-massager', 24320, '32500', 25600, NULL, '<p>For more details about this product, please dial 01707770053 to get assistance from our expert agents.<br>Installation Fee and Service Charge 1000 Taka for Inside Dhaka Only<br>Motor peak power: 2.0HP<br>Speed range: 0.8-10KM/H<br>LCD Screen Display blue screen: Time,speed,distance<br>Program : P1-P12 With MP3,USB,Handle Key<br>Allowable Weight: 110Kg<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:20:43', '2021-03-09 18:57:41'),
(326, 8, 0, NULL, NULL, 'Pull Reducer Body Trimmer Resistance Band Gym,Yoga Sports Exercise Equipment for Lose Waist Weight Reduce Tummy Trimmer', 'pull-reducer-body-trimmer-resistance-band-gym,yoga-sports-exercise-equipment-for-lose-waist-weight-reduce-tummy-trimmer', 285, '500', 300, NULL, '<p>Product Type: Gym pull/body Trimmer<br>Brand: Dubai Sports<br>Brand new and high quality.<br>Safe,Comportable &amp; Easy to use<br>Made of environmental material and little storage space<br>Comfortable to use because of full foam design<br>Easily to exercise your arms, legs and stomach muscles<br>Material:Foam,Rubber<br>Size:50cm X 25cm<br>Heavy resistance, durable.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:22:20', '2021-03-09 18:57:41'),
(327, 8, 0, NULL, NULL, 'Wheel Light for Cycle, Bike & Car', 'wheel-light-for-cycle,-bike-&-car', 81, '100', 85, NULL, '<p>&nbsp;&nbsp;&nbsp; Lens width: 52mm<br>&nbsp;&nbsp;&nbsp; Lens height: 38mm<br>&nbsp;&nbsp;&nbsp; Total width:141mm<br>&nbsp;&nbsp;&nbsp; Bridge: 18mm<br>&nbsp;&nbsp;&nbsp; Arm: 142mm<br>&nbsp;&nbsp;&nbsp; Glare-blocking technology<br>&nbsp;&nbsp;&nbsp; Enhances clarity and color<br>&nbsp;&nbsp;&nbsp; Enhance your vision<br>&nbsp;&nbsp;&nbsp; Lightweight and durable<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:24:07', '2021-03-09 18:57:42'),
(328, 8, 0, NULL, NULL, 'Revoflex Xtreme Full Body Workout - Multicolor', 'revoflex-xtreme-full-body-workout---multicolor', 561, '1290', 590, NULL, '<p>Item Type: Massage &amp; Relaxation<br>Material: ABS+PP+EVA<br>Size:16*43*5m<br>Perform up to 40 different exercises<br>Provides up to 6 levels of training<br>Shapes your body quickly, easily<br>Resistance workout at home<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:26:11', '2021-03-09 18:57:42'),
(329, 8, 0, NULL, NULL, 'Motorized Treadmill OMA-0061EB', 'motorized-treadmill-oma-0061eb', 26591, '35500', 27990, NULL, '<p>&nbsp;&nbsp;&nbsp; For more details about this product, please dial 01707770053 to get assistance from our expert agents.<br>&nbsp;&nbsp;&nbsp; Installation Fee and Service Charge 1000 Taka for Inside Dhaka Only<br>&nbsp;&nbsp;&nbsp; DC Motor:1.5 H.P (continuous) 2.25 Hp (peak)<br>&nbsp;&nbsp;&nbsp; Gross Weight: 58Kg<br>&nbsp;&nbsp;&nbsp; Screen: LED Screen<br>&nbsp;&nbsp;&nbsp; Speed Range: 1-13 Km/n<br>&nbsp;&nbsp;&nbsp; Incline: 2Level manual incline<br>&nbsp;&nbsp;&nbsp; Running Surface: 1230 x 415mm<br>&nbsp;&nbsp;&nbsp; Maximum User\'s weight: 120kg<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:27:33', '2021-03-09 18:57:42'),
(330, 8, 0, NULL, NULL, 'White Durable New 1 Pair Competition Pro Soccer Shin Guard Pads Shinguard Protector', 'white-durable-new-1-pair-competition-pro-soccer-shin-guard-pads-shinguard-protector', 627, '880', 660, NULL, '<p>&nbsp;&nbsp;&nbsp; Easy to use, just cover your shin with this pad and put on your socksWith soft EVA lining, which makes the wearing much more comfortableColor:White<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:29:35', '2021-03-09 18:57:42'),
(331, 9, 0, NULL, NULL, 'Dettol Soap Cool 75gm Quad Pack Combo (75gm X 4)', 'dettol-soap-cool-75gm-quad-pack-combo-(75gm-x-4)', 138, '155', 145, NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp; Dettol Cool Soap Quad pack contains 4 pcs of Dettol Cool 75gm Soap<br>&nbsp;&nbsp;&nbsp; Dettol Cool Soap comes with refreshing crispy menthol fragrance<br>&nbsp;&nbsp;&nbsp; Dettol Cool Soap keeps skin moist and leaves it feeling healthy and fresh<br>&nbsp;&nbsp;&nbsp; Dettol Soaps are dermatologically tested for everyday use<br>&nbsp;&nbsp;&nbsp; Dettol Cool Soap is a Grade 1 Soap- providing the best value for your purchase<br>&nbsp;&nbsp;&nbsp; Dettol Bar Soaps keeps you healthy and provides 100% better protection vs ordinary soaps<br>&nbsp;&nbsp;&nbsp; Recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA)<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:34:04', '2021-03-09 18:57:42'),
(332, 9, 0, NULL, NULL, 'Dove Beauty Bar Pink 135g', 'dove-beauty-bar-pink-135g', 86, '100', 90, NULL, '<p>&nbsp;&nbsp;&nbsp; ¼ moisturizing cream and gentle cleansers help retain skin’s moisture<br>&nbsp;&nbsp;&nbsp; Leaves skin softer, smoother and more glowing<br>&nbsp;&nbsp;&nbsp; No1 Brand recommended by dermatologists<br>&nbsp;&nbsp;&nbsp; It’s not a soap – it’s a beauty bar<br>&nbsp;&nbsp;&nbsp; Suitable for daily use on face, body and hand<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:36:02', '2021-03-09 18:57:42'),
(333, 9, 0, NULL, NULL, 'Activated Carbon Soap - 120 gm', 'activated-carbon-soap---120-gm', 304, '350', 320, NULL, '<p>&nbsp;&nbsp;&nbsp; Product type: soap<br>&nbsp;&nbsp;&nbsp; Gender: unisex<br>&nbsp;&nbsp;&nbsp; Recommended: solution for all problematic faces.<br>&nbsp;&nbsp;&nbsp; Acne<br>&nbsp;&nbsp;&nbsp; Pimples<br>&nbsp;&nbsp;&nbsp; Eczema<br>&nbsp;&nbsp;&nbsp; Whitehead<br>&nbsp;&nbsp;&nbsp; Oilyskin<br>&nbsp;&nbsp;&nbsp; Blackheads<br>&nbsp;&nbsp;&nbsp; Rashes<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:38:36', '2021-03-09 18:57:42'),
(334, 9, 0, NULL, NULL, 'Olive Oil', 'olive-oil', 299, '345', 315, NULL, '<p>olive Oil<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:43:03', '2021-03-09 18:57:42'),
(335, 9, 0, NULL, NULL, 'Mini Makeup Combo with Full Makeup Coverage-6 Pieces', 'mini-makeup-combo-with-full-makeup-coverage-6-pieces', 371, '540', 390, NULL, '<p>&nbsp;&nbsp;&nbsp; FITME FOUNDATION<br>&nbsp;&nbsp;&nbsp; FITME PRIME<br>&nbsp;&nbsp;&nbsp; LA. A GIRL CONCELER<br>&nbsp;&nbsp;&nbsp; BLENDER<br>&nbsp;&nbsp;&nbsp; EYELASH WITH GLUE<br>&nbsp;&nbsp;&nbsp; FACE POWDERces<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:46:47', '2021-03-09 18:57:42'),
(336, 9, 0, NULL, NULL, 'Himani Navratna Oil - 100ml', 'himani-navratna-oil---100ml', 104, '120', 109, NULL, '<p>&nbsp;&nbsp;&nbsp; Product type: Hair Oil<br>&nbsp;&nbsp;&nbsp; Gender: Unisex<br>&nbsp;&nbsp;&nbsp; Capacity: 100ml<br>&nbsp;&nbsp;&nbsp; Good Quality Product<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:49:42', '2021-03-09 18:57:42'),
(337, 10, 56, 0, NULL, 'CURREN 8321 Quartz Watch Men Top Brand Military Wrist Watches MEN Full Steel Business Men Watch Clock Waterproof', 'curren-8321-quartz-watch-men-top-brand-military-wrist-watches-men-full-steel-business-men-watch-clock-waterproof', 1188, '1550', 1250, NULL, '<p>Brand: Curren<br>Watch style: Business,Cool,Fashion<br>Watches categories: Men<br>Watch mirror: Mineral glass<br>Case material: Alloy<br>Display type: Analog<br>Movement type: Quartz watch<br>Shape of the dial: Round<br>Dial size: Diameter=4.2cm<br>Band material: Stainless Steel<br>Clasp type: Double buckle<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:53:51', '2021-03-09 18:57:42'),
(338, 10, 56, 0, NULL, 'Naviforce NF9117 - Coffee PU Leather Analog Watch for Men - Silver & Coffee', 'naviforce-nf9117---coffee-pu-leather-analog-watch-for-men---silver-&-coffee', 1473, '1650', 1550, NULL, '<p>&nbsp;&nbsp;&nbsp; Product Type: Watch<br>&nbsp;&nbsp;&nbsp; Movement: Analog Quartz Movement<br>&nbsp;&nbsp;&nbsp; Dial Shape: Round<br>&nbsp;&nbsp;&nbsp; Diameter: 4.5 cm<br>&nbsp;&nbsp;&nbsp; Window Material: Hardlex Glass<br>&nbsp;&nbsp;&nbsp; Case Thickness: 1.3 cm<br>&nbsp;&nbsp;&nbsp; Case Material: Alloy<br>&nbsp;&nbsp;&nbsp; Band Material: PU Leather<br>&nbsp;&nbsp;&nbsp; Band Length: 24cm<br>&nbsp;&nbsp;&nbsp; Band Width: 2.2cm<br>&nbsp;&nbsp;&nbsp; Water Resistance: 30M<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:55:35', '2021-03-09 18:57:42'),
(339, 10, 56, 0, NULL, 'CURREN 8321 Black Stainless Steel Analog Watch For Men - Black', 'curren-8321-black-stainless-steel-analog-watch-for-men---black', 1283, '1550', 1350, NULL, '<p>Product details of CURREN 8321 Black Stainless Steel Analog Watch For Men - Black<br>Clasp Type : Folding Clasp with Safety<br>Model Number : 8321<br>Movement : Quartz<br>Case Material : Alloy<br>Case Shape : Round<br>Band Width : 21mm<br>Water Resistance Depth : 3Bar<br>Boxes &amp; Cases Material : Paper<br>Dial Window Material Type : Hardlex<br>Band Material Type : Alloy<br>Case Thickness : 9mm<br>Feature : Water Resistant<br>Style : Fashion &amp; Casual<br>Dial Diameter : 42mm<br>Brand Name : CURREN<br>Band Length : 23inch<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 11:58:09', '2021-03-09 18:57:42'),
(340, 10, 56, 0, NULL, 'WINNER Men Automatic Watch Fashion Diamond Display Luminous Hands Gear Movement Retro Mechanical Skeleton Watches Luxury Casual Business Wristwatch', 'winner-men-automatic-watch-fashion-diamond-display-luminous-hands-gear-movement-retro-mechanical-skeleton-watches-luxury-casual-business-wristwatch', 1140, '1350', 1200, NULL, '<p>&nbsp;&nbsp;&nbsp; Exquisite workmanship keeps the time accurate.<br>&nbsp;&nbsp;&nbsp; Skeleton dial design reveals your fashionable point of view.<br>&nbsp;&nbsp;&nbsp; Stainless steel material provides you comfortable wearing experience.<br>&nbsp;&nbsp;&nbsp; Luminous hands on the dial is convenient for you to use at night.<br>&nbsp;&nbsp;&nbsp; The best gift to your family, friends, lovers and so on.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:01:42', '2021-03-09 18:57:42'),
(341, 10, 56, 0, NULL, 'Mvmt Chronograph stayle Leather Analog Watch For Man - Black(null)', 'mvmt-chronograph-stayle-leather-analog-watch-for-man---black(null)', 283, '350', 298, NULL, '<p>&nbsp;&nbsp;&nbsp; Manufacturer: MVMT<br>&nbsp;&nbsp;&nbsp; Gender: Men\'s<br>&nbsp;&nbsp;&nbsp; Dial: Analog<br>&nbsp;&nbsp;&nbsp; Color: Black<br>&nbsp;&nbsp;&nbsp; Width: About 2,4 cm Length of the clock: Approximately 22,5 cm<br>&nbsp;&nbsp;&nbsp; Case size: 45 mm<br>&nbsp;&nbsp;&nbsp; Case shape: Round<br>&nbsp;&nbsp;&nbsp; Water resistant: 3 ATM (30 meters)<br>&nbsp;&nbsp;&nbsp; Movement: Quartz<br>&nbsp;&nbsp;&nbsp; Features / Show: Quartz movement,<br>&nbsp;&nbsp;&nbsp; hardened mineral glass,<br>&nbsp;&nbsp;&nbsp; Chronograph Not Work Only Fashion look<br>&nbsp;&nbsp;&nbsp; Hours - minutes - seconds display,<br>&nbsp;&nbsp;&nbsp; Date display<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:05:45', '2021-03-09 18:57:42'),
(342, 10, 56, 0, NULL, 'CURREN 8363 Sports Watches Men‘s Luxury Brand Stainless Steel Quartz Watch Chronograph Date Wristwatch Fashion Business Male Clock', 'curren-8363-sports-watches-men‘s-luxury-brand-stainless-steel-quartz-watch-chronograph-date-wristwatch-fashion-business-male-clock', 1321, '1500', 1390, NULL, '<p>&nbsp;&nbsp;&nbsp; Style : Fashion &amp; Casual<br>&nbsp;&nbsp;&nbsp; Clasp Type : Bracelet Clasp<br>&nbsp;&nbsp;&nbsp; Water Resistance Depth : 3Bar<br>&nbsp;&nbsp;&nbsp; Movement : QUARTZ<br>&nbsp;&nbsp;&nbsp; Case Material : Alloy<br>&nbsp;&nbsp;&nbsp; Band Length : 24cm<br>&nbsp;&nbsp;&nbsp; Dial Window Material Type : Hardlex<br>&nbsp;&nbsp;&nbsp; Case Thickness : 14mm<br>&nbsp;&nbsp;&nbsp; Band Width : 24mm<br>&nbsp;&nbsp;&nbsp; Case Shape : ROUND<br>&nbsp;&nbsp;&nbsp; Item Type : Quartz Wristwatches<br>&nbsp;&nbsp;&nbsp; Model Number : 8363<br>&nbsp;&nbsp;&nbsp; Band Material Type : Stainless Steel<br>&nbsp;&nbsp;&nbsp; Feature : Auto Date<br>&nbsp;&nbsp;&nbsp; Feature : Chronograph<br>&nbsp;&nbsp;&nbsp; Feature : Water Resistant<br>&nbsp;&nbsp;&nbsp; Feature : Luminous Hands<br>&nbsp;&nbsp;&nbsp; Dial Diameter : 48mm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:07:50', '2021-03-09 18:57:43'),
(343, 10, 57, 0, NULL, 'NAVIFORCE NF5013 Black Mesh Stainless Steel Analog Watch For Women - RoseGold & Black', 'naviforce-nf5013-black-mesh-stainless-steel-analog-watch-for-women---rosegold-&-black', 1473, '1960', 1550, NULL, '<p>Brand : NAVIFORCE<br>Model Number : NF5013<br>Water Resistant : 3ATM<br>Luminous Part :<br>Plating Technique : Environmental vacuum electroplating<br>Warranty Period : 1 year<br>Total Length : 225 mm<br>Case Diameter : 32 mm<br>Case Tickness : 9.7 mm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:12:56', '2021-03-09 18:57:43'),
(344, 10, 57, 0, NULL, 'Peacook pride ladies watch - golden & pink', 'peacook-pride-ladies-watch---golden-&-pink', 176, '200', 185, NULL, '<p>&nbsp;&nbsp;&nbsp; • Movement: QUARTZ• Band Material Type: Stainless Steel• Dial Diameter: 19mm• Dial Window Material Type: Glass• Model Number: Women\'s Watch• Band Length: 18.5cm• Case Thickness: 9mm• Band Width: 6mm• Case Shape: Round• Gender: Women• Style: Fashion &amp; Casual• Case Material: Stainless Steel• Clasp Type: Hook Buckle<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:14:31', '2021-03-09 18:57:43'),
(345, 16, 0, NULL, NULL, 'Luxury Rhinestone Bracelet Ladies Quartz Watches Fashion Watch For Women', 'luxury-rhinestone-bracelet-ladies-quartz-watches-fashion-watch-for-women', 176, '200', 185, NULL, '<p>&nbsp;&nbsp;&nbsp; Movement: quartz movement<br>&nbsp;&nbsp;&nbsp; Water Resistance Depth: Not Water Resistant<br>&nbsp;&nbsp;&nbsp; Style: luxurious, modern and informal<br>&nbsp;&nbsp;&nbsp; Band Material Type: stainless steel<br>&nbsp;&nbsp;&nbsp; Dial Diameter: 21mm<br>&nbsp;&nbsp;&nbsp; Model Number: ladies watch<br>&nbsp;&nbsp;&nbsp; Strap Length: 17.4 cm<br>&nbsp;&nbsp;&nbsp; Case Thickness: 7mm<br>&nbsp;&nbsp;&nbsp; Strap Width: 1mm<br>&nbsp;&nbsp;&nbsp; Case Shape: Round<br>&nbsp;&nbsp;&nbsp; Brand Name: Onlineshopbd<br></p>', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:15:53', '2021-10-03 05:35:47'),
(346, 10, 57, 0, NULL, 'NAVIFORCE NF5001 Black PU Leather Sub-Dial Chronograph Watch For Women - Black & RoseGold', 'naviforce-nf5001-black-pu-leather-sub-dial-chronograph-watch-for-women---black-&-rosegold', 1511, '1750', 1590, NULL, '<p>&nbsp;&nbsp;&nbsp; Specifications :Movement : Analog Quartz Movement<br>&nbsp;&nbsp;&nbsp; Diameter : 3.2 cm<br>&nbsp;&nbsp;&nbsp; Window Material : Hardlex Glass<br>&nbsp;&nbsp;&nbsp; Case Thickness : 0.9 cm<br>&nbsp;&nbsp;&nbsp; Case Material : Alloy<br>&nbsp;&nbsp;&nbsp; Band Type : Stainless Steel<br>&nbsp;&nbsp;&nbsp; Band Material : Alloy Stainless Steel<br>&nbsp;&nbsp;&nbsp; Band Length : 23 cm<br>&nbsp;&nbsp;&nbsp; Band Width : 1.1 cm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:18:09', '2021-03-09 18:57:43'),
(347, 10, 57, 0, NULL, 'SKMEI 1330 - Black Leather Analog Watch for Women', 'skmei-1330---black-leather-analog-watch-for-women', 1188, '1560', 1250, NULL, '<p>&nbsp;&nbsp;&nbsp; Brand: Skmei<br>&nbsp;&nbsp;&nbsp; Model Number: 1300<br>&nbsp;&nbsp;&nbsp; Product Type: Analog Watch<br>&nbsp;&nbsp;&nbsp; Black Leather belt<br>&nbsp;&nbsp;&nbsp; 30m Waterproof<br>&nbsp;&nbsp;&nbsp; Black colordial pad<br>&nbsp;&nbsp;&nbsp; Golden color quartz<br></p>', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:20:17', '2021-03-10 07:33:07'),
(348, 10, 57, 0, NULL, 'NAVIFORCE NF5001 Purple PU Leather Sub-Dial Chronograph Watch For Women - Purple & RoseGold', 'naviforce-nf5001-purple-pu-leather-sub-dial-chronograph-watch-for-women---purple-&-rosegold', 1577, '1900', 1660, NULL, '<p>&nbsp;&nbsp;&nbsp; Specifications :Movement : Analog Quartz Movement<br>&nbsp;&nbsp;&nbsp; Diameter : 3.2 cm<br>&nbsp;&nbsp;&nbsp; Window Material : Hardlex Glass<br>&nbsp;&nbsp;&nbsp; Case Thickness : 0.9 cm<br>&nbsp;&nbsp;&nbsp; Case Material : Alloy<br>&nbsp;&nbsp;&nbsp; Band Type : Stainless Steel<br>&nbsp;&nbsp;&nbsp; Band Material : Alloy Stainless Steel<br>&nbsp;&nbsp;&nbsp; Band Length : 23 cm<br>&nbsp;&nbsp;&nbsp; Band Width : 1.1 cm<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:21:32', '2021-03-09 18:57:43'),
(349, 11, 64, 0, 19, 'realme C15 - 4GB RAM/64GB ROM - 6,000 mAh Battery - 18W Quick Charge - Ultra Wide Quad Camera', 'realme-c15---4gb-ram/64gb-rom---6,000-mah-battery---18w-quick-charge---ultra-wide-quad-camera', 12920, '15500', 13600, NULL, '<p>&nbsp;&nbsp;&nbsp; NO RETURN applicable if the seal is broken<br>&nbsp;&nbsp;&nbsp; Platform Processor: Snapdragon 460<br>&nbsp;&nbsp;&nbsp; CPU: Octa-core CPU, 11nm, up to 1.8GHz<br>&nbsp;&nbsp;&nbsp; GPU: Adreno 610<br>&nbsp;&nbsp;&nbsp; Storage RAM: 4GB LPDDR4X / ROM: 64GB<br>&nbsp;&nbsp;&nbsp; Display: Size: 6.5\" Mini-drop<br>&nbsp;&nbsp;&nbsp; Fullscreen, LCD multi-touch display<br>&nbsp;&nbsp;&nbsp; Resolution: 1600 x 720<br>&nbsp;&nbsp;&nbsp; Rear Camera: 13MP primary camera, f/2.2 aperture 8MP ultra wide-angle lens, f/2.25 aperture 2MP B&amp;W lens, f/2.4 aperture 2MP retro lens, f/2.4 aperture<br>&nbsp;&nbsp;&nbsp; Front Camera: 8MP AI selfie camera, f/2.0 aperture<br>&nbsp;&nbsp;&nbsp; Charging &amp; Battery: 6000mAh<br>&nbsp;&nbsp;&nbsp; Mega Battery (typical) Supports reverse charging 18W quick charge (9V/2A in box)<br>&nbsp;&nbsp;&nbsp; Ports: 3.5mm headset jack<br>&nbsp;&nbsp;&nbsp; Micro-USB<br>&nbsp;&nbsp;&nbsp; Dual nano-SIM and TF card<br>&nbsp;&nbsp;&nbsp; Operating System: realme UI Based on Android 10<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:28:28', '2021-03-09 18:57:43'),
(350, 11, 64, 0, 17, 'Samsung Galaxy A71 - Android 10.0; One UI 2 - 8GB/128GB - Quad Camera - 64MP Camera', 'samsung-galaxy-a71---android-10.0;-one-ui-2---8gb/128gb---quad-camera---64mp-camera', 33249, '36500', 34999, NULL, '<p>&nbsp;&nbsp;&nbsp; NO RETURN applicable if the seal is broken<br>&nbsp;&nbsp;&nbsp; Display Size: 6.7 inches,Super AMOLED Plus capacitive touchscreen, 16M colors<br>&nbsp;&nbsp;&nbsp; Resolution:1080 x 2400 pixels, 20:9 ratio (~393 ppi density)<br>&nbsp;&nbsp;&nbsp; OS: Android 10.0; One UI 2,Qualcomm SDM730 Snapdragon 730 (8 nm)<br>&nbsp;&nbsp;&nbsp; CPU:Octa-core (2x2.2 GHz Kryo 470 Gold &amp; 6x1.8 GHz Kryo 470 Silver)<br>&nbsp;&nbsp;&nbsp; GPU:Adreno 618<br>&nbsp;&nbsp;&nbsp; Main Camera: 64MP + 12MP + 5MP + 5MP<br>&nbsp;&nbsp;&nbsp; Front: 32MP<br>&nbsp;&nbsp;&nbsp; RAM: 8GB<br>&nbsp;&nbsp;&nbsp; Inbuilt Storage (in GB) ROM: 128GB<br>&nbsp;&nbsp;&nbsp; Sound: Loudspeaker, 3.5mm jack<br>&nbsp;&nbsp;&nbsp; Non-removable Li-Po 4500 mAh battery<br>&nbsp;&nbsp;&nbsp; SIM Card:Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)<br>&nbsp;&nbsp;&nbsp; Sensor:Fingerprint (under display, optical), accelerometer, gyro, proximity, compass,ANT+<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:30:43', '2021-03-09 18:57:43'),
(351, 11, 64, 0, 17, 'Galaxy Note 10 Lite', 'galaxy-note-10-lite', 44649, '48999', 46999, NULL, '<p>&nbsp;&nbsp;&nbsp; NO RETURN applicable if the seal is broken<br>&nbsp;&nbsp;&nbsp; Dimension: 163.7 x 76.1 x 8.7 mm<br>&nbsp;&nbsp;&nbsp; SIM: 2 Slots (Dual SIM or Single SIM and Micro SD slot)<br>&nbsp;&nbsp;&nbsp; Display Type: Infinity O Display<br>&nbsp;&nbsp;&nbsp; Display Size: 6.7 inches<br>&nbsp;&nbsp;&nbsp; Display Resolution: Super AMOLED FHD+ Display<br>&nbsp;&nbsp;&nbsp; OS: Android 10.0, Samsung One UI 2.0<br>&nbsp;&nbsp;&nbsp; Chipset : Exynos 9810<br>&nbsp;&nbsp;&nbsp; CPU: Octa-Core (10 nm)<br>&nbsp;&nbsp;&nbsp; Rear Camera\" 12 MP, f/1.7 (Primary Camera)<br>&nbsp;&nbsp;&nbsp; 12 MP, f/2.2 (ultra-wide)<br>&nbsp;&nbsp;&nbsp; 12 MP, f/2.4, (telephoto)<br>&nbsp;&nbsp;&nbsp; 2x Optical zoom, Super Steady Video, Night Mode<br>&nbsp;&nbsp;&nbsp; 2160p@30fps, 1080p@30/60/120fps<br>&nbsp;&nbsp;&nbsp; Single Camera: 32 MP, f/2.2<br>&nbsp;&nbsp;&nbsp; 1080p@30fps<br>&nbsp;&nbsp;&nbsp; Memory : RAM 8GB / ROM 128 GB (Expandable up to 1TB)<br>&nbsp;&nbsp;&nbsp; Battery: 4500 mAh<br>&nbsp;&nbsp;&nbsp; Super Fast charging, USB Type C<br>&nbsp;&nbsp;&nbsp; Security: On Screen Fingerprint Display sensor<br>&nbsp;&nbsp;&nbsp; Face Recognition<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:32:48', '2021-03-09 18:57:43'),
(352, 11, 64, 0, 16, 'POCO X3 NFC Smartphone - 6GB RAM/128GB ROM', 'poco-x3-nfc-smartphone---6gb-ram/128gb-rom', 25649, '29999', 26999, NULL, '<p>NO RETURN applicable if the seal is broken<br>Dimensions: 165.3 x 76.8 x 9.4 mm (6.51 x 3.02 x 0.37 in)<br>Weight: 215 g (7.58 oz)<br>Build: Glass front (Gorilla Glass 5), aluminum frame, plastic back<br>SIM : Hybrid Dual SIM (Nano-SIM, dual stand-by)<br>IP53 splash-proof<br>DISPLAYType: IPS LCD, 120Hz, HDR10, 450 nits (typ)<br>Size:6.67 inches, 107.4 cm2 (~84.6% screen-to-body ratio)<br>Resolution:1080 x 2400 pixels, 20:9 ratio (~395 ppi density)<br>Protection :Corning Gorilla Glass 5<br>OS: Android 10, MIUI 12<br>Chipset: Qualcomm SM7150-AC Snapdragon 732G (8 nm)<br>CPU: Octa-core (2x2.3 GHz Kryo 470 Gold &amp; 6x1.8 GHz Kryo 470 Silver)<br>GPU: Adreno 618<br>MEMORY Card slot: microSDXC (uses shared SIM slot)<br>Internal: 6GB RAM / 128GBROM<br>UFS 2.1<br>MAIN CAMERA (Quad): 64 MP,13 MP,2 MP, 2 MP, f/2.4, (depth)<br>Features:Dual-LED flash, HDR, panorama<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:37:49', '2021-03-09 18:57:43'),
(353, 11, 64, 0, 16, 'Xiaomi Redmi 7 - 6.26 - 3GB RAM - 32GB ROM - 12MP + 2MP Rear Dual Camera', 'xiaomi-redmi-7---6.26---3gb-ram---32gb-rom---12mp-+-2mp-rear-dual-camera', 13296, '15590', 13996, NULL, '<p>&nbsp;&nbsp;&nbsp; NO RETURN applicable if the seal is broken<br>&nbsp;&nbsp;&nbsp; 6.26\" HD+ Immersive Dot Drop Display<br>&nbsp;&nbsp;&nbsp; Display Resolution: 1520x720 HD+, 269 PPI<br>&nbsp;&nbsp;&nbsp; Android 9.0 (Pie)<br>&nbsp;&nbsp;&nbsp; RAM: 3GB<br>&nbsp;&nbsp;&nbsp; ROM: 32GB<br>&nbsp;&nbsp;&nbsp; Battery: 4000mAh (typ) high-capacity battery<br>&nbsp;&nbsp;&nbsp; Rear Camera: 12MP + 2MPdual camera<br>&nbsp;&nbsp;&nbsp; Front Camera: 8MP<br>&nbsp;&nbsp;&nbsp; Qualcomm® Snapdragon™ 632<br>&nbsp;&nbsp;&nbsp; Sleek curved back cover<br>&nbsp;&nbsp;&nbsp; 2+1 card slot design<br>&nbsp;&nbsp;&nbsp; 3D curved reflective back cover<br>&nbsp;&nbsp;&nbsp; Unlock:AI face unlock**<br>&nbsp;&nbsp;&nbsp; Fingerprint sensor<br>&nbsp;&nbsp;&nbsp; Connectivity:Dual 4G,Wi-Fi<br>&nbsp;&nbsp;&nbsp; Navigation:GPS,Galileo,QZSS,GLONASS, Beidou<br>&nbsp;&nbsp;&nbsp; Sensors:Vibration Motor,Distance Sensor,Ambient Light Sensor,Accelerometer,Electronic compass,Indicator light,IR blaster<br>&nbsp;&nbsp;&nbsp; Weight: 180g<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:41:58', '2021-03-09 18:57:43'),
(354, 11, 64, 0, 18, 'OPPO F15 Smartphone 6.4inches - 8GB RAM - 128GB ROM - 48MP Camera', 'oppo-f15-smartphone-6.4inches---8gb-ram---128gb-rom---48mp-camera', 25649, '29999', 26999, NULL, '<p>&nbsp;&nbsp;&nbsp; NO RETURN applicable if the seal is broken<br>&nbsp;&nbsp;&nbsp; Operating System: ColorOS 6.1.2, based on Android 9<br>&nbsp;&nbsp;&nbsp; Processor: MTK P70<br>&nbsp;&nbsp;&nbsp; GPU: MTK MT6771V<br>&nbsp;&nbsp;&nbsp; GPU: ARM Mali G72 MP3 900MHz<br>&nbsp;&nbsp;&nbsp; Battery: 4000mAh (TYP) , 3900mAh (MIN)<br>&nbsp;&nbsp;&nbsp; RAM: 8GB<br>&nbsp;&nbsp;&nbsp; Storage: 128GB<br>&nbsp;&nbsp;&nbsp; VOOC Flash Charge: VOOC 3.0<br>&nbsp;&nbsp;&nbsp; Display Size: 16.2cm(6.4\'\')<br>&nbsp;&nbsp;&nbsp; Touchscreen:Multi-touch, Capacitive Screen<br>&nbsp;&nbsp;&nbsp; Resolution: 2400 by 1080 pixels at 408 ppi<br>&nbsp;&nbsp;&nbsp; Colors: 16 million colors,Screen Ratio: 90.7%<br>&nbsp;&nbsp;&nbsp; Camera Sensor: 48MP &amp; 8MP &amp; 2MP &amp; 2MP<br>&nbsp;&nbsp;&nbsp; Front Sensor: 16-megapixel<br>&nbsp;&nbsp;&nbsp; Aperture: Front F2.0 Rear: Main f/1.79; Wide Angle f/2.25; Portrait &amp; Mono f/2.4<br>&nbsp;&nbsp;&nbsp; Rear: Main 1/2.25\', 0.8um Secondary Wide Angle 1/4\', 1.12um 2M 1/5\', 1.75um<br>&nbsp;&nbsp;&nbsp; Video Front Camera: 1080P/720P@30fps<br>&nbsp;&nbsp;&nbsp; Video Rear Camera: 1080P @30fps, 720P@30fps<br>&nbsp;&nbsp;&nbsp; Frequencies: GSM: 850/900/1800/1900MHz WCDMA: Bands 1/5/8 FDD-LTE: Bands 1/3/5/8 TD-LTE: Bands 38/40/41<br>&nbsp;&nbsp;&nbsp; SIM Card Type: Nano-SIM / Nano-USIM<br>&nbsp;&nbsp;&nbsp; GPS: Built-in GPS; supports A-GPS, Beidou, Glonass<br>&nbsp;&nbsp;&nbsp; Bluetooth: 4.2<br>&nbsp;&nbsp;&nbsp; OTG: Supported<br>&nbsp;&nbsp;&nbsp; NFC: No<br>&nbsp;&nbsp;&nbsp; Magnetic Induction Sensor,Light Sensor,Proximity Sensor,G-Sensor/Acceleration Sensor<br>&nbsp;&nbsp;&nbsp; Gyroscope,Pedometer<br>&nbsp;&nbsp;&nbsp; Height: 160.2mm<br>&nbsp;&nbsp;&nbsp; Width: 73.3mm<br>&nbsp;&nbsp;&nbsp; Thickness: 7.9mm<br>&nbsp;&nbsp;&nbsp; Weight: Approx. 172g<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:45:00', '2021-03-09 18:57:43'),
(355, 11, 65, 0, 21, 'Q718 Quad Core 7Inch Tablets PC Educational Computer 1024X600 HD Press Screen for Children Kids Android 4.4(US Plug)', 'q718-quad-core-7inch-tablets-pc-educational-computer-1024x600-hd-press-screen-for-children-kids-android-4.4(us-plug)', 5026, '6690', 5290, NULL, '<p>&nbsp;&nbsp;&nbsp; Plug Type:US Plug,it applies to Canada, India,Mexico, Thailand,taiwan the United States, the Philippines and so on.material: plasticThe Q718 Quad Core 7inch Tablet PC is specially designed for kids, and the cute cartoon animal appearance allows your kids fondle admiringly, which is really a perfect Christmas gift or present.Features:Educational Tablet, specially designed for kids and it is designed with very cute and lovely cartoon animal design, allowing your kids to fondle admiringly. Made of high-grade material to ensure its durability and security.<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:50:26', '2021-03-09 18:57:43'),
(356, 11, 65, 4, 20, 'Huawei Mediapad T3 8inch Tablet 2 GB RAM 16GB ROM', 'huawei-mediapad-t3-8inch-tablet-2-gb-ram-16gb-rom', 16149, '19999', 16999, NULL, '<p>Model:Huawei Media Pad T3-8<br>ID:Metal<br>Display: 8” 1280x800 IPS LCD<br>Chipset: MSM8917, 4 A53 1.4GHz<br>TP: Capacitive, Multi-touch<br>OS:Android N + EMUI 5.x Lite<br>Memory: 2GB +16GB<br>Wireless : LTE: FDD/TDD Cat4 UMTS、GSM<br>Wi-Fi 802.11 b/g/n 2.4G only<br>BT 4.0<br>Camera:2Mp FF + 5Mp AF<br>Sensor: Accelerometer<br>Interface:SDHC, Micro SD up to 128GB<br>3.5mm stereo audio jack<br>Single Speaker + MIC<br>Nano SIM Slot<br>Micro USB 2.0<br>Charger:5V/1A<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:51:57', '2021-09-12 10:01:40'),
(357, 11, 65, 0, 20, 'Huawei Mediapad T3 10inch Tablet 2 GB RAM/16GB ROM', 'huawei-mediapad-t3-10inch-tablet-2-gb-ram/16gb-rom', 19474, '25499', 20499, NULL, '<p>&nbsp;&nbsp;&nbsp; Model:Huawei Media Pad T3-10<br>&nbsp;&nbsp;&nbsp; ID:Metal<br>&nbsp;&nbsp;&nbsp; Display:9.6” 1280x800 IPS LCD<br>&nbsp;&nbsp;&nbsp; Chipset:MSM8917, 4 A53 1.4GHz<br>&nbsp;&nbsp;&nbsp; TP:Capacitive, Multi-touch<br>&nbsp;&nbsp;&nbsp; OS: Android N + EMUI 5.x Lite<br>&nbsp;&nbsp;&nbsp; Memory :2GB +16GB<br>&nbsp;&nbsp;&nbsp; Wireless:LTE: FDD/TDD Cat4 UMTS、GSM<br>&nbsp;&nbsp;&nbsp; Wi-Fi 802.11 b/g/n 2.4G only<br>&nbsp;&nbsp;&nbsp; BT 4.0<br>&nbsp;&nbsp;&nbsp; Camera: 2Mp FF + 5Mp AF<br>&nbsp;&nbsp;&nbsp; Sensor: Accelerometer<br>&nbsp;&nbsp;&nbsp; Interface:SDHC, Micro SD up to 128GB<br>&nbsp;&nbsp;&nbsp; 3.5mm stereo audio jack<br>&nbsp;&nbsp;&nbsp; Single Speaker + MIC<br>&nbsp;&nbsp;&nbsp; Nano SIM Slot<br>&nbsp;&nbsp;&nbsp; Micro USB 2.0<br>&nbsp;&nbsp;&nbsp; Charger: 5V/1A<br>&nbsp;&nbsp;&nbsp; Battery: Li-Polymer, ~4800mAh<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:53:24', '2021-03-09 18:57:43'),
(358, 11, 66, 0, 22, 'ASUS TUF FX506LI Gaming and Entertainment Laptop (Intel i5-10300H 4-Core, 8GB RAM, 512GB NVMe M.2 SSD, NVIDIA GTX 1650 Ti, 15.6\" Full HD (1920x1080), WiFi, Bluetooth, Webcam, 1xHDMI, Win 10 Home', 'asus-tuf-fx506li-gaming-and-entertainment-laptop-(intel-i5-10300h-4-core,-8gb-ram,-512gb-nvme-m.2-ssd,-nvidia-gtx-1650-ti,-15.6\"-full-hd-(1920x1080),-wifi,-bluetooth,-webcam,-1xhdmi,-win-10-home', 90250, '100000', 95000, NULL, '<p>&nbsp;&nbsp;&nbsp; Brand - Asus<br>&nbsp;&nbsp;&nbsp; Model - ASUS TUF FX506LI<br>&nbsp;&nbsp;&nbsp; Processor - Intel Core i5-10300H 2.5GHz Processor (10th Gen, upto 4.50 GHz, 8MB Cache, 4-Cores)<br>&nbsp;&nbsp;&nbsp; Generation - 10Th<br>&nbsp;&nbsp;&nbsp; Storage - 512GB PCIe SSD<br>&nbsp;&nbsp;&nbsp; Extra SSD Slot - Yes<br>&nbsp;&nbsp;&nbsp; Memory - 8GB DDR4 SO-DIMM Ram<br>&nbsp;&nbsp;&nbsp; Ram Bus - 2933MHz<br>&nbsp;&nbsp;&nbsp; Ram Type - DDR4<br>&nbsp;&nbsp;&nbsp; Extra Ram Slot - Yes<br>&nbsp;&nbsp;&nbsp; Display Size - 15.6inch<br>&nbsp;&nbsp;&nbsp; Display Type - FHD LED IPS<br>&nbsp;&nbsp;&nbsp; Display Resolution - 1920x1080<br>&nbsp;&nbsp;&nbsp; Display Refresh Rate - 144Hz<br>&nbsp;&nbsp;&nbsp; Graphics Chipset - NVIDIA GTX 1650 Ti<br>&nbsp;&nbsp;&nbsp; Graphics Memory - 4GB DDR6<br>&nbsp;&nbsp;&nbsp; Connectivity - Wi-Fi 6 AX201 Wifi, Bluetooth 5.1, Ethernet LAN (RJ-45)<br>&nbsp;&nbsp;&nbsp; Webcam - 720p HD Webcam<br>&nbsp;&nbsp;&nbsp; Operating System - Win 10 Home<br>&nbsp;&nbsp;&nbsp; Keyboard - RGB Backlit Keyboard<br>&nbsp;&nbsp;&nbsp; Interface - 2 USB 3.2 Gen1, 1 USB 2.0, 1 HDMI, USB 3.2 Type-C Gen2, Headphone/Microphone Combo Jack<br>&nbsp;&nbsp;&nbsp; TUF Gaming Mouse M5 - Included<br>&nbsp;&nbsp;&nbsp; Color - Grey Metal<br>&nbsp;&nbsp;&nbsp; Warranty - 02 Year International Warranty<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 12:59:39', '2021-03-09 18:57:43'),
(359, 11, 66, 0, 23, 'HP ProBook 450 G8 11th Gen Intel Core i5 1135G7 (2.40GHz-4.20GHz, 8GB DDR4, 512GB SSD, No-ODD) Nvidia MX450 2GB GDDR5 Graphics, 15.6 Inch FHD (1920x1080) Display, Finger Print Sensor, Win 10, Silver Notebook 1A886AV-3Y', 'hp-probook-450-g8-11th-gen-intel-core-i5-1135g7-(2.40ghz-4.20ghz,-8gb-ddr4,-512gb-ssd,-no-odd)-nvidia-mx450-2gb-gddr5-graphics,-15.6-inch-fhd-(1920x1080)-display,-finger-print-sensor,-win-10,-silver-notebook-1a886av-3y', 79800, '90000', 84000, NULL, '<p>&nbsp;&nbsp;&nbsp; Model HP ProBook 450 G8<br>&nbsp;&nbsp;&nbsp; Notebook Series ProBook<br>&nbsp;&nbsp;&nbsp; Part No 1A886AV-3Y<br>&nbsp;&nbsp;&nbsp; Country Of Origin USA<br>&nbsp;&nbsp;&nbsp; Made in/ Assemble China<br>&nbsp;&nbsp;&nbsp; Processor Brand Intel<br>&nbsp;&nbsp;&nbsp; Generation 11th<br>&nbsp;&nbsp;&nbsp; Processor Model Core i5 1135G7<br>&nbsp;&nbsp;&nbsp; Processor Base Frequency 2.40 GHz<br>&nbsp;&nbsp;&nbsp; Processor Max Turbo Frequency 4.20 GHz<br>&nbsp;&nbsp;&nbsp; Processor Core 4<br>&nbsp;&nbsp;&nbsp; Processor Thread 8<br>&nbsp;&nbsp;&nbsp; CPU Cache 8MB<br>&nbsp;&nbsp;&nbsp; RAM 8GB<br>&nbsp;&nbsp;&nbsp; RAM Type DDR4<br>&nbsp;&nbsp;&nbsp; RAM Bus (MHz) 3200MHz<br>&nbsp;&nbsp;&nbsp; Total RAM Slot 2<br>&nbsp;&nbsp;&nbsp; Max. RAM Support 32GB<br>&nbsp;&nbsp;&nbsp; Storage 512GB SSD<br>&nbsp;&nbsp;&nbsp; Installed SSD Type NVMe PCIe<br>&nbsp;&nbsp;&nbsp; Graphics Chipset Nvidia MX450 Graphics<br>&nbsp;&nbsp;&nbsp; Graphics Memory Accesibility Dedicated<br>&nbsp;&nbsp;&nbsp; Graphics Memory 2GB<br>&nbsp;&nbsp;&nbsp; Graphics Memory Type GDDR5<br>&nbsp;&nbsp;&nbsp; Display Size (Inch) 15.6<br>&nbsp;&nbsp;&nbsp; Display Type FHD LED<br>&nbsp;&nbsp;&nbsp; Display Resolution 1920x1080 (WxH) FHD<br>&nbsp;&nbsp;&nbsp; Display Surface Anti-glare<br>&nbsp;&nbsp;&nbsp; Multimedia Card Slot 1<br>&nbsp;&nbsp;&nbsp; Supported Multimedia Card MicroSD (Supports SD, SDHC, SDXC.)<br>&nbsp;&nbsp;&nbsp; USB 3 Port 3 x USB Type-A<br>&nbsp;&nbsp;&nbsp; USB C / Thunderbolt Port 1 x USB Type-C<br>&nbsp;&nbsp;&nbsp; HDMI Port 1<br>&nbsp;&nbsp;&nbsp; Headphone Port Combo<br>&nbsp;&nbsp;&nbsp; Microphone Port Combo<br>&nbsp;&nbsp;&nbsp; LAN Ethernet RJ-45<br>&nbsp;&nbsp;&nbsp; WiFi Intel AX201 Wi-Fi 6 (2x2)<br>&nbsp;&nbsp;&nbsp; Bluetooth Bluetooth 5.0<br>&nbsp;&nbsp;&nbsp; Speaker Dual stereo speakers<br>&nbsp;&nbsp;&nbsp; Microphone.Dual Array Microphone<br>&nbsp;&nbsp;&nbsp; WebCam IR HD Webcam<br>&nbsp;&nbsp;&nbsp; Keyboard Layout HP Premium Keyboard - spill-resistant, full-size<br>&nbsp;&nbsp;&nbsp; Num Key pad Yes<br>&nbsp;&nbsp;&nbsp; Pointing Device TouchPad<br>&nbsp;&nbsp;&nbsp; Finger Print Sensor Yes<br>&nbsp;&nbsp;&nbsp; TPM 2.0<br>&nbsp;&nbsp;&nbsp; Operating System Windows 10 Home<br>&nbsp;&nbsp;&nbsp; Battery 3 Cell<br>&nbsp;&nbsp;&nbsp; Battery Capacity 45Wh<br>&nbsp;&nbsp;&nbsp; Battery Type polymer<br>&nbsp;&nbsp;&nbsp; Power Adapter 65 W AC power adapter <br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 13:03:07', '2021-03-09 18:57:44'),
(360, 11, 66, 0, 24, 'Dell G7 15-7590 9th Gen Intel Core i7 9750H(2.60GHz-4.50GHz, 16GB DDR4, 512GB SSD, No-ODD) Nvidia RTX 2070 8GB GDDR6 Graphics, 15.6 Inch FHD (1920x1080) IPS Display, Finger Print Sensor, Backlit Keyboard, Win 10, Grey Gaming Notebook VulcanB1520012707P-2Y', 'dell-g7-15-7590-9th-gen-intel-core-i7-9750h(2.60ghz-4.50ghz,-16gb-ddr4,-512gb-ssd,-no-odd)-nvidia-rtx-2070-8gb-gddr6-graphics,-15.6-inch-fhd-(1920x1080)-ips-display,-finger-print-sensor,-backlit-keyboard,-win-10,-grey-gaming-notebook-vulcanb1520012707p-2y', 180500, '240000', 190000, NULL, '<p>&nbsp;&nbsp;&nbsp; Model Dell G7 15-7590<br>&nbsp;&nbsp;&nbsp; Notebook Series G Series<br>&nbsp;&nbsp;&nbsp; Part No GAMING VulcanB1520012707P-2Y<br>&nbsp;&nbsp;&nbsp; Country Of Origin USA<br>&nbsp;&nbsp;&nbsp; Made in/ Assemble China<br>&nbsp;&nbsp;&nbsp; Processor Brand Intel<br>&nbsp;&nbsp;&nbsp; Generation 9th<br>&nbsp;&nbsp;&nbsp; Processor Model Core i7 9750H<br>&nbsp;&nbsp;&nbsp; Processor Base Frequency 2.60 GHz<br>&nbsp;&nbsp;&nbsp; Processor Max Turbo Frequency 4.50 GHz<br>&nbsp;&nbsp;&nbsp; Processor Core 6<br>&nbsp;&nbsp;&nbsp; Processor Thread 12<br>&nbsp;&nbsp;&nbsp; CPU Cache 12MB<br>&nbsp;&nbsp;&nbsp; RAM 16GB<br>&nbsp;&nbsp;&nbsp; Installed RAM Details 2 x 8GB<br>&nbsp;&nbsp;&nbsp; RAM Type DDR4<br>&nbsp;&nbsp;&nbsp; RAM Bus (MHz) 2666 MHz<br>&nbsp;&nbsp;&nbsp; Empty/Expansion RAM Slot 2<br>&nbsp;&nbsp;&nbsp; Max. RAM Support 32GB<br>&nbsp;&nbsp;&nbsp; Storage 512GB SSD<br>&nbsp;&nbsp;&nbsp; Installed SSD Type PCIe<br>&nbsp;&nbsp;&nbsp; Graphics Chipset Nvidia RTX 2070<br>&nbsp;&nbsp;&nbsp; Graphics Memory Accesibility Dedicated<br>&nbsp;&nbsp;&nbsp; Graphics Memory 8GB<br>&nbsp;&nbsp;&nbsp; Graphics Memory Type GDDR6<br>&nbsp;&nbsp;&nbsp; Display Size (Inch) 15.6<br>&nbsp;&nbsp;&nbsp; Display Type IPS FHD LED<br>&nbsp;&nbsp;&nbsp; Display Resolution 1920x1080 (WxH) FHD<br>&nbsp;&nbsp;&nbsp; Display Surface Anti-glare<br>&nbsp;&nbsp;&nbsp; Display Refresh Rate 144 Hz<br>&nbsp;&nbsp;&nbsp; Multimedia Card Slot 1<br>&nbsp;&nbsp;&nbsp; Supported Multimedia Card 2-in-1 SD / MicroMedia Card slot<br>&nbsp;&nbsp;&nbsp; USB 3 Port 3 x USB3.1 Gen 1 Type-A<br>&nbsp;&nbsp;&nbsp; HDMI Port 1<br>&nbsp;&nbsp;&nbsp; Headphone Port Combo<br>&nbsp;&nbsp;&nbsp; Microphone Port Combo<br>&nbsp;&nbsp;&nbsp; Security Lock Slot 1 x Wedge-shaped lock slot<br>&nbsp;&nbsp;&nbsp; LAN Yes<br>&nbsp;&nbsp;&nbsp; WiFi Killer Wireless 1550 2x2 AC<br>&nbsp;&nbsp;&nbsp; Bluetooth Bluetooth 5.0<br>&nbsp;&nbsp;&nbsp; Speaker Yes<br>&nbsp;&nbsp;&nbsp; WebCam Yes<br>&nbsp;&nbsp;&nbsp; Keyboard Back-lit Yes<br>&nbsp;&nbsp;&nbsp; Pointing Device TouchPad<br>&nbsp;&nbsp;&nbsp; Operating System Windows 10 Home<br>&nbsp;&nbsp;&nbsp; Battery 6 Cell<br>&nbsp;&nbsp;&nbsp; Battery Capacity 90 Wh<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 13:05:58', '2021-03-09 18:57:44'),
(361, 11, 66, NULL, 26, 'Lenovo B4180 Core i5 8GB RAM 1TB Business Series Laptop', 'lenovo-b4180-core-i5-8gb-ram-1tb-business-series-laptop', 49875, NULL, 52500, NULL, '<p>&nbsp;&nbsp;&nbsp; Processor : Intel Core i5 6th Generation 6200U Processor<br>&nbsp;&nbsp;&nbsp; Display : 14 Inch LED Display<br>&nbsp;&nbsp;&nbsp; Memory : 8 GB RAM<br>&nbsp;&nbsp;&nbsp; Storage Type : HDD<br>&nbsp;&nbsp;&nbsp; Storage : 1 TB HDD<br>&nbsp;&nbsp;&nbsp; Operating System : Free DOS<br>&nbsp;&nbsp;&nbsp; Optical Drive : DVD RW<br>&nbsp;&nbsp;&nbsp; Wi-Fi : Yes<br>&nbsp;&nbsp;&nbsp; Bluetooth : Yes<br>&nbsp;&nbsp;&nbsp; Warranty : 12 months<br>&nbsp;&nbsp;&nbsp; Country of Manufacture : China<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 13:08:57', '2021-10-25 07:00:38'),
(362, 11, 66, 0, 25, 'Apple MacBook Pro (2020) 8th Gen Intel Core i5 (1.40GHz-3.90GHz, 8GB, 512GB SSD) 13.3 Inch Retina (2560x1600) Display, Touch Bar and Touch ID, Space Gray MacBook #MXK52LL/A / MXK52ZP/A, MXK52X/A', 'apple-macbook-pro-(2020)-8th-gen-intel-core-i5-(1.40ghz-3.90ghz,-8gb,-512gb-ssd)-13.3-inch-retina-(2560x1600)-display,-touch-bar-and-touch-id,-space-gray-macbook-#mxk52ll/a-/-mxk52zp/a,-mxk52x/a', 152190, '180500', 160200, NULL, '<p>&nbsp;&nbsp;&nbsp; No return is applicable if seal is broken<br>&nbsp;&nbsp;&nbsp; Model Apple MacBook Pro (2020)<br>&nbsp;&nbsp;&nbsp; Notebook Series MacBook Pro<br>&nbsp;&nbsp;&nbsp; Part No MXK52LL/A / MXK52ZP/A, MXK52X/A<br>&nbsp;&nbsp;&nbsp; Processor Brand Intel<br>&nbsp;&nbsp;&nbsp; Generation 8th<br>&nbsp;&nbsp;&nbsp; Processor Model Core i5<br>&nbsp;&nbsp;&nbsp; Processor Base Frequency 1.40 GHz<br>&nbsp;&nbsp;&nbsp; Processor Max Turbo Frequency 3.90 GHz<br>&nbsp;&nbsp;&nbsp; Processor Core 4<br>&nbsp;&nbsp;&nbsp; RAM 8GB<br>&nbsp;&nbsp;&nbsp; Installed RAM Details 1 x 8 GB Non-Removable<br>&nbsp;&nbsp;&nbsp; RAM Type LPDDR3<br>&nbsp;&nbsp;&nbsp; RAM Bus (MHz) 2133 MHz<br>&nbsp;&nbsp;&nbsp; Optane Memory No<br>&nbsp;&nbsp;&nbsp; Storage 512GB SSD<br>&nbsp;&nbsp;&nbsp; Installed SSD Type PCIe SSD<br>&nbsp;&nbsp;&nbsp; Graphics Chipset Intel Iris Plus 645 Graphics<br>&nbsp;&nbsp;&nbsp; Graphics Memory Accesibility Integrated<br>&nbsp;&nbsp;&nbsp; Graphics Memory Shared<br>&nbsp;&nbsp;&nbsp; Display Size (Inch) 13.3<br>&nbsp;&nbsp;&nbsp; Display Type Retina<br>&nbsp;&nbsp;&nbsp; Display Resolution 2560 x 1600 Pixels<br>&nbsp;&nbsp;&nbsp; Display Surface Glossy<br>&nbsp;&nbsp;&nbsp; Display Refresh Rate 60 Hz<br>&nbsp;&nbsp;&nbsp; USB C / Thunderbolt Port 2 x Thunderbolt 3 (USB-C)<br>&nbsp;&nbsp;&nbsp; VGA/D-Sub No<br>&nbsp;&nbsp;&nbsp; Headphone Port Combo<br>&nbsp;&nbsp;&nbsp; Microphone Port Combo<br>&nbsp;&nbsp;&nbsp; Security Lock Slot No<br>&nbsp;&nbsp;&nbsp; WiFi 802.11ac<br>&nbsp;&nbsp;&nbsp; Bluetooth Bluetooth 5.0<br>&nbsp;&nbsp;&nbsp; Speaker Stereo speakers<br>&nbsp;&nbsp;&nbsp; Microphone. Yes<br>&nbsp;&nbsp;&nbsp; WebCam HD Webcam (720p)<br>&nbsp;&nbsp;&nbsp; Keyboard Layout Backlit Magic Keyboard<br>&nbsp;&nbsp;&nbsp; Keyboard Back-lit Yes<br>&nbsp;&nbsp;&nbsp; RGB Keyboard No<br>&nbsp;&nbsp;&nbsp; Num Key pad No<br>&nbsp;&nbsp;&nbsp; Pointing Device Force Touch trackpad<br>&nbsp;&nbsp;&nbsp; Finger Print Sensor No<br>&nbsp;&nbsp;&nbsp; Face Detection No<br>&nbsp;&nbsp;&nbsp; TPM No<br>&nbsp;&nbsp;&nbsp; Operating System Mac<br>&nbsp;&nbsp;&nbsp; Battery Li-Polymer<br>&nbsp;&nbsp;&nbsp; Battery Capacity 58.2Wh<br>&nbsp;&nbsp;&nbsp; Battery Type Li-Polymer<br>&nbsp;&nbsp;&nbsp; Backup Time Up to 10 Hrs.<br>&nbsp;&nbsp;&nbsp; Power Adapter 61W USB-C Power Adapter<br>&nbsp;&nbsp;&nbsp; Optical Drive No<br>&nbsp;&nbsp;&nbsp; Specialty Touch Bar and Touch ID, Ambient light sensor, Force Touch trackpad for precise cursor control and pressure-sensing capabilities, enables Force clicks, accelerators, pressure-sensitive drawing, and Multi-Touch gestures, Backlit Magic Keyboard with 65 (U.S.) or 66 (ISO) keys including 4 arrow keys in an inverted T arrangement, 720p FaceTime HD camera<br>&nbsp;&nbsp;&nbsp; Others Display: LED-backlit display with IPS technology, 500 nits brightness, Wide color (P3), True Tone technology, Battery and Power: Built-in 58.2-watt-hour lithium-polymer battery, 61W USB-C Power Adapter, Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible, Bluetooth: Bluetooth 5.0 wireless technology, Audio: Stereo speakers with high dynamic range, Wide stereo sound, Support for Dolby Atmos playback, Three-mic array with directional beamforming, 3.5 mm headphone jack, eDRAM: 128MB<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 13:12:30', '2021-03-09 18:57:44'),
(363, 11, 66, NULL, 22, 'Asus VivoBook S14 S433EA 11th Gen Intel Core i7 1165G7 (2.80GHz-4.70GHz, 16GB DDR4, 512GB PCIe SSD, No-ODD) 14 Inch FHD LED (1920x1080) Display, Finger Print Sensor, Backlit Keyboard, Win 10 Notebook', 'asus-vivobook-s14-s433ea-11th-gen-intel-core-i7-1165g7-(2.80ghz-4.70ghz,-16gb-ddr4,-512gb-pcie-ssd,-no-odd)-14-inch-fhd-led-(1920x1080)-display,-finger-print-sensor,-backlit-keyboard,-win-10-notebook', 88341, NULL, 92990, NULL, '<p>&nbsp;&nbsp;&nbsp; Brand - Asus<br>&nbsp;&nbsp;&nbsp; Model - Asus VivoBook S14 S433EA<br>&nbsp;&nbsp;&nbsp; Notebook Series - VivoBook<br>&nbsp;&nbsp;&nbsp; Processor Brand - Intel<br>&nbsp;&nbsp;&nbsp; Processor Generation - 11th Gen<br>&nbsp;&nbsp;&nbsp; Processor Model - Core i7 1165G7<br>&nbsp;&nbsp;&nbsp; Processor Base Frequency - 2.80 GHz<br>&nbsp;&nbsp;&nbsp; Processor Max Turbo Frequency - 4.70 GHz<br>&nbsp;&nbsp;&nbsp; Ram - 16GB<br>&nbsp;&nbsp;&nbsp; Ram Type - DDR4<br>&nbsp;&nbsp;&nbsp; Ram Bus - 3200MHZ<br>&nbsp;&nbsp;&nbsp; Storage - 512GB SSD<br>&nbsp;&nbsp;&nbsp; Installed SSD Type - NVMe PCIe<br>&nbsp;&nbsp;&nbsp; Graphics Chipset - Intel Iris Xe graphics<br>&nbsp;&nbsp;&nbsp; Graphics Memory Accesibility - Integrated<br>&nbsp;&nbsp;&nbsp; Graphics Memory - Shared<br>&nbsp;&nbsp;&nbsp; Display Size (Inch) - 14<br>&nbsp;&nbsp;&nbsp; Display Type - FHD LED<br>&nbsp;&nbsp;&nbsp; Display Resolution - 1920x1080 (WxH) FHD<br>&nbsp;&nbsp;&nbsp; USB 2 Port - 2 x USB 2.0<br>&nbsp;&nbsp;&nbsp; USB 3 Port - 1 x USB 3.2 Gen 1 Type-A<br>&nbsp;&nbsp;&nbsp; USB C / Thunderbolt Port - 1 x Thunderbolt 3 USB-C<br>&nbsp;&nbsp;&nbsp; HDMI Port - 1<br>&nbsp;&nbsp;&nbsp; WIFI - Intel Wi-Fi 6 (802.11ax)<br>&nbsp;&nbsp;&nbsp; Bluetooth - Bluetooth 5.0<br>&nbsp;&nbsp;&nbsp; Speaker - ASUS SonicMaster stereo audio<br>&nbsp;&nbsp;&nbsp; Webcam - HD Webcam<br>&nbsp;&nbsp;&nbsp; Keyboard Layout - Full-size backlit with 1.4mm key travel<br>&nbsp;&nbsp;&nbsp; Keyboard Back-lit - Yes<br>&nbsp;&nbsp;&nbsp; Finger Print Sensor - Yes<br>&nbsp;&nbsp;&nbsp; Operating System - Win 10<br>&nbsp;&nbsp;&nbsp; Body Material - Metal<br>&nbsp;&nbsp;&nbsp; Weight (Kg) - 1.4kg<br>&nbsp;&nbsp;&nbsp; Warranty - 2 year (Battery, Adapter 1 year)<br></p>', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-23 13:14:50', '2021-10-07 05:21:22'),
(364, 9, NULL, NULL, 5, 'Melasma-X 3D Whitening Clinic Cream', 'melasma-x-3d-whitening-clinic-cream', 1000, NULL, 1250, NULL, '<p>মেছতা বা বাদামি তিল নিয়ে চিন্তিত? এবার আর চিন্তা নাই ব্যবহার করুন মেলাজমা এক্স-৩ডি হোয়াইটিনিং ক্লিনিং ক্রিম।এই ক্রিম সম্পূর্ণ প্রাকৃতিক উপাদেনে ও মাল্টি ভিটামিন দিয়ে তৈরী যেটা ৭ দিনে কোন ক্ষতি ছাড়া আপানার মেছতা, ছুলি, বাদামি তিল রিমুভ সহ আপানার ত্বক ৩ডি ফর্সা করবে।এটি একটি কোরিয়ান ক্রিম।<br>❤️ত্বকের মেছতা ও বাদামী তিল দূর করে।<br>❤️ মুখের বয়সের ছাপ দূর করবে এবং wrinkles গঠন প্রতিরোধ করে<br>❤️ডীপ ময়েশ্চারাইজারের ও Brightening এর কাজ করে<br>❤️কোষ পুনর্নবীকরণ এবং টিস্যু মেরামতের কাজ করে<br>❤️ত্বকের গভীর স্তরগুলিকে সক্রিয় করে<br>❤️মুখের বয়সের ছাপ দূর করবে এবং wrinkles গঠন প্রতিরোধ করে<br>❤️ ত্বকের মেস্তা ও বাদামী তিল দূর করে<br>❤️লিকোরিস রুটের নির্যাস, মালবেরি রুটের নির্যাস, চা পাতার নির্যাস সহ আরও অনেক ফলের নির্যাস দিয়ে তৈরী যা ত্বকের সৌন্ধর্য্যের পাশাপাশি ত্বকের ফ্রিকেলস, ত্বকের ছোট গর্ত, ত্বকের দাগ, ত্বকের পোরস নিয়ন্ত্রনে প্রধান ভূমিকা পালন করে।<br>ব্যবহারঃ<br>সকালে এবং রাতে পরিস্কার ত্বকে ব্যবহার করুন।<br></p>', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=kWpUleoD7UU', NULL, 1, '2021-03-16 09:17:48', '2021-10-06 05:50:08'),
(366, 2, 48, NULL, 1, 'Demo New Product', 'demo-new-product', 40000, NULL, 50000, '1300', '<p>this is product</p>', NULL, '9', '100', NULL, NULL, NULL, NULL, 1, 'https://www.youtube.com/watch?v=N5H-qXiCjWM', '10', 1, '2021-10-06 15:33:54', '2021-10-31 04:14:56'),
(367, 4, NULL, NULL, 1, 'Demo New Product', 'demo-new-product', 40000, NULL, 50000, '1300', '<p>ytryhytjl</p>', NULL, '10', '100', NULL, NULL, NULL, NULL, 1, 'https://www.youtube.com/watch?v=N5H-qXiCjWM', '10', 1, '2021-10-06 16:11:45', '2021-10-07 05:14:33'),
(368, 4, NULL, NULL, 1, 'Demo New Product', 'demo-new-product', 40000, '55500', 50000, '1300', '<p>mjhnh</p>', NULL, '10', '100', NULL, NULL, NULL, NULL, 1, 'https://www.youtube.com/watch?v=N5H-qXiCjWM', '10', 1, '2021-10-06 16:12:49', '2021-10-06 16:12:49'),
(369, 4, NULL, NULL, 1, 'Demo New Product', 'demo-new-product', 40000, NULL, 50000, '1300', '<p>ujuk,j</p>', NULL, '8', '100', NULL, NULL, NULL, NULL, 1, 'https://www.youtube.com/watch?v=N5H-qXiCjWM', '10', 1, '2021-10-06 16:13:11', '2021-11-03 13:26:00'),
(370, 4, 26, NULL, 3, 'Top Product Demo', 'top-product-demo', 5000, '5000', 5000, '1355', '<p>trhetuerpfk\'ldgv;mfdlgbnfgbgjkgbf</p>', NULL, '2', '100', NULL, NULL, NULL, NULL, 1, 'https://www.youtube.com/watch?v=N5H-qXiCjWM', '5', 1, '2021-10-07 03:46:28', '2021-11-03 13:09:11');
INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(371, 1, 73, NULL, 2, 'MSI B560M PRO-VDH WIFI Intel 10th and 11th Gen Micro ATX Motherboard', 'msi-b560m-pro-vdh-wifi-intel-10th-and-11th-gen-micro-atx-motherboard', 10000, NULL, 13000, NULL, '<table class=\"table table-bordered\" style=\"background-color: rgb(255, 255, 255); font-size: 1rem;\"><tbody><tr><td>asdf</td><td>adsfasf</td></tr></tbody></table><p style=\"line-height: 1.043em; margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\"><br></p><ul><li><span class=\"attr-name J-attr-name\" title=\"Max. LAN Data Rate\" data-spm-anchor-id=\"a2700.wholesale.prilinga1e.i0.3f5f25a4WG3Bun\" style=\"margin-bottom: 0px;\">Max. LAN Data Rate: 150Mbp</span>s</li><li><span class=\"attr-name J-attr-name\" title=\"Standards And Protocols\" data-spm-anchor-id=\"a2700.wholesale.prilinga1e.i3.3f5f25a4WG3Bun\" style=\"\">Standards And Protocols:</span><div class=\"ellipsis\" title=\"Wi-Fi 802.11g, Wi-Fi 802.11b, Wi-Fi 802.11n, Wi-Fi 802.11ac, Wi-Fi 802.11a\" data-spm-anchor-id=\"a2700.wholesale.prilinga1e.i4.3f5f25a4WG3Bun\" style=\"margin-bottom: 0px;\">Wi-Fi 802.11g, Wi-Fi 802.11b, Wi-Fi 802.11n, Wi-Fi 802.11ac</div></li><li>4G LTE Mobile WIFI</li><li style=\"margin-bottom: 0px;\"><span class=\"attr-name J-attr-name\" title=\"Wired Transfer Rate\" data-spm-anchor-id=\"a2700.wholesale.prilinga1e.i7.3f5f25a4WG3Bun\" style=\"margin-bottom: 0px;\">Wired Transfer Rate:-&nbsp;</span>150 Mbps</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><br style=\"height: 1px; display: block;\"></p><h3 style=\"line-height: 1.043em; margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">OLAX MF980L 4G 150Mbps WIFI Router Hotspot Mifis with LCD price in bd</h3><ul style=\"padding-left: 2rem;\"><li style=\"margin-bottom: 0px;\"><span data-spm-anchor-id=\"a2700.wholesale.pronpeci14.i0.3f5f25a4WG3Bun\" style=\"margin-bottom: 0px;\">Download speed up to 150Mbps and upload speed up to 50 Mbps.</span>4G Data and HD Voice even on your 2G/3G Smartphones: Enjoy 4G VoLTE Smartphone services on your 2G / 3G Smartphones.Connect &amp; Share: Recommended to connect up to 10 wi-fi enabled devices (smartphone, Laptops, Tablets and even Smart TVs).Powerful Battery: Best in class battery (2100mAh) supports 8 – 10</li></ul>', '<ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">reader will be distracted by the readable</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">using Lorem Ipsum is that it has</span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">of letters, as opposed to using</span><br></li></ul>', '199', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-03 12:14:35', '2021-11-17 16:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(2, 5, 2, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(3, 5, 4, '2021-02-19 13:11:32', '2021-02-19 13:11:32'),
(4, 8, 3, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(5, 8, 4, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(6, 8, 5, '2021-02-19 13:44:32', '2021-02-19 13:44:32'),
(7, 9, 1, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(8, 9, 2, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(9, 9, 3, '2021-02-19 13:45:54', '2021-02-19 13:45:54'),
(10, 10, 1, '2021-02-19 13:47:21', '2021-02-19 13:47:21'),
(11, 10, 2, '2021-02-19 13:47:21', '2021-02-19 13:47:21'),
(12, 161, 1, '2021-02-19 14:31:42', '2021-02-19 14:31:42'),
(13, 161, 2, '2021-02-19 14:31:42', '2021-02-19 14:31:42'),
(14, 161, 3, '2021-02-19 14:31:42', '2021-02-19 14:31:42'),
(15, 162, 1, '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(16, 162, 2, '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(17, 162, 3, '2021-02-19 14:50:02', '2021-02-19 14:50:02'),
(18, 163, 1, '2021-02-19 14:53:33', '2021-02-19 14:53:33'),
(19, 163, 2, '2021-02-19 14:53:33', '2021-02-19 14:53:33'),
(20, 163, 3, '2021-02-19 14:53:33', '2021-02-19 14:53:33'),
(21, 164, 1, '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(22, 164, 2, '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(23, 164, 3, '2021-02-19 14:57:06', '2021-02-19 14:57:06'),
(24, 165, 1, '2021-02-19 15:02:28', '2021-02-19 15:02:28'),
(25, 165, 2, '2021-02-19 15:02:28', '2021-02-19 15:02:28'),
(26, 165, 3, '2021-02-19 15:02:28', '2021-02-19 15:02:28'),
(27, 166, 1, '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(28, 166, 2, '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(29, 166, 4, '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(30, 166, 5, '2021-02-19 15:04:42', '2021-02-19 15:04:42'),
(31, 168, 1, '2021-02-19 15:32:27', '2021-02-19 15:32:27'),
(32, 168, 2, '2021-02-19 15:32:27', '2021-02-19 15:32:27'),
(33, 168, 3, '2021-02-19 15:32:27', '2021-02-19 15:32:27'),
(34, 169, 1, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(35, 169, 2, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(36, 169, 3, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(37, 169, 4, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(38, 169, 5, '2021-02-22 05:27:26', '2021-02-22 05:27:26'),
(39, 170, 2, '2021-02-22 05:30:32', '2021-02-22 05:30:32'),
(40, 170, 3, '2021-02-22 05:30:32', '2021-02-22 05:30:32'),
(41, 170, 4, '2021-02-22 05:30:32', '2021-02-22 05:30:32'),
(42, 171, 2, '2021-02-22 05:33:07', '2021-02-22 05:33:07'),
(43, 171, 3, '2021-02-22 05:33:07', '2021-02-22 05:33:07'),
(44, 171, 4, '2021-02-22 05:33:07', '2021-02-22 05:33:07'),
(45, 172, 2, '2021-02-22 05:34:48', '2021-02-22 05:34:48'),
(46, 172, 3, '2021-02-22 05:34:48', '2021-02-22 05:34:48'),
(47, 172, 4, '2021-02-22 05:34:48', '2021-02-22 05:34:48'),
(48, 173, 2, '2021-02-22 05:37:52', '2021-02-22 05:37:52'),
(49, 173, 3, '2021-02-22 05:37:52', '2021-02-22 05:37:52'),
(50, 173, 4, '2021-02-22 05:37:52', '2021-02-22 05:37:52'),
(51, 174, 2, '2021-02-22 05:40:23', '2021-02-22 05:40:23'),
(52, 174, 3, '2021-02-22 05:40:23', '2021-02-22 05:40:23'),
(53, 174, 4, '2021-02-22 05:40:23', '2021-02-22 05:40:23'),
(54, 175, 2, '2021-02-22 05:51:32', '2021-02-22 05:51:32'),
(55, 175, 3, '2021-02-22 05:51:32', '2021-02-22 05:51:32'),
(56, 175, 4, '2021-02-22 05:51:32', '2021-02-22 05:51:32'),
(57, 176, 2, '2021-02-22 05:53:49', '2021-02-22 05:53:49'),
(58, 176, 3, '2021-02-22 05:53:49', '2021-02-22 05:53:49'),
(59, 176, 4, '2021-02-22 05:53:49', '2021-02-22 05:53:49'),
(60, 177, 2, '2021-02-22 05:55:57', '2021-02-22 05:55:57'),
(61, 177, 3, '2021-02-22 05:55:57', '2021-02-22 05:55:57'),
(62, 177, 4, '2021-02-22 05:55:57', '2021-02-22 05:55:57'),
(63, 181, 2, '2021-02-22 06:24:32', '2021-02-22 06:24:32'),
(64, 181, 3, '2021-02-22 06:24:32', '2021-02-22 06:24:32'),
(65, 181, 4, '2021-02-22 06:24:32', '2021-02-22 06:24:32'),
(66, 182, 2, '2021-02-22 06:30:34', '2021-02-22 06:30:34'),
(67, 182, 3, '2021-02-22 06:30:34', '2021-02-22 06:30:34'),
(68, 182, 4, '2021-02-22 06:30:34', '2021-02-22 06:30:34'),
(69, 183, 2, '2021-02-22 06:34:28', '2021-02-22 06:34:28'),
(70, 183, 3, '2021-02-22 06:34:28', '2021-02-22 06:34:28'),
(71, 183, 4, '2021-02-22 06:34:28', '2021-02-22 06:34:28'),
(72, 184, 2, '2021-02-22 06:38:04', '2021-02-22 06:38:04'),
(73, 184, 3, '2021-02-22 06:38:04', '2021-02-22 06:38:04'),
(74, 184, 4, '2021-02-22 06:38:04', '2021-02-22 06:38:04'),
(75, 185, 2, '2021-02-22 06:42:22', '2021-02-22 06:42:22'),
(76, 185, 3, '2021-02-22 06:42:22', '2021-02-22 06:42:22'),
(77, 185, 4, '2021-02-22 06:42:22', '2021-02-22 06:42:22'),
(78, 186, 2, '2021-02-22 06:45:13', '2021-02-22 06:45:13'),
(79, 186, 3, '2021-02-22 06:45:13', '2021-02-22 06:45:13'),
(80, 186, 4, '2021-02-22 06:45:13', '2021-02-22 06:45:13'),
(81, 187, 1, '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(82, 187, 2, '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(83, 187, 3, '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(84, 187, 4, '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(85, 187, 5, '2021-02-22 06:54:37', '2021-02-22 06:54:37'),
(86, 188, 2, '2021-02-22 07:01:21', '2021-02-22 07:01:21'),
(87, 188, 3, '2021-02-22 07:01:21', '2021-02-22 07:01:21'),
(88, 188, 4, '2021-02-22 07:01:21', '2021-02-22 07:01:21'),
(89, 189, 2, '2021-02-22 07:03:58', '2021-02-22 07:03:58'),
(90, 189, 3, '2021-02-22 07:03:58', '2021-02-22 07:03:58'),
(91, 189, 4, '2021-02-22 07:03:58', '2021-02-22 07:03:58'),
(92, 190, 2, '2021-02-22 07:08:15', '2021-02-22 07:08:15'),
(93, 190, 3, '2021-02-22 07:08:15', '2021-02-22 07:08:15'),
(94, 191, 2, '2021-02-22 07:10:42', '2021-02-22 07:10:42'),
(95, 191, 3, '2021-02-22 07:10:42', '2021-02-22 07:10:42'),
(96, 191, 4, '2021-02-22 07:10:42', '2021-02-22 07:10:42'),
(97, 192, 2, '2021-02-22 07:13:12', '2021-02-22 07:13:12'),
(98, 192, 3, '2021-02-22 07:13:12', '2021-02-22 07:13:12'),
(99, 192, 4, '2021-02-22 07:13:12', '2021-02-22 07:13:12'),
(100, 192, 5, '2021-02-22 07:13:12', '2021-02-22 07:13:12'),
(101, 193, 2, '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(102, 193, 3, '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(103, 193, 4, '2021-02-22 07:23:46', '2021-02-22 07:23:46'),
(104, 194, 2, '2021-02-22 07:27:02', '2021-02-22 07:27:02'),
(105, 194, 3, '2021-02-22 07:27:02', '2021-02-22 07:27:02'),
(106, 194, 4, '2021-02-22 07:27:02', '2021-02-22 07:27:02'),
(107, 195, 2, '2021-02-22 07:29:15', '2021-02-22 07:29:15'),
(108, 195, 3, '2021-02-22 07:29:15', '2021-02-22 07:29:15'),
(109, 195, 4, '2021-02-22 07:29:15', '2021-02-22 07:29:15'),
(110, 196, 2, '2021-02-22 07:31:11', '2021-02-22 07:31:11'),
(111, 196, 3, '2021-02-22 07:31:11', '2021-02-22 07:31:11'),
(112, 196, 4, '2021-02-22 07:31:11', '2021-02-22 07:31:11'),
(113, 197, 2, '2021-02-22 07:32:58', '2021-02-22 07:32:58'),
(114, 197, 3, '2021-02-22 07:32:58', '2021-02-22 07:32:58'),
(115, 197, 4, '2021-02-22 07:32:58', '2021-02-22 07:32:58'),
(116, 198, 2, '2021-02-22 07:35:12', '2021-02-22 07:35:12'),
(117, 198, 3, '2021-02-22 07:35:12', '2021-02-22 07:35:12'),
(118, 198, 4, '2021-02-22 07:35:12', '2021-02-22 07:35:12'),
(119, 218, 2, '2021-02-22 10:47:37', '2021-02-22 10:47:37'),
(120, 218, 3, '2021-02-22 10:47:37', '2021-02-22 10:47:37'),
(121, 218, 4, '2021-02-22 10:47:37', '2021-02-22 10:47:37'),
(122, 180, 1, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(123, 180, 2, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(124, 180, 4, '2021-03-01 16:58:13', '2021-03-01 16:58:13'),
(125, 365, 1, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(126, 365, 2, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(127, 365, 3, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(128, 365, 4, '2021-09-09 10:35:51', '2021-09-09 10:35:51'),
(129, 370, 2, '2021-10-07 06:46:25', '2021-10-07 06:46:25'),
(130, 370, 3, '2021-10-07 06:46:25', '2021-10-07 06:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratting` tinyint(4) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer_id`, `ratting`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, '166', '1', 5, 'Verry good service', 0, '2021-08-31 13:49:46', '2021-08-31 13:49:46'),
(2, '166', '1', 5, 'Good reviews', 1, NULL, NULL),
(3, '358', '3', 5, 'this is best item', 0, '2021-09-13 09:33:59', '2021-09-13 09:33:59'),
(4, '1', '1', 5, 'Verry good service', 0, '2021-09-18 06:04:53', '2021-09-18 06:04:53'),
(5, '1', '1', 5, 'Verry good service', 0, '2021-09-22 05:49:50', '2021-09-22 05:49:50'),
(6, '1', '1', 5, 'Verry good service', 0, '2021-09-22 06:21:33', '2021-09-22 06:21:33'),
(7, '364', '1', 5, 'Verry good service', 0, '2021-09-27 18:16:28', '2021-09-27 18:16:28'),
(8, '364', '1', 5, 'Wow! Amazing!', 0, '2021-09-27 18:21:30', '2021-09-27 18:21:30'),
(9, '364', '1', 2, 'Normal', 0, '2021-09-27 18:22:42', '2021-09-27 18:22:42'),
(10, '1', '1', 5, 'Verry good service', 0, '2021-09-29 05:53:08', '2021-09-29 05:53:08'),
(11, '60', '31', 2, 'mkkkkkkkkk', 0, '2021-10-04 03:39:53', '2021-10-04 03:39:53'),
(12, '60', '31', 4, 'fgfg', 0, '2021-10-04 03:45:25', '2021-10-04 03:45:25'),
(13, '345', '31', 2, '. b b', 0, '2021-10-04 04:15:39', '2021-10-04 04:15:39'),
(14, '1', '1', 5, 'Verry good service', 0, '2021-10-06 04:58:22', '2021-10-06 04:58:22'),
(15, '1', '1', 5, 'Verry good service', 0, '2021-10-07 05:05:49', '2021-10-07 05:05:49'),
(16, '370', '1', 5, 'Verry good service', 0, '2021-10-07 06:43:58', '2021-10-07 06:43:58'),
(17, '59', '31', 4, 'gtyyuu', 0, '2021-10-07 11:46:03', '2021-10-07 11:46:03'),
(18, '59', '31', 3, 'this is good', 0, '2021-10-07 13:24:48', '2021-10-07 13:24:48'),
(19, '370', '5', 3, 'goood', 0, '2021-10-25 17:20:19', '2021-10-25 17:20:19'),
(20, '370', '5', 2, 'ok', 0, '2021-10-25 17:24:22', '2021-10-25 17:24:22'),
(21, '59', '31', 3, 'gd', 0, '2021-10-31 04:48:45', '2021-10-31 04:48:45'),
(22, '365', '46', 4, 'this is not bad.. I love this', 0, '2021-11-03 04:40:10', '2021-11-03 04:40:10'),
(23, '27', '46', 5, 'vvffyucc', 0, '2021-11-03 05:47:19', '2021-11-03 05:47:19'),
(24, '371', '3', 5, 'this good product.', 0, '2021-11-04 05:25:21', '2021-11-04 05:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', NULL, NULL),
(2, 'Admin', NULL, NULL),
(3, 'Editor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellwithuses`
--

CREATE TABLE `sellwithuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `pName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pCategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pPrice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conpersonName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddresses`
--

CREATE TABLE `shippingaddresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `recipient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingPhone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippingaddresses`
--

INSERT INTO `shippingaddresses` (`id`, `customerId`, `recipient`, `shippingAddress`, `shippingPhone`, `district`, `area`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '01750843963', 20, 348, '2021-09-23 10:07:36', '2021-09-23 10:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `shippingfees`
--

CREATE TABLE `shippingfees` (
  `id` int(10) UNSIGNED NOT NULL,
  `minprice` int(11) NOT NULL,
  `maxprice` int(11) NOT NULL,
  `shippingfee` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shippingPrimariId` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingfee` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`shippingPrimariId`, `customerId`, `name`, `phone`, `address`, `district`, `area`, `shippingfee`, `note`, `created_at`, `updated_at`) VALUES
(1, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 07:34:28', '2021-11-06 07:34:28'),
(2, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 07:35:17', '2021-11-06 07:35:17'),
(3, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 07:40:15', '2021-11-06 07:40:15'),
(4, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 07:42:36', '2021-11-06 07:42:36'),
(5, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 08:43:29', '2021-11-06 08:43:29'),
(6, 3, 'shamim jaman', '01750843963', 'ydydydydyc', '9', '204', 50, NULL, '2021-11-06 08:45:13', '2021-11-06 08:45:13'),
(7, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 50, NULL, '2021-11-06 08:49:06', '2021-11-06 08:49:06'),
(8, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 50, NULL, '2021-11-06 08:51:21', '2021-11-06 08:51:21'),
(9, 3, 'shamim jaman', '01750843963', 'ydydydydyc', '9', '204', 50, NULL, '2021-11-06 08:51:59', '2021-11-06 08:51:59'),
(10, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-06 08:59:08', '2021-11-06 08:59:08'),
(11, 20, 'Md. Zadu Mia', '01742892725', 'Dhaka', '1', 'Dhanmondi', 150, NULL, '2021-11-18 08:59:43', '2021-11-18 08:59:43'),
(12, 20, 'Rasel Islam', '01742892725', 'Faridpur', '2', 'Nagarkanda Upazila', 50, NULL, '2021-11-18 09:02:04', '2021-11-18 09:02:04'),
(13, 20, 'Rasel Islam', '01742892725', 'Dhaka', '1', 'Mirpur', 50, NULL, '2021-11-18 09:10:38', '2021-11-18 09:10:38'),
(14, 20, 'Md. Zadu Mia', '01742892725', 'Dinajpur', '50', '5', 50, 'write something', '2021-11-18 13:40:46', '2021-11-18 13:40:46'),
(15, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 150, NULL, '2021-11-19 10:42:12', '2021-11-19 10:42:12'),
(16, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 50, NULL, '2021-11-20 06:19:02', '2021-11-20 06:19:02'),
(17, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 50, NULL, '2021-11-20 06:19:32', '2021-11-20 06:19:32'),
(18, 3, 'Dhaka, Bangladesh', '01750843963', 'Dhaka, Bangladesh', '20', 'Manda Upazila', 50, NULL, '2021-11-21 09:15:43', '2021-11-21 09:15:43'),
(19, 48, 'Dana Lester', '+1 (976) 375-3524', 'Dolorem dolor et err', '60', 'Kushtia Sadar', 50, 'Ad porro dolorem et', '2021-11-28 04:45:56', '2021-11-28 04:45:56'),
(20, 48, 'Isaiah Schneider', '+1 (402) 616-3212', 'Qui exercitation ut', '50', 'Rangamati Sadar Upazila', 50, 'At qui aut nostrum f', '2021-11-28 05:01:50', '2021-11-28 05:01:50'),
(21, 48, 'Erich Mclean', '+1 (831) 433-9583', 'Ex culpa iste neces', '32', 'Badarganj', 50, 'Aliquip iusto id in', '2021-11-28 05:14:28', '2021-11-28 05:14:28'),
(22, 48, 'Curran Gordon', '+1 (817) 273-8188', 'Cupidatat cupiditate', '11', 'Rupganj Upazila', 50, 'Aut rerum laboriosam', '2021-11-28 09:16:16', '2021-11-28 09:16:16'),
(23, 48, 'Damon Mcintosh', '+1 (453) 507-9864', 'Eiusmod dolore exped', '28', 'Kurigram Sadar', 50, 'Excepturi inventore', '2021-11-28 09:17:59', '2021-11-28 09:17:59'),
(24, 48, 'Benjamin Dickerson', '+1 (358) 404-8573', 'Eiusmod tempor volup', '27', 'Sadullapur', 50, 'Veniam in eaque ad', '2021-11-28 09:24:07', '2021-11-28 09:24:07'),
(25, 48, 'Ciara Benjamin', '+1 (824) 702-7414', 'Mollitia ut in Nam c', '40', 'Bandarban Sadar', 50, 'Quis nisi non fugit', '2021-11-29 06:05:17', '2021-11-29 06:05:17'),
(26, 48, 'Alexis Herman', '+1 (353) 896-8548', 'Quasi pariatur Corr', '25', 'Belkuchi Upazila', 50, 'Sequi iste vel delec', '2021-11-29 06:37:03', '2021-11-29 06:37:03'),
(27, 48, 'Hedwig Oneil', '+1 (298) 101-2373', 'Et irure laudantium', '16', 'Jhenaigati Upazila', 50, 'Qui delectus sequi', '2021-11-29 09:51:08', '2021-11-29 09:51:08'),
(28, 48, 'Malik Patterson', '+1 (364) 736-9431', 'Cupiditate aut conse', '62', 'Mujib Nagar Upazila', 50, 'Molestiae autem expl', '2021-11-29 09:56:03', '2021-11-29 09:56:03'),
(29, 48, 'Grace Daugherty', '+1 (664) 438-9186', 'Iste incididunt quas', '53', 'Bishwamvarpur', 50, 'Ipsa labore hic fug', '2021-11-29 10:16:14', '2021-11-29 10:16:14'),
(30, 48, 'Armand Hobbs', '+1 (349) 456-2617', 'Deserunt itaque et a', '25', 'Shahjadpur Upazila', 50, 'Iusto in voluptatibu', '2021-11-29 10:31:49', '2021-11-29 10:31:49'),
(31, 48, 'Sebastian Farrell', '+1 (339) 727-1573', 'Odio voluptatum duci', '44', 'Laksam Upazila', 50, 'Possimus ad sit er', '2021-11-29 10:36:44', '2021-11-29 10:36:44'),
(32, 48, 'Germaine Riley', '+1 (104) 342-2249', 'Reiciendis quo offic', '10', 'Trishal', 50, 'Tenetur itaque a dis', '2021-11-30 03:38:03', '2021-11-30 03:38:03'),
(33, 48, 'Quyn Knight', '+1 (521) 297-3287', 'Nulla alias quia aut', '63', 'Narail-S Upazilla', 50, 'Consequat Inventore', '2021-11-30 05:50:15', '2021-11-30 05:50:15'),
(34, 48, 'Petra Cohen', '+1 (188) 644-4354', 'Vel omnis sit dolore', '50', 'Langadu Upazila', 50, 'Voluptates omnis qui', '2021-11-30 08:36:48', '2021-11-30 08:36:48'),
(35, 48, 'Elton Oneal', '+1 (908) 252-2324', 'Laboris et duis est', '44', 'Comilla Sadar Upazila', 50, 'Itaque qui fugit ex', '2021-11-30 08:55:36', '2021-11-30 08:55:36'),
(36, 48, 'Abdul Acosta', '+1 (268) 808-8074', 'Et reprehenderit ist', '18', 'Sariakandi', 50, 'Qui possimus assume', '2021-11-30 09:27:30', '2021-11-30 09:27:30'),
(37, 48, 'Alexa Foley', '+1 (309) 862-8069', 'In possimus non sun', '17', 'Tangail Sadar Upazila', 50, 'Rem at vero fugiat', '2021-11-30 09:33:24', '2021-11-30 09:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', '1', '2021-02-19 12:05:28', '2021-09-08 09:22:05'),
(2, 'M', '1', '2021-02-19 12:05:37', '2021-02-19 12:05:37'),
(3, 'L', '1', '2021-02-19 12:05:48', '2021-02-19 12:05:48'),
(4, 'XL', '1', '2021-02-19 12:05:58', '2021-02-19 12:05:58'),
(5, 'XXL', '1', '2021-02-19 12:06:35', '2021-02-19 12:06:55'),
(6, 'SM', '1', '2021-09-11 12:21:48', '2021-09-11 12:21:48'),
(7, 'km', '1', '2021-09-13 04:30:29', '2021-09-13 04:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `burl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `burl`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 'www.marscodeit.com', 'public/uploads/slider/slider-2.jpg', 1, '2021-09-12 13:10:52', '2021-11-05 10:10:13'),
(13, '#', 'public/uploads/slider/slider-3.jpg', 1, '2021-09-12 13:11:24', '2021-09-12 13:11:24'),
(14, '#', 'public/uploads/slider/slider-1.jpg', 1, '2021-09-12 13:12:06', '2021-09-12 13:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `name`, `icon`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fa fa-facebook', '#', 1, '2020-11-22 03:35:15', '2020-11-22 03:38:20'),
(2, 'Linkedin', 'fa fa-linkedin', '#', 1, '2020-11-22 03:39:04', '2020-11-22 03:39:04'),
(3, 'instagram', 'fa fa-instagram', '#', 1, '2020-11-22 03:39:59', '2021-08-04 06:51:32'),
(4, 'Youtube', 'fa fa-youtube', '#', 1, '2020-11-22 03:40:23', '2020-11-22 03:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `social_customers`
--

CREATE TABLE `social_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_sets`
--

CREATE TABLE `stripe_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SecretKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PublishableKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `SandboxStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_sets`
--

INSERT INTO `stripe_sets` (`id`, `title`, `SecretKey`, `PublishableKey`, `Description`, `Status`, `SandboxStatus`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 'sk_test_HETvnHVWPE2yxioaiobPi25k00uvh64zC3', 'pk_test_T5wFaZtvqWHXkrOcBvUSC7Gl00UkI7ZYIk', 'Set Stripe Account !!', 1, 1, NULL, '2021-11-30 09:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cooling & Heating', 'cooling-&-heating', 16, '1', '2021-02-14 16:33:26', '2021-09-29 09:18:09'),
(2, 'Water Dispensers, Purifiers & Filters', 'water-dispensers,-purifiers-&-filters', 16, '1', '2021-02-14 16:34:13', '2021-09-29 09:17:54'),
(3, 'Shirts', 'shirts', 6, '1', '2021-02-14 16:40:21', '2021-02-19 05:45:04'),
(4, 'T Shirt', 't-shirt', 6, '1', '2021-02-14 16:40:41', '2021-02-14 16:40:41'),
(5, 'Jacket', 'jacket', 6, '1', '2021-02-14 16:41:19', '2021-02-14 16:41:19'),
(6, 'Sweaters & Cardigans', 'sweaters-&-cardigans', 7, '1', '2021-02-19 05:24:55', '2021-02-19 05:24:55'),
(7, 'Jackets & Coats', 'jackets-&-coats', 7, '1', '2021-02-19 05:25:08', '2021-02-19 05:25:08'),
(8, 'Saree', 'saree', 7, '1', '2021-02-19 05:25:19', '2021-02-19 05:25:19'),
(9, 'Shalwar Kameez', 'shalwar-kameez', 7, '1', '2021-02-19 05:25:29', '2021-02-19 05:25:29'),
(10, 'Unstitched Fabric', 'unstitched-fabric', 7, '1', '2021-02-19 05:25:43', '2021-02-19 05:25:43'),
(11, 'Kurtis', 'kurtis', 7, '1', '2021-02-19 05:26:17', '2021-02-19 05:26:17'),
(12, 'Bath', 'bath', 3, '1', '2021-02-19 05:28:30', '2021-02-19 05:28:30'),
(13, 'Bedding', 'bedding', 3, '1', '2021-02-19 05:28:45', '2021-02-19 05:28:45'),
(14, 'Decor', 'decor', 3, '1', '2021-02-19 05:28:58', '2021-02-19 05:28:58'),
(15, 'Furniture', 'furniture', 3, '1', '2021-02-19 05:29:08', '2021-02-19 05:29:08'),
(16, 'Lighting', 'lighting', 3, '1', '2021-02-19 05:29:17', '2021-02-19 05:29:43'),
(17, 'Laundry & Cleaning', 'laundry-&-cleaning', 3, '1', '2021-02-19 05:43:18', '2021-02-19 05:43:18'),
(18, 'Tools, DIY & Outdoor', 'tools,-diy-&-outdoor', 3, '1', '2021-02-19 05:43:33', '2021-02-19 05:43:33'),
(19, 'Stationery & Craft', 'stationery-&-craft', 3, '1', '2021-02-19 05:43:43', '2021-02-19 05:43:43'),
(20, 'Media, Music & Books', 'media,-music-&-books', 3, '1', '2021-02-19 05:43:52', '2021-02-19 05:43:52'),
(21, 'Hoodies & Sweatshirts', 'hoodies-&-sweatshirts', 6, '1', '2021-02-19 06:14:24', '2021-02-19 06:14:24'),
(22, 'Men\'s Bags', 'men\'s-bags', 6, '1', '2021-02-19 06:19:31', '2021-02-19 06:19:31'),
(23, 'Shoes', 'shoes', 6, '1', '2021-02-19 06:19:43', '2021-02-19 06:19:43'),
(24, 'Accessories', 'accessories', 6, '1', '2021-02-19 06:19:55', '2021-02-19 06:19:55'),
(25, 'Mother & Baby', 'mother-&-baby', 4, '1', '2021-02-19 06:24:51', '2021-02-19 06:24:51'),
(26, 'Feeding', 'feeding', 4, '1', '2021-02-19 06:25:02', '2021-02-19 06:25:02'),
(27, 'Diapering & Potty', 'diapering-&-potty', 4, '1', '2021-02-19 06:25:11', '2021-02-19 06:25:11'),
(28, 'Baby Gear', 'baby-gear', 4, '1', '2021-02-19 06:25:24', '2021-02-19 06:25:24'),
(29, 'Baby Personal Care', 'baby-personal-care', 4, '1', '2021-02-19 06:25:38', '2021-02-19 06:25:38'),
(30, 'Clothing & Accessories', 'clothing-&-accessories', 4, '1', '2021-02-19 06:28:08', '2021-02-19 06:28:08'),
(31, 'Nursery', 'nursery', 4, '1', '2021-02-19 06:28:15', '2021-02-19 06:28:15'),
(32, 'Toys & Games', 'toys-&-games', 4, '1', '2021-02-19 06:28:23', '2021-02-19 06:28:23'),
(33, 'Remote Control & Vehicles', 'remote-control-&-vehicles', 4, '1', '2021-02-19 06:28:35', '2021-02-19 06:28:35'),
(34, 'Mobile Accessories', 'mobile-accessories', 5, '1', '2021-02-19 06:28:41', '2021-02-19 06:32:53'),
(35, 'Audio', 'audio', 5, '1', '2021-02-19 06:28:49', '2021-02-19 06:33:06'),
(36, 'Wearable', 'wearable', 5, '0', '2021-02-19 06:33:17', '2021-02-19 06:34:33'),
(37, 'Console Accessories', 'console-accessories', 5, '0', '2021-02-19 06:33:25', '2021-02-19 06:35:35'),
(38, 'Camera Accessories', 'camera-accessories', 5, '1', '2021-02-19 06:33:34', '2021-02-19 06:33:34'),
(39, 'Computer Accessories', 'computer-accessories', 5, '1', '2021-02-19 06:33:41', '2021-02-19 06:33:41'),
(40, 'Printers', 'printers', 5, '1', '2021-02-19 06:33:49', '2021-02-19 06:33:49'),
(41, 'Computer Components', 'computer-components', 5, '1', '2021-02-19 06:33:56', '2021-02-19 06:33:56'),
(42, 'Network Components', 'network-components', 5, '1', '2021-02-19 06:34:02', '2021-02-19 06:34:02'),
(43, 'Software', 'software', 5, '1', '2021-02-19 06:34:08', '2021-02-19 06:34:08'),
(44, 'Water Purifiers & Filters', 'water-purifiers-&-filters', 16, '1', '2021-02-19 08:27:46', '2021-09-29 09:17:30'),
(45, 'Irons & Garment Steamers', 'irons-&-garment-steamers', 16, '1', '2021-02-19 08:27:53', '2021-09-29 09:16:50'),
(46, 'Vacuums & Floor Care', 'vacuums-&-floor-care', 16, '1', '2021-02-19 08:28:01', '2021-09-29 09:16:33'),
(47, 'Large Appliances', 'large-appliances', 16, '1', '2021-02-19 08:28:08', '2021-09-29 09:16:14'),
(48, 'Coffee & Tea', 'coffee-&-tea', 2, '1', '2021-02-19 08:28:32', '2021-02-19 08:30:58'),
(49, 'Storage & Organisation', 'storage-&-organisation', 2, '1', '2021-02-19 08:31:20', '2021-02-19 08:31:20'),
(50, 'Cookware', 'cookware', 2, '1', '2021-02-19 08:31:47', '2021-02-19 08:31:47'),
(51, 'Dinnerware', 'dinnerware', 2, '1', '2021-02-19 08:31:58', '2021-02-19 08:31:58'),
(52, 'Kitchen & Table Linen', 'kitchen-&-table-linen', 2, '1', '2021-02-19 08:32:08', '2021-02-19 08:32:08'),
(53, 'Kitchen Storage & Accessories', 'kitchen-storage-&-accessories', 2, '1', '2021-02-19 08:32:16', '2021-02-19 08:32:16'),
(54, 'Kitchen Utensils', 'kitchen-utensils', 2, '1', '2021-02-19 08:32:38', '2021-02-19 08:32:38'),
(55, 'Kitchen Utensils', 'kitchen-utensils', 2, '1', '2021-02-19 08:32:54', '2021-02-19 08:32:54'),
(56, 'Men\'s Watch', 'men\'s-watch', 10, '1', '2021-02-19 08:35:35', '2021-02-19 08:35:35'),
(57, 'Women\'s Watch', 'women\'s-watch', 10, '1', '2021-02-19 08:35:42', '2021-02-19 08:35:42'),
(58, 'Women\'s Jewelleries', 'women\'s-jewelleries', 10, '1', '2021-02-19 08:35:57', '2021-02-19 08:35:57'),
(59, 'Men\'s Jewelleries', 'men\'s-jewelleries', 10, '1', '2021-02-19 08:36:07', '2021-02-19 08:36:07'),
(60, 'Men\'s Belt', 'men\'s-belt', 10, '1', '2021-02-19 08:36:14', '2021-02-19 08:36:14'),
(61, 'Men\'s Wallet', 'men\'s-wallet', 10, '1', '2021-02-19 08:36:22', '2021-02-19 08:36:22'),
(62, 'Sunglasses', 'sunglasses', 10, '1', '2021-02-19 08:36:27', '2021-02-19 08:36:27'),
(63, 'Eyeglasses', 'eyeglasses', 10, '1', '2021-02-19 08:36:34', '2021-02-19 08:36:34'),
(64, 'Smartphones', 'smartphones', 11, '1', '2021-02-19 08:36:41', '2021-02-19 08:37:48'),
(65, 'Tablets', 'tablets', 11, '1', '2021-02-19 08:38:04', '2021-02-19 08:38:04'),
(66, 'Laptops', 'laptops', 11, '1', '2021-02-19 08:38:13', '2021-02-19 08:38:13'),
(67, 'Desktops', 'desktops', 11, '1', '2021-02-19 08:38:24', '2021-02-19 08:38:24'),
(68, 'Gaming Consoles', 'gaming-consoles', 11, '1', '2021-02-19 08:38:32', '2021-02-19 08:38:32'),
(69, 'Cameras', 'cameras', 11, '1', '2021-02-19 08:38:39', '2021-02-19 08:38:39'),
(70, 'Security Cameras', 'security-cameras', 11, '1', '2021-02-19 08:38:47', '2021-02-19 08:38:47'),
(71, 'tast', 'tast', 13, '1', '2021-09-11 09:55:59', '2021-09-11 09:55:59'),
(72, 'pizza', 'pizza', 16, '1', '2021-09-29 09:13:55', '2021-09-29 09:13:55'),
(73, 'Home', 'home', 1, '0', '2021-11-03 12:12:37', '2021-11-06 08:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `table_carts`
--

CREATE TABLE `table_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/uploads/avatar/avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `phone`, `designation`, `status`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 1, 'ismail', 'ismail@email.com', 'ismail@email.com', '111111111', 'Supper Admin', '1', '$2y$10$uxzATPC68adq/ZYPqHMqk.cRQbnQy1kpyCInYKXkpa6XIL5WsXYx6', 'public/uploads/avatar/avatar.png', NULL, '2021-11-23 09:03:42', '2021-11-23 09:03:42'),
(1, 1, 'superadmin', 'User01', 'secure@websolutionit.com', '01766950985', 'CEO', '1', '$2y$10$nbnHm/VC1W0n6Y/FKLG5/OXBQk7aQgzXtyf2OR94LRvzwJPHEkBne', 'public/uploads/avatar/avatar.png', 'sWmw8RRpzbFWKGtsGDvRFykYernguzCeApvB3cxHiD43aypp6aV4EOwby6Kq', NULL, NULL),
(2, 1, 'Admin', 'shamim', 'info@example.com', '01750843963', 'Superadmin', '1', '$2y$10$mX0PrbTemxFwTucIRo.C9.gjA17QlXOpR.eHg.Ce3lwA7eGef.Eb6', 'public/uploads/user/avatar.png', NULL, '2021-08-31 16:26:43', '2021-09-12 04:55:32'),
(3, 1, 'Admin', 'Admin', 'mdanisurrahman6252@gmail.com', '0354654684', 'this is for demo', '1', '$2y$10$YDuAhxxHmAhhzKJZelEXX.uqPKTpETx2H9PO5RGe1Sf3tR1o1Mw62', 'public/uploads/user/mibro-color-500x500.jpg', NULL, '2021-09-08 09:09:15', '2021-09-12 04:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '60', '1', '2021-08-23 11:37:00', '2021-08-23 11:37:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adcategories`
--
ALTER TABLE `adcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_on_delivery_sets`
--
ALTER TABLE `cash_on_delivery_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_subcategory_id_index` (`subcategory_id`);

--
-- Indexes for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couponcodes`
--
ALTER TABLE `couponcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createpages`
--
ALTER TABLE `createpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerapplies`
--
ALTER TABLE `customerapplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expencecategories`
--
ALTER TABLE `expencecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offercategories`
--
ALTER TABLE `offercategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderDetails`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderIdPrimary`);

--
-- Indexes for table `ordertypes`
--
ALTER TABLE `ordertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagecategories`
--
ALTER TABLE `pagecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentIdPrimary`);

--
-- Indexes for table `paypal_sets`
--
ALTER TABLE `paypal_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productrequests`
--
ALTER TABLE `productrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellwithuses`
--
ALTER TABLE `sellwithuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingfees`
--
ALTER TABLE `shippingfees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shippingPrimariId`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_customers`
--
ALTER TABLE `social_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_customers_email_unique` (`email`);

--
-- Indexes for table `stripe_sets`
--
ALTER TABLE `stripe_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_index` (`category_id`);

--
-- Indexes for table `table_carts`
--
ALTER TABLE `table_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adcategories`
--
ALTER TABLE `adcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cash_on_delivery_sets`
--
ALTER TABLE `cash_on_delivery_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couponcodes`
--
ALTER TABLE `couponcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `createpages`
--
ALTER TABLE `createpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customerapplies`
--
ALTER TABLE `customerapplies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `expencecategories`
--
ALTER TABLE `expencecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expences`
--
ALTER TABLE `expences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offercategories`
--
ALTER TABLE `offercategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderDetails` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderIdPrimary` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ordertypes`
--
ALTER TABLE `ordertypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pagecategories`
--
ALTER TABLE `pagecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentIdPrimary` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `paypal_sets`
--
ALTER TABLE `paypal_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `productrequests`
--
ALTER TABLE `productrequests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sellwithuses`
--
ALTER TABLE `sellwithuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippingfees`
--
ALTER TABLE `shippingfees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shippingPrimariId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_customers`
--
ALTER TABLE `social_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_sets`
--
ALTER TABLE `stripe_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `table_carts`
--
ALTER TABLE `table_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
