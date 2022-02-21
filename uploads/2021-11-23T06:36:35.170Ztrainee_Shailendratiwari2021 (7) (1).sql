-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2021 at 03:36 PM
-- Server version: 5.7.35-0ubuntu0.18.04.2
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainee_Shailendratiwari2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_category`
--

CREATE TABLE `ci_category` (
  `id` int(11) NOT NULL,
  `taxonomy_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_category`
--

INSERT INTO `ci_category` (`id`, `taxonomy_id`, `parent_id`, `cat_name`, `description`, `status`, `image`, `create_at`) VALUES
(14, 14, 0, 'bus', 'This is bus', 1, 'fax7.png', '2021-08-14 14:15:52'),
(17, 14, 14, 'i bus', 'this i s bussss', 1, '', '2021-08-14 14:17:22'),
(19, 15, 0, 'animal', 'Thisnis', 1, '', '2021-08-17 12:05:19'),
(22, 15, 19, 'dog', '', 1, '', '2021-08-17 12:05:54'),
(23, 15, 19, 'cat', '', 1, '', '2021-08-17 12:06:00'),
(27, 1, 26, 'banana', '', 1, '', '2021-09-09 13:09:40'),
(28, 1, 26, 'Apple', '', 1, '', '2021-09-09 13:11:36'),
(30, 1, 29, 'Apple', '', 1, '', '2021-09-09 14:21:25'),
(31, 1, 30, 'Banana', '', 1, '', '2021-09-09 14:21:34'),
(40, 1, 0, 'fruit', '', 1, 'fax32.png', '2021-09-09 14:59:29'),
(41, 1, 40, 'apple', '', 1, '', '2021-09-09 14:59:36'),
(43, 18, 0, 'Bats Man', '', 1, '', '2021-09-16 15:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `ci_category_26072021old`
--

CREATE TABLE `ci_category_26072021old` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_category_26072021old`
--

INSERT INTO `ci_category_26072021old` (`id`, `parent_id`, `cat_name`, `description`, `status`, `image`, `create_at`) VALUES
(1, 0, 'test', '', 1, '', '2021-07-26 15:54:55'),
(2, 0, 'demo', '', 1, '', '2021-07-26 15:55:22'),
(3, 1, 'good', '', 1, '', '2021-07-26 15:55:43'),
(4, 3, 'goodbye', '', 1, '', '2021-07-26 15:56:29'),
(5, 2, 'demo1', '', 1, '', '2021-07-26 15:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `ci_cat_post_relationships`
--

CREATE TABLE `ci_cat_post_relationships` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_cat_post_relationships`
--

INSERT INTO `ci_cat_post_relationships` (`post_id`, `category_id`) VALUES
(68, 16),
(68, 14),
(104, 15),
(104, 17),
(112, 18),
(105, 15),
(105, 16),
(119, 17),
(121, 16),
(121, 19),
(121, 17),
(136, 18),
(142, 18),
(118, 16),
(99, 41),
(99, 14),
(134, 17),
(167, 22),
(170, 22),
(178, 22),
(179, 22),
(180, 23),
(171, 22),
(168, 22),
(181, 22),
(184, 22),
(185, 22),
(186, 22),
(202, 22),
(209, 22),
(188, 23),
(211, 40),
(187, 22),
(187, 23),
(212, 22),
(216, 23),
(189, 23),
(217, 22),
(8, 41);

-- --------------------------------------------------------

--
-- Table structure for table `ci_contactmeta`
--

CREATE TABLE `ci_contactmeta` (
  `meta_id` bigint(20) NOT NULL,
  `contact_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_contact_details`
--

CREATE TABLE `ci_contact_details` (
  `id` int(11) NOT NULL,
  `contact_form_id` int(11) NOT NULL,
  `your_name` varchar(255) NOT NULL,
  `your_email` varchar(255) NOT NULL,
  `your_number` varchar(13) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `your_message` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_contact_details`
--

INSERT INTO `ci_contact_details` (`id`, `contact_form_id`, `your_name`, `your_email`, `your_number`, `subject`, `your_message`, `image`, `create_date`) VALUES
(1, 133, 'Jai', 'shailendratiwari@conative.in', '0', '2008good', 'This is good', '', '2021-08-20 10:04:50'),
(2, 133, 'fgfg', 'shailendratiwari@conative.in', '0', 'hfg', 'fgh', '', '2021-08-20 10:20:18'),
(3, 133, 'Last', 'shailendratiwari@conative.in', '0', 'hfghgfh', 'fghfgh', '', '2021-08-20 10:33:43'),
(4, 133, 'test', 'shailendratiwari@conative.in', '0', 'xcdsfcds', 'dsfsdf', '', '2021-08-20 10:41:29'),
(5, 133, 'dfggfd', 'shailendratiwari@conative.in', '0', 'dfgdf', 'fdggf', '', '2021-08-20 10:43:19'),
(6, 133, 'demo', 'shailendratiwari@conative.in', '0', 'last', 'This is good', '', '2021-08-20 15:41:09'),
(7, 133, 'test', 'shailendratiwari@conative.in', '0', 'dsdf', 'gdfsg', '', '2021-08-20 15:45:23'),
(8, 133, 'demo', 'shailendratiwari@conative.in', '0', '20test', 'hdfgh', 'fax1.png', '2021-08-20 16:05:38'),
(9, 133, 'test', 'shailendratiwari@conative.in', '0', '20test21', 'hfgh', 'member_export.csv', '2021-08-20 16:09:48'),
(10, 133, 'test', 'shailendratiwari@conative.in', '0', 'hgj', 'ghjghj', 'fax2.png', '2021-08-20 16:12:19'),
(11, 133, 'test', 'shailendratiwari@conative.in', '0', '20test21', 'fhdxh', 'fax3.png', '2021-08-20 16:13:10'),
(12, 133, 'luck', 'shailendratiwari@conative.in', '0', '21test', 'dfgdg', 'Kids_First_Announcement_vFinal1.pdf', '2021-08-20 16:23:27'),
(14, 133, 'hello', 'shailendratiwari@conative.in', '9988774455', '20test211', 'Hello @All,\r\n\r\n\r\nThis is good news.\r\n\r\n\r\nThanks,', '', '2021-08-20 17:01:03'),
(15, 133, 'hello', 'shailendratiwari@conative.in', '9988774455', '20test211', 'Hello @All,\r\n\r\n\r\nThis is good news.\r\n\r\n\r\nThanks,', '', '2021-08-20 17:01:40'),
(16, 133, 'hello', 'shailendratiwari@conative.in', '9988774455', '20test211', 'Hello @All,\r\n\r\n\r\nThis is good news.\r\n\r\n\r\nThanks,', '', '2021-08-20 17:02:01'),
(17, 133, 'Ram', 'shailendratiwari@conative.in', '9988774455', '21 good', 'Hello @All,\r\n\r\n\r\nThis is good news.\r\n\r\n\r\nThanks,', '', '2021-08-20 17:04:30'),
(18, 133, 'Last', 'shailendratiwari@conative.in', '9988774455', '20test', 'Hello @All,\r\n\r\n\r\nThis is good news inform.\r\n\r\n\r\nThanks,', '', '2021-08-20 17:19:52'),
(19, 133, 'Ram', 'shailendratiwari@conative.in', '9999999999', '20Aug', 'Send me email.', '', '2021-08-20 17:43:55'),
(20, 133, 'Krishna', 'shailendratiwari@conative.in', '9874563210', '20Aug2021', 'This is good site.', '', '2021-08-20 17:49:31'),
(21, 133, 'hello', 'shailendratiwari@conative.in', '7788554422', '2021', 'good', '', '2021-08-20 18:09:38'),
(22, 133, 'jadnesh', 'shailendratiwari@conative.in', '4455226633', '23test', 'This is good day.', '', '2021-08-23 11:59:25'),
(23, 133, 'Jairaj', 'shailendratiwari@conative.in', '33214756', 'test23', 'good work.', '', '2021-08-23 12:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `ci_contact_enquiry`
--

CREATE TABLE `ci_contact_enquiry` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `form_entry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_contact_enquiry`
--

INSERT INTO `ci_contact_enquiry` (`id`, `contact_id`, `form_entry`) VALUES
(1, 133, '{\"id\":\"133\",\"your-name\":\"cits demo\",\"your-email\":\"citstestjitu@gmail.com\",\"your-number\":\"9632587415\",\"subject\":\"hii\",\"your-message\":\"hisadfsfsf\\r\\n\\r\\nsdf\\r\\nsad\\r\\nfsadf\",\"image\":\"\"}'),
(2, 132, '{\"id\":\"132\",\"your-name\":\"Good\",\"your-number\":\"5588558855\",\"image\":\"\"}'),
(3, 134, '{\"id\":\"134\",\"your-name\":\"hello india\",\"your-number\":\"9988774455\",\"image\":\"\"}'),
(4, 134, '{\"id\":\"134\",\"your-name\":\"test data\",\"your-number\":\"5588558855\",\"image\":\"\"}'),
(5, 134, '{\"id\":\"134\",\"your-name\":\"good luck\",\"your-number\":\"7788554422\",\"image\":\"\"}'),
(6, 133, '{\"id\":\"133\",\"your-name\":\"luck\",\"your-email\":\"shailendratiwari@conative.in\",\"your-number\":\"7777788888\",\"your-message\":\"working\",\"image\":\"\"}'),
(7, 133, '{\"id\":\"133\",\"your-name\":\"bottal\",\"your-email\":\"shailendratiwari@conative.in\",\"your-number\":\"9988774455\",\"your-message\":\"hi baby.\",\"image\":\"\"}'),
(8, 133, '{\"id\":\"133\",\"your-name\":\"good\",\"your-email\":\"shailendratiwari@conative.in\",\"your-number\":\"6655442112\",\"your-message\":\"fdg fgfdg\",\"image\":\"\"}'),
(9, 133, '{\"id\":\"133\",\"your-name\":\"student\",\"your-email\":\"shailendratiwari@conative.in\",\"your-number\":\"77885544\",\"your-message\":\"good student\",\"image\":\"\"}'),
(10, 133, '{\"id\":\"133\",\"your-name\":\"test\",\"your-email\":\"shailendratiwari@conative.in\",\"your-number\":\"8887774455\",\"your-message\":\"This is good site.\",\"image\":\"\"}'),
(11, 133, '{\"id\":\"133\",\"your-name\":\"test\",\"your-email\":\"test@gmail.com\",\"your-number\":\"1234567890\",\"your-message\":\"test\",\"image\":\"\"}'),
(12, 133, '{\"id\":\"133\",\"your-name\":\"test\",\"your-email\":\"test@gmail.com\",\"your-number\":\"1234567890\",\"your-message\":\"http:\\/\\/stagingwebsite.co.in:30016\\/Shailendra_Tiwari\\/2021\\/15072021\\/project\\/frontendgetContactform\\r\\n\\r\\n<b>test<\\/b>\",\"image\":\"\"}'),
(13, 133, '{\"id\":\"133\",\"your-name\":\"test\",\"subject\":\"test subject\",\"your-email\":\"test@gmail.com\",\"your-number\":\"1234565414145\",\"your-message\":\"Your message(optional)\",\"image\":\"\"}'),
(14, 133, '{\"id\":\"133\",\"your-name\":\"test\",\"subject\":\"test subject\",\"your-email\":\"test@gmail.com\",\"your-number\":\"1234567890\",\"your-message\":\"Your message(optional)\\r\\n\",\"image\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ci_display_location`
--

CREATE TABLE `ci_display_location` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `display_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_gallery_files`
--

CREATE TABLE `ci_gallery_files` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_gallery_files`
--

INSERT INTO `ci_gallery_files` (`id`, `post_id`, `image_url`, `image_name`) VALUES
(1, 142, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/fax.png', '20210902064057_fax.png'),
(2, 142, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/2021-Microlearning.png', '20210902064057_2021-Microlearning.png'),
(3, 142, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/Kids-First-Trace.jpg', '20210902064057_Kids-First-Trace.jpg'),
(4, 142, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902064314_2021-Microlearning.png', '20210902064314_2021-Microlearning.png'),
(5, 142, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902064314_Kids-First-Trace.png', '20210902064314_Kids-First-Trace.png'),
(6, 143, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902064547_2021-Microlearning-05-old.png', '20210902064547_2021-Microlearning-05-old.png'),
(7, 143, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902064547_venture_3-right.png', '20210902064547_venture_3-right.png'),
(9, 143, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902065342_venture_1-left.png', '20210902065342_venture_1-left.png'),
(10, 134, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902071907_venture_1-left.png', '20210902071907_venture_1-left.png'),
(11, 134, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902071907_ERP-Project-Timeline.png', '20210902071907_ERP-Project-Timeline.png'),
(12, 118, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902083042_fax.png', '20210902083042_fax.png'),
(13, 118, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902083042_2021-Microlearning.png', '20210902083042_2021-Microlearning.png'),
(14, 118, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210902083042_Kids-First-Trace.jpg', '20210902083042_Kids-First-Trace.jpg'),
(16, 33, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210903121420_2021-Microlearning.png', '20210903121420_2021-Microlearning.png'),
(17, 33, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210903121420_Kids-First-Trace.jpg', '20210903121420_Kids-First-Trace.jpg'),
(18, 33, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210903010254_ERP-Project-Timeline-small.png', '20210903010254_ERP-Project-Timeline-small.png'),
(19, 33, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210903010254_Screenshot_at_2021-04-15_14-28-41.png', '20210903010254_Screenshot_at_2021-04-15_14-28-41.png'),
(21, 181, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210913055324_2021-Microlearning-05-old.png', '20210913055324_2021-Microlearning-05-old.png'),
(22, 177, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210913060024_Top-Content-Providers-for-Competency-based-Training.png', '20210913060024_Top-Content-Providers-for-Competency-based-Training.png'),
(23, 211, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210916062051_Untitled-2_(1).jpg', '20210916062051_Untitled-2_(1).jpg'),
(24, 211, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210916062051_Untitled-2.jpg', '20210916062051_Untitled-2.jpg'),
(25, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_Untitled-2_(1).jpg', '20210920064452_Untitled-2_(1).jpg'),
(26, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_Untitled-2.jpg', '20210920064452_Untitled-2.jpg'),
(27, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_Tuneup.png', '20210920064452_Tuneup.png'),
(28, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_this_house.jpg', '20210920064452_this_house.jpg'),
(29, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_testimg.png', '20210920064452_testimg.png'),
(30, 31, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-09/20210920064452_Keeping_Your_Kids_Healthy_1.jpg', '20210920064452_Keeping_Your_Kids_Healthy_1.jpg'),
(31, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211004024607_fax.png', '20211004024607_fax.png'),
(32, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211004024607_2021-Microlearning.png', '20211004024607_2021-Microlearning.png'),
(34, 8, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211004025001_Kids-First-Trace.jpg', '20211004025001_Kids-First-Trace.jpg'),
(35, 8, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211004025001_ERP-Project-Timeline-small.png', '20211004025001_ERP-Project-Timeline-small.png'),
(44, 8, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007024905_portfolio3.jpg', '20211007024905_portfolio3.jpg'),
(45, 8, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007025459_photoshop.png', '20211007025459_photoshop.png'),
(46, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033102_PS.jpg', '20211007033102_PS.jpg'),
(47, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_XD.jpg', '20211007033103_XD.jpg'),
(48, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_Figma.jpg', '20211007033103_Figma.jpg'),
(49, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_An.jpg', '20211007033103_An.jpg'),
(50, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_W.jpg', '20211007033103_W.jpg'),
(51, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_HTML.jpg', '20211007033103_HTML.jpg'),
(52, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_A.jpg', '20211007033103_A.jpg'),
(53, 1, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/upload/2021-10/20211007033103_B.jpg', '20211007033103_B.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_gallery_images`
--

CREATE TABLE `ci_gallery_images` (
  `ID` int(11) NOT NULL,
  `gallery_image` text NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_gallery_images`
--

INSERT INTO `ci_gallery_images` (`ID`, `gallery_image`, `page_id`) VALUES
(35, '1251627472368301.png', 247),
(36, '2581627472368187.jpeg', 247),
(37, '3761627472436152.png', 250),
(38, '2501627472436380.png', 250),
(39, '2401627477968284.png', 252),
(40, '2351627532418316.png', 254),
(41, '3231627532523142.png', 254);

-- --------------------------------------------------------

--
-- Table structure for table `ci_menu`
--

CREATE TABLE `ci_menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_name` text NOT NULL,
  `url` text NOT NULL,
  `menu_category` int(11) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_menu`
--

INSERT INTO `ci_menu` (`id`, `parent_id`, `menu_name`, `url`, `menu_category`, `menu_type`, `status`, `create_at`) VALUES
(1, 0, 'Top menus s', '', 0, '', 1, '2021-08-11 14:18:49'),
(2, 0, 'Contact', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/contact', 2, '', 1, '2021-08-06 11:50:01'),
(3, 0, 'About Us', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/about-us', 3, '', 1, '2021-08-06 11:50:04'),
(4, 3, 'Privacy', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/privacy', 3, '', 1, '2021-08-09 06:33:15'),
(7, 1, 'test', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/test', 1, '', 1, '2021-08-06 12:51:17'),
(8, 0, 'demo', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/demo', 2, '', 1, '2021-08-09 06:39:32'),
(9, 0, 'good', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/projectfront/good', 3, '', 1, '2021-08-09 07:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `ci_menu_items`
--

CREATE TABLE `ci_menu_items` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_item` text NOT NULL,
  `url` text NOT NULL,
  `menu_level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_menu_items`
--

INSERT INTO `ci_menu_items` (`id`, `parent_id`, `menu_item`, `url`, `menu_level`, `status`, `create_at`) VALUES
(1, 0, 'home', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/home', 1, 1, '2021-10-04 07:53:15'),
(3, 0, 'About us', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/about', 2, 1, '2021-08-12 10:59:18'),
(5, 0, 'About us', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/about-us-new-page', 1, 1, '2021-08-19 13:44:56'),
(6, 0, 'contact', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/frontendgetContactform', 1, 0, '2021-09-22 14:34:33'),
(7, 1, 'Custom Post', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/hi-custom-data-1', 1, 1, '2021-08-25 13:50:52'),
(8, 0, 'New contact', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/new-contact', 1, 0, '2021-08-19 13:40:41'),
(9, 0, 'privacy', 'Http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/privacy', 2, 1, '2021-08-23 10:10:12'),
(10, 3, 'test', '', 2, 1, '2021-08-24 06:36:02'),
(11, 0, 'website', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/contact-data', 3, 1, '2021-08-25 09:05:32'),
(12, 7, 'good', '', 1, 0, '2021-08-25 13:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `ci_menu_levels`
--

CREATE TABLE `ci_menu_levels` (
  `id` int(11) NOT NULL,
  `menu_name` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_menu_levels`
--

INSERT INTO `ci_menu_levels` (`id`, `menu_name`, `status`, `create_at`) VALUES
(1, 'Top menu', 1, '2021-08-12 10:55:01'),
(2, 'Bottom menu', 1, '2021-08-25 13:35:23'),
(3, 'top footer', 1, '2021-08-12 13:28:59'),
(4, 'last menu', 0, '2021-08-25 13:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `ci_options`
--

CREATE TABLE `ci_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_options`
--

INSERT INTO `ci_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'blogname', 'Wordpress123'),
(2, 'blogdescription', 'it soft'),
(3, 'siteurl', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/settings'),
(4, 'new_admin_email', 'citstestdev@gmail.com'),
(5, 'alternate_email', 'test@test.com'),
(6, 'default_role', 'administrator'),
(7, 'start_of_week', '1'),
(8, 'site_description', 'This is testing.'),
(9, 'site_address', 'indore,tilak nagar.'),
(10, 'site_phone', '9998877755'),
(11, 'site_faxnumber', '011220'),
(12, 'site_logo', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/siteIcon/resize-logo4.png'),
(13, 'site_facebook', '<a href=\"https://www.facebook.com/login/\" target=\"_blank\"><span style=\"float:right;color:#ffffff;margin: 10px 5px 10px 5px; font-size: 20px\"><i class=\"fab fa-facebook\"></i></span></a>'),
(14, 'site_twitter', ''),
(15, 'site_instagram', ' <a href=\"https://www.instagram.com/accounts/login/\" target=\"_blank\"><span style=\"float:right;color:#ffffff;margin: 10px 5px 10px 5px; font-size: 20px\"><i class=\"fab fa-instagram\"></i>&nbsp&nbsp</span></a>'),
(16, '_wc_menu_show', ''),
(17, '_social_media_show', 'on'),
(18, 'footer_copy_address', 'Copyright 2021 <a href=\"index.html\"> Conative IT Solutions Pvt. Ltd.</a>'),
(19, '_privacy_policy', '           <h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 70px; line-height: 90px; color: rgb(0, 0, 0); text-align: center;\"><span style=\"background-color: rgb(0, 255, 0);\">Lorem Ipsum</span></h1><h4 style=\"margin: 10px 10px 5px; padding: 0px; font-size: 14px; line-height: 18px; text-align: center; font-style: italic; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-size: 12px; line-height: 14px; text-align: center; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; clear: both; border-top: 0px; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"><div id=\"div-gpt-ad-1474537762122-2\" data-google-query-id=\"CNOIl_CI8vICFdXWcwEda0sL3Q\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745,22440292294/Lipsum-Unit3_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none; display: inline-block; width: 160px; height: 600px;\"><iframe frameborder=\"0\" src=\"https://45c283c372c94bffea1fe6b06a483fc5.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" id=\"google_ads_iframe_/15188745,22440292294/Lipsum-Unit3_0\" title=\"3rd party ad content\" name=\"\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" width=\"160\" height=\"600\" data-is-safeframe=\"true\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"3\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"><div id=\"div-gpt-ad-1474537762122-3\" data-google-query-id=\"CNSIl_CI8vICFdXWcwEda0sL3Q\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745,22440292294/Lipsum-Unit4_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none; display: inline-block; width: 160px; height: 600px;\"><iframe frameborder=\"0\" src=\"https://45c283c372c94bffea1fe6b06a483fc5.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" id=\"google_ads_iframe_/15188745,22440292294/Lipsum-Unit4_0\" title=\"3rd party ad content\" name=\"\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" width=\"160\" height=\"600\" data-is-safeframe=\"true\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"4\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div id=\"Panes\" style=\"margin: 15px 0px 0px; padding: 0px;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></div></div>                               \n                              \n          '),
(20, '_about_us', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); font-size: 24px; padding: 0px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; padding: 0px; text-align: justify;\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                               \n          '),
(21, '_primary_menu', '{\"menulistid\":\"1\",\"menu_name\":\"Top menu\",\"_primary_menu\":\"on\"}'),
(22, '_secondary_menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_options_09092021`
--

CREATE TABLE `ci_options_09092021` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_options_09092021`
--

INSERT INTO `ci_options_09092021` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'blogname', 'Wordpress12345'),
(2, 'blogdescription', 'it soft'),
(3, 'siteurl', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/Settings'),
(4, 'new_admin_email', 'citstestdev@gmail.com'),
(5, 'alternate_email', 'test@test.com'),
(6, 'default_role', 'administrator'),
(7, 'start_of_week', '1'),
(8, 'site_description', 'This is setting.'),
(9, 'site_address', 'indore,tilak nagar.'),
(10, 'site_phone', '9998877755'),
(11, 'site_faxnumber', '552233'),
(12, 'site_logo', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/siteIcon/resize-logo2.png'),
(13, 'site_facebook', '<a href=\"https://www.facebook.com/login/\" target=\"_blank\"><span style=\"float:right;color:#ffffff;margin: 10px 5px 10px 5px; font-size: 20px\"><i class=\"fab fa-facebook\"></i></span></a>'),
(14, 'site_twitter', '<a href=\"https://twitter.com/login?lang=en\" target=\"_blank\"><span style=\"float:right;color:#ffffff;margin: 10px 5px 10px 5px; font-size: 20px\"><i class=\"fab fa-twitter\"></i></i></span></a>'),
(15, 'site_instagram', ' <a href=\"https://www.instagram.com/accounts/login/\" target=\"_blank\"><span style=\"float:right;color:#ffffff;margin: 10px 5px 10px 5px; font-size: 20px\"><i class=\"fab fa-instagram\"></i>&nbsp&nbsp</span></a>'),
(16, '_wc_menu_show', 'on'),
(17, '_privacy_policy', '           <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b style=\"background-color: rgb(255, 0, 0);\">Lorem Ipsum</b> is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will look once a piece of content is finished, during the planning phase.</h2><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Filler text has been widely used for centuries, so most people are familiar with seeing Lorem Ipsum on a mock design. This means, when a designer sends their template to a client, they won’t get distracted by the copy on-page.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Read on to find out what Lorem Ipsum means, why we use it, and how to start creating Lorem Ipsum copy in your design.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; What is Lorem Ipsum?</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem Ipsum, sometimes referred to as ‘lipsum’, is the placeholder text used in design when creating content. It helps designers plan out where the content will sit, without needing to wait for the content to be written and approved.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; It originally comes from a Latin text, but to today’s reader, it’s seen as gibberish. This is the clever bit, as it helps show what on-page text will look like – without distracting from the main focus, the overall design.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Where is Lorem Ipsum used?</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Traditionally, Lorem Ipsum was used for specimen papers in the print industry. Then, as the industry developed, the text began to show up in transfer sheets and on word processors.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Today, the text can be used for any copy, both print and digital. This could include:</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Letter headings</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Product descriptions</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Brand bios</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Contact details</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Websites or link placements</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Calls to action hgfh</div>                    \n          '),
(18, '_about_us', '                                                                  <p style=\"text-align: center;\"><span style=\"background-color: rgb(255, 0, 0);\"><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"font-size: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">About Us Page</span></span><br></span></p><p></p><div style=\"text-align: center;\"><font color=\"#000000\"><span style=\"background-color: rgb(255, 156, 0);\" courier=\"\" new\";=\"\" background-color:=\"\" rgb(255,=\"\" 156,=\"\" 0);\"=\"\"><u><b>CONATIVE</b></u></span></font></div><div style=\"text-align: center;\"><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"font-size: 1rem; color: rgb(0, 0, 0);\">&nbsp;</span><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"font-size: 1rem; color: rgb(0, 0, 0);\">Some text about who we are and what we do.</span></div><div style=\"text-align: center;\"><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"font-size: 1rem; color: rgb(0, 0, 0);\">This is good conative.</span></div><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"color: rgb(0, 0, 0);\"><div style=\"text-align: center;\"><span courier=\"\" new\";=\"\" font-size:=\"\" 15px;\"=\"\" style=\"font-size: 1rem;\">&nbsp;&nbsp;</span></div></span><p></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><br></p><p><br></p>                    \n                              \n                              \n                              \n                              \n                              \n          '),
(23, '_primary_menu', '{\"menulistid\":\"1\",\"menu_name\":\"Top menu\",\"_primary_menu\":\"on\"}'),
(25, '_second_menu', ''),
(26, '_both_menu', ''),
(27, '_social_media_show', 'on'),
(28, 'footer_copy_address', 'Copyright © 2020-2021 Wordpress123. All rights reserved.2021');

-- --------------------------------------------------------

--
-- Table structure for table `ci_payment_tokens`
--

CREATE TABLE `ci_payment_tokens` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_postmeta`
--

CREATE TABLE `ci_postmeta` (
  `meta_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_postmeta`
--

INSERT INTO `ci_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'ci_template_content', 'default.php'),
(5, 5, 'ci_template_content', 'default.php'),
(6, 1, 'description', 'This is short description....'),
(7, 5, 'description', ''),
(8, 1, 'achievement_title', 'Achievement'),
(9, 1, 'achievement_short', 'Over 1300+ completed work & Still Counting.'),
(10, 1, 'achievement_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into'),
(11, 1, 'achievement_clients', '750+ Happy Clients'),
(12, 1, 'achievement_member', '12k Working Hours'),
(13, 1, 'achievement_projects', '2k+ Projects'),
(14, 1, 'achievement_working', '40 Team Members'),
(15, 1, 'quick_process', 'Quick & Easy Process'),
(16, 1, 'quick_process_description', '40,000 businesses have already chosen the trading system What about you?'),
(17, 46, 'site_email', 'citstestdev@gmail.com'),
(18, 46, 'from_email', ''),
(19, 46, 'to_email', ''),
(20, 46, 'message_email', 'Email send successfully your a email.'),
(21, 46, 'email_body', ''),
(22, 46, 'admin_email_check', 'on'),
(23, 46, 'subject', 'Contact person');

-- --------------------------------------------------------

--
-- Table structure for table `ci_postmeta_03082021`
--

CREATE TABLE `ci_postmeta_03082021` (
  `meta_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_postmeta_03082021`
--

INSERT INTO `ci_postmeta_03082021` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'ci_template_contant', 'default.php'),
(2, 2, 'ci_template_contant', 'default.php'),
(3, 4, 'ci_template_contant', 'custom.php'),
(4, 5, 'ci_template_contant', 'simple.php'),
(5, 6, 'ci_template_contant', 'custom.php'),
(6, 8, 'from_email', 'ahello@ahello.com'),
(7, 8, 'message_email', 'Email send successfully your a email inside inbox.  '),
(8, 9, 'ci_template_contant', 'default.php'),
(9, 10, 'ci_template_contant', 'default.php'),
(10, 11, 'ci_template_contant', 'default.php'),
(11, 12, 'ci_template_contant', 'default.php'),
(12, 13, 'ci_template_contant', 'default.php'),
(13, 14, 'ci_template_contant', 'default.php'),
(14, 15, 'from_email', 'last1@last.com'),
(15, 15, 'message_email', 'Last Email send  a successfully.'),
(16, 16, 'ci_template_contant', 'custom.php'),
(17, 23, 'ci_template_contant', 'custom.php'),
(18, 24, 'ci_template_contant', 'simple.php');

-- --------------------------------------------------------

--
-- Table structure for table `ci_postmeta_22092021`
--

CREATE TABLE `ci_postmeta_22092021` (
  `meta_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_postmeta_22092021`
--

INSERT INTO `ci_postmeta_22092021` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'ci_template_content', 'custom.php'),
(3, 7, 'short_description', 'This is Contact description h'),
(5, 7, 'ci_template_content', 'custom.php'),
(16, 1, 'short_description', 'ghj hvgh'),
(23, 11, 'short_description', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... h ..\" \r\n'),
(26, 11, 'ci_template_content', 'about_us_tem.php'),
(57, 20, 'short_description', 'This is short description.'),
(59, 20, 'ci_template_content', 'custom.php'),
(60, 23, 'short_description', 'This is short description'),
(63, 23, 'ci_template_content', 'default.php'),
(64, 24, 'short_description', 'dfd fddf'),
(66, 24, 'ci_template_content', 'custom.php'),
(67, 25, 'short_description', 'vbnfghb fghf 1'),
(69, 25, 'ci_template_content', 'default.php'),
(72, 26, 'short_description', 'short description.'),
(74, 26, 'ci_template_content', '404page.php'),
(75, 27, 'short_description', 'Short work.'),
(77, 27, 'ci_template_content', 'custom.php'),
(80, 29, 'short_description', ''),
(82, 29, 'ci_template_content', 'default.php'),
(85, 31, 'short_description', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... h ..\" \r\n'),
(87, 31, 'ci_template_content', 'default.php'),
(90, 33, 'short_description', 'This is short description.'),
(92, 33, 'ci_template_content', 'default.php'),
(96, 60, 'apost_other', ''),
(97, 60, 'heading_title', ''),
(99, 67, 'apost_other', 'ss'),
(100, 67, 'heading_title', ''),
(102, 68, 'apost_other', 'hildf fdsmdsf fgf'),
(103, 68, 'heading_title', 'good post fdfsa fdg'),
(105, 69, 'apost_other', 'fgdf fgdgfd'),
(106, 69, 'heading_title', ''),
(108, 70, 'apost_other', 'good post 1'),
(109, 70, 'heading_title', 'any post1 '),
(111, 11, 'hi_o_page', 'about'),
(112, 78, 'sample_post', '55'),
(113, 84, 'hello_cust', '58'),
(114, 85, 'hi_baba', ''),
(115, 91, 'last_description', 'fd fgdg fghhhhhhhhhhh'),
(118, 95, 'apost_other', 'fghfg1'),
(119, 95, 'heading_title', '1hn'),
(120, 96, 'hello_cus', ''),
(121, 98, 'hello_cus', '5'),
(124, 103, 'apost_other', 'hi'),
(125, 103, 'heading_title', 'good 14'),
(128, 104, 'apost_other', ''),
(129, 104, 'heading_title', ''),
(131, 105, 'apost_other', 'hello3'),
(132, 105, 'heading_title', 'hello5'),
(134, 106, 'apost_other', ''),
(135, 106, 'heading_title', ''),
(137, 107, 'apost_other', ''),
(138, 107, 'heading_title', ''),
(140, 108, 'apost_other', ''),
(141, 108, 'heading_title', ''),
(143, 109, 'apost_other', ''),
(144, 109, 'heading_title', ''),
(146, 110, 'apost_other', ''),
(147, 110, 'heading_title', ''),
(149, 111, 'apost_other', ''),
(150, 111, 'heading_title', ''),
(152, 112, 'apost_other', ''),
(153, 112, 'heading_title', ''),
(155, 113, 'apost_other', ''),
(156, 113, 'heading_title', ''),
(158, 114, 'apost_other', ''),
(159, 114, 'heading_title', ''),
(161, 115, 'apost_other', ''),
(162, 115, 'heading_title', ''),
(164, 116, 'apost_other', ''),
(165, 116, 'heading_title', ''),
(167, 117, 'apost_other', ''),
(168, 117, 'heading_title', ''),
(170, 118, 'apost_other', ''),
(171, 118, 'heading_title', 'hi a'),
(173, 121, 'apost_other', '2 cat'),
(174, 121, 'heading_title', '3 cat'),
(207, 132, 'site_email', 'test@test.com'),
(208, 132, 'from_email', ''),
(209, 132, 'to_email', 'test@test.com,demo@demo.com,good@good.com'),
(210, 132, 'message_email', 'Email send successfully1.'),
(211, 132, 'thanks_message', 'Thanks1'),
(212, 132, 'admin_email_check', 'on'),
(213, 133, 'site_email', 'citstestdev@gmail.com'),
(214, 133, 'from_email', ''),
(215, 133, 'to_email', 'ramashankarsinghtomar@conative.in,citstestdev@gmail.com'),
(216, 133, 'message_email', 'Email send successfully to your email.'),
(217, 133, 'email_body', '<h1>body</h1>'),
(218, 133, 'admin_email_check', 'on'),
(220, 25, 'hi_o_page', ''),
(223, 33, 'hi_o_page', 'hii pageee'),
(244, 27, 'hi_o_page', ''),
(247, 26, 'hi_o_page', ''),
(249, 133, 'subject', 'This contact student'),
(257, 132, 'subject', 'This is test'),
(258, 134, 'apost_other', '31postother'),
(259, 134, 'heading_title', '31gooddf'),
(260, 136, 'custom_image', 'fax31.png'),
(261, 136, 'apost_other', 'dfsdf'),
(262, 136, 'heading_title', 'fdsfdsf'),
(263, 137, 'custom_image', 'fax3.png'),
(264, 137, 'apost_other', 'fdgfdg'),
(265, 137, 'heading_title', 'fdgdfg'),
(266, 138, 'custom_image', 'fax3.png'),
(267, 138, 'apost_other', 'hfghfg'),
(268, 138, 'heading_title', 'gfhbgf'),
(269, 139, 'custom_image', 'fax31.png'),
(270, 139, 'apost_other', 'helllooo'),
(271, 139, 'heading_title', 'gooooddd'),
(272, 142, 'apost_other', 'fghfghfg'),
(273, 142, 'heading_title', 'fghfgh'),
(274, 143, 'apost_other', '3 image'),
(275, 143, 'heading_title', 'Lorem Ipsum'),
(282, 140, 'apost_other', ''),
(283, 140, 'heading_title', ''),
(286, 1, 'hi_o_page', ''),
(288, 69, 'check_box', 'checkbox value'),
(289, 153, 'apost_other', ''),
(290, 153, 'heading_title', ''),
(291, 153, 'check_box', ''),
(292, 154, 'apost_other', ''),
(293, 154, 'heading_title', ''),
(294, 154, 'check_box', ''),
(295, 134, 'check_box', ''),
(406, 186, '_short_description', 'This is good short..'),
(407, 186, '_sku', '8000'),
(408, 186, '_regular_price', '40'),
(409, 186, '_sale_price', '20'),
(410, 186, '_stock', 'instock'),
(411, 187, '_short_description', 'This good simple product data...'),
(412, 187, '_sku', '7000'),
(413, 187, '_regular_price', '11'),
(414, 187, '_sale_price', '9'),
(415, 187, '_stock', 'instock'),
(416, 188, '_short_description', 'Thi is good data'),
(417, 188, '_sku', ''),
(418, 188, '_regular_price', ''),
(419, 188, '_sale_price', ''),
(420, 188, '_stock', ''),
(421, 189, '_short_description', 'This is short description...'),
(422, 189, '_sku', ''),
(423, 189, '_regular_price', ''),
(424, 189, '_sale_price', ''),
(425, 189, '_stock', ''),
(442, 202, '_short_description', 'This is good product..'),
(443, 202, '_sku', '4002'),
(444, 202, '_regular_price', '15'),
(445, 202, '_sale_price', '10'),
(446, 202, '_stock', 'instock'),
(447, 203, '_short_description', ''),
(457, 206, '_short_description', ''),
(458, 206, '_sku', ''),
(459, 206, '_regular_price', ''),
(460, 206, '_sale_price', ''),
(461, 206, '_stock', ''),
(462, 207, '_short_description', ''),
(463, 207, '_sku', ''),
(464, 207, '_regular_price', ''),
(465, 207, '_sale_price', ''),
(466, 207, '_stock', ''),
(467, 208, '_short_description', ''),
(468, 208, '_sku', ''),
(469, 208, '_regular_price', ''),
(470, 208, '_sale_price', ''),
(471, 208, '_stock', ''),
(472, 209, '_short_description', 'This is good....'),
(473, 209, '_sku', ''),
(474, 209, '_regular_price', ''),
(475, 209, '_sale_price', ''),
(476, 209, '_stock', ''),
(477, 211, 'apost_other', 'Apost'),
(478, 211, 'heading_title', 'Heading title  |  '),
(479, 211, 'check_box', ''),
(480, 211, 'test', ''),
(481, 212, '_short_description', 'good'),
(482, 212, '_sku', '400011'),
(483, 212, '_regular_price', '15'),
(484, 212, '_sale_price', '9'),
(485, 212, '_stock', 'instock'),
(486, 214, '_short_description', ''),
(487, 214, '_sku', '450000'),
(488, 214, '_regular_price', ''),
(489, 214, '_sale_price', ''),
(490, 214, '_stock', ''),
(491, 215, '_short_description', 'good part...'),
(492, 215, '_sku', '500022'),
(493, 215, '_regular_price', '70'),
(494, 215, '_sale_price', '30'),
(495, 215, '_stock', 'instock'),
(496, 216, '_short_description', 'This is good hello india product.. short'),
(497, 216, '_sku', '500202'),
(498, 216, '_regular_price', '60'),
(499, 216, '_sale_price', '20'),
(500, 216, '_stock', 'instock'),
(501, 217, '_short_description', 'hello india'),
(502, 217, '_sku', ''),
(503, 217, '_regular_price', ''),
(504, 217, '_sale_price', ''),
(505, 217, '_stock', ''),
(506, 31, 'title_block', 'test title block'),
(507, 220, 'short_description', ''),
(508, 220, 'title_block', ''),
(509, 220, 'new_field007', ''),
(510, 222, 'short_description', ''),
(511, 222, 'title_block', ''),
(512, 222, 'new_field007', ''),
(513, 222, 'test_one_field_008', ''),
(514, 224, 'apost_other', ''),
(515, 224, 'heading_title', ''),
(516, 224, 'check_box', ''),
(517, 224, 'test', ''),
(518, 224, 'common_post_title', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_posts`
--

CREATE TABLE `ci_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date_gmt` datetime NOT NULL,
  `post_content` longtext NOT NULL,
  `post_description` text NOT NULL,
  `product_type` text NOT NULL,
  `product_image` text NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `text_data` text NOT NULL,
  `number_data` text NOT NULL,
  `textarea_data` text NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_password` varchar(255) NOT NULL,
  `post_name` varchar(200) NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_modified_gmt` datetime NOT NULL,
  `post_parent` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `post_type` varchar(55) NOT NULL,
  `post_mime_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_posts`
--

INSERT INTO `ci_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_description`, `product_type`, `product_image`, `post_title`, `post_excerpt`, `text_data`, `number_data`, `textarea_data`, `post_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `post_type`, `post_mime_type`) VALUES
(1, 1, '2021-10-04 13:06:24', '0000-00-00 00:00:00', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><font color=\"#333333\" face=\"Lato, sans-serif\"></font></p><p><font color=\"#333333\" face=\"Lato, sans-serif\">It is a long established fact that a reader will be distracted by</font></p><p><font color=\"#333333\" face=\"Lato, sans-serif\">readable content of a page when looking at its layout.</font></p><br><p></p>', '', '', '', 'We Believe In<br><span>Innovation</span>', '', '', '', '', 'publish', '', 'home', '2021-10-07 03:31:02', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/1', 'page', 'banner.png'),
(5, 1, '2021-10-04 13:31:51', '0000-00-00 00:00:00', 'This is good page..<br>', '', '', '', 'About', '', '', '', '', 'publish', '', 'about', '2021-10-04 01:34:17', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/5', 'page', ''),
(6, 1, '2021-10-04 13:32:57', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Description', 'description', '', '', '', 'publish', '', 'field_211004013257', '2021-10-04 13:32:57', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/6', 'acf-field-page', ''),
(7, 1, '2021-10-04 14:44:29', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Gallery', 'gallery', '', '', '', 'publish', '', 'field_211004024429', '2021-10-04 14:44:29', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/7', 'acf-field-page', ''),
(8, 1, '2021-10-04 14:49:00', '0000-00-00 00:00:00', '<span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The </span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Lorem ipsum</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> text is derived from sections 1.10.32 and 1.10.33 of Cicero\'s </span><i lang=\"la\" title=\"Latin-language text\" style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">\'De finibus bonorum et malorum\'</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.</span><sup id=\"cite_ref-Microsoft_7-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-Microsoft-7\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup><sup id=\"cite_ref-cicero_archive_org_8-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-cicero_archive_org-8\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> The physical source may have been the 1914 </span><a href=\"https://en.wikipedia.org/wiki/Loeb_Classical_Library\" title=\"Loeb Classical Library\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Loeb Classical Library</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> edition of </span><i lang=\"la\" title=\"Latin-language text\" style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">De finibus</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, where the Latin text, presented on the left-hand (even) pages, breaks off on page 34 with \"</span><i lang=\"la\" title=\"Latin-language text\" style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Neque porro quisquam est qui do-</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">\" and continues on page 36 with \"</span><i lang=\"la\" title=\"Latin-language text\" style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">lorem ipsum<span class=\"nowrap\" style=\"white-space: nowrap;\"> </span>...</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">\", suggesting that the </span><a href=\"https://en.wikipedia.org/wiki/Galley_proof\" title=\"Galley proof\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">galley type</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> of that page was mixed up to make the dummy text seen today.</span><sup id=\"cite_ref-Cibois_1-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-Cibois-1\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>', '', '', '', 'News', '', '', '', '', 'publish', '', 'news', '2021-10-07 03:20:14', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/8', 'post', 'portfolio192.png'),
(9, 1, '2021-10-04 14:49:15', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Other', 'other', '', '', '', 'publish', '', 'field_211004024915', '2021-10-04 14:49:15', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/9', 'acf-field-post', ''),
(19, 1, '2021-10-06 16:36:09', '0000-00-00 00:00:00', 'We offer unique and secure web application development solutions needs.', '', '', '', 'Web Development', '', '', '', '', 'publish', '', 'web-development', '2021-10-06 08:19:51', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/service/19', 'service', 'wd.png'),
(20, 1, '2021-10-06 16:36:42', '0000-00-00 00:00:00', 'We offer unique and secure web application development solutions needs.', '', '', '', 'UI / UX Designing', '', '', '', '', 'publish', '', 'ui-/-ux-designing', '2021-10-06 05:42:02', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/service/20', 'service', 'ux.png'),
(21, 1, '2021-10-06 16:37:02', '0000-00-00 00:00:00', 'We offer unique and secure web application development solutions needs.', '', '', '', 'Mobile Development', '', '', '', '', 'publish', '', 'mobile-development', '2021-10-06 05:41:47', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/service/21', 'service', 'mob.png'),
(22, 1, '2021-10-06 16:37:22', '0000-00-00 00:00:00', 'We offer unique and secure web application development solutions needs.', '', '', '', 'Digital Marketing', '', '', '', '', 'publish', '', 'digital-marketing', '2021-10-06 05:41:34', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/service/22', 'service', 'Dm.png'),
(23, 1, '2021-10-06 19:51:36', '0000-00-00 00:00:00', '<span style=\"color: rgb(35, 61, 99); font-family: metropolismedium; font-size: 18px;\">IOS, Design</span>', '', '', '', 'Creative Agency', '', '', '', '', 'publish', '', 'creative-agency', '2021-10-07 03:33:33', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/23', 'some-best-work', 'portfolio1.png'),
(24, 1, '2021-10-06 19:56:34', '0000-00-00 00:00:00', '<span style=\"color: rgb(35, 61, 99); font-family: metropolismedium; font-size: 18px;\">Branding</span>', '', '', '', 'E-commerce', '', '', '', '', 'publish', '', 'e-commerce', '2021-10-07 03:34:03', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/24', 'some-best-work', 'portfolio2.png'),
(25, 1, '2021-10-06 19:57:19', '0000-00-00 00:00:00', '<span style=\"color: rgb(35, 61, 99); font-family: metropolismedium; font-size: 18px;\">Web application</span>', '', '', '', 'Website Design', '', '', '', '', 'publish', '', 'website-design', '2021-10-07 03:35:30', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/25', 'some-best-work', 'portfolio3.png'),
(26, 1, '2021-10-06 19:59:58', '0000-00-00 00:00:00', 'Branding, Design', '', '', '', 'Landing page Design', '', '', '', '', 'publish', '', 'landing-page-design', '2021-10-07 03:34:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/26', 'some-best-work', 'portfolio4.png'),
(27, 1, '2021-10-06 20:00:29', '0000-00-00 00:00:00', 'Branding', '', '', '', 'T-Shirt Design', '', '', '', '', 'publish', '', 't-shirt-design', '2021-10-07 03:34:51', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/27', 'some-best-work', 'portfolio5.png'),
(28, 1, '2021-10-06 20:04:07', '0000-00-00 00:00:00', 'Branding', '', '', '', 'Web  Development', '', '', '', '', 'publish', '', 'web--development', '2021-10-07 03:35:51', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/some-best-work/28', 'some-best-work', 'portfolio6.png'),
(29, 1, '2021-10-07 11:47:00', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_title', 'achievement_title', '', '', '', 'publish', '', 'field_211007114700', '2021-10-07 11:47:00', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/29', 'acf-field-page', ''),
(30, 1, '2021-10-07 11:49:27', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_short', 'achievement_short', '', '', '', 'publish', '', 'field_211007114927', '2021-10-07 11:49:27', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/30', 'acf-field-page', ''),
(31, 1, '2021-10-07 11:49:53', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_description', 'achievement_description', '', '', '', 'publish', '', 'field_211007114953', '2021-10-07 11:49:53', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/31', 'acf-field-page', ''),
(32, 1, '2021-10-07 11:51:11', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_clients', 'achievement_clients', '', '', '', 'publish', '', 'field_211007115111', '2021-10-07 11:51:11', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/32', 'acf-field-page', ''),
(33, 1, '2021-10-07 11:51:24', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_member', 'achievement_member', '', '', '', 'publish', '', 'field_211007115124', '2021-10-07 11:51:24', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/33', 'acf-field-page', ''),
(34, 1, '2021-10-07 11:51:38', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_projects', 'achievement_projects', '', '', '', 'publish', '', 'field_211007115138', '2021-10-07 11:51:38', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/34', 'acf-field-page', ''),
(35, 1, '2021-10-07 11:51:53', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'achievement_working', 'achievement_working', '', '', '', 'publish', '', 'field_211007115153', '2021-10-07 11:51:53', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/35', 'acf-field-page', ''),
(36, 1, '2021-10-07 12:23:54', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process', 'quick_process', '', '', '', 'publish', '', 'field_211007122354', '2021-10-07 12:23:54', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/36', 'acf-field-page', ''),
(37, 1, '2021-10-07 12:24:24', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_description', 'quick_process_description', '', '', '', 'publish', '', 'field_211007122424', '2021-10-07 12:24:24', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/37', 'acf-field-page', ''),
(38, 1, '2021-10-07 12:25:23', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_psd', 'quick_process_psd', '', '', '', 'publish', '', 'field_211007122523', '2021-10-07 12:25:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/38', 'acf-field-page', ''),
(39, 1, '2021-10-07 12:25:47', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_adobe', 'quick_process_adobe', '', '', '', 'publish', '', 'field_211007122547', '2021-10-07 12:25:47', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/39', 'acf-field-page', ''),
(40, 1, '2021-10-07 12:26:17', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_figma', 'quick_process_figma', '', '', '', 'publish', '', 'field_211007122617', '2021-10-07 12:26:17', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/40', 'acf-field-page', ''),
(41, 1, '2021-10-07 12:26:55', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_android', 'quick_process_android', '', '', '', 'publish', '', 'field_211007122655', '2021-10-07 12:26:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/41', 'acf-field-page', ''),
(42, 1, '2021-10-07 12:27:18', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_wp', 'quick_process_wp', '', '', '', 'publish', '', 'field_211007122718', '2021-10-07 12:27:18', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/42', 'acf-field-page', ''),
(43, 1, '2021-10-07 12:27:32', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_html', 'quick_process_html', '', '', '', 'publish', '', 'field_211007122732', '2021-10-07 12:27:32', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/43', 'acf-field-page', ''),
(44, 1, '2021-10-07 12:27:54', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_angular', 'quick_process_angular', '', '', '', 'publish', '', 'field_211007122754', '2021-10-07 12:27:54', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/44', 'acf-field-page', ''),
(45, 1, '2021-10-07 12:28:25', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'quick_process_bootstrap', 'quick_process_bootstrap', '', '', '', 'publish', '', 'field_211007122825', '2021-10-07 12:28:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/45', 'acf-field-page', ''),
(46, 1, '2021-10-07 13:40:46', '0000-00-00 00:00:00', '<p class=\"feild50\">\r\n		<label for=\"name\">Name*</label><br>\r\n		<input type=\"text\" id=\"your-name\" name=\"your-name\" placeholder=\"Enter your name\" required=\"\">\r\n	</p>\r\n	<p class=\"feild50\">\r\n		<label for=\"email\">Email*</label><br>\r\n		<input type=\"email\"  id=\"your-email\" name=\"your-email\" placeholder=\"Enter your email\" required=\"\">\r\n	</p>\r\n	<p>\r\n		<label for=\"subject\">Subject</label><br>\r\n		<input type=\"text\" id=\"subject\" name=\"subject\" placeholder=\"Subject here\">\r\n	</p>\r\n	<p>\r\n		<label for=\"messages\" >Messages*</label><br>\r\n		<textarea placeholder=\"Your Message Here...\" name=\"your-message\" id=\"your-message\" > </textarea>\r\n	</p>\r\n	<p>\r\n	</p>', '', '', '', 'Need a help? Don\'t worry 	     just contact us.', '', '', '', '', 'publish', '', 'need-a-help?-don\'t-worry-	-----just-contact-us.', '2021-10-07 13:40:46', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_posts_03082021`
--

CREATE TABLE `ci_posts_03082021` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date_gmt` datetime NOT NULL,
  `post_content` longtext NOT NULL,
  `post_description` text NOT NULL,
  `product_type` text NOT NULL,
  `product_image` text NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `text_data` text NOT NULL,
  `number_data` text NOT NULL,
  `textarea_data` text NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_password` varchar(255) NOT NULL,
  `post_name` varchar(200) NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_modified_gmt` datetime NOT NULL,
  `post_parent` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `post_type` varchar(55) NOT NULL,
  `post_mime_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_posts_03082021`
--

INSERT INTO `ci_posts_03082021` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_description`, `product_type`, `product_image`, `post_title`, `post_excerpt`, `text_data`, `number_data`, `textarea_data`, `post_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `post_type`, `post_mime_type`) VALUES
(1, 1, '2021-07-31 20:27:26', '0000-00-00 00:00:00', '', '', '', '', 'hello', '', '', '', '', '', '', 'hello', '2021-07-31 20:27:26', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/1', 'page', ''),
(2, 1, '2021-07-31 20:28:55', '0000-00-00 00:00:00', 'description23456', '', '', '', 'test123456', '', '', '', '', '', '', 'test123456', '2021-07-31 20:28:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/2', 'page', ''),
(3, 101, '2021-08-02 10:21:56', '0000-00-00 00:00:00', 'test', '', '', '', 'test', '', '', '', '', 'publish', '', 'test', '2021-08-02 10:21:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(4, 1, '2021-08-02 11:44:53', '0000-00-00 00:00:00', 'This is content', '', '', '', 'hello', '', '', '', '', '', '', 'hello-1', '2021-08-02 11:44:53', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/4', 'page', 'Kids-First-Trace.jpg'),
(5, 1, '2021-08-02 11:45:25', '0000-00-00 00:00:00', '', '', '', '', 'Contract', '', '', '', '', '', '', 'contract', '2021-08-02 11:45:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/5', 'page', ''),
(6, 1, '2021-08-02 12:19:03', '0000-00-00 00:00:00', 'This is last contant', '', '', '', 'Last', '', '', '', '', '', '', 'last', '2021-08-02 12:19:03', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/6', 'page', ''),
(7, 101, '2021-08-02 12:26:38', '0000-00-00 00:00:00', '<input ', '', '', '', 'hello', '', '', '', '', 'publish', '', 'hello', '2021-08-02 12:26:38', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(8, 101, '2021-08-02 12:30:56', '0000-00-00 00:00:00', '<input  type=\"text\" name=\"in\">', '', '', '', 'hello 1', '', '', '', '', 'publish', '', 'hello-1', '2021-08-02 12:30:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(9, 1, '2021-08-02 12:57:13', '0000-00-00 00:00:00', '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><h2 style=\"color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><b>What is Lorem Ipsum?</b></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"color: rgb(0, 0, 0); margin: 0px; padding: 0px;\">Lorem Ipsum</strong><font color=\"#000000\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of <span style=\"background-color: rgb(255, 0, 0);\">Lorem Ipsum.</span></font></p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><span style=\"background-color: rgb(0, 0, 255);\">Why do we use it?</span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div>', '', '', '', 'About us', '', '', '', '', '', '', 'about-us-1', '2021-08-02 12:57:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/9', 'page', ''),
(10, 1, '2021-08-02 13:02:40', '0000-00-00 00:00:00', '<p>This&nbsp;</p><h1><ol><li><br></li></ol></h1><table class=\"table table-bordered\"><tbody><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><h1><ol><li><br></li></ol></h1>', '', '', '', 'India', '', '', '', '', '', '', 'india', '2021-08-02 13:02:40', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/10', 'page', '');
INSERT INTO `ci_posts_03082021` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_description`, `product_type`, `product_image`, `post_title`, `post_excerpt`, `text_data`, `number_data`, `textarea_data`, `post_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `post_type`, `post_mime_type`) VALUES
(11, 1, '2021-08-02 13:03:34', '0000-00-00 00:00:00', '<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAYAAADafVyIAAAACXBIWXMAAAsTAAALEwEAmpwYAAAF8WlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0NDg4LCAyMDIwLzA3LzEwLTIyOjA2OjUzICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgMjIuMCAoV2luZG93cykiIHhtcDpDcmVhdGVEYXRlPSIyMDIxLTA2LTMwVDExOjQxOjAzKzA1OjMwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAyMS0wNi0zMFQxMTo0MTo1MiswNTozMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAyMS0wNi0zMFQxMTo0MTo1MiswNTozMCIgZGM6Zm9ybWF0PSJpbWFnZS9wbmciIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1YTkxZDAyNy1iNmZhLWE1NDMtYjU0ZS1iMjcwYTRlZTBkNTMiIHhtcE1NOkRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDowNGViYmRlYi04NWUyLTFmNGItYWRlNC0wZWQ1MGQ5ODk3OWMiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo2YzA2MTk4YS0zNzAxLWNhNGItYTFkOS1iYTE4YThlNWEzNDgiPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjcmVhdGVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjZjMDYxOThhLTM3MDEtY2E0Yi1hMWQ5LWJhMThhOGU1YTM0OCIgc3RFdnQ6d2hlbj0iMjAyMS0wNi0zMFQxMTo0MTowMyswNTozMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIDIyLjAgKFdpbmRvd3MpIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo1YTkxZDAyNy1iNmZhLWE1NDMtYjU0ZS1iMjcwYTRlZTBkNTMiIHN0RXZ0OndoZW49IjIwMjEtMDYtMzBUMTE6NDE6NTIrMDU6MzAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyMi4wIChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz56AWc1AAABYElEQVRIie3VO0gdURDG8Z8ar4UGfIAaRIidjYWtlZW1ggarC2lC+jQxIIIiKIIWNtZiZ2sdSCFibRsIgUB8hfgoJKRYi7PictiHXLhWTnN25pud/5zZPbstSZJoprU2tfpzAF5lndN6PdanMJ9z3x5u8RpfY3FwdzcfkGPv8D4nfoxurGECR0UFqgDnBfEE6zjBRVmBKkCRfUY/fmIA3xsFDBTER7CSXn/DZKOABRxU5ByXiXmADx47P5M/45rwHBLMoDeNX2InjecClrFY0XGVDeNLEWDsiUVWhF324hBbGW00mxgDbp4IyO5yNtJuywBdkf9LGNtdFH94BjUs4U1G6ywD/Ij8cQxhEB2R9g9/hJFcR00VAhbwV5jvb2FkpSc17fgT3gpv0UYZ4D9WM35fuu7jY5S7hbrwTdosolcdtLZ0ncN0pLVHOQ0BrrEt7KQn0q6EcV6WFWh5+WVW2T1qI0BufAgsAQAAAABJRU5ErkJggg==\" style=\"width: 24px;\" data-filename=\"fax.png\">                                            <img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMMAAADOCAYAAACD4bZ0AAAACXBIWXMAAAsTAAALEwEAmpwYAAALUGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0NDg4LCAyMDIwLzA3LzEwLTIyOjA2OjUzICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIyLjAgKFdpbmRvd3MpIiB4bXA6Q3JlYXRlRGF0ZT0iMjAyMS0wNS0wNlQxMDoyNzozOSswNTozMCIgeG1wOk1vZGlmeURhdGU9IjIwMjEtMDYtMzBUMTE6MTI6NDArMDU6MzAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMjEtMDYtMzBUMTE6MTI6NDArMDU6MzAiIGRjOmZvcm1hdD0iaW1hZ2UvcG5nIiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0ic1JHQiBJRUM2MTk2Ni0yLjEiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MWJmZjAyZTQtYWMzYy1hNzRmLWI4MDYtYTE2YjJmZDVhOTQxIiB4bXBNTTpEb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6ODM4OWE0N2QtMGU4Zi1hOTRlLThjNDMtZjQ4NGE0ZDdmMGQ0IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6Zjk0MTU2MDktZjYzYi0xZjQ0LWIzNDEtMGEwOGE3ZmM5ZGE3Ij4gPHBob3Rvc2hvcDpEb2N1bWVudEFuY2VzdG9ycz4gPHJkZjpCYWc+IDxyZGY6bGk+YWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmMxNmI3ZDFjLTNmNTctZmE0Mi1iYWZmLWVhODFhNzU3MzA5NjwvcmRmOmxpPiA8L3JkZjpCYWc+IDwvcGhvdG9zaG9wOkRvY3VtZW50QW5jZXN0b3JzPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjcmVhdGVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOmY5NDE1NjA5LWY2M2ItMWY0NC1iMzQxLTBhMDhhN2ZjOWRhNyIgc3RFdnQ6d2hlbj0iMjAyMS0wNS0wNlQxMDoyNzozOSswNTozMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIDIyLjAgKFdpbmRvd3MpIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjb252ZXJ0ZWQiIHN0RXZ0OnBhcmFtZXRlcnM9ImZyb20gaW1hZ2UvcG5nIHRvIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AiLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjE0ZjgwZTk5LWM1NTktY2U0NC1iZWZhLWM0NGQwOTViZjBjNiIgc3RFdnQ6d2hlbj0iMjAyMS0wNS0wNlQxMDoyOTowOCswNTozMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIDIyLjAgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo4Y2ExMjU2OS0zNDcwLTQ5NDAtYmZmMC1kZjVlZjExNzY0M2IiIHN0RXZ0OndoZW49IjIwMjEtMDUtMDZUMTA6Mjk6MTUrMDU6MzAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyMi4wIChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AgdG8gaW1hZ2UvcG5nIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJjb252ZXJ0ZWQgZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL3BuZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MDQ0YjM1NGItZjFkOC03ZDQ0LWFmYTYtODQ4YTAwOGQwNzAwIiBzdEV2dDp3aGVuPSIyMDIxLTA1LTA2VDEwOjI5OjE1KzA1OjMwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgMjIuMCAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjFiZmYwMmU0LWFjM2MtYTc0Zi1iODA2LWExNmIyZmQ1YTk0MSIgc3RFdnQ6d2hlbj0iMjAyMS0wNi0zMFQxMToxMjo0MCswNTozMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIDIyLjAgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDwvcmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5PiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo4Y2ExMjU2OS0zNDcwLTQ5NDAtYmZmMC1kZjVlZjExNzY0M2IiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Zjk0MTU2MDktZjYzYi0xZjQ0LWIzNDEtMGEwOGE3ZmM5ZGE3IiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6Zjk0MTU2MDktZjYzYi0xZjQ0LWIzNDEtMGEwOGE3ZmM5ZGE3Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+BGNPmwAAbqZJREFUeJztnXWcXNXZx7/nyujOuiXZuDuBBALBIbi7u5XiUAotUtpihUKxoi1uBRJCsYQQgoRAlBgR4qtZ3/GZK+f9487sbpQQIZu+88vnZmavnHvunfM753me85znEVJKMsggA1B2dQUyyKCjIEOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIIUOGDDJIQdvVFdgcwtEYIFAEIMD5ECDELyrHOV0gUtelL28rRbT+IVj/4KbvJBCKwLIsovEkUkoUxSnDtiShWJxY0nDbNn0TSaOfRPYRitJdQJkQokgIkasoSraiKB5VES5FESiKYitCSSiKiAohWhRFNCqKUqMIUSGEWKUoYpkQYpkiKBfCeRYl9Zl+PqtdZWXrf6kvG6zfku02gICqoP6it/q/iQ5Lho4ORYBHV7FtSSSeKAhGYvuEY4n9o4nEGNOy9wCyFUVF0wSKoqApCqqioKgKCqQ2BV1T8Lg0VKGiKDgNPXWewGnsiiLS31cIxCwQXynwLfBDmgMxwJJyMwTOYGsgOuqyz448MijOyFBWXtd8QH1L6PhwNH5gwjS7gEDXVDRNQ1MEqqpaqiosIRSpCoFQFBQhbFXXoi7dFVeFzIonElnBWDIKwsryutxuXdMVJd3rCxQhhKoqqhACNT0aKEr6+zwhmAziwyy39o0EM57+PTMjwy9Ghgy/gAwCFKEol8dNe7+qmCWawvFuti1duqY2KKraIiVJKZGWlNg2SCmxbDCltCRKTFHVuCrwWMlEaSwa65qIRftEI7G86uZIc0VDqLa6MdzYFEmEFUUIn1tz+90uze3ScLl06XapuHUNt67hcmmqR1e9Ll0rcOtqACEaepbkrNi3d/FilxDvhqScJjJk+MXIkGHryFCiCC5HcE3QILcmZn9jSbncpammLbFt22n0trSxbUdcMS0sS8qYqmoJVREeK2mUxKKxsnA43DMSjnRLJJIuCeiqhsetY9s29cFotLwhVFtRH6qvaYk0GZaMZvlcIjfL6/F7dNWta7hdmnS7dDwuFY9Lw+3ShFvXNFvK3C6FWX326VHsz/PoUyKSp2wpx4kMGbYaGTJsmQydgesVwa0A9Um5tDFpjxcItwoBS0rblmBLibTBtKVtSmKaqsVdmvBI0yqOR2PdQuFIz2AwUhaJJjBsC1VVUVUVQbpBChTA7VLxujVMw6YuGItXNUfq6kOxuqhhNklFiWd5XUrA4/J4XLrSOlK0jhiqMGw75Pe6c4eX5Y3pHPCSgEWmbT8gJK+1fycZMmwaGTJsmgwB4A4BNygClymh3pBvhU2Wa4ICpNRsibSlFKaNZdnEFFWJezTVrUq7OBaL92xuiXRvCUbKgqEocdNEKBq6pqbuL9erQfreEokEVCHw6DouXSFpmDSG49HmmFEfThp1SUmTrqkJv0dXvW7N7dE1xaVruHUFj0sXCJEQqkj2KggM6Jbv6w0Cw7IXAvcCb6XvniHDxsiQYWMyXAPcKaBYERCTrGo0+ciwZVCDIluCJaVl2sSEIuJeXfVoUJyIJbq1BKPdm4KRro0tERGKGSAEbl1D0wWarqLrCqqmoOkCVVEQqVkeKUHaEtO0MU2JmbQxDQvLdqrmVhVUVZA0JJGkEYpaVoMpqVc0tdnl1hJel665NcXl0lXFo2tC1RTLhnBRwFPaLce3p64oqmHbAFOAOyV8myHDxsiQoY0MowQ8JmFfNXU8JMW0FpuvhMQNMmDaRCQi7tUVl1ulyEjY3ULBcO+65nBZXXOE5nACqQhysj3k5rnx+jSkDbFYkubGJA11MZoaE7Q0xYlFTJKGDYCqCjxejZw8N3n5bvILPOQXevAH3GiaIBkzCYUNElELYTtmXdO2SdqELCFqVZda73brQY/HlXRpiq4risulK4oUIuRza95Sv2eYV1MKLVtiO8/2uITbpGORzZAhhQwZnML/AtwBoEqwBUYQ5cOYZAG29CKE7daE6hUU2jY9gqFYr9qGUNfapohoCEaxNUFJaRb5eR5iMZPVP7WwYG4tP8yq5adFjTTWJUhELbBAU1U0VUHXNVRVgZTOYSRNLNvCsGykkGguQXa+mx59sxk+spjhexXTb1A+uflekjGT5sY4iagJpEQeVWlxufU6t89dl+V3Bb1u3dQU4balNDVVsXM9rgE+VfSSbfp0uYTLgYkZMjj4/06GQSD+BYwWgCIlSSHKg0IZZwqx1qvQyQfFQNdgJNGjvinctbYxoq1riRI3LEo6+Sku9tNQF2faF+VM+XQ1C2bXEmsxycv20blTPv0Gd6X/0K70G1xG994KpZ0hJwu8gCtVRwuIAy1xqFsHFWth2aI6li1Yw5KF5ZSvqaO+KYxwSXoPyOOgsd059Kge9OybSyJuUlcTxYiZzntSBS63q9Hnd9dn53gasgO+oFtX47bEdAl6umG4QKoSkdYb/pGjKjdm/HL+f5PhbOA1QBFSgoC4on5uKMoXPijUYFg4YXZvbI50r2kMazVNYVqiSbw+Fz175yBNwXdflfPeG0uYPa0amYCBAzpz0FHDOOa0oRwwoq2xwzKIzIfqZVBfDpEGiIfBTDgKg6aDKwt8uVDQBUr6QP5gYDDgAWBeJXwyrpzJE2bzw5zVhBMJ+g7N5+SzBzD2uN4UFHpYVx0m1JJA2oCUaLqKP8tTn5vjq8/N9dcHfK4qDwQkjLJNqzCtN6gwO0tVzxeCxdv8g/0P4P8rGf4O3AQ4jUZTG4RQZtjQkLDkXg1N4X41jSF1XXOUlmgSy5bk5rjp0SuXlmaDd19byGvPzKepJsaeI3pw/lWHcsYlnSlVAFqg6j8wYzxULoZIo1MR3QvePPAVOJs7G1S3c8w2IRGCeBNE6iHWBMkwSAtcfijuBcOPhMFnA30xgAmTErz0xCSmTP4R6bI59vR+XPrbvejdL5d11WFaGhMIAaZpIaXE43bZ2dnepoKCrNV5Ob76gKp006BP0pZ63LLQhLD8qnK+JsSb2/O77c74/0iGD4Dj04/t0jXTgpqapgj1jeGydc1RmiJxLClxqSo+r07XXjmEQwYvPD6bN577Ac3UOfeSMVx75xgGlwCsgmmPwqz/QnAd+AugeCh03xfKxkDRIMgq/WUvIBGEhiVQNRNWfwPVcyBYAboPBhwAR18L+iE0AM8++hPPPjKRtVUNHH5SH2784xj6D8qnYnUL4aCBqglsyyaZtBCKwO9zxQIBb1Vhji9QVpBV4Aa10bBQAJ+q/N6liL+laqEDxi+r+O6L/09kyAMmASOFoyTj1rVYdVPEPW9VrRKOJTBsG5em4VYVbAldugXQdZ3XXpjLUw9+j25qXHvrkdx253D8AD89BRMfh4a1kNcDBp4MQ06FTnvt0HfRiuBa+HE8LHwXquc6o8aYc2D/PwE5vPhOHfff/i4/razljEsHc/3t+1NY7GH1T81Yto2qCpAC07KwbWdWY11LLDJyYBdjj7KC3IgtSVo2XkX5u0cVt6TuWgq04JDCxPkpXDiqjrlzHnTX4P8LGYoEzJTQXZESSwjL49LXhBNm0aQ5KwNJ0ybgdSGEwDRtfH6N7r1z+f7rKm777adULm/hlt8fxQMPjHasLl/eCJ//EzQv7Hk+7HsdFPTd0a9gy0iGYMZz8P1T0LAKhh4FZz8DdOfFt6r53W9epTkW555HD+Osi4bTWBemrjaGpjkesG5dZV1zlLW1LdbC8vplR+3dSztzdP++NtCcNPGoyr98qnIZDhncQDMQxBktOqW+N/26D71z8f+BDCUgZoPsokiJKZS4pevzswRdvllU3qW6OUrA68aWEsuUlPXwo+su7vnd57z775kcc/RIXvzv6RSrwJTrnZEgvxscdjeMvGQnPPk2YNUXMOkuWP4NDD0ELhgH5PKHu2Zy/1/GM3Cvrjzz+kl07ZHFsh8bcWsK4bhBZUOIHL+HxlDUeO3LRV8cPap3wZ2n7bsXQJNh4hLKB35NuRQIADZQhaPR9wPKgdpd9cg7A//rZMhHMF9I2UVIiamqTXFdn5cPnVZUN/WftXwdOX430pIIVdBvcAFzvl/H5ae/ixmCVydczUljc2DZc/DK9Y4ucOQDsOd5O+WZtxsV38EHN8Hq6XDIlXD0MyxdB2cf+QJz563m/meO46Irh7NiWQNLVjchhUQVgrwsLytqmsLPT5r7yUHDenS555z99yrN9rmDpoUmxBSfqlyeukM9jlV4GDCP/zEyqH/60592dR02iaThiKdi28mgA7OFlD2RYOh6eUzX5udBXjiaGPrdsmo8bg1hC7x+nX6DC3nlmXlcfeabHDRmEPOW/IbBvWPw5H4w5QUYexdcMAE6DdtZj7z9yC6DUZdC2R4w6UH44i8UHjCaK284FcP286dbx7F6VZT9j+tF0jJJRi1UVRA3TLoWZLuyve6cT+esmDd3dV3zkG5FeWW5fk9Syp6WlP11RfwXZ8Y6H+gGrEr9DY4Y5WY3V7Z3v5FhqyG+E7a9j1SElXTpPxmKUukFr08ycuqCta6mWBKPppGb56KkSw43XvoRH7w+gyeeuYxrrhwAC5+E566FIQfDxe+DnrMzHnPn4uPfwScPw4Gnw+n/4fsFkn2H3Ut2Zxcvfng6/oBC+aoQmppalKQqfLFwzawllY2re5Tk5t10/F7DhnYrLIrZNorkP25VORMYAgwH3sOZK8zGIUctu/lIsVuRga0kg4C3hG2faalqyHDpy2whwgKUXBi4eG1D4cKKBvwuFyWdfWQF3Jx08JssmVPF17PvZv89VXjxcFjwOZzzr46jF2wraubAc2OdV3fnEoIUsV//Z1i0rJIXp5xDr34Bli9uQVEg4HXREIolvl1W9VXcsJI9SnKyLjxo0ICBXfJLEgC2/Ru3orwC7At8jmNVGo2zivUHHCV7t8VuQ4athZDyNiT3W7q2ztT1FQA22PlQ2hiK9flqUSWaotC1RwAQjN3zZZLNNktqf0epLwT3dAHFCzfMgED3X1TnyspGTDMJG3n6mOTl5ZKd7W3dU1vbzMKFKxBCsMce/cjLy1rvilAoRmNjc6osG49Hp6Sk4BfVZz28dCzM/Rju+AiKjuHkE8bx/n9n8Pj4sxixTxHLf2xCUQXZHjc/rWuuXlLdNEvXFM/QrkWBY0f27lqS6+2iq4pcMH/B8z/On7d49L77Pt+7d+8ewJ7ALNj9Z6//p8ggbDlWKkwydVe5raorBXgtsLLArdlyjynz1yqhmEGf3rkgFEb2fJbCLD9ra65DtRfAzcNg2JFw8afbVOcuXS6jqmoBUIKjsthAAijngQf+zO9/fzIA1177JC+88DHxeBUAgUBXrr76ZB54oG0UevLJj7n22ntwLJtxhJAcffRI/v3v2ygpyd6m+vHlA/DW7XDFozDiBi69aCL/fnkSj71zHqMOKGHJ/EZcLhVdVVhY1TCvIZJcnZvl9Qwp8fca0jm7Z/cuJVo42Mw5Z5yxNBKJVL351lvf9unT5wUcxRogmnro3RK7h3+W/PlNWHaxrSiTkm5PjeUQIUuC0MB2QZ8Fq+uUxkiCnj1y0HSVvXs/R7eiPCprrkOtnwRXD4OxN2wzEQCamsJACAjjiNOR1N8tBALOqLD//nfw5JMPEI+vAnoBPQiFlvHgg3/imGPuby0rkTBS5cQAAymb+Pjjl9hnn9tTx7YBB90GN34Az98In13Lv146khuuP5HrT3+dhbMaGTaiCCS4NIW+xbmD8nOyXI1Njb7v5s4vqWkKGQ0t4URhSQnPv/Jq0YknHN/3L3/5y0WrVq0agqM8O0PY7gwpZYfcQpEo4Uhsq7ZIOEownnyjUUqzUcqvmmw5u8mWs+uk/FJKubamMSzfnbZUTl9ZJVfFW2RRl7/LovzHpJRSynUfSXkVUn71gNxeLFy4Rs6Z85P805/ekjBEdut2uZw9e4WcNWuxTCZN+fjjH0kok7C/vPvuN2R5eb1cvbpW3nzzvyXsLaGXfP75z6SUUj722IcSesuBA6+VCxaskf/970xZWHi2hB7y5Ze/2L6KVn0n5TVI+elVUkopL7t0soRb5IczV8llwUY55Yc1csayavnpvDV1T034suK5D76IfDJjUWN5XVO8ORwzpZRy+arV5Wedcfqa888//2XLstK/my6ldKU+NSmlIjtAW9rarUPHTZIbrmTfBISUWIp6huHWzwBmC+l4SpgQzYFcw7C6zllZS3aWmz498zh83zeoq0ySkDdB0xS441i49FHY54btru/gwd0AqKpqBlrIyvKw5569Wo/feutrgOD66y/hT386u3X/ww9fTFVVM2+++RD33vsel112OH6/B4hRWJjNkCHdGDKkGwccMJLx4//LwoVrt6+infaBe36EuwaB7uX5Fx6hsrKF40b9m+/W/pacIg/BhiQFPnehVlZi6qoIF+ZluwNet5bj96gSKCjtUnLoYYctnz79u34tLS0X5uXlrcURaNPDYQhnljrEbjJi7B5i0hYhu9mq8pKElcKWAqS0wNQFig59f1hVS9yw2GtYKddcMZl5362kOngbLpbA7YfBhQ/uECK0R11dEHBhGFbrvgUL1hCPVwD9uO22kze65vbbTwW6snr1agDy8vyAl/r6IAsXrmX8+O+ZOvU7oJjhw3tsfyXzB8LdP8B/HoVZ9/HxJ6cwoG8PDh7+CpZL0hCLsayqhWBSqOFYQiog/R6XAGQiaVhxy1ZHH3pEt86dSrOTyUR/oAzHxNoZZw1IHs4E3W6DjksGKX9+syVIXrIVxYukUjrrc7CkjOdAz4r6oHd1bZC99y7h3/9ewNvPf8aUb26nNJCAmwfCydfDmFt/lceJx5M4fm1evF7XRsf9/vS8lUMgRVGAIhYvXsXQoRdwyilX0dT0JX36HMcZZ+y3YypVNBz+MBme/yNUvc/CZZcQbzK45uyJ9BuSj8+jUJATEDk5uQHTMu2GYMSIxBOWRNLc2BTt2r27f+HSZbVfTZnyIPAZzqx0OdCIM0Ik2ShQTcdFBybDz29CyqNtoRxiC2UeUvoAYUAsXxGF8YTR6YdVdfTulcvqFSF+d+l/+NNfLuGQMX54IA+GHABH/uNXe5wBA8pwLENL+c9/vtvo+GuvfQOsJi/PcfUOBqM4xFCBAFlZ3TjttKuZPv1edH0HSrfdDoMrnoC/nIzKaub+eDszJs/ntX/+SJ+BuVTVBfF6PJqiqNqadfXRqsaWZH1LOOnVFSURi/K7u//cp6RX3xagBpgLzAeWp/6OkCHD9mMruICU8lVLVbEV0YREMyWGWwhVg95zV9YiNEFZ5yyOP/Ad9tpzL+6+Yzi8dwwkknDxV7/q8wQCXs4772AgyHXXPc7nn89rPfb++9O5++7nAJtLLz0MSJOhnqFDe1JT8wrV1W/wzjt3U1iYtanitw97XQNHnAN39WSPgYKHH72cv/3uQ5YubWJA3zx8usa6oOEJxZJKPJEwymsbk5FYQl9bWZPcb9jgspH7jPpzQyyZLi2JY2KN4NiVdxt0YDLYP7ddL4UssBRlJaClBKdErqDniuomd2VjmFEjSvn99V/TVNPIt7PPhJUvwdRP4NbKnVt3KQEL215fb3z88UvIyTmYePx7Dj/8Jvbd93b23vs2Tj7598B8OnU6gr/+9RwAbFsCCVwunZKSPLKy/Du1zpz8OgQK4J2x3HxDfwYPHs41p01iaKdCKhuD1IUSwuvNCkSiMXVVZbVWHwzHC4qK1wSTppWIG3eGDbOgOhInae0WuvIm0YHJsMVNR8oHbSGwFaVJ2riSNrFCVRSGoonSxeUN9O6Vy/x5dbz0+Oe88vZVuIjBPy6Gy18Ab8lOrXs4HAcqKC9vWG9/Xl4WM2Y8zl57nQTU8t13/2bmzBeBIAceeDYzZjyC260Dzgw0VLFmza/o7nPtEpg6GSreYuqsc6hZU83v7/2a/K4eLMMEFEVz+2V+p84LA0XFy3WvtyWWNKtVBbLd+t+yXR3aOPmz6LAz0C2h8JYO3yKk/ZCp6iHD451v27bm1RSZI+WIb36sdLfEk+w7sjN79HuZfF8+8344Hf7VB2QuXDZrp9d95coavvrqe/LzO3PCCaM2ec4HH0xj1qxlCCEYPXogRx+9z3rHly6t4ttvZ1BS0o1jjtlzp9e5FbMeg7dugIclDz22nFtveJHPll4BJnjQ0HXNFAHfNK+uJP2qKEUIO9+jDQfIdesl7MbOeh2WDM3BzZJBAC1C2oGk27PK1F0VQkpZqom+i9bWd1pa1cyI4UW899ZyfnfJOGpC91LS8h/4+5nwcAKUjS05GWyAx7pC935w0ucU5j5Hz5E+/jPpeMoXh7Asi7gkVNo5/5s8j15sSZnwqsogjyJyXZr6Wpaunr+rq7+t6LBi0hZkpCuRMiBRsBU1ZFrSytdE/rrmSKcVtS3k5bhRdcHvLv2Mi644iZIs4Nkz4Zx/ZIiwtbjkW/hyCpjzeG/yhcz6fBFzvqslt8iNFIJwOBZoagoPUHW1UVWFnbTteiklhmWdJ6Xssaurv63osGTYgur8RyltTEUJGygtWS7hMpJmr0VrG9AUhd59c/nH/XNAJnn+2VEw83rHfD/y+l39SLsPAl3hoLPgmQM5aKSbgf1HcOuVX5Jf7CVp2Wi6Rl1dS8/mcCzP63ZFhKIEE5ZN0rSJW/Zdu7r624oOS4bNDAtHAmUgMRWlSagi4oVui9fW+SKGSZZfx7Ikj971PTfcfrrja/Kfx+Gsj3bdY+yuOOFVWBuExv/y+odnsHLhGqZ+vpZAvgtFEUgpWVvRMMSSUtXdWq2FCJq2TdSwzsWZjd7t0HHJsGkR6VqkDVJgKVpttkp+eXVTl5rmKD6XRlm3AC89vRCweei+gTD9cuhSDL2P2ZVPsntC0WDstfDy6YzoA0MHD+e+P35PUYkX27TxeVy0tMQ8a6saB3g1tUHR1HopIWZYrqRln7mrq78t6LBk2IRXYa5EHo20MYQScXu1ULAl1n9ZeaPo0jWbgUOL6OLN4okH5/K3x850RoVvXoAb/rurH2X3xdjHwZ+A+NdMnn0ai7+vY/XKIHuO7kSX7gE8Hp3V5Q1lTZF494BXX2sDSdsmnDSPT5Xwy0KZ7GJ0XMPwxkauc5Ao2BLV716XTNiFy9fW5RR19vPDd7UsX7KAunUWTTVBmmJZrHz/erokvbz0Sm+Izd8FD/A/AFcpY+rG0u+lcxgf+I4sn5c//uYbjjqxDImLw47rSl1tmKXL143KH979C7dLD1qxRHY4aR2Y65H9FCF+2tWP8EvQYU2r9Y0tG+76DthHFdimL2vZioqG7uFozNu9Rw5j93iPNSsXADk4zpI2ay+7mSeWHM1D35wIbKfL8/9b5FPoaaTud/eh/+UKTPbGCZ0UAQK8/eXpdOuZzapVTfTrU/pTv855ycbGyGBDQmnA/dssl/bPXfwAvwgddmTYYC1DJ2AfISWK2x2urA8WNAXD3l598vj2yyrWrFyXOkUFCjlx4Kd07QsPvXAETvSSvF//Af4nIKmPD2VpuIh3z/uak147HMch1Qc0MeWjtdz055Gsq3Gxury+T47fvTbH7zJCkYTeHDdO0xTxT01xJHFN6fgSU4fVGTZw1z4JKdEVQUMo7lvXGC50axrZATdfTizH6an01IUadx32JZOX9sUxajhrqTPbtmwANn/94lBOHLwYxxE1FTkcla8+rSDYnMDr0RAgVqypKzNMW3h0FdOyD64OxXOrQjGqQunwSh0bHZYMGxiSjpYAqrCDcdOWthRuj05zU4IZ36zDGeAk4EERlQwpqebBLw/CIUmHfcTdAAJo4LUf9sW0FE4cNAvITR3zsnh+PcsWNJGT78bvddPUEhFrq+ptt8uFQAhFiKNtW6acDjs+OnBLaaWCC+QhQtrYQokpLlezJiTZOTo//djI4vl1tC2oyuHs4bOIGi4mrxjBbh7Gp4MgAXRi2poeXDFqJk6oVYkzEodYOKeevDw3SImqYFVU1dYalpUeWA4Voi0dQEdHhyWDtFu3EVKShS0xUENC1eJCQG6Bhx9m1mHbQdpGBp0L95zD9LXdgUK2HO1Q4qw829Uux3Zq29beU8ERBWO0/ZwKTiOOsP3WTQEkeXXuXowqW4ujM6RVTZt5M+uQqShvWX6/XlPf1Fzf2Bx2u3Qkcj/ZmtC346PjkqHt3z6O2iAxhNqiqopQhIJAMG9WHc5qMIHzAzUxolMl7y8agrPGZFMNQSUdvsUhQ3rd+ta+CoHT8OKbKX9TUFL1jEJrDuj0vnBqa8ZpvL801WCSvLw8CgrycZ4ZnKBlOXTuXMyOIXuQt+YPx6OZDO+0BEgvMNKZP6ueuuooHreG1+OmORiOVtXUN3s8OlIySEpKO6jBciN0XDK06c97I20sBKbQwrrA5XKpNNbH+XFeA229lI9+hSvxuxP8d8kAnAa2IRSgnq5di/nkk0sIh//I1KlXpKJaNKeOt8/J4SzScbb0KGOSm5tHdnZ2ap/AaXBG6lOkzk/vc3J6KIpGcXFhqgwLCDFgQBH//e+FLF16Ax9+eAmlpQU4KQ/S9023onQ57csWqf1Bqqquor7+ahyCJoF1/P3vB7NkySWpc4wNyrDbPZdsV9fNtdo4kWRnGqJ+ThuyCMeaBOCmYnULa1cECeS60DQF27Lt8qraBpH6DZHss5sMDB2XDO0wQkiJoWghU6gRl4I7kK1SsTbIiqXNtFk3/Jw4aAmNUT/VoW60BYhujxDFxYUsWnQ5Rx3VkzlzFnPQQWUsXHgpQ4aUAatT51k4I8eGo0AIaOSrr85k3LgTgQbaevb0iBPHaVSRVFlxoIojj+zB2rVXkJ/vwxmJknTvns1xxzmhZI4+uifff38Bzk/SlLrOwiGpoE3sgbYRJg64+POfp3PnndPa7XPiGAUCLpxG3pSqXzJV1/bPFadNxIqy6dFOAl5+qO7MwT1XttuvAhFWLG0mkO0ke/H5va7yytqGlnACXVORsOduwoWOS4aUJJ1nQ38pJUlFa7bBUhWhBrLdrF4exDDCtI0MCgf2WMmSumKcYXxD8UACUR5++GgCAZ3Onf/JgQf+g65dn+W++76nvLyJM87YH9P8PQ0NN9G7dyd0XWHy5Iv46afrCIVuYr/9+nH11YcydGghhx3WjbfeuhS3280bb5zNihVX8dxzpwMGf/rTgUydeimJxG28/vrpDB48gDfeOBa3W2Xt2ssZO3Y40IxlOc2kf/+/M3Dgi3TrFuDuu4/igw8upLLyZo46qg8nnDACKX/PvHlXUVSUy4QJp/LQQ8cCK3nggWOZMOECwuEk9fUxwOLNN88hHP47J57YhxkzaoA4t956DCtWXMk331xCTo6Pww7rzmefXURFxc3cfPMBPPSQc/zOOw/HIfSmmq/JlJV96JVfj0PmdOp4kxVLW9A1BSEEfp/Xva6hqaV6XV3I53UDcvjuEhOgw5IhpT0PRNqqM4irzUipqUIIj1dnzYogTq+n4PwocXoX1DOzoiubf/k6Rx7ZlcrKMNXVS4HBVFRU8Mc/PkpBQQ5vv30648YtY8mSRqZPv4j99+/CYYd1p7w8yNy565g48XSqqqJUV0eoqgozceJC3nvvDM4+ewCzZ6/i8suHcv/9x7L33qUcdFBXXnvtB845ZyCnnroHL764EIAPP1xJTU0L4CKRcMLCfPPN1fzww0VMnlxJLJbg+OP7sXRpIwcf3JUJE07h5Zd/oKjIx3vvnYKqKtxyy0h0vTO///0oVqwIcswxvbj44iFcf/1hnHVWf159dRaWZVNREeKkk/bhwQcPYs6ctYwZ05mPPjqfQYMKOPzw7ixevI4RIzpxyy0jWbMmyLx5VbSJYBsixtereuJzJcnzrqNtRBasXRkkkbCcZO+apsbiCaO8cl29pgmklAN2Ey50ZDIAkr6KbWMKNWkILYwtXaoQCkD5miBtvb8GNJPvjTKjoittimR7ODL29Ok1dOmShdvdFViAz1fIqaeexG23HQDAGWc8yJgxz1FU5OHkk/uSTFoceuhrnH32R2Rl6bz//g9UVAT59tsqXnzxVY49tidLlzYya1Yl48f/RFNTmJ49c5gwYQWXXvoE4Kxnvuuu6QCcddarLFiwAMgj7Qqz557FTJu2mhNO+DfRqJMz8NBD76OkxAkCcNFFf+TII9/lgAO68Oc/z6KuLspXXznJdG666RPC4STNzQmuvXYECxfW85vf3MSDD86gV68cTjutPwCzZtXw/PPzmT17LQMH5mPbkrFjn+a8897kgw9+Ij/fw4EHdkVVvaRjN62PBAvWlWJaKiO7VNJ+8q2qwsk/rbsUFEUIt65r5dV1DeFIEkVRe0snh0OHR4clQ8qS1BNpk1S0RguRQEpVVRWSSYuayki7s110y61HU2wW1pSy+QglHm66aSIA0egtvPLKRdTX/5Z33z2LGTNWAPDCCzcwceLFNDYm+OKLtbhcKtnZAfr1y2stY/XqMKed1o+zzjqLzz8vp3//fAoKAgQCLsaPX05JiY/OnbNIT1B16ZKFNzUVMn78RQwY0B9oJDfXaVCHH/4OY8c+RCxWzejRnVL3yWXChGUAPPHEXYwffyINDQlmzPiaiRPXMHp0MRMmLAeWs//+XcjPd/PMM/MYMqSQBx/8K/fddwAg+Phj57kKCgIUFXn57LM1tLQkURQB+Onbt4TVq1soLvZx88374HZ7N/P+TCw7l5aEh+GdqmlL+a5RVxWlqTGO26uBUITX63HV1DU119Q1Sq/HrUlJz6360XcxOi4ZnDmG7jYKSfRmKaUqpZSaLkQ0bFC3LkabGVJnQFE9hqWyqimfzc8v5LByZQV77fUSS5Y0cP75Y6iujnDYYW/ywguTOffcD7n00mEccEAX9tvvZSZNWsOsWTVICQ0NMWbOrEHTVK67biILF9Zz1VUHc8wxb/Dxxyu5+eb9KSjwYhhxJkxYwbRplYCXGTNqqKmJUle3hiefnMtRR/Wgd+/OgE1NTZSZM2tSo0ExUMh331WnZP0C3n9/Bn/849dcc80+aJrCvvu+DMCTT85l5swa/vrX7wA/n3++lnnz6nj44YlMmLCCW289mCVLGvnmmwreeGMa99zzLTfeuDf7719GS0ucOXPWpe4hyc72ceKJ/YlGDW6+eSrRaAubjgppA15qw1n0KainremoNDXEaWlI4vFoCEUIRVPVcDQWL6+qXedyqdjQdftbxM5Hh/VaXVtViyLtyaaiHdaiZ8+0pbR8LlUtyxZDlpTXeU88aAKVq2txzHyFXLLXx9x28BT6/f1POKbRTaUoTvvcNOGIVn4cS0oSpxdvwhnRbRzLSjaOtcWT2pdEUXzYtmM9UlUPlhVOHQvQZlVK52Zwp8pP+02FU/dUU5uZureLNmKnTbu+1PcQjjduMrXl0ZYGQcFpuGlrUDo1c3pfWpQJp54vXYYv9elPHVNS5wZTz6Gwab2rlPfPux9FkZzwyh+BatKm3ufHHcvRJw9g8mc/LJ83f/Ey07YZ2LtH15OPPnBoOBK7sk+h/7lNFNih0GFHBqRESLuzgYqJEpcS1bZBFyqRkEE4mFaeAVRKAiHCiXS80s1NNKVt6rk4DTyB0xBzU8dzcRqTxGmAkjZrlTOx5wQGcxq0ZSVxLFd+nMblxWlogrbGrdE2KRigrZHJdvvbK6xKap+d+szBIYWKQ04Lh1wabaRLW3Y8qc1MfYrUOWkyiVQd0vWyUvVNm123RATnHdRHs8jzxmh7x87cRzho4EJFCIGU4PN63dV1DU31jc24XdpusQy045IBKYBAUtEMKRFSOj+RAsTjFvGoSVv1BfneGHEz3UB+brSTOA0gnWMj7QcFDjnSZaQbKxt8T5MkfZ5CW++eLlttd57S7jydtgm99mSQ7c5pfx+RKltrd86G17W/n9quLuoGZeibuYeWOp4ub/PvrTbix6WYrG/Js4hGDHQUEI6vtkvXtKZgKFRRU4fX6y7dQqEdBh2WDELauYZQlQRaPdLSJRJbSmeOOGmRTK7f+3t1g0jSxdY/krXBtrVIz9qKDfYJHJFjWzxlFRwRZUd52aZFpmDqc0f9zDbhhBtd2/Cd2SRipjM+KU43JoXAloKK6npsS+6EALE7Hh2WDNh2dgI1YaAFsaWWds8QIC0TpN2+QQp0xcKw2/eWm0P6eLLdlna/2BLaX5cOLq3iyOYJIMaQIT3o06cLvyzergQMhg3rTb9+ZWzaLPxLYeJyuRgxog9ut4tN60/bhripoYm0uNn2zkxTphqTEFIKkOD1uN2V6+pbGppDu9obcqvQYcmgKqgJoUdsiSVJpWJIiUqbSoyuCLllDrQijt/v4uOPz2XFimsJBv/A5Mnn4SilUdZ3wEvS5tcTo6DAx7ffXsKttx6Kk9Ovnn79OjNt2iUcemhPvvnmHBYsuAiHLEaqrDTR2vsIkdqfdrmI8e23Z/P668fg9OYbXpt2x0jQ5mOU9pdKGwuMdtc1ctxxvZgz53yOPbYXTsRHo9390j972pepvd/SlmFLgaJs3LallKmrnf8l4HbrekNzqLmiunaLsUI7CjosGZpMNR5HDwlpq+kIGbaU2CCF2LDVSyypsPH+TcHC7VY5+uieWJbNK698z5w5TioBXffhcvlpc5ZLjzQ6YOJ2q+y7b2cefPCAVB6FRiZOPI399utC5875XHLJOG65ZSrpLJ9+f4C0Rcjt9qTur+OIU1bqeDoZokjZ/sNAktzctOIcwyGXG1V1ylAUDVVN183G5UpbjRS83ixAMGNGNXfcMY3Zs9fhKNDg82XhNP4EEEo9q6PDCJHWL7YMTbGx7HSzaTtfVdtS1qf3KkIRScMy1lTVNv1swR0AHZYM9c0hzTAtl6IIu12iHmkDLl1F09e3eiRMDY/W3nN0cxDYtkOuCROW88gj07j11vGccMI+JJM3k0jcwMknjwAs5s69kPr66/jss7OAMImERSzmiBzjxp3GH/5wHj16ZCOlpKkpxsCBJbhcjuI6efLFhMPXsWrVdYwc2ZXHHjuE1auv5ttvz6dHj04sXHgl4fB1vPrq2YCkujrE8uXNqGoun312IXPnXsCUKRcCNsXFuTQ3X4tp3sSSJVdw7rkDOfvsgSxceBk1NTfx17+OYcqUc4hEbiQavZ7jjx9NZWWEUaNKyMrSeeWV06mouIZI5HrefPM0oI6jjhpCInEDpnkLP/54GWedNQCnE9gSBF7dwLQU1nc1F7jd2gZvXSBBKoqiZAf8HnYDdFgyCNDsZCLHlkK2ikgSTJBuj4rLtT4ZwkkXPleaDFuGlNDSkuCWW0axYsUt3HPPCbz//kk8/fQ8HnlkFuPGncIppwxkjz2Kicct3n57FuC4KOu6wvPPL+DAA7tw77378cgjs0kmbVRVcPLJgznkkK787W8ncthh3fjDHyazbl2Yfv1KOeyw7nTvns0bb8zm66/PobjYyx/+8CnnnTeIa645imXLmmlsjPPAAydz+OHdmTt3LYcc0pVx487hvfdOpakpzq23/pf+/fMZOrSQsrIsBg8u4J13FrBgQT2HHNKNl15axPvvL+ftt49lzJjOnHhiH7p0yeL003vT1BTnT3+axllnDeD00w9iwoRTePvtpdx220QGDiygX78tTVa2/So5njhJS2N965aCP8vVzmgsHO3KtKwsv9ffs6w0b3MldiR0XDIIoraZ8FiW5ZNg2zgjg2HbMpCl48tK29gBLOoifry6gSMGbPmxhIBAwM2zz85j1Kj7SCadfVdf/SY33/wqAMce24to1OTSSyfywgufAF5UVaBpCi+/vIgLL/yUb7+t5uabJ+N2q+i6SnV1EMOwufjiwUydWs799z/N6NHP88Yb8+jTJ5f77vueJ5/8gLKyLO67bwb33/83KipCnHvuAEzTprDQyxFHlFFREWLGjCpefnkhVVUh9t+/M/ff/z0PPfQQS5c2UljoJT/fQyxmcu21TzF/fh0Av/3tOO68cxper0p+vodQKEkyaWOakttu+5p77hmHYdgcf3xfXC6F66+fwsMPv4hh2Hg86s++NxCUZIWJb4IMWQFXer2eTO+NxhKJkqK8gqL8HPcWCu0w6LhkUJQmYZmKbRoFEmGkdYZE0sKf7SYnty0ZINjUhLLJdqf987ckJklUVaCqgvLyELNmLeCppxwnuiVLbmXevDuIRExefXURPp9GWVmA9GScqjqva+zYbrz22mTGjHkulZUTsrJ0evfOIzvbxZ13fsXBB3dl8uSHkfJufvMbJ0dD3755gMmXX1bw6KMH8/nnz1NWFuD++6cxbFghXq/Gm2/+SFlZgD59Chg0qIAnnpjD+PHLefbZsXz44XP0759PbW2M4mI/Xq8zKdetW3oiLYcBA/IBcLk0AgEXWVk6WVk6PXvmAAXousJHH63k/feXU1PzGxYvfgpdV6is3BodV1Loi1AXzmr3jiWgk5PnTmUzTC/yFCRN0yorLdS8HveOMJHtdHTYuElCkhDSjkvT6Cw1tyWlrdtSYpi2zAroFBR6WbE0PTKYrG7Ow6sZBNxBQgmn0W0aGvG4xbhxP7F4cQMwgObmZkaPfpXXXjuenByNffZ5mUWL6nj//eUsXdqIM7OsEw4nGTfuJ+bPr8eZpLJwuzXGjfuJJUsaeeutJZimzTPPTKFHj1wuvXQ4b7yxhAkTfmSvvUqYO7cWyOXww9/gtddO5LDDenLzzV/ywQczOfroPixf3szf/z6RTp0CnHnmYObNW0dLS5hTTnmHL744j8GDu/L224v56qsK8vM9aJozo7xqVZBx435CCMGKFc28/vpiVqxo4o03lrB6dZCXXlrEwoX1gMr48cuZMaOSt9+eyV//OpacHD8DBhSQk5N2OdnsLwKYFGeF+bG2mDYR1UZ3eSks9Dpr5ezU6nLbsn1ej7tLSQGJZLIeT8cfHDqsb9K0ecuQmv6ddPn2kZ6c6bZtqy5NkZ19DMjNU3IuOOMT/vvOTNLphrM9Day45UGOeekyZlYMxjFRbgrpZY9BHJcFH87P10TbjKqN4/rQkjrupm0pZqjddXa7fWl/n/RsdDD1mfYFSrtU5KTKTeBYchI4I0/a8VBLlZe+1p+6d4K2ZZ/pe6d9ldKr4HJwOoFo6pz2n57UczQAOuPHn0NjY5xAwMPpp/dj5MiXmD17FZv3tnZmtlffegf3fnE4z888DqgDInTpWspH00+lsCiXSV/NWz7zh8XLFFVROxflF5x25JiRtm3fPKAk+5HNFNxh0GHFJKSFgHJhm0jL8EshTFsiLduWOgpl3QPtTjYIxguIGTp7dKrC+eE3WzBtPjpO7+40rBychuejrUEEaPMTSrsxtL+u/T4tda0n9T039T0XpxGmj6V9mHJSf+enykiTTt/gWldqf9oHKid1TnqfRZvfE6nvWRt8BmhzxcgGXHz9dRX77lvGgAH5HHPMe8yevZK0CXbTcBFwN5LlSjK3qhNtE4smnbr6KSj2YiTNVp0hnjCM0qL8/IDPi2nZOzej5A5ChxWTsG2Qcq0qJbZl5FhCb1Zt6bKlRGLTo3c2bUqcCRRQEwqwd9c1PD9zax5rU/3Ahvu25pxN7UsTTt3CORseby+Db3hsc/fd0MFvw+/KJs7TAZ1HHvmcRx6Z0u6eP2fw8TCqrAKAeTWdaSODRfeeOWTrbuoiBrYtpW1LNF3TupQUdDJtGwm7BRk67sgAgFwtBCi2kY+Uii2RtsSOSYtefXNxes+0Eq0yv6YTe3Sq5pf5Gv1/Q9rWk4szYqQNBO2dFTcFDwf1WElzzINhFdNmhhX0GZCHK9WUpJQyljSMgtxAoFNRvjcSSyAla3bSw+xQdFgy2NIGy1qBEKjSCCjS8ttCmJaESChJ77455Oanw7UAJPnsp770zGvECXSlb77wDFJQ+CXxog7ouZJFtaU4Yl5avPQwYHA+CUyE40wpo/FksnNRQX5utp+kYdYBFTvpAXYoOiwZsG2kZSwB0LBRpZEtUZK2lDISMejSNcDg4fm0DdcRPl46ALdmsGfnlbTF9slg+6EAIfoV1jPpp36097dyewIMGJJPSywBSCzbkiBEWWlhoRAgkUskHdRKswE6rs4ASMtahW2vE6pSotlGriEllo1ULMgTHgYNK2TaF3U4PVQeoWQWs+fbHNNnPnOq+uBYO35t9MIZlZbu4HI7AQXAj/z6ITFzyaICOxriqe8641jDQkA13brvw4C+BVTXhnG73MTihpGbnZXVuSgvPxpLgGTRr1zZbUaHJoNtWRLbnIfuOUKzzRwhLa8lMRQB1aEIJ57ZB007iUgMXn92ERf+5liyh07nipq52IcchTBrft0Ku/Ng2bvw06dw6IOgbJ3z289DwLwXINYChz0EkeodUObWQxLgAPEYWVmduP2eS3nioWnssc9A9tl3NP2GlBGPmZimjdsFoWgs3qk4L68gJ6CGojGkZO6vWtntQIclg23bSMvENo2Zwus9QrMNTbXNLEOqCZciWNcYZdCwQo7c9yg0YPLHazlkbGdGnPA4PD+Iey/vA/T59Sv+2hB48A7ofOAOLtgFz+4NV94K7L+Dy94KTF4Gvc7mvl4j+Oc/pvHcf45kYH4udSQoXxvC7VZBSEzTtruVFBbpuootJQIx49ev7Lahw+oMuks4LtumMUMgUZCotpFtSSwhwO1SCQWTLKpqxATGHNqFv/5uPFACUQmzH//1K/3WEdDYCTr/ZScUPgoG/gH+su9OKPtnYITh+2nQ6zp++/tVuHwqvfNz+XFdE7U1UVwuZ+2zaVl43bq7tDA3L55IAjRKKeezVa71ux4dlgxul0pJqYdELPG9bdoIRUXDyFGk5U7bQBRAFdBgxjj3koEsXVZBVQw46AyY+dSvW+HgWpj/GZzz2c67x4H3Onrr9w/vvHtsCjMehexcoCvv/Hsyx53S24maZMu23wFBLBq3CnMDOcX5OdnRuIFlyu9UTbE7l+0WMcQ6Lhkuv2AaP8wN0r+/ex3SmC8VDV2aWW5hZaOmJqSEACFoaIozdkwPfDk+HvzrCtjjXqheBqFfca7nq7ugW18oHLzRofLyCsftdr19lSQS6/eYlZXrCAbb3KhjMZtYbAMftzG3wvT7d1i1twozH4fjb2bWKqirr+WqG/agOhlDKAqkk5EIgWHZVvdOhQU+r1uLJ0zyCj3f9O6cy1MPz/p167ut2ES+5Q6xwV0IcT/3PjiBFqvyN0EZk7WJRllthmWztGVQmrIltTVLQ0op5d+enSUD/qeklFLKl3tJ+f7Z8lfDYyVSznxsvV0tLRE5ZsyNEnrK0tKTZHl5nZRSyuOOu0tCb6mqB8tZs5ZLKaU888yHJPSSQhwof/qpSn7yyRzpcg2Uxxzz1/XvE22Q8iG/lI3Lf5XHklUzpbwLKaWUR5/0rdzv8LeklFKGpSUj7baotGWzNKxqO2nXSENGpLRqpZF17qX/BW7f5e1pa7YOq0BDziApk13/+PsZjV9/3WKedNYgwiGLurCNy+OhIEvDMNt6Vl+WDkInFKlh8g9w+Bn/hr8fDCe+sfOr2rQCbAMGn7ve7kce+S/Tpn3EM888y403PsWtt77K8ceP5MMP3+bRR//Biy9O4JRT/sYTT1zG22+/zN///jDjx3/NnnvezOuv30SnTr34+usf17+XNx9yusOi12H/u3b+s31+ExxwLACfvP8Vp1wwjHcmrGJtXXi9peiqIgjFDMOS6D63EJoi1j12/8y+a5Yvd0N+DjBx51d2+9CBySADID7Nzytj8bwk82bOQLizsf15yKSJIsR6RkvLssnN85DdpQe/u/E75n5xEHQeANP+DGN2cqNZ/Tl4CsBbsN7uc889gJtumkd2toc77niaSCTOhx/Opnv3Q7jhhuMYOrQ3hx9+EW63RlXVl3TqlM9nn80mFKri+ONH8sknZ/Dssx9sfL+iwVD9Kxhpgmuh8ms4T3LHswkgi6U/aVx903zSKW3bIJGK6lJMQyjRSgxTFOmaMseZG1GeIkOG7cL3kDwpkG29/9OKq9BVCVMvhfJa8Fqg1jpBetKQgK4SX93CpE9XwJT9HL1h1d0w8npwb8kjczvRuAy8Gzu69e3bGYC9976I+vrlPPfci1x99bP4fE4sUymd6H2HHTYMTVM5++w7+fTTf/HOO+MAqKqqwuPZhFtJXj9YNWmnPU4rPrkC1gBTj+fY777l3Jt0Bh7eG+LJDdZPWWBlQTJP4GmBQ1+AnD7aH//4Lffd9/F3kHvNzq/s9qMjkwHwT1izpuKvxxz97h2fTTqNBvdBFCy4CPYaS43vPPLddbT37rRtC8+xRXjWzefK3y7l2UmvQUMCrJ9b27udiDeCvnGcrJqaJkaMuIiWlgYWLZpCSUkODQ0hVq50ZqeXL68BBNFokjPOeICJE8cxadIkxo4duuX7eQvA/hUWj+1xOYy4lBcf+A+rVo/gz4+cTHx2JYqrvUetxJB+wuE4JeV/pkbdi9KT+/DV1+u4776PmyHr4O1PsvjroIOTQQKFd07+bPqhTzw1YL9o3oV89++HGD9gLoNuv53meDYerX1E6AR9+hRz//038txf3+Li5FmM3uNXqucmYjn95S/vUFPzAXAqJ5xwGYceeiSPP34pw4d/QE7OCQSDy7nllj8wdepCJk78M3A411//MMmkn+XL/0lTU4RodO3Gt3OcfnY++p8KwCUvCu7551huetrkmaengMhNnSCR6MSDXZn9+5v56jN4uuhl3g3CUUe+CGhHgzux6zOqbh06OBnA6VUKj7zumreqvp5+c+DNfT/gscd7890JR9P/sWeI0YCzksshxILydSQqC7nnnu4ctdeTNDf/CiO0Owccn8L1MHbscPz+xwmFXNTXr6J37xKGDevBRx+9wgMPPMXw4WN56KHzmD9/Db/73WPE4z6qqysoLHRyNFxzzTEccMDAje8Xbwb11/nprr9+CoMGhbnyFJ3S0odoC3oMDiP7cOPef6J/1VfsNfUxKsODOe/U/xCLNd4Cnb/bndzpO+yyTyH+3u4vBWjcu2+f4u+/nH0tAwa9z5LjT+bb2B6c9vLdwErauso4OTle1q69hqKif/L880dwwQWDdm5lZz0Bc/4JVyzeufdJ44PzIFYPZ366U2/T0pIgN/dBFiy4mnvu+Z533/0aKKFtuWtPjug7lYm//ye5l53D+MWvs2zKHK767avjoesp7YcvKW/eqXXdEeiwk27rwwYKZvy0fO1tt141nklfnkT3Z27n1GE/cMU+bwE9aeuBfLS0VPL3v89l3LgTuPDCd3Z+9bofArEGx23hFyIc3obIi3ULoHiPX37dL8To0a9z7rkjSSYl7747FSiijQjF5LrLmXj7Pznk6sGcc/9LlNqNXPXbN2ug9NSdXrmdgN1kZGjdC5R/9OzTFxwTLx7Bk6ceybIXJjH49jv4sW4AzupClXTq2tWrb+Pss/+L16vx+edn7NwK/6PI8SgdetFWnT5r1iy++OIL/H4/ZWVlnHDCCVt3HzMGj5fAed9A8bBtr+/P4I03lnDuue/S0nIrw4f/i9Wr19GWH8JZix194DKefRceds9h7TcD0cQ9SOzBEPhxQz1Bylt3Wl13FDrwyJDczJZ/3JW/ea167MAmBl//Dtf8qYRFf/4rTnSIPJwfwTFHnnXWBKZMOZMpUxbxySerd251u45xxKWtQHV1NdOmTeOQQw5h7NixLF++nO+++27r7jPrCUf62IlEMAzJuee+wWefXcBzzy1k9eqfcIIFpBOodOKjy+6lqSLOjbNfYu03A9lr6L+RNF8Bnh/bAiRvGGy5Y6PDKtCbc+4SQkgpPccNHvT87OrGWxk8+X2O+2hflvz+LgY8+ASOMm3i5Eeby4sv7sEnn1zM0Ue/QCz2ZzyencT/A++FfwyBcDVkddriqY2NjSxYsID+/ftTVVXFsmXL6Ny5M6NHj/75+3x1J4y8YcfUeTPo1+85zjxzFAMGFDJ27DNAKa2ZuenFNfu+yjF7LEZccwszlp/JFRd8wLKqyLJPZ936/NpVjUi5e5hSN0SHJcO4D/fc5H6hSDp38c+56dqFT48c8sxvJk65igMP/A+Lep3BK6ffxwXvXEdbFO0irr76DdauvYMzztibHj3+SU3NTrIuFQ2GXsPh7WPg0i2vZ3nvvfeorKyka9euGIZBUVERL7/8Mmeeeabj9LY5zHkKQkk45IEdXPk23HTTF6xZ08KqVVfSs+eTrJ8uq5ATB33KE2ePp+ctF3PvC/czffz3/OvVxUZE/v4qH8BeW+4IOjI6LBluu3ljUyUAEnSXSiwW/LQlaP6mZylE9R5UNbgZWFxDW36zdIJBjdGjn6ey8npycx/l7LP/y5tvHr9RsWvWrOGDDz7gsssuw5vOU/tLceancGcnWD4B+py4yVOWLFlCjx498Pl8vPvuu4wYMQJN0zj66KOZPHkyY8eO3XTZdgLeuAbOfXqTcxq/BLZto2zkTuEkbH/00U8Jhe7l8ssnsnr1KqCMNvlfp9DXCDqsjpcxtJ/GD5/FwWXX/OW+6V+sWNaIpm165H3jhaO3q86/BjosGaZ+XrWZIwKIFkLixVDwXg6+uJKb/Cez354JxM334qzNTSfecNZGV1VVcOqp42huvhEh7mLkyFJuvnlUa4kLFy7k+uuv5+CDDyYcDm87GbJK4dzH4PGT4IFy8G2c12/p0qV06tSJCy64gKeffprKykrOPfdcsrKyeOONNzZPhr+XwZB9YMRV21a3FCoqKnj66acZNmwYxx13HH6/P1WvZo4//mm+/fZGPvhgBS+8MBHowvqK8Dr+NessDui5ksbb/kL+gV1pTlzOwh8bujzwx2fuhh73bG5eIUOG7cLmouJJoGHiF5Ovy39poouK9y7n7y9VMuz3t+GMBE5M0TbYQCfGjfuGe+/tRHn57+na9W66dAlw1lkDsG2b5cuXc9ZZZ9GnTx9+/PFHDjrooG2v9sjrYPU0uLMr3LMGsrqtd3j06NG88sor1NfXs3jxYhYtWkReXh4rVqzgqKOO2nSZT+4BiShctJVK9mZQWVnJfffdR9++ffH5fNTU1NC7d2/q6hIMGPA3nnjiLPx+D+ee+xhOXupNpQSr5aJ3bsR66BIe2e9WigcNI7H8FGV2n+o/rVhR/TUUTNldZpw3xG5mWlWA8qduuuHYq2+85zC65tyLvP8Obp90DA98cRmwnM1HnrOAKt5992p69cphzz0fZNKk6xg7tnvrWVdccQWRSIRbb72V4cOHb98DvHEKzB4PV30KfY9c71AsFmPq1KkcfPDBeL1eJk2aRJ8+fejVq9f6ZcTWwROjIdkMf6gCZRtHLGDq1Kl89dVXBAIBRo0aRZ8+fSgtLSUSscnK+gu33LI/d999CIHAn2kLmbmpRm0BpXQJlFPx9B30P29/Rlw/nhfvzcaXdU8C/F3A07AhiXaHSbfdiAwKUHfmsKE935o3/3JEYBKfH3Uk+WVljPjH4zjulVtKVChwTLONTJt2I5ZlcuCB/+DTT6/lyCN7UFtby4cffkgwGEQIQW5uLieeeCK5ubnb/hCT74QP/gr7nAGn/HMjF+8t4ov74aM/QJ/94Kpp21wF27b58MMPaWlpwe/3U1tby1lnnUVubi6hkEV29l+5/PKRPPfcsQQCDxAOR2kzUW8OFtCbi/d6h39f9jbiN9cyYerjaKEVHHv8k3OhbCPrR4YM24H1ySCASFeQa6W8iwPOraLHlP149c9rEFc8g0OUZn5+2kTBMb0GmT79RgwjyYEH/oPXXruUc88djGkm+fzzL1izZg0ej4evv/6aYcOGce211277g1TNhLcvcdy8+xwGIy+EvkeBa0OXchvWToM5r8CC8U743qMegL0v3+ZbB4NBJkyYQEFBAdFolFAoxIknnkh+fj5VVTG6dLmP664bw6OPHkVJyUPU1zfjzDJvjT+RAHox+Yrf0du7nJ6P/RspL+a6ayfzxJMf/wO63tieUBkybAfWJ4MN1Cz7fvrNfedUdea3p56K9cI4Rt15A7Oq9wbWsnGg3s1BwZmgi/Dll9fh9ghG7/MY991/PLffNgaA559/PtVzhli2bBkXXnghAwduwmHul+DH9+Dbx6F+IegaeLLB7XfWZCQjEI84eoG/Mww7Hw76/XbdrqqqilgsxpdffklBQQFut5uRI/eksLCYadOq2H//f3L3nw7nllsOplvXh2lqasDRE7bWsU7iRPn2IB+9hDtfLuWB5vEYq0YzcOCzLFmy5lQoGpcmRIYM24E2MihAxes33XTiOeddeSB79n+Q+ltv467vL+afX14N/MS2JSGPAs08+eaVDN3Dw0EDH+ecszrx+punA87E2Ny5czFNk4qKCrKzsxk8eDCDBm2n059twJpvYN0PECwH23SsUIWDoeu+4C/eruJXr17N/PnzaWhooKSkhEgkQjwe5/zzzwfghWe/4/KrPuPup67ghGNL2KvHy6l3sbUjQntYQBc83mXEHr6C0t8eyZ7nP8W//taFzp3uA1zdwFcOMkOG7YFDBgWou6hHj64vrlr1G76f3YB4vJi9y2xeXTKUkqwIYpsTfiskkwkqKsJcedsBlCtD6HVGN3p3EXz//RXk5Dh5GcaPn8D06dMRQuByuRg6dCh77703PXr02GHPuiMwbtw4KioqUBSFXr168c4777Dffvtx5plnkp3tzOZfeOE4Xnmlitf+nuDcA7/lgwe/I5GIkZuXy7a7WttUhUs5vfssfAl4vusELr/tBJ57bhFXXvniEigdCCJDhu2BQ4bY0LIy//yVK29E1wEMSP4TKhUorgHVZLOjQipX7vp5Dza6C1gS5jfB/kcAp3H6af/h2+mreeqpEznppP4ArF27llgsxqJFi3j00Uc59dRTGTZsGFVVVZSUlGx+bmAnIZFI4HY7aaEaGxuZNGkSq1atIhaLMXToUE466SRmzpyJrktGjRrDsmXNXHTR2zQ2xvl6zvUU+dbCtL9AnwBkudlYWd6EEULdnGFCOtc3ljpfuxwDDADgxhun8o9/TH4Zci+S8pYd8/A7ER14noEhIOarag7XXPMZ69ZFQdGh4FhnYcsWTdkKsWiSproYqqagKgLDtIkbZlsW+/a/rQq0NJOnvUFWdhZVVes4+eRHOOaoQ3nzrdPp1s2ZK1BVldNOO43m5mbq6upYunQpgUCAZDLJqlWr6N+//856F+vh008/paWlhRNPPJHFixczffp0Bg0aRFlZGbquYxhx9ttvPwD+cPsX3P/AJ0Aje+5xGJec8hbldVlQeA0yNRg4swkSoSitM9NuVaAIsCyJogoKS32pY1voPFWgaQ3El+J2qySTNpB1IVAO3LnTXsgOQkceGfYEdQzEa51Z5V9Sz5iFt1v3Uy8d8HBjXQwpYVCvQoqyvbTEk0jDakuQswFcLpXevfPRLIu//e0bli2u4L57j+D2P6Rjp1osWfITU6dOxbZtLr74Yj7//HPKy8vp27cvtm0zfPhwSkpKWsuMRCIIIfD5thwmPxaLbTT7HY/HWbt2LT6fj2AwiKqqvPPOO4RCIUaMGEFFRQWFhYUAXHTRRa3XffLxCi697H0amgzuvfcQirsUsHJVA8GQs3Za4rRdRYBpSxRNQ5gmkWCo0aUqwcqQUVAbMQNZWTrhluSqr96bdwfETdB+gS+IG8jWwValvPnlrb9u16Ajk2E7rm7i2HP25onXj7x4TXXzvw3DJtvvZu+C/F+8NP2xp2Zwy02fkput87cHjuLiS0c4d2iqoaEhTI8ePXj55ZexbZtp06aRnZ3NIYccwkknncTkyZPxeDwEg0E6derEoEGD8Hg2n29u+fLldO3alZaWFoqLi3nrrbcQQlBcXMzixYuJRCKUl5fTp08f/H4/JSUlNDY2ctZZp+FyOUT7/rsqrr56AnPmVnDp5fvw+DMn4Nt6+0ILxMorEsn85Q3xEkui5ua56xtqY4POHDmurrmhmS3ny9s8MjrDdmD7yNDCIScM465nDqJydegGBfvRSNzAtCTD+5YwonsBFhCOJxGKskmCWLbE49HIRdAUl/zhlo94/tnZlHXO5ne/G8Nvr9m79dyqqnLmzVtIXl4e8XicnJwcSktLueyyyxgxYgRlZWU0NDQQCoUYNWoUXq8Xl8tFKBQiEonQ0tJCz5496dq1K9988w2xWIyWlhby8vJSYo9BTk4OPXr0oLGxEVVV6d+/HwMHtlm2Jk1cwd13f8F331dw2NiePPrE8Qztn48FNCZNFIQTjRNHy7IANRV7StUU1Gg01tgUql3ebBQsb4hlaULiUpUmX0Dfu6Uxufy6kycSbAri9Pa/HBkybAd2GBnWhEHKawT2E4ZpE44m6d45lzFDuuATgqCxZWuUJSUFLh0dqG5Octftk3jt5Xm4NJXzzxvGddePpl///PZXYBgW0WiMl156ieLiYgoLC5kwYQKaptHY2Mh+++2HaZqsWrWKgoICcnJyKCws5KeffiInJ4fevXszffp0Ro0axY8//sh+++1HcXExPXt2x+1uE6OCwSTPPTubp56aweo1zRx+RC/u/dsR7D3cEdEaTGujwB0S0IRwfHuFQFMEVjwm11Y1hJcHbU99OKkbpolh2vVCsHd2rntVU12CG0+ahJmI4WQf/eXIkGE7sOPIEAIESHmlkPYzEklLOEl2wMOYwV3oke0hCUQtC9OWmxwl0qn/CnQNFWhO2jzzxHc8+8/ZVKxpoXfvPE4/fTDnnTeM/gPyN7jaBDSamhpZvnwFffv25ZNPPsHn8zF8+HCUlNLqcrmoq6vD4/GkyFHAk08+SmFhNmeddVlraU2NCf7zn0W88so85sypwevTOPOcwdxwyxj693BmtZtsC2lvrBKJlN+dDXg1lVQoM6rqmuWimogIJiyaI3GKAp7KwoBndMywKnS3QjhocPze72CbTTipen+5I16GDNuBbSODExwdghx84mge+c/BLJ5bjm05lhKQJ2Nb44SAcNRA0xT6lRVQnJdFpzw3WUKQQBKzbKxNECNNihxda+0fp35XwSv//oEvPltNQ32MvFwve+5VykEHdufgQ3uyxx6F2/wOYrEw69bBtG/K+XzySqZ/V0FlVQifT2OvvTtx7gVDOe20Qa11abLNVhKIdrVP19ujqa2Z7gzTwDYt3B4Paxuj/FTTQkMoRmmOd97oPiVHuDSltn1dPvlkDaefPo5IJD0f8cu0rwwZtgO/jAwuHCIkyQrE8fvrGTaqkEv+cAxZhb1RVZ1wSxPJRBwp5d7Y1n+FoNg0bcIJA0VxkZuVRVmBl66FHopy3HhxiBG3rI3CyUMqmqWukNNunuP7+euYMG4pX05Zw4qfmomGDbwejaIiP8XFfrp0CVBa6qekxE9WlsvJdgMYpk00YlBXF2XdughVVWFqa8M0NZk0NkVRNJsuZQFG79eF40/uxxFje7VK7nEgapobjwKARKBpamu6dIAfl6+xK8srpT87R9Gz80VpYS5NoRg/rK7F79ZfP3Wf3udt7i3fdNNXPProF0BvnLxubfGqfg4ZMmwHto4MLkAlJ7eFvv1rKSgM4/PH0HSDaDBINOqi59Dh9N1jb7oP2oO8klJsyyLc3FSYjIXfxbYPEoqClDahmE0wruL1uCjNdVNW6KFroY+CLBcuSBHDRqZkcIGTl8BJTSBws7GdZU29yYJ5dSxcWM+Kn1qorgrT0JAgHjUxDBvLcvJgqqpA0xQ8XoXcXDfFJV569MxhwOB8hg8vZnAv33qN3cRphlJKkG1pBcARYFRVJbfdBcvWVMnpMxdYs3740Q4Fgxxx+AGqVtRVVRQFVVpU1Ic4ZFi354Z0K/ozm0lg/sILL/KXv/yJugYXpjESIzkGJ6hwPQ4lt0yKDBm2A1smg5Pl3u8PMWR4DT371OP1xonFVJIJBcMQSClJxGK0NNYhUCju3pNu/YfQY/AedOs/hOyCYqRpPBxpabw5EYuCtEAoRJMqLTEQikp+jo/OBR66FfnpnCvYXOhiCyf+gwmYlo1l26gaeIWKe70ZcIMwCaKxJImERdKwIUUGj1fD53MRwIVoZ7GRQBTpzAUIBU2sH9MujTjrk3FtbaP97Yz51rQZC+SMeUvtJctW2EP791Ruuf4SV6CkizJj0Sr8LoHf424Y2rPkvL37dfkUGISz+n8GsF5Ap4suvoKXX3qe7DwnFI9ldiOZOBAjeQDO2oc6nKgYmyZFhgzbASEe2WCPxGkCLjzeMAMH19K3fy2B7CShkJtE3FnmKaWNbUuktJG2RCKxTYtwqJlISzMuj5eSHr3p2ncwXfsPoVP3Xv0KSzs/rmra2Ob6GsVMJpCql1DYIBqLIwHTTJLlEhRna/iUJE21VTSuqyESiZA0LSzTJplMkkwkMIwEyaSJYZgYpoFpGNiWhW1Zjh4iHPcFJ+mNACmRto1t2UghsFEQKCgCR7lWVVy6jqar6JoLl8uF2+1CKIJkIonP52bY4AHsM3of3P4cFixZzfTZi6yZ85ZYqyrWSQWQZlJ2716mXHDOKZo/P19ZVdOC7vE3Hzys+3+GlnpvAGJGMoGmuxBC9MDJer6cVIyXWCzGQQePZeaMaWRlFwGgKE0gTEyjL8nEwZjGKJzc23U43cP6pJDyxp3STnYkOrA7hs76s84quh5nwKAq+g+qJSc3RiTsprHBhxASIexNpt6WKbnGF8jBF8jBMgxqVq9k5YK5Hs3l7pJTVGoWdiqbOGjv/fYffeSJfiEEkaY6EiLGokVzaW6sx+fzYFo2ScNESgtpJDCjLcSCjUSDjSQiEYSUaG43uu5CUR0VNj3LLQQoMv00AilskBIhwZYSRUpsnE0ikJaNlBa2JbGlRNoWSIlpWgSDYeLRIIW52fTq1QNvr76srGxhzhsTWV5ex5rKWizLVPNz/GqXohxamoP0GjhQnnDiUUL3BagJ2lSuWk5w7Y8zxuQf/+9mV88Siai0bMsoLCwCWJ1+d5ZlEYlEqK+vp6GhIf1GAbDtPECiaSvQtJ8wza9JxsdimsNwmlV7k/XuETqmw44Mo/a5Cs3lQhFKqkErFBSEKe4UIhZxEY/rqV7WgW3bKdl5/ZHBdj4LbGmPklIOk7YcbJpG/6SR6JVMJIvi0TChxgaktBm2/6EccfZl9B6yJ0Y8Qn11FUt/XEJ9XS1enxeXpqIIG03T0F1uFFVgJSLEgs1EmhoINtQTDYUAG0V3o6ipPNCybZOyjQxS0rYfiU0qwLYFYLcuQU7E40TDIXwujR49utOtTz8CxWUo3hzWtSRY/NNa6utr8WgKLk1F2jaRcBDTMOk3aAB77zOKnIJiKipr+H7SeCb+5wXCLY0I4SI3P5/c3Oya3r16rejWrevSvn16z99rr71mDx0yeG5BYWFE13VM02DPvfZlwfzZZGVvaB1zKqko9UhUTGMoUmYDSQQC27YwLRMzOftXaTfbgw5LhjPPOxGPz99GBiTJpEY8tj4J0tiADB4p7UOlLQ+2pT1G2nIPW9o+mRZJpMS2LAzTwDJNbNvCSCaoq1yLN5DLPkecyN5jj6dH/8FEgk0sXTCfmqoqNFXgdukoAgQSRQFVU3G53SiKJBkJEW5qJNjYQHNDI+FgEJDomo6qKQ4vbIcMaeUXHL1Bpv6lRxTTNEnEwmAlKSkqpqxnHwrKepFVVEYMFysrallXUwOWgUtVQJpYpoVpmISCQXRdZejwYQwasReRUIRZX0/i6w/fZvWSHwDw+vNIJOLYZoJNzRt07d6raY/hw2YfsP+Yb0bvu+9n119/87c/zJ2JP7DhPEoazjpzRWkhHZ1ECOGIkAYkYh2znbVHhyXDsSeehdvrbUeGLSNFhuFS2hfbtjxTSru03cjgfLYjQ1qmsm0b0zQxTQMpJeFgM3VVlRR16cpeBx/DsP0PpUuv/tSUr2HNTz8iLRNd11EViSIEQnGc3RQh0V0abo8bISAeDtPSUE9LQwPh5hbi0SgAutvV6hna+lxpDkgbM5nANuJ4vV7yizqR37kHeV16oWYVUB+MUVW9jkQ0hC4k2BaGYWAZJpZlYBhJoqEIubm57LHPaLxeD/Omf8n3n3/A4tlfA+DxZqOo6nrv1JmhFq11SiYNLCPSelxzZZGdnT09mUi8jBD/gq1bROKQwcQwkyTj2xBg+VdGhyaDx+fbKjJIKbFt+1Ep5Q2bEZM2IoNsHUlkikggpYVlOftDzQ20NNRR2LkrA/c+gIGjDiArr4hQsAkzGkRgoyoCVRWoikBJfVcEKKrA7XLj8XoAm3gkQri5mWBTM5FgkGQi6bhC6BpCKCAtpJVEEQK3P5usgk74i7vhzi0laWusq2sg0tIAloG0TEzDaN2slJKeTCZAqHTqXEZ+boC1yxYwa+rHLJ79LaaVJCuQj6Jp2Ja1ninWgWiN5Nc+op8QTmL6WDSGy6Wj6zpSytXApcCUTYeSaVeqULBMI0OG7UXbyCA2qRi3QYJQbpOWdb+9eZ1hPTJYtr0eGdJwOkhn7gBFIBDEwkGioWZyC0vpOWRPSnoMwJ9XQFaOH01IFGmgKqCqCpom0FSBqiioqoqmKqiagtut4/a4sS1JLBImGgoTCYWIhyOYhomtusCdg+rLRw8UgCuLWNIgEYtgGwmsZBIjmSCZTGAmk5gpy5VpGkgECBVpmohEkHB9BSsWzmL1kvmYZpJAXhGqqmHbdmqT2LblfLecfU4HYG/VCNwOJUDtlk7Y3UaGjmtNkpJ4LPozfQ9I20Z3uU9yuTzYlrnpk2XbF0ciESiqQlo0EML5T1XV1k3TNDRdR+/UGV13YVsGsXVrKG+oxl9YSl5pF/x5hagev6MsC4mQJgILISVCaettlVT5QoCq6Wi6C0vJJaFqRBMJTHxI04/dksSsW4W0DEcEA2zpNFbbshwCA6qi4vP5sUyDaLCBpnUVBGvLaaleRW11OYqiUdq1h9MYU9dZKTJYpoVtOyOgZVlYloVQLCzTxLJ+fumnEM4cjmEk90PK97cU6lLgjNpCbL0P+a5ExyUDgJ1WKrcIzUgk+ksp0XQdoahYVhI75UMhEKCCYivOKtCUjV9VNafBazqapqHqGnr6u6aiKqrj3t36W7vxB7JB2piJCPXLF9Gou9C8WQh3AFw+0DyguRCKDqlGIy2n8cnW0cgxoCIFqpa6h93sBAZofVaBEApCUVBVDUXTEYqCtE3MRJxENEgs2ECocR2hxhoiLQ0kE0lU3UN+cZfWRm9ZJrYtWxu+nWr8G262ZbW+r80hTWwpJaaRRNrWCIF4f0vDts36YldHR4cmg/Mit/wyBQyV2LnJeBzTSOJye/H6shBCYBhJjHgcy7JSnqFuNM2Fqikoioauaa0jgaKorXMCrSXL1Dgi2h0QKrrHh+4BpI00YshE2HGGU1RsxQWa2yGF6kLRPSiaC0XTUFQdIdR25Yn13atbRTkLyzCwjATRUCOJSIh4JEg83Ews1EQs3EIiGsKybISqo6gaFjrJRAIrEsVON/52I4BtW21i0SbExE022tTolNarnDKsdG8/auMLNvptdit0XDJs/ZscRUrssS2LWCSEaRq4vT7cXj+B3AJ8Ph+apjnKZyKBkXTkbUdudixLtmqjCMXpkVNWolZjT/sGI+10JCCnH5cKEse/yU6aWEYU00w6YoeU2AikUFObAFRn1EjpQnZqtLAsE8swnLol4xiJGMl4jEQsgpGIOb2xxImzpDgOfrZlY9mR1HNYjsnYtpBWOx2pvV7UvhffhMK8PuT6Opdtk14ckbpiZMfUNrcdHZcMW4+90l+EoqR0jQiRcBBV1fH6/MQD2fizsnH7fHhzC8jxeNA1PTXBZWEmEiQTUZLxmNO7GslW8UwIBUVVEEJtVarB8QhFSmxJSmm3sW0wpYIlNUzAskwMI6XwJhOYRgIjmWx10zBNA8NwzLqmaWJbFmZabHHu7hAnNfeQnkdJGwKcObv0ZJ5TK1vKjRp469+pEWnTzb+tDGdap41MbQOjaC+0FgEDgV8pq+PORwcmw9YODXKjDOKqqqEoKrZtE2ppoqm+BtuyUXUXHp8fXyAbX1Y2Pn8AXyAbf1aAnPxCXG5nOaamOaKMkrZOWSa2aWIkk1hGAjPVgzvkiZNIJEjE49iWiTQNrGSq0RvGepszn2FhGjamJTFN6XxaYNmpzQLbFtjSSpmAW6fiUn4dCkJuoEmlVu0IoaCsN38gNvm93btbj0jOrla/kQ2Is0lfl1FkyNBh4AE2m9zMseU7SnFa7k1Ew4SbGzGSSUzTBAG624Pb68PrD+DPzsHnD+DxZeH1+fH4/Lg9HlxuD26PF1dWLn7dsbmrqrpJudpqJUASI5HAMJIkE/GUM1+cZCJBMmUuNVKjRtJIYiYTrQ5/yUQCIxEnaSRa/04m4ilxqU1s29AcKqVsI46UrVMBMuXykZ7tRm6yef9SjARe2f5iOgY6LBm20ggxXEr8W1+mQNUchdPl8babdLMwEnESkRC1FasxjQSmYWFZBlIKFEVBqCq6y42mu9DdbodAHi8utyf13YOmu1E1NaWka6QndtO9suO9ajvmUtPENJIpccl0dIzUZtsWSEdGd6Y8BLqqgktHVdI6TEpcS1nchHR8m1rFJkiJcTs1V8LPKtG7EzosGbYSI3dEIUJR0DQdNA3d7U3J5bR9ts5aW1imRSIaJhpsTtnm2zVky3K8Ty27TeYmJXevL287JEkt0JS0zUWkF20qQjg7hWhdSNQ6IZju3WG9e6ynQzgHd8Tr2RKG4/htR3f2jX4NdGAybM3QIH+VnkmkRCGhqgihINHQdFdK3t5go71S29ZQ269IaxNZZIp0jiNi23FaPVlbrUGtBOhQNhwvzoKgWbu6IjsCHZgMW4UdMjL8UiiKklKaEyjr9d60kiGtRzhGp18uoLcnkm07nq12SnSyrZTLt21jGiaWbePzepyJuV/fvWY4GTLsXGzFuFAgHdPerw7LstB1HY/Hg2mYxGIxYvEY8UQCwzQxDAPbNJ2GTMoMaqdMsK0WopQsn+7s13NLb1sYlA4L68x/4JAP0boCTlU1PF69VSzbBRgF/GtX3HhHo8OSYSswkl+emGGHoKZmHccecyRXXn4RDQ2N7VyynZVrUkIymSSRiKfmFwySScNZP2E5aw7MlB+Q41SYdp6TqIoCAsfJT1VRFMc9RNc0NF1D13Xcuo7L7cbtdpGbk03SMPjN1TewZk052TmbTia/E/E/o0R3XDL8vDlp5K+gIG4SScMgNzeHrl1K8bh1CgoLyM3Nw+8P/MyVJpAAmcSOG0TjBrG4QSxhEU+YSGlS5I+jaza2reNyKWiaQm1QJ26o6JpIrYtWUhYqSSArQCgcwufzYRjGr/D0G2EokA0Ed8XNdyQ6Lhl+HrusR1KEgiIUorE4kWgMtTlEPG5RXJggkOMsi/z8uwa+XtDCipoEkaSFhYVtWFjSpjDLpiDLJN9rkOs1yPMm6BRIkOtN8v6PXr77KUBTTMPngr16mpwyxsCtqqwN6Xhcac9ax4kvFIqiKAJd138N69GmoAN7AlN3xc13JHZnMuwS5Rkc5dbtdqHrOrqmYUuFbqUedL+P1yfVc9/L1fy4MAQxQFecRB9CgCUgW1DaVaVfKfQtkWiFNt3zBZ1ybf7ycRFvTSwCQwHdBhM+mSr5eH6cp6+IUJYPtWEFTYhWHQJp43J5cbtdbHv2ne3GSDJk2GXojZO+fpfAljauFBlsqTKgu4cEGqf8bi0fjm8Ar4BOLocE6c7aAqFCn1LoU2zTrcCia55FWZ7JsC4xHp6cw1vvlUJJEjxGmwJtw5xvPVyiCT69OYbfBaZMBzBz5ih0TUuFut9lycj/J/SGDrvqIu0ctpltI3+kXwsSJ5iXk0ZKoWcnN0lbY79rqvnw7Qbo6YaubmfCTLZeBBLysqAoG/L8Nrk+m3yfRb/iBIurdZ6alA/5Bnjs9a8TQHeTRdN1Xp/uok+pxJZtkfwAND1Dhh2BDkuGn8GIXXlzVVXxuD34PApFeW6Ou7eFBVOjMNjjJLaxcd5sTMI6CyptCOMsKhISjw4Bj01BlkVZXpInvsyBOhdkW21ESHlMOzcEvJJ/TNSpCynk+KHV7grouobHs215E3YQegJlu7ICOwIdWEzaojVp1K6aiZUSFFVBd7nIyXfxj7cNpk6IQh/dOUEApoS1JnTWGXOQh4BL4vPYdMqxKMyyKPAb5HlNBpQkmLbczSczsiHPbCORKaBFAZ8NPumoAoWSmgUK/5yi8cCZknnlojWhlKZprQkPdyFGARW7uhLbgw5Mhs1CsAuVZ3DmAvJzPNiG4KEPE46OkA4AmJCwzuTM03K4+3w/vYtNjGSCSCRBJGYTiRvEYkniSZOA2+TvnxdAiwqdkmALJ6BjEm45q4X3ZntZtUKH3JT4ky158kOFC/aXlOZAQ8Rhg6qouFz6rnohaYwExu/qSmwPOqyYJDa/DcRZWLJLIKXjjtG7k4+vF9pULbWgSGkT16sNLjovn7f+XMrAbgrldSZrak2qmy3qQzbBiCQUh9KAwYfzvcyYlQUFpkMEBajX2LN/nIcubObi/WMQVdpEpjyIr4a/fSzoXJAKaJDSG1yubcuoswMxdCM/rQ1X2nVwdFgybAG7cFQAsFFVlbwcL18utiAi28bXBpPSIT7+fXMxZizB8vIkhmlhWnZqIY+NadtoirMO+fGpAUckcqUaS0yA3+bGI8KsqXBx5miDnnskoF5pC1FUCK9NghnLoVuhs3TUskxcenpk2GUNb5fqcTsCHZcMmzcljdyVnpuWJfG4dUzp5scK0yFCujpBm4uOykboCpW1SSC18D4Vq0jaDil65Cd5b46P5Qt8qVEBJzJxo8bRY8Ic1C/BsnU6AQ/cfGTSKT8dPCMArJP8+X1JTsCJ1m2aVkcQk8pwFOndFh2XDJvHLh0ZbNvG49axhIeGkNU2KtiAT2F4dxdgtK6LttJRJWyJbUv8bpPGCDwxJcuxEqk4vX5YRS02uOagMI0RDVURrKpXOXWUxfDRBtQqzq9lAyWCjyZafDJH0qtYkkga6LueDAB7//wpHRe7Gxl8wB67sgK2baPrOl6vB2lvvL7AiSJht4VWSQc6ljamZdMtz+Bf03ysW+JxRoX05c0aZ4wJMbTMoDasoSgCw1KQUnDncRZ4pZORBJxVBBG44x0Ty7bQhIWu6YCyq5c77GIRdvuwu5FhD8D7cyftTEhpIxSV4jwfuX4ByVTrS80rzF0VB2xM0yFEOsyKbdvk+Sx+Wqfywhd+8Kc0bgG0qPi7Jbhy/zDVLTpKKhqfqsDqeoWjh0uOPtSCdaJtdOgsmPO1zatTDQoKTYSiAcquXvqTIcPOQNrdYINtl3mqpmHbEkXRyCrwM7BMg2S7HLPZKq9+FibclKBzvpO4MD06mJakc67Bs197ia91QY7dtpYhpnD5wS30KLBoiqlOaMlWdwtBY0RwxwkgSqXjGypwTLkK3P9fCDUZBHyOzLWLLTd7pmq2W6LDkmEz2OvnT9m5sCwLl9sFipvj9s6CLKUtQHuBwrrFBlc8HiQrH3oWyVSAMJv+JQY/lKu8+YUP8tqNCo0aXQZEOX90mLVNOrqKE8hYcXK9uTRBTYvCfv3gimNxyCBxRociycoFKm99I+lWIBCquqs8V9PIhl3nKrO92N3IsMtftGVZuN1uIiGVfQYE6D48C6ribb5InVTefC/Gcb8Ps7RC0iXPpl+JSXkD3PhyABlUICs1KliAJbjqwBby/TaWVPC7BQGvcPyYAlCSA53zASH48ykK+b0EhFKVUQBbYdoyJ/q3rmtbE5t2Z2O39VPanWags4HBu7oSlmXhdrkxU6nIH7m0M6dOaXTEJT01E12q8NFEg49+UBgzUCXgdvPVUh/RGhWK7TZTap2L/sPCnDg8yty1XuqjOsG4RktcpSWq0hxTqA8rxBMCVRNoqiSObEvrKQENglEb03YCGTur5XbRy3EwEnh2l9ZgG9FhybCJCHB7Sil3+TSrbdu4PS6ysnwAnDImj6POL+bTl+pgiNdpoArQRYEYTJsmwHZBloTCFBEEEFNBk9xyeBOGpbC2SacmqFPRrFHZpLK2QWFNg4JZ115Jl1AIuGkrx1Io9CfwuEAVCrvanMRuPDLsTmJSh3jJpumISaqqpvZYfHxPF4YcGoDFybasrxKnBy8CSmzwy7YGbAqodXHa2AYO6hdjYZWHhCkwLEfUUhTw6ODVgRzpZGYuBYppsyYJIC4gy+KQvkGiSTWVnupXfiEbYwiQu6srsS3YncgweldXAMC2rfU8RGOxBEKRTH+6lKNO9sFqE2raNfw00t9bNKhxc+hh9dx5VAMr6ty0xBUiCYVwQhCKK4TjgpaYIJzYoIz2ZRlApYtj9wuyb48W1oWc5aAdwA9IxbEq7XbosGLSJjB2V1cAnOgXnnZksCyb2toEBQHJR/fn8tSoEM9+mGDRciChOG9YSS35FILCTknOPX4dF4xppDHiYWW9i7qQRmWzSmWzSnmTQnmDQqhWgQiOaASsFxzVFKCrHHl8hLuObqS83gYp0DWdZDL5676QTWNfYMqursQvxe5EhneAS3Z1JWzLxufztf4tpZMCt7LORMXk2uM1TtjHZPLMJLNWmKxtlMSTkmyPRf/iJGMGhOiRH6OqWSeUdBb9FwVs3LpNQcCieyE0l0maIk5ISicdVjpukkDYghxdsu+AOEcNbaGmzqK2RbZak34uA8+vhKm7ugLbgt2JDJcC9cCtu7IShmGQm5vb+ncgECAQCIC0SSaTtMQTFBTEufTkBJdacaLhJPF4EmQSy5Ksa86jOZpPTr5Kka7hdqnrbR6Xhsel4nJroGugaiA0nJ8qPZ8VgWgzi1e6sDUXuYEYwawsdNcuJ8Ni4Cpg2q6sxLaiw2b7PPn0Czbal0rSMUAiL5OSc6S0O23Jh74tTunPnJPKUpNO1LFh4GEnmrVzPBKO0K17Vwb07+cE9tI0NM0J3aIoTh62dHJCAEVxrnMiRAonurYQaKrqxEBSlFTqXAWRmqtIG9LawtzbremoEskE4VCEYDhCNBolEo4Qi8UIh8MsX7mGeDyBpiqtgYdbw89vMiR9W7zX1lDGm/g7XRdn78b7gC+Bl6SUL23u90wmOn62z92RDKkYpLiltI+QUo6VUh7oJETf+WTQVY2GpiZqa2vTlUpF0ZPplT9OI0/HX02vwUnbKtLBiZFg207mn1SKqPbpaaVtY8lUlk/Lcf5LzdKl3oZCm8urM/ucl5eHmkrntZPJ0AB8L6X8AvgUWNj+nE1hdyDD7iQmbYgE8N/UBtAdx4V4NI5D3wCg846+adIwyMry4/f32DTJSHmutiOabW+CkL8oCnd6bY+TUiqdzQdozc9A+3vvWMSBn4AfcQIMTwd+wFHv/6ewO5NhQ6xJbe+k/taAXkBfoE9q65na1x3HHXynYMMJQ0UBpNgOMrSzJO28SbVaYBWwAlgJLAeWpf7eYvLz/xX8L5FhQ5g4P+ayTRzLxxk1OrX7LMXJel+cOp6PM3n0q0fy3YEwgGagCWjEMUDUAuuAGqAqtVWnPhO7pJYdBP/LZNgSGlPbwp85LxuHFAU4xMhN7csGslKbH2eU8eGstfCkvhfhLNLM2Y56mjgNOIjToOOpLYaTLSeS2sKpc0JAC20EaEh9j5PBz6LDKtAZZPBrY3dyx8ggg52KDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCFDBkyyCCF/wPXGOOK0Sf6rQAAAABJRU5ErkJggg==\" style=\"width: 195px;\" data-filename=\"2021-Microlearning.png\"></p>', '', '', '', 'good', '', '', '', '', '', '', 'good', '2021-08-02 13:03:34', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/11', 'page', ''),
(12, 1, '2021-08-02 13:04:26', '0000-00-00 00:00:00', '', '', '', '', 'goo1', '', '', '', '', '', '', 'goo1', '2021-08-02 13:04:26', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/12', 'page', ''),
(13, 1, '2021-08-02 13:04:43', '0000-00-00 00:00:00', '<p>This&nbsp;</p><h1><ol><li>1</li></ol></h1><table class=\"table table-bordered\"><tbody><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><h1><ol><li><br></li></ol></h1>', '', '', '', 'gooddd', '', '', '', '', '', '', 'gooddd', '2021-08-02 13:04:43', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/13', 'page', ''),
(14, 1, '2021-08-02 13:51:57', '0000-00-00 00:00:00', '<p>                      \r\n                      <iframe frameborder=\"0\" src=\"//www.youtube.com/embed/4aE58wbXdqU\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p>', '', '', '', 'School', '', '', '', '', '', '', 'school', '2021-08-02 13:51:57', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/14', 'page', ''),
(15, 1, '2021-08-02 18:30:07', '0000-00-00 00:00:00', '<input type=\"text\" name=\"email\">', '', '', '', 'Last Contact1', '', '', '', '', 'publish', '', 'last-contact1', '2021-08-02 18:30:07', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(23, 1, '2021-08-03 12:18:40', '0000-00-00 00:00:00', '<b>This is policy page.</b>', '', '', '', 'privacy', '', '', '', '', 'publish', '', 'privacy-1', '2021-08-03 12:18:40', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/23', 'page', ''),
(24, 1, '2021-08-03 12:27:12', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 0, 0);\">Wordpress </span>Project Data', '', '', '', 'Wordpress Project', '', '', '', '', 'publish', '', 'wordpress-project', '2021-08-03 12:27:12', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/24', 'page', ''),
(26, 1, '2021-08-03 13:26:50', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Other name', 'other_name', '', '', '', 'publish', '', 'field_210803012650', '2021-08-03 13:26:50', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/26', 'acf-field-page', ''),
(27, 1, '2021-08-03 13:27:10', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Feedback Number', 'feedback_number', '', '', '', 'publish', '', 'field_210803012710', '2021-08-03 13:27:10', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/27', 'acf-field-page', ''),
(28, 1, '2021-08-03 13:27:19', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:8:\"required\";}', '', '', '', 'Description', 'description', '', '', '', 'publish', '', 'field_210803012719', '2021-08-03 13:27:19', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/28', 'acf-field-page', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_posts_18082021`
--

CREATE TABLE `ci_posts_18082021` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date_gmt` datetime NOT NULL,
  `post_content` longtext NOT NULL,
  `post_description` text NOT NULL,
  `product_type` text NOT NULL,
  `product_image` text NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `text_data` text NOT NULL,
  `number_data` text NOT NULL,
  `textarea_data` text NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_password` varchar(255) NOT NULL,
  `post_name` varchar(200) NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_modified_gmt` datetime NOT NULL,
  `post_parent` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `post_type` varchar(55) NOT NULL,
  `post_mime_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_posts_18082021`
--

INSERT INTO `ci_posts_18082021` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_description`, `product_type`, `product_image`, `post_title`, `post_excerpt`, `text_data`, `number_data`, `textarea_data`, `post_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `post_type`, `post_mime_type`) VALUES
(1, 1, '2021-08-03 14:18:57', '0000-00-00 00:00:00', 'This hello <span style=\"background-color: rgb(255, 0, 0);\">World</span> new.', '', '', '', 'Hello world', '', '', '', '', 'publish', '', 'hello-world-1', '2021-08-03 03:52:14', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/1', 'page', ''),
(3, 1, '2021-08-03 14:20:28', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Short Description', 'short_description', '', '', '', 'publish', '', 'field_210803022028', '2021-08-03 14:20:28', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/3', 'acf-field-page', ''),
(4, 1, '2021-08-03 14:20:35', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Other name 1', 'other_name_1', '', '', '', 'publish', '', 'field_210803022035', '2021-08-03 14:20:35', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/4', 'acf-field-page', ''),
(7, 1, '2021-08-03 14:26:49', '0000-00-00 00:00:00', 'This is good form <b><u>contact.</u></b>', '', '', '', 'Contact', '', '', '', '', 'publish', '', 'contact', '2021-08-03 04:44:04', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/7', 'page', ''),
(11, 1, '2021-08-03 16:02:53', '0000-00-00 00:00:00', '<h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 70px; line-height: 90px; color: rgb(0, 0, 0); text-align: center;\"><span style=\"background-color: rgb(255, 0, 0);\">Lorem Ipsum</span></h1><h4 style=\"margin: 10px 10px 5px; padding: 0px; font-size: 14px; line-height: 18px; text-align: center; font-style: italic; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-size: 12px; line-height: 14px; text-align: center; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; clear: both; border-top: 0px; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"><div id=\"div-gpt-ad-1474537762122-2\" data-google-query-id=\"CKLb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"2\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"><div id=\"div-gpt-ad-1474537762122-3\" data-google-query-id=\"CKPb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"3\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque justo. Fusce vulputate sem ut nibh accumsan tincidunt. Fusce posuere lectus eget magna ultricies dictum. Cras tincidunt interdum feugiat. Nunc dignissim finibus nisl a convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at ex justo. Proin sit amet enim a sem sodales cursus a fermentum est. Aenean finibus interdum egestas. Fusce bibendum ultricies ultrices. Aliquam venenatis sagittis massa id tristique. Mauris efficitur varius leo, sit amet placerat elit aliquam nec. Curabitur a nisl sit amet erat ornare consequat quis ut sapien. Donec sed eleifend ligula. Quisque leo erat, porttitor eget iaculis maximus, ultricies at ante. yes</p></div></div></div>', '', '', '', 'About us new page 1', '', '', '', '', 'publish', '', 'about-us-new-page-1', '2021-08-11 04:20:20', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/11', 'page', ''),
(20, 1, '2021-08-03 20:38:59', '0000-00-00 00:00:00', 'This is good <u>video</u>', '', '', '', 'Hello Contact', '', '', '', '', 'publish', '', 'hello-contact', '2021-08-04 05:51:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/20', 'page', ''),
(23, 1, '2021-08-04 11:44:18', '0000-00-00 00:00:00', 'Kali', '', '', '', 'Kall', '', '', '', '', 'trash', '', 'kall', '2021-08-05 01:02:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/23', 'page', ''),
(24, 1, '2021-08-04 12:12:38', '0000-00-00 00:00:00', 'This  kfds dfg frg', '', '', '', 'goood hello', '', '', '', '', 'draft', '', 'goood-hello', '2021-08-04 01:04:32', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/24', 'page', ''),
(25, 1, '2021-08-04 12:18:09', '0000-00-00 00:00:00', '<p>                      gfdgdfgfd fghfgh 1</p><p><br></p><hr>print_r($this-&gt;getContactform(132));<p>                      </p>', '', '', '', 'working 1', '', '', '', '', 'publish', '', '-2', '2021-08-18 01:11:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/25', 'page', ''),
(26, 1, '2021-08-04 17:53:49', '0000-00-00 00:00:00', 'This is <b>contact.</b>', '', '', '', 'New Contact', '', '', '', '', 'publish', '', 'new-contact', '2021-08-04 05:54:58', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/26', 'page', ''),
(27, 1, '2021-08-05 13:06:31', '0000-00-00 00:00:00', 'This is good work hello.', '', '', '', 'Hi helllo', '', '', '', '', 'publish', '', 'hi-helllo', '2021-08-05 13:06:31', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/27', 'page', ''),
(29, 1, '2021-08-05 16:27:35', '0000-00-00 00:00:00', 'dfdg dfgdfg', '', '', '', 'good eoooooodf', '', '', '', '', 'publish', '', 'good-eoooooodf', '2021-08-05 16:27:35', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/29', 'page', ''),
(31, 1, '2021-08-06 11:37:59', '0000-00-00 00:00:00', 'This is test pages', '', '', '', 'test Page', '', '', '', '', 'publish', '', 'test-page', '2021-08-06 11:37:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/31', 'page', ''),
(33, 1, '2021-08-09 11:43:11', '0000-00-00 00:00:00', '<p>                      This is hi hello page</p><p><br></p><p>getContactform(132);<br></p><p>                      </p>', '', '', '', 'hi hello page', '', '', '', '', 'publish', '', 'contact-data', '2021-08-18 01:57:11', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/33', 'page', ''),
(60, 1, '2021-08-09 15:55:37', '0000-00-00 00:00:00', 'This is first <span style=\"background-color: rgb(255, 156, 0);\">post data</span>', '', '', '', 'first post', '', '', '', '', 'publish', '', 'first-post-1', '2021-08-12 06:03:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/60', 'post', ''),
(62, 1, '2021-08-09 16:09:44', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'post other', 'post_other', '', '', '', 'publish', '', 'field_210809040944', '2021-08-09 16:09:44', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/62', 'acf-field-post', ''),
(63, 1, '2021-08-09 16:10:29', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'good field df', 'good_field_df', '', '', '', 'publish', '', 'field_210809041029', '2021-08-09 16:10:29', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/63', 'acf-field-post', ''),
(66, 1, '2021-08-09 16:14:09', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hi page', 'hi_page', '', '', '', 'publish', '', 'field_210809041409', '2021-08-09 16:14:09', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/66', 'acf-field-page', ''),
(67, 1, '2021-08-09 16:28:41', '0000-00-00 00:00:00', ' dfv df', '', '', '', 'heloooooo 1', '', '', '', '', 'publish', '', 'new-1', '2021-08-14 03:31:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/67', 'post', ''),
(68, 1, '2021-08-09 16:31:04', '0000-00-00 00:00:00', 'This is all post...hai', '', '', '', 'all post 2', '', '', '', '', 'publish', '', '', '2021-08-14 04:08:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/68', 'post', ''),
(69, 1, '2021-08-09 18:22:53', '0000-00-00 00:00:00', 'gdfgdf', '', '', '', 'fgfg', '', '', '', '', 'draft', '', 'first-post-1-1', '2021-08-12 06:49:35', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/69', 'post', ''),
(70, 1, '2021-08-10 12:08:47', '0000-00-00 00:00:00', 'This is good post', '', '', '', 'hi post Data s', '', '', '', '', 'publish', '', 's1-1', '2021-08-16 02:46:33', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/70', 'post', ''),
(72, 1, '2021-08-10 19:12:59', '0000-00-00 00:00:00', 'This is customererer fddf<br>', '', '', '', 'custommmeee', '', '', '', '', 'publish', '', 'custommmeee', '2021-08-10 19:12:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custompost/72', 'custompost', ''),
(74, 1, '2021-08-10 19:20:08', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'last', 'last', '', '', '', 'publish', '', 'field_210810072008', '2021-08-10 19:20:08', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-custompost/74', 'acf-field-custompost', ''),
(75, 1, '2021-08-10 19:22:01', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'other fieeeee', 'other_fieeeee', '', '', '', 'publish', '', 'field_210810072201', '2021-08-10 19:22:01', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-custompost/75', 'acf-field-custompost', ''),
(76, 1, '2021-08-10 20:27:37', '0000-00-00 00:00:00', 'This is good&nbsp;', '', '', '', 'hi sample', '', '', '', '', 'publish', '', 'hi-sample', '2021-08-10 20:27:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/sample/76', 'sample', ''),
(77, 1, '2021-08-10 20:42:34', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'sample post', 'sample_post', '', '', '', 'publish', '', 'field_210810084234', '2021-08-10 20:42:34', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-sample/77', 'acf-field-sample', ''),
(78, 1, '2021-08-10 20:43:36', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 156, 0);\">sample                      \r\n                      </span>', '', '', '', 'good sample', '', '', '', '', 'publish', '', 'good-sample', '2021-08-10 20:43:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/sample/78', 'sample', ''),
(79, 1, '2021-08-11 11:47:23', '0000-00-00 00:00:00', 'This is new post', '', '', '', 'hello new post', '', '', '', '', 'publish', '', 'hello-new-post', '2021-08-11 11:47:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/hello/79', 'hello', ''),
(80, 1, '2021-08-11 11:49:36', '0000-00-00 00:00:00', '<table class=\"table table-light table-striped table-hover table-sm table_results ajax w-auto pma_table\" data-uniqueid=\"2024881929\" style=\"color: rgb(68, 68, 68); font-family: sans-serif; font-size: 13.12px;\"><tbody><tr style=\"color: rgb(0, 0, 0); background: linear-gradient(rgb(206, 214, 223), rgb(182, 198, 215));\"><td data-decimals=\"0\" data-type=\"blob\" data-originallength=\"14\" class=\"data grid_edit click2 not_null    pre_wrap\" style=\"margin: 0px 0px 12px; white-space: pre-wrap; padding: 0.1em 0.3em; vertical-align: middle; border-top-width: 0px; position: static; text-shadow: rgb(255, 255, 255) 0px 1px 0px; touch-action: manipulation;\"><span style=\"display: block; overflow: hidden;\"><span style=\"background-color: rgb(0, 255, 255);\">hello new post</span></span></td><td data-decimals=\"0\" data-type=\"string\" data-originallength=\"14\" class=\"data grid_edit click2 not_null   text pre_wrap\" style=\"margin: 0px 0px 12px; white-space: pre-wrap; padding: 0.1em 0.3em; vertical-align: middle; border-top-width: 0px; position: static; text-shadow: rgb(255, 255, 255) 0px 1px 0px; touch-action: manipulation;\"></td></tr></tbody></table>', '', '', '', 'hello new post', '', '', '', '', 'publish', '', 'hello-new-post-1', '2021-08-11 11:49:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/cloth/80', 'cloth', ''),
(81, 1, '2021-08-11 14:45:13', '0000-00-00 00:00:00', 'This is good work', '', '', '', 'custome post type', '', '', '', '', 'publish', '', 'custome-post-type', '2021-08-11 14:45:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/customs/81', 'customs', ''),
(82, 1, '2021-08-11 14:45:59', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hello cust', 'hello_cust', '', '', '', 'publish', '', 'field_210811024559', '2021-08-11 14:45:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-hellos/82', 'acf-field-hellos', ''),
(83, 1, '2021-08-11 15:00:13', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hi baba', 'hi_baba', '', '', '', 'publish', '', 'field_210811030013', '2021-08-11 15:00:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-simples/83', 'acf-field-simples', ''),
(84, 1, '2021-08-11 15:01:23', '0000-00-00 00:00:00', '<b>&nbsp;custome                      \r\n                      </b>', '', '', '', 'hello custome', '', '', '', '', 'publish', '', 'hello-custome', '2021-08-11 15:01:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/hellos/84', 'hellos', ''),
(85, 1, '2021-08-11 15:02:37', '0000-00-00 00:00:00', '', '', '', '', 'hfghgfh', '', '', '', '', 'publish', '', 'hfghgfh', '2021-08-11 15:02:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/simples/85', 'simples', ''),
(86, 1, '2021-08-11 15:17:58', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hello page', 'hello_page', '', '', '', 'publish', '', 'field_210811031758', '2021-08-11 15:17:58', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/86', 'acf-field-page', ''),
(87, 1, '2021-08-11 15:35:59', '0000-00-00 00:00:00', 'dfgfd fdgfd', '', '', '', 'good dfdf kfd 1', '', '', '', '', 'publish', '', 'good-dfdf-kfd-1', '2021-08-11 03:55:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/87', 'products%20custome', ''),
(88, 1, '2021-08-11 15:56:31', '0000-00-00 00:00:00', 'fgfghfgh v bfgfd 22222', '', '', '', 'bgfhgf fdgdfg 2222', '', '', '', '', 'publish', '', 'bgfhgf-fdgdfg-2222', '2021-08-11 04:04:58', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/88', 'products custome', ''),
(89, 1, '2021-08-11 15:57:16', '0000-00-00 00:00:00', 'hjghjghj333 3', '', '', '', 'jghjy 3333', '', '', '', '', 'publish', '', 'jghjy-3333', '2021-08-11 03:58:46', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/89', 'products custome', ''),
(90, 1, '2021-08-11 16:01:36', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'last Description', 'last_description', '', '', '', 'publish', '', 'field_210811040136', '2021-08-11 16:01:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-last-goods/90', 'acf-field-last-goods', ''),
(91, 1, '2021-08-11 16:02:08', '0000-00-00 00:00:00', 'Good dsslk fslkd kmfk&nbsp; gdgdfgfdgfgfggfd', '', '', '', 'Hello india fgfd', '', '', '', '', 'publish', '', 'hello-india-fgfd', '2021-08-11 04:02:45', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/last-goods/91', 'last-goods', ''),
(95, 1, '2021-08-11 18:30:48', '0000-00-00 00:00:00', 'Main post description 1', '', '', '', 'main post 1', '', '', '', '', 'publish', '', 'first-post-1-1-1', '2021-08-12 06:50:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/95', 'post', ''),
(96, 2, '2021-08-11 18:36:15', '0000-00-00 00:00:00', '          <span style=\"background-color: rgb(255, 0, 0);\">    hello world duniya 1 </span>', '', '', '', 'hello world duniya 2', '', '', '', '', 'draft', '', 'hello-world-duniya-2', '2021-08-12 11:36:46', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/world-hello/96', 'world-hello', ''),
(97, 1, '2021-08-11 18:37:49', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hello cus', 'hello_cus', '', '', '', 'publish', '', 'field_210811063749', '2021-08-11 18:37:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-world-hello/97', 'acf-field-world-hello', ''),
(98, 1, '2021-08-12 11:37:47', '0000-00-00 00:00:00', 'This is world data', '', '', '', 'hi hello world', '', '', '', '', 'publish', '', 'hi-hello-world', '2021-08-12 11:38:11', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/world-hello/98', 'world-hello', ''),
(99, 1, '2021-08-12 11:39:48', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 0, 0);\">custom dat                      \r\n                      </span>', '', '', '', 'hi custom data', '', '', '', '', 'publish', '', 'hi-custom-data-1', '2021-08-14 03:21:01', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/99', 'custom-posts', ''),
(100, 1, '2021-08-12 11:40:44', '0000-00-00 00:00:00', '<b>second post&nbsp; dd</b>', '', '', '', 'second post', '', '', '', '', 'publish', '', 'second-post', '2021-08-12 04:39:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/100', 'custom-posts', ''),
(101, 1, '2021-08-12 16:40:23', '0000-00-00 00:00:00', 'Good post', '', '', '', 'Third post', '', '', '', '', 'publish', '', 'first-post-1-2', '2021-08-12 06:54:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/101', 'custom-posts', ''),
(117, 1, '2021-08-16 17:32:59', '0000-00-00 00:00:00', '', '', '', '', 's', '', '', '', '', 'publish', '', 's-d', '2021-08-16 06:19:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/117', 'post', ''),
(118, 1, '2021-08-16 17:33:56', '0000-00-00 00:00:00', '', '', '', '', 'a', '', '', '', '', 'publish', '', 's-d-s', '2021-08-16 08:35:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/118', 'post', ''),
(119, 1, '2021-08-16 20:29:31', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 0, 0);\">good hello                      \r\n                      </span>', '', '', '', 'good hello', '', '', '', '', 'publish', '', 'good-hello', '2021-08-16 08:33:27', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/good-post/119', 'good-post', ''),
(132, 1, '2021-08-17 19:19:46', '0000-00-00 00:00:00', '<input type=\"text\">\r\n<input type=\"submit\">', '', '', '', 'Test contact', '', '', '', '', 'publish', '', 'test-contact', '2021-08-18 02:30:24', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(133, 1, '2021-08-17 19:53:39', '0000-00-00 00:00:00', '<form id=\"userForm\" action=\"/Shailendra_Tiwari/2021/15072021/project/admin/contact/sendEmailDataAll\" method=\"POST\" enctype= multipart/form-data>\r\n<div class=\"card-body\">\r\n<h3>Contact Form</h3>\r\n<br>\r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your name</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"text\" class=\"form-control\" name=\"your-name\" value=\"\" placeholder=\"Enter name\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your email</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"email\" class=\"form-control\" name=\"your-email\" value=\"\" placeholder=\"Enter email\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Subject</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"text\" class=\"form-control\" name=\"subject\" value=\"\" placeholder=\"Enter subject\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your message(optional)</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<textarea name=\"your-message\" class=\"form-control\"></textarea>\r\n</div>\r\n</div>\r\n</div>\r\n<input type=\"submit\"  name=\"submit\">\r\n</div>\r\n</form>', '', '', '', 'demo', '', '', '', '', 'publish', '', 'demo', '2021-08-18 03:30:42', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_posts_22092021`
--

CREATE TABLE `ci_posts_22092021` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date_gmt` datetime NOT NULL,
  `post_content` longtext NOT NULL,
  `post_description` text NOT NULL,
  `product_type` text NOT NULL,
  `product_image` text NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `text_data` text NOT NULL,
  `number_data` text NOT NULL,
  `textarea_data` text NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_password` varchar(255) NOT NULL,
  `post_name` varchar(200) NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_modified_gmt` datetime NOT NULL,
  `post_parent` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `post_type` varchar(55) NOT NULL,
  `post_mime_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_posts_22092021`
--

INSERT INTO `ci_posts_22092021` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_description`, `product_type`, `product_image`, `post_title`, `post_excerpt`, `text_data`, `number_data`, `textarea_data`, `post_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `post_type`, `post_mime_type`) VALUES
(1, 1, '2021-08-03 14:18:57', '0000-00-00 00:00:00', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '', 'Hello world', '', '', '', '', 'publish', '', 'hello-world-1', '2021-09-03 07:35:19', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/1', 'page', ''),
(3, 1, '2021-08-03 14:20:28', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Short Description', 'short_description', '', '', '', 'publish', '', 'field_210803022028', '2021-08-03 14:20:28', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/3', 'acf-field-page', ''),
(11, 1, '2021-08-03 16:02:53', '0000-00-00 00:00:00', '<h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 70px; line-height: 90px; color: rgb(0, 0, 0); text-align: center;\"><span style=\"background-color: rgb(255, 0, 0);\">Lorem Ipsum</span></h1><h4 style=\"margin: 10px 10px 5px; padding: 0px; font-size: 14px; line-height: 18px; text-align: center; font-style: italic; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-size: 12px; line-height: 14px; text-align: center; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; clear: both; border-top: 0px; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"><div id=\"div-gpt-ad-1474537762122-2\" data-google-query-id=\"CKLb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"2\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"><div id=\"div-gpt-ad-1474537762122-3\" data-google-query-id=\"CKPb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"3\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque justo. Fusce vulputate sem ut nibh accumsan tincidunt. Fusce posuere lectus eget magna ultricies dictum. Cras tincidunt interdum feugiat. Nunc dignissim finibus nisl a convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at ex justo. Proin sit amet enim a sem sodales cursus a fermentum est. Aenean finibus interdum egestas. Fusce bibendum ultricies ultrices. Aliquam venenatis sagittis massa id tristique. Mauris efficitur varius leo, sit amet placerat elit aliquam nec. Curabitur a nisl sit amet erat ornare consequat quis ut sapien. Donec sed eleifend ligula. Quisque leo erat, porttitor eget iaculis maximus, ultricies at ante. yes part</p></div></div></div>', '', '', '', 'About us new page', '', '', '', '', 'publish', '', 'about-us-new-page', '2021-09-16 07:41:32', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/11', 'page', 'testimg.png'),
(23, 1, '2021-08-04 11:44:18', '0000-00-00 00:00:00', 'Kali', '', '', '', 'Kall', '', '', '', '', 'trash', '', 'kall', '2021-08-05 01:02:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/23', 'page', ''),
(24, 1, '2021-08-04 12:12:38', '0000-00-00 00:00:00', 'This  kfds dfg frg', '', '', '', 'goood hello', '', '', '', '', 'draft', '', 'goood-hello', '2021-08-04 01:04:32', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/24', 'page', ''),
(25, 1, '2021-08-04 12:18:09', '0000-00-00 00:00:00', '<p>                      gfdgdfgfd fghfgh 1</p><p><br></p><hr>print_r($this-&gt;getContactform(132));<p>                      </p>', '', '', '', 'working 1', '', '', '', '', 'publish', '', '-2', '2021-08-18 01:11:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/25', 'page', ''),
(27, 1, '2021-08-05 13:06:31', '0000-00-00 00:00:00', 'This is good work hello.', '', '', '', 'Hi helllo', '', '', '', '', 'publish', '', 'hi-hello-india', '2021-08-19 06:49:08', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/27', 'page', ''),
(29, 1, '2021-08-05 16:27:35', '0000-00-00 00:00:00', 'dfdg dfgdfg', '', '', '', 'good eoooooodf', '', '', '', '', 'publish', '', 'good-eoooooodf', '2021-08-05 16:27:35', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/29', 'page', ''),
(31, 1, '2021-08-06 11:37:59', '0000-00-00 00:00:00', '<h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: DauphinPlain; line-height: 90px; color: rgb(0, 0, 0); font-size: 70px; padding: 0px; text-align: center;\"><span style=\"background-color: rgb(255, 0, 0);\">Lorem Ipsum</span></h1><h4 open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin: 10px 10px 5px; font-family: \" source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" line-height:=\"\" 18px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" center;=\"\" font-style:=\"\" italic;\"=\"\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin: 5px 10px 20px; font-family: \" source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" line-height:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 12px;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" center;\"=\"\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\" style=\"height: 1px; margin: 0px; border-top: 0px; padding: 0px; clear: both; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0);\"><div id=\"Content\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0);\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"><div id=\"div-gpt-ad-1474537762122-2\" data-google-query-id=\"CKLb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit3_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"2\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right;\"><div id=\"div-gpt-ad-1474537762122-3\" data-google-query-id=\"CKPb_-HVlPICFV2E2AUdjZ0ESA\" style=\"margin: 0px; padding: 0px;\"><div id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/15188745/Lipsum-Unit4_0\" width=\"160\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"3\" data-load-complete=\"true\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque justo. Fusce vulputate sem ut nibh accumsan tincidunt. Fusce posuere lectus eget magna ultricies dictum. Cras tincidunt interdum feugiat. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Nunc dignissim finibus nisl a convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at ex justo. Proin sit amet enim a sem sodales cursus a fermentum est. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b>Aenean finibus interdum egestas. Fusce bibendum ultricies ultrices. </b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Aliquam venenatis sagittis massa id tristique. Mauris efficitur varius leo, sit amet placerat elit aliquam nec. Curabitur a nisl sit amet erat ornare consequat quis ut sapien. Donec sed eleifend ligula. Quisque leo erat, porttitor eget iaculis maximus, ultricies at ante. yes part</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque justo. Fusce vulputate sem ut nibh accumsan tincidunt. Fusce posuere lectus eget magna ultricies dictum. Cras tincidunt interdum feugiat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Nunc dignissim finibus nisl a convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at ex justo. Proin sit amet enim a sem sodales cursus a fermentum est.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><span style=\"font-weight: bolder;\">Aenean finibus interdum egestas. Fusce bibendum ultricies ultrices.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Aliquam venenatis sagittis massa id tristique. Mauris efficitur varius leo, sit amet placerat elit aliquam nec. Curabitur a nisl sit amet erat ornare consequat quis ut sapien. Donec sed eleifend ligula. Quisque leo erat, porttitor eget iaculis maximus, ultricies at ante. yes part</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque justo. Fusce vulputate sem ut nibh accumsan tincidunt. Fusce posuere lectus eget magna ultricies dictum. Cras tincidunt interdum feugiat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Nunc dignissim finibus nisl a convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at ex justo. Proin sit amet enim a sem sodales cursus a fermentum est.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><span style=\"font-weight: bolder;\">Aenean finibus interdum egestas. Fusce bibendum ultricies ultrices.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Aliquam venenatis sagittis massa id tristique. Mauris efficitur varius leo, sit amet placerat elit aliquam nec. Curabitur a nisl sit amet erat ornare consequat quis ut sapien. Donec sed eleifend ligula. Quisque leo erat, porttitor eget iaculis maximus, ultricies at ante. yes part</p></div></div></div>', '', '', '', 'test Page', '', '', '', '', 'publish', '', 'testpage', '2021-09-20 06:45:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/31', 'page', ''),
(33, 1, '2021-08-09 11:43:11', '0000-00-00 00:00:00', '<p>                      This is hi hello page</p><p>                      </p>', '', '', '', 'hi hello page', '', '', '', '', 'publish', '', 'contact-data', '2021-09-03 01:02:54', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/33', 'page', ''),
(60, 1, '2021-08-09 15:55:37', '0000-00-00 00:00:00', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '', '', '', 'first post', '', '', '', '', 'publish', '', 'first-post-1', '2021-09-03 07:36:27', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/60', 'post', ''),
(62, 1, '2021-08-09 16:09:44', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'apost other', 'apost_other', '', '', '', 'publish', '', 'field_210809040944', '2021-08-09 16:09:44', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/62', 'acf-field-post', ''),
(63, 1, '2021-08-09 16:10:29', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'heading title', 'heading_title', '', '', '', 'publish', '', 'field_210809041029', '2021-08-09 16:10:29', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/63', 'acf-field-post', ''),
(66, 1, '2021-08-09 16:14:09', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hi o page', 'hi_o_page', '', '', '', 'publish', '', 'field_210809041409', '2021-08-09 16:14:09', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/66', 'acf-field-page', ''),
(67, 1, '2021-08-09 16:28:41', '0000-00-00 00:00:00', ' dfv df', '', '', '', 'heloooooo 1', '', '', '', '', 'publish', '', 'new-1', '2021-08-14 03:31:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/67', 'post', ''),
(68, 1, '2021-08-09 16:31:04', '0000-00-00 00:00:00', 'This is all post...hai', '', '', '', 'all post 2', '', '', '', '', 'trash', '', '', '2021-09-03 07:19:10', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/68', 'post', ''),
(69, 1, '2021-08-09 18:22:53', '0000-00-00 00:00:00', 'gdfgdf', '', '', '', 'fgfg', '', '', '', '', 'draft', '', 'first-post-1-1', '2021-09-06 02:19:54', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/69', 'post', ''),
(70, 1, '2021-08-10 12:08:47', '0000-00-00 00:00:00', 'This is good post', '', '', '', 'hi post Data s', '', '', '', '', 'publish', '', 's1-1', '2021-08-16 02:46:33', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/70', 'post', ''),
(72, 1, '2021-08-10 19:12:59', '0000-00-00 00:00:00', 'This is customererer fddf<br>', '', '', '', 'custommmeee', '', '', '', '', 'publish', '', 'custommmeee', '2021-08-10 19:12:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custompost/72', 'custompost', ''),
(74, 1, '2021-08-10 19:20:08', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'last', 'last', '', '', '', 'publish', '', 'field_210810072008', '2021-08-10 19:20:08', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-custompost/74', 'acf-field-custompost', ''),
(75, 1, '2021-08-10 19:22:01', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'other fieeeee', 'other_fieeeee', '', '', '', 'publish', '', 'field_210810072201', '2021-08-10 19:22:01', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-custompost/75', 'acf-field-custompost', ''),
(76, 1, '2021-08-10 20:27:37', '0000-00-00 00:00:00', 'This is good&nbsp;', '', '', '', 'hi sample', '', '', '', '', 'publish', '', 'hi-sample', '2021-08-10 20:27:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/sample/76', 'sample', ''),
(77, 1, '2021-08-10 20:42:34', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'sample post', 'sample_post', '', '', '', 'publish', '', 'field_210810084234', '2021-08-10 20:42:34', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-sample/77', 'acf-field-sample', ''),
(78, 1, '2021-08-10 20:43:36', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 156, 0);\">sample                      \r\n                      </span>', '', '', '', 'good sample', '', '', '', '', 'publish', '', 'good-sample', '2021-08-10 20:43:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/sample/78', 'sample', ''),
(79, 1, '2021-08-11 11:47:23', '0000-00-00 00:00:00', 'This is new post', '', '', '', 'hello new post', '', '', '', '', 'publish', '', 'hello-new-post', '2021-08-11 11:47:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/hello/79', 'hello', ''),
(80, 1, '2021-08-11 11:49:36', '0000-00-00 00:00:00', '<table class=\"table table-light table-striped table-hover table-sm table_results ajax w-auto pma_table\" data-uniqueid=\"2024881929\" style=\"color: rgb(68, 68, 68); font-family: sans-serif; font-size: 13.12px;\"><tbody><tr style=\"color: rgb(0, 0, 0); background: linear-gradient(rgb(206, 214, 223), rgb(182, 198, 215));\"><td data-decimals=\"0\" data-type=\"blob\" data-originallength=\"14\" class=\"data grid_edit click2 not_null    pre_wrap\" style=\"margin: 0px 0px 12px; white-space: pre-wrap; padding: 0.1em 0.3em; vertical-align: middle; border-top-width: 0px; position: static; text-shadow: rgb(255, 255, 255) 0px 1px 0px; touch-action: manipulation;\"><span style=\"display: block; overflow: hidden;\"><span style=\"background-color: rgb(0, 255, 255);\">hello new post</span></span></td><td data-decimals=\"0\" data-type=\"string\" data-originallength=\"14\" class=\"data grid_edit click2 not_null   text pre_wrap\" style=\"margin: 0px 0px 12px; white-space: pre-wrap; padding: 0.1em 0.3em; vertical-align: middle; border-top-width: 0px; position: static; text-shadow: rgb(255, 255, 255) 0px 1px 0px; touch-action: manipulation;\"></td></tr></tbody></table>', '', '', '', 'hello new post', '', '', '', '', 'publish', '', 'hello-new-post-1', '2021-08-11 11:49:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/cloth/80', 'cloth', ''),
(81, 1, '2021-08-11 14:45:13', '0000-00-00 00:00:00', 'This is good work', '', '', '', 'custome post type', '', '', '', '', 'publish', '', 'custome-post-type', '2021-08-11 14:45:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/customs/81', 'customs', ''),
(82, 1, '2021-08-11 14:45:59', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hello cust', 'hello_cust', '', '', '', 'publish', '', 'field_210811024559', '2021-08-11 14:45:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-hellos/82', 'acf-field-hellos', ''),
(83, 1, '2021-08-11 15:00:13', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:6:\"number\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hi baba', 'hi_baba', '', '', '', 'publish', '', 'field_210811030013', '2021-08-11 15:00:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-simples/83', 'acf-field-simples', ''),
(84, 1, '2021-08-11 15:01:23', '0000-00-00 00:00:00', '<b>&nbsp;custome                      \r\n                      </b>', '', '', '', 'hello custome', '', '', '', '', 'publish', '', 'hello-custome', '2021-08-11 15:01:23', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/hellos/84', 'hellos', ''),
(85, 1, '2021-08-11 15:02:37', '0000-00-00 00:00:00', '', '', '', '', 'hfghgfh', '', '', '', '', 'publish', '', 'hfghgfh', '2021-08-11 15:02:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/simples/85', 'simples', ''),
(87, 1, '2021-08-11 15:35:59', '0000-00-00 00:00:00', 'dfgfd fdgfd', '', '', '', 'good dfdf kfd 1', '', '', '', '', 'publish', '', 'good-dfdf-kfd-1', '2021-08-11 03:55:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/87', 'products%20custome', ''),
(88, 1, '2021-08-11 15:56:31', '0000-00-00 00:00:00', 'fgfghfgh v bfgfd 22222', '', '', '', 'bgfhgf fdgdfg 2222', '', '', '', '', 'publish', '', 'bgfhgf-fdgdfg-2222', '2021-08-11 04:04:58', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/88', 'products custome', ''),
(89, 1, '2021-08-11 15:57:16', '0000-00-00 00:00:00', 'hjghjghj333 3', '', '', '', 'jghjy 3333', '', '', '', '', 'publish', '', 'jghjy-3333', '2021-08-11 03:58:46', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/products custome/89', 'products custome', ''),
(90, 1, '2021-08-11 16:01:36', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'last Description', 'last_description', '', '', '', 'publish', '', 'field_210811040136', '2021-08-11 16:01:36', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-last-goods/90', 'acf-field-last-goods', ''),
(91, 1, '2021-08-11 16:02:08', '0000-00-00 00:00:00', 'Good dsslk fslkd kmfk&nbsp; gdgdfgfdgfgfggfd', '', '', '', 'Hello india fgfd', '', '', '', '', 'publish', '', 'hello-india-fgfd', '2021-08-11 04:02:45', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/last-goods/91', 'last-goods', ''),
(95, 1, '2021-08-11 18:30:48', '0000-00-00 00:00:00', 'Main post description 1', '', '', '', 'main post 1', '', '', '', '', 'publish', '', 'first-post-1-1-1', '2021-08-12 06:50:25', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/95', 'post', ''),
(96, 2, '2021-08-11 18:36:15', '0000-00-00 00:00:00', '          <span style=\"background-color: rgb(255, 0, 0);\">    hello world duniya 1 </span>', '', '', '', 'hello world duniya 2', '', '', '', '', 'draft', '', 'hello-world-duniya-2', '2021-08-12 11:36:46', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/world-hello/96', 'world-hello', ''),
(97, 1, '2021-08-11 18:37:49', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'hello cus', 'hello_cus', '', '', '', 'publish', '', 'field_210811063749', '2021-08-11 18:37:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-world-hello/97', 'acf-field-world-hello', ''),
(98, 1, '2021-08-12 11:37:47', '0000-00-00 00:00:00', 'This is world data', '', '', '', 'hi hello world', '', '', '', '', 'publish', '', 'hi-hello-world', '2021-08-12 11:38:11', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/world-hello/98', 'world-hello', ''),
(99, 1, '2021-08-12 11:39:48', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 0, 0);\">custom dat                      \r\n                      </span>', '', '', '', 'hi custom data', '', '', '', '', 'publish', '', 'hi-custom-data-1', '2021-09-09 05:38:47', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/99', 'custom-posts', ''),
(100, 1, '2021-08-12 11:40:44', '0000-00-00 00:00:00', '<b>second post&nbsp; dd</b>', '', '', '', 'second post', '', '', '', '', 'publish', '', 'second-post', '2021-08-12 04:39:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/100', 'custom-posts', ''),
(101, 1, '2021-08-12 16:40:23', '0000-00-00 00:00:00', 'Good post', '', '', '', 'Third post', '', '', '', '', 'publish', '', 'first-post-1-2', '2021-09-09 06:09:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/custom-posts/101', 'custom-posts', ''),
(117, 1, '2021-08-16 17:32:59', '0000-00-00 00:00:00', '', '', '', '', 's', '', '', '', '', 'publish', '', 's-d', '2021-08-16 06:19:56', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/117', 'post', ''),
(118, 1, '2021-08-16 17:33:56', '0000-00-00 00:00:00', '<p><img style=\"width: 440px;\" src=\"http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/siteIcon/resize-logo2.png\">                                            </p>', '', '', '', 'a', '', '', '', '', 'trash', '', 's-d-s', '2021-09-03 02:51:28', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/118', 'post', 'contact1.jpg'),
(119, 1, '2021-08-16 20:29:31', '0000-00-00 00:00:00', '<span style=\"background-color: rgb(255, 0, 0);\">good hello                      \r\n                      </span>', '', '', '', 'good hello', '', '', '', '', 'publish', '', 'good-hello', '2021-08-20 11:31:38', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/good-post/119', 'good-post', ''),
(133, 1, '2021-08-17 19:53:39', '0000-00-00 00:00:00', '<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your name</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"text\" class=\"form-control\" name=\"your-name\" value=\"\" placeholder=\"Enter name\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputsubject\">Subject</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"text\" class=\"form-control\" name=\"subject\" value=\"\" placeholder=\"Subject\" required=\"\">\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your email</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"email\" class=\"form-control\" name=\"your-email\" value=\"\" placeholder=\"Enter email\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your number</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<input type=\"text\" class=\"form-control\" name=\"your-number\" value=\"\" placeholder=\"Enter number\" required=\"\">\r\n</div>\r\n</div>\r\n</div> \r\n<div class=\"form-group\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3\">\r\n<label for=\"exampleInputName\">Your message(optional)</label>\r\n</div>\r\n<div class=\"col-md-9\">\r\n<textarea name=\"your-message\" class=\"form-control\" rows=\"7\"></textarea>\r\n</div>\r\n</div>\r\n</div>\r\n<input type=\"submit\"  name=\"submit\">', '', '', '', 'contact', '', '', '', '', 'publish', '', 'contact', '2021-09-20 06:04:07', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/admin/contact/', 'contact', ''),
(134, 1, '2021-08-31 17:28:26', '0000-00-00 00:00:00', 'This is good!', '', '', '', '31good', '', '', '', '', 'publish', '', '31good', '2021-09-11 07:57:43', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/134', 'post', ''),
(136, 1, '2021-09-02 15:06:28', '0000-00-00 00:00:00', 'dsfdsf dfdsfds dsfdsf<br>', '', '', '', 'hellod ddf', '', '', '', '', 'trash', '', 'hellod-ddf', '2021-09-15 05:47:13', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/136', 'post', 'contact1.jpg'),
(137, 1, '2021-09-02 15:33:34', '0000-00-00 00:00:00', 'dfgdfg gfdgdfg dffgdsg<br>', '', '', '', 'jai ho', '', '', '', '', 'publish', '', 'jai-ho', '2021-09-02 15:33:34', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/137', 'post', 'contact.jpg'),
(138, 1, '2021-09-02 15:36:32', '0000-00-00 00:00:00', 'fghgfhg', '', '', '', 'fgbhfg', '', '', '', '', 'publish', '', 'fgbhfg', '2021-09-02 15:36:32', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/138', 'post', 'contact.jpg'),
(139, 1, '2021-09-02 15:39:38', '0000-00-00 00:00:00', 'This is good workkkk<br>', '', '', '', 'Rajaram', '', '', '', '', 'publish', '', 'rajaram', '2021-09-02 15:39:38', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/139', 'post', 'contact1.jpg'),
(140, 1, '2021-09-02 16:14:55', '0000-00-00 00:00:00', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '', '', '', 'helloooooo', '', '', '', '', 'publish', '', 'helloooooo', '2021-09-03 07:34:18', '0000-00-00 00:00:00', 0, '', 'post', 'contact.jpg'),
(141, 1, '2021-09-02 16:18:19', '0000-00-00 00:00:00', 'fghf', '', '', '', 'hfghfgh', '', '', '', '', 'publish', '', 'hfghfgh', '2021-09-02 16:18:19', '0000-00-00 00:00:00', 0, '', 'post', 'contact.jpg'),
(142, 1, '2021-09-02 16:19:42', '0000-00-00 00:00:00', 'hgfhgfhgfh vbhfghfgh  sdfvsd<br>', '', '', '', 'gfhfghfg fgbhfg vdsfcds', '', '', '', '', 'publish', '', 'gfhfghfg-fgbhfg', '2021-09-02 07:48:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/142', 'post', 'contact.jpg'),
(143, 1, '2021-09-02 18:45:47', '0000-00-00 00:00:00', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', 'Gallery', '', '', '', '', 'publish', '', 'gallery', '2021-09-02 08:46:00', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/143', 'post', 'venture_1-left.png'),
(144, 1, '2021-09-02 20:29:15', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'gallery', 'gallery', '', '', '', 'publish', '', 'field_210902082915', '2021-09-02 20:29:15', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/144', 'acf-field-post', ''),
(152, 1, '2021-09-06 12:49:55', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"checkbox\";s:8:\"required\";s:0:\"\";}', '', '', '', 'check box', 'check_box', '', '', '', 'publish', '', 'field_210906124955', '2021-09-06 12:49:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/152', 'acf-field-post', ''),
(153, 1, '2021-09-09 16:37:26', '0000-00-00 00:00:00', '', '', '', '', 'hmhj', '', '', '', '', 'publish', '', 'hmhj', '2021-09-09 16:37:26', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/153', 'post', ''),
(154, 1, '2021-09-09 16:40:52', '0000-00-00 00:00:00', 'This is good post data.<br>', '', '', '', 'good post', '', '', '', '', 'publish', '', 'good-post', '2021-09-09 16:40:52', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/154', 'post', ''),
(186, 1, '2021-09-15 19:16:17', '0000-00-00 00:00:00', 'This is vari product....', '', '', '', 'vari product', '', '', '', '', 'publish', '', 'vari-product', '2021-09-15 08:20:18', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/186', 'product', 'Kids-First-Trace2.jpg'),
(187, 1, '2021-09-15 19:23:44', '0000-00-00 00:00:00', '', '', '', '', 'hello product data', '', '', '', '', 'publish', '', 'hello-product', '2021-09-16 08:32:15', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/187', 'product', '2021-Microlearning-05-old.png'),
(188, 1, '2021-09-15 19:40:48', '0000-00-00 00:00:00', '', '', '', '', 'new product', '', '', '', '', 'publish', '', 'new-product', '2021-09-16 06:10:30', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/188', 'product_variation', ''),
(189, 1, '2021-09-15 19:48:24', '0000-00-00 00:00:00', 'This is&nbsp;spacial t shirt.. sd<br>', '', '', '', 'spacial t shirt', '', '', '', '', 'publish', '', 'spacial-t-shirt', '2021-09-17 02:15:55', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/189', 'product_variation', ''),
(204, 1, '2021-09-16 14:58:37', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"file\";s:8:\"required\";s:0:\"\";}', '', '', '', 'logo', 'logo', '', '', '', 'publish', '', 'field_210916025837', '2021-09-16 14:58:37', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/204', 'acf-field-post', ''),
(210, 1, '2021-09-16 18:18:10', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'test', 'test', '', '', '', 'publish', '', 'field_210916061810', '2021-09-16 18:18:10', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/210', 'acf-field-post', ''),
(211, 1, '2021-09-16 18:20:51', '0000-00-00 00:00:00', '<p><br></p>', '', '', '', 'test', '', '', '', '', 'trash', '', 'test', '2021-09-16 07:03:33', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/211', 'post', ''),
(212, 1, '2021-09-16 19:33:47', '0000-00-00 00:00:00', '', '', '', '', 'simple product', '', '', '', '', 'publish', '', 'simple-product', '2021-09-16 08:32:26', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/212', 'product_variation', ''),
(213, 1, '2021-09-16 19:50:12', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'Title Block', 'title_block', '', '', '', 'publish', '', 'field_210916075012', '2021-09-16 19:50:12', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/213', 'acf-field-page', ''),
(214, 1, '2021-09-16 20:43:06', '0000-00-00 00:00:00', 'This is product simple product...<br>', '', '', '', 'product simple product', '', '', '', '', 'publish', '', 'product-simple-product', '2021-09-16 20:43:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/214', 'product', ''),
(215, 1, '2021-09-17 11:54:25', '0000-00-00 00:00:00', 'This is product ...', '', '', '', 'friday product', '', '', '', '', 'publish', '', 'friday-product', '2021-09-17 05:29:06', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/215', 'product', ''),
(216, 1, '2021-09-17 13:27:27', '0000-00-00 00:00:00', 'This is good hello india product..', '', '', '', 'hello india product', '', '', '', '', 'publish', '', 'hello-india-product', '2021-09-17 02:15:17', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/216', 'product', 'Kids-First-Trace4.jpg'),
(217, 1, '2021-09-17 13:38:29', '0000-00-00 00:00:00', 'pari<br>', '', '', '', 'hello vari product', '', '', '', '', 'publish', '', 'hello-vari-product', '2021-09-17 06:19:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/product/217', 'product_variation', ''),
(218, 1, '2021-09-20 18:17:58', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'test one field', 'test_one_field', '', '', '', 'publish', '', 'field_210920061758', '2021-09-20 18:17:58', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-product/218', 'acf-field-product', ''),
(219, 1, '2021-09-20 21:34:35', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:8:\"textarea\";s:8:\"required\";s:0:\"\";}', '', '', '', 'new field007', 'new_field007', '', '', '', 'publish', '', 'field_210920093435', '2021-09-20 21:34:35', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/219', 'acf-field-page', ''),
(220, 1, '2021-09-20 21:34:49', '0000-00-00 00:00:00', 'test', '', '', '', 'page 007', '', '', '', '', 'publish', '', 'page-007', '2021-09-20 21:34:49', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/220', 'page', ''),
(221, 1, '2021-09-20 21:34:59', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'test one field 008', 'test_one_field_008', '', '', '', 'publish', '', 'field_210920093459', '2021-09-20 21:34:59', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-page/221', 'acf-field-page', ''),
(222, 1, '2021-09-20 21:35:14', '0000-00-00 00:00:00', '', '', '', '', 'test 007 page', '', '', '', '', 'publish', '', 'test-007-page', '2021-09-20 21:35:14', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/page/222', 'page', ''),
(223, 1, '2021-09-20 21:36:54', '0000-00-00 00:00:00', 'a:2:{s:4:\"type\";s:4:\"text\";s:8:\"required\";s:0:\"\";}', '', '', '', 'common post title', 'common_post_title', '', '', '', 'publish', '', 'field_210920093654', '2021-09-20 21:36:54', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/acf-field-post/223', 'acf-field-post', ''),
(224, 1, '2021-09-20 21:37:38', '0000-00-00 00:00:00', '', '', '', '', 'new post 008', '', '', '', '', 'publish', '', 'new-post-008', '2021-09-20 21:37:38', '0000-00-00 00:00:00', 0, 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/post/224', 'post', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_post_menu`
--

CREATE TABLE `ci_post_menu` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `plural_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_post_menu`
--

INSERT INTO `ci_post_menu` (`id`, `name`, `plural_name`, `slug`, `url`, `status`, `create_at`) VALUES
(1, 'hello world', 'hello worlds', 'world-hello', '', 0, '2021-09-09 06:51:49'),
(2, 'custom post', 'custom posts', 'custom-posts', '', 0, '2021-09-22 12:50:18'),
(6, 'good post', 'good posts', 'good-post', '', 0, '2021-08-20 06:01:58'),
(7, 'last post', 'last posts', 'last-post', '', 0, '2021-08-16 15:23:38'),
(8, 'Game', 'Games', 'game', '', 0, '2021-09-22 12:50:48'),
(9, 'Service', 'Services', 'service', '', 1, '2021-10-06 14:15:31'),
(10, 'Some best work', 'Some best works', 'some-best-work', '', 1, '2021-10-06 14:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_product_variation`
--

CREATE TABLE `ci_product_variation` (
  `v_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` text NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_attribute` text NOT NULL,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_product_variation`
--

INSERT INTO `ci_product_variation` (`v_id`, `product_id`, `sku`, `regular_price`, `sale_price`, `stock`, `image`, `product_attribute`, `update_at`, `create_at`) VALUES
(1, 186, '8000', '11.00', '10.00', 'instock', 'Kids-First-Trace3.jpg', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-15 19:16:18', '2021-09-15 19:16:18'),
(2, 188, '5000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 19:40:48', '2021-09-15 19:40:48'),
(3, 189, '4500', '70.00', '50.00', 'instock', '2021-Microlearning-05-old3.png', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 19:48:24', '2021-09-15 19:48:24'),
(5, 187, '900', '30.00', '15.00', 'instock', 'venture_1-left1.png', 'a:4:{s:4:\"size\";s:1:\"l\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 20:15:34', '2021-09-15 20:15:34'),
(6, 188, '6000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 14:22:16', '2021-09-16 14:22:16'),
(7, 188, '7500', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 15:44:49', '2021-09-16 15:44:49'),
(8, 188, '75000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 15:55:25', '2021-09-16 15:55:25'),
(13, 212, '400022', '40.00', '20.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:0:\"\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 19:39:33', '2021-09-16 19:39:33'),
(14, 217, '900sas', '24.00', '22.00', 'instock', 'Kids-First-Trace5.jpg', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-17 13:38:30', '2021-09-17 13:38:30'),
(15, 217, '100000', '23.00', '22.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-17 13:42:01', '2021-09-17 13:42:01'),
(21, 217, '900sa4', '24.00', '22.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-17 19:54:50', '2021-09-17 19:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `ci_product_variationmeta`
--

CREATE TABLE `ci_product_variationmeta` (
  `variation_id` int(11) NOT NULL,
  `v_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_product_variationmeta`
--

INSERT INTO `ci_product_variationmeta` (`variation_id`, `v_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'size', 'm'),
(2, 1, 'color', 'red'),
(3, 1, 'model', ''),
(4, 1, 'year', '2021'),
(5, 2, 'size', 'x'),
(6, 2, 'color', 'green'),
(7, 2, 'model', ''),
(8, 2, 'year', '2020'),
(9, 3, 'size', 'm'),
(10, 3, 'color', 'red'),
(11, 3, 'model', ''),
(12, 3, 'year', '2020'),
(17, 5, 'size', 'l'),
(18, 5, 'color', 'red'),
(19, 5, 'model', ''),
(20, 5, 'year', '2020'),
(21, 6, 'size', 'x'),
(22, 6, 'color', 'green'),
(23, 6, 'model', ''),
(24, 6, 'year', '2020'),
(25, 7, 'size', 'x'),
(26, 7, 'color', 'green'),
(27, 7, 'model', ''),
(28, 7, 'year', '2020'),
(29, 8, 'size', 'x'),
(30, 8, 'color', 'green'),
(31, 8, 'model', ''),
(32, 8, 'year', '2020'),
(33, 9, 'size', 'x'),
(34, 9, 'color', 'green'),
(35, 9, 'model', ''),
(36, 9, 'year', '2020'),
(37, 10, 'size', ''),
(38, 10, 'color', ''),
(39, 10, 'model', ''),
(40, 10, 'year', ''),
(41, 11, 'size', 'l'),
(42, 11, 'color', 'red'),
(43, 11, 'model', ''),
(44, 11, 'year', '2020'),
(45, 12, 'size', 'l'),
(46, 12, 'color', 'red'),
(47, 12, 'model', ''),
(48, 12, 'year', '2020'),
(49, 13, 'size', 'm'),
(50, 13, 'color', ''),
(51, 13, 'model', ''),
(52, 13, 'year', '2020'),
(53, 14, 'size', 'x'),
(54, 14, 'color', 'green'),
(55, 14, 'model', ''),
(56, 14, 'year', '2021'),
(57, 15, 'size', 'm'),
(58, 15, 'color', 'red'),
(59, 15, 'model', ''),
(60, 15, 'year', '2020'),
(61, 16, 'size', 'x'),
(62, 16, 'color', 'green'),
(63, 16, 'model', ''),
(64, 16, 'year', '2021'),
(65, 17, 'size', 'x'),
(66, 17, 'color', 'green'),
(67, 17, 'model', ''),
(68, 17, 'year', '2021'),
(69, 18, 'size', 'x'),
(70, 18, 'color', 'green'),
(71, 18, 'model', ''),
(72, 18, 'year', '2021'),
(73, 19, 'size', 'x'),
(74, 19, 'color', 'green'),
(75, 19, 'model', ''),
(76, 19, 'year', '2021'),
(77, 20, 'size', 'x'),
(78, 20, 'color', 'green'),
(79, 20, 'model', ''),
(80, 20, 'year', '2021'),
(81, 21, 'size', 'x'),
(82, 21, 'color', 'green'),
(83, 21, 'model', ''),
(84, 21, 'year', '2021'),
(85, 22, 'size', 'x'),
(86, 22, 'color', 'green'),
(87, 22, 'model', ''),
(88, 22, 'year', '2021'),
(89, 23, 'size', 'x'),
(90, 23, 'color', 'green'),
(91, 23, 'model', ''),
(92, 23, 'year', '2021'),
(93, 24, 'size', 'x'),
(94, 24, 'color', 'green'),
(95, 24, 'model', ''),
(96, 24, 'year', '2021'),
(97, 25, 'size', 'x'),
(98, 25, 'color', 'green'),
(99, 25, 'model', ''),
(100, 25, 'year', '2021'),
(101, 26, 'size', 'x'),
(102, 26, 'color', 'green'),
(103, 26, 'model', ''),
(104, 26, 'year', '2021'),
(105, 27, 'size', 'x'),
(106, 27, 'color', 'green'),
(107, 27, 'model', ''),
(108, 27, 'year', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `ci_product_variationmeta_22092021`
--

CREATE TABLE `ci_product_variationmeta_22092021` (
  `variation_id` int(11) NOT NULL,
  `v_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_product_variationmeta_22092021`
--

INSERT INTO `ci_product_variationmeta_22092021` (`variation_id`, `v_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'size', 'm'),
(2, 1, 'color', 'red'),
(3, 1, 'model', ''),
(4, 1, 'year', '2021'),
(5, 2, 'size', 'x'),
(6, 2, 'color', 'green'),
(7, 2, 'model', ''),
(8, 2, 'year', '2020'),
(9, 3, 'size', 'm'),
(10, 3, 'color', 'red'),
(11, 3, 'model', ''),
(12, 3, 'year', '2020'),
(17, 5, 'size', 'l'),
(18, 5, 'color', 'red'),
(19, 5, 'model', ''),
(20, 5, 'year', '2020'),
(21, 6, 'size', 'x'),
(22, 6, 'color', 'green'),
(23, 6, 'model', ''),
(24, 6, 'year', '2020'),
(25, 7, 'size', 'x'),
(26, 7, 'color', 'green'),
(27, 7, 'model', ''),
(28, 7, 'year', '2020'),
(29, 8, 'size', 'x'),
(30, 8, 'color', 'green'),
(31, 8, 'model', ''),
(32, 8, 'year', '2020'),
(33, 9, 'size', 'x'),
(34, 9, 'color', 'green'),
(35, 9, 'model', ''),
(36, 9, 'year', '2020'),
(37, 10, 'size', ''),
(38, 10, 'color', ''),
(39, 10, 'model', ''),
(40, 10, 'year', ''),
(41, 11, 'size', 'l'),
(42, 11, 'color', 'red'),
(43, 11, 'model', ''),
(44, 11, 'year', '2020'),
(45, 12, 'size', 'l'),
(46, 12, 'color', 'red'),
(47, 12, 'model', ''),
(48, 12, 'year', '2020'),
(49, 13, 'size', 'm'),
(50, 13, 'color', ''),
(51, 13, 'model', ''),
(52, 13, 'year', '2020'),
(53, 14, 'size', 'x'),
(54, 14, 'color', 'green'),
(55, 14, 'model', ''),
(56, 14, 'year', '2021'),
(57, 15, 'size', 'm'),
(58, 15, 'color', 'red'),
(59, 15, 'model', ''),
(60, 15, 'year', '2020'),
(61, 16, 'size', 'x'),
(62, 16, 'color', 'green'),
(63, 16, 'model', ''),
(64, 16, 'year', '2021'),
(65, 17, 'size', 'x'),
(66, 17, 'color', 'green'),
(67, 17, 'model', ''),
(68, 17, 'year', '2021'),
(69, 18, 'size', 'x'),
(70, 18, 'color', 'green'),
(71, 18, 'model', ''),
(72, 18, 'year', '2021'),
(73, 19, 'size', 'x'),
(74, 19, 'color', 'green'),
(75, 19, 'model', ''),
(76, 19, 'year', '2021'),
(77, 20, 'size', 'x'),
(78, 20, 'color', 'green'),
(79, 20, 'model', ''),
(80, 20, 'year', '2021'),
(81, 21, 'size', 'x'),
(82, 21, 'color', 'green'),
(83, 21, 'model', ''),
(84, 21, 'year', '2021'),
(85, 22, 'size', 'x'),
(86, 22, 'color', 'green'),
(87, 22, 'model', ''),
(88, 22, 'year', '2021'),
(89, 23, 'size', 'x'),
(90, 23, 'color', 'green'),
(91, 23, 'model', ''),
(92, 23, 'year', '2021'),
(93, 24, 'size', 'x'),
(94, 24, 'color', 'green'),
(95, 24, 'model', ''),
(96, 24, 'year', '2021'),
(97, 25, 'size', 'x'),
(98, 25, 'color', 'green'),
(99, 25, 'model', ''),
(100, 25, 'year', '2021'),
(101, 26, 'size', 'x'),
(102, 26, 'color', 'green'),
(103, 26, 'model', ''),
(104, 26, 'year', '2021'),
(105, 27, 'size', 'x'),
(106, 27, 'color', 'green'),
(107, 27, 'model', ''),
(108, 27, 'year', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `ci_product_variation_22092021`
--

CREATE TABLE `ci_product_variation_22092021` (
  `v_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` text NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_attribute` text NOT NULL,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_product_variation_22092021`
--

INSERT INTO `ci_product_variation_22092021` (`v_id`, `product_id`, `sku`, `regular_price`, `sale_price`, `stock`, `image`, `product_attribute`, `update_at`, `create_at`) VALUES
(1, 186, '8000', '11.00', '10.00', 'instock', 'Kids-First-Trace3.jpg', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-15 19:16:18', '2021-09-15 19:16:18'),
(2, 188, '5000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 19:40:48', '2021-09-15 19:40:48'),
(3, 189, '4500', '70.00', '50.00', 'instock', '2021-Microlearning-05-old3.png', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 19:48:24', '2021-09-15 19:48:24'),
(5, 187, '900', '30.00', '15.00', 'instock', 'venture_1-left1.png', 'a:4:{s:4:\"size\";s:1:\"l\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-15 20:15:34', '2021-09-15 20:15:34'),
(6, 188, '6000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 14:22:16', '2021-09-16 14:22:16'),
(7, 188, '7500', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 15:44:49', '2021-09-16 15:44:49'),
(8, 188, '75000', '45.00', '35.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 15:55:25', '2021-09-16 15:55:25'),
(13, 212, '400022', '40.00', '20.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:0:\"\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-16 19:39:33', '2021-09-16 19:39:33'),
(14, 217, '900sas', '24.00', '22.00', 'instock', 'Kids-First-Trace5.jpg', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-17 13:38:30', '2021-09-17 13:38:30'),
(15, 217, '100000', '23.00', '22.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"m\";s:5:\"color\";s:3:\"red\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2020\";}', '2021-09-17 13:42:01', '2021-09-17 13:42:01'),
(21, 217, '900sa4', '24.00', '22.00', 'instock', '', 'a:4:{s:4:\"size\";s:1:\"x\";s:5:\"color\";s:5:\"green\";s:5:\"model\";s:0:\"\";s:4:\"year\";s:4:\"2021\";}', '2021-09-17 19:54:50', '2021-09-17 19:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `ci_tags`
--

CREATE TABLE `ci_tags` (
  `id` int(11) NOT NULL,
  `taxonomy_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_tags`
--

INSERT INTO `ci_tags` (`id`, `taxonomy_id`, `parent_id`, `tag_name`, `slug`, `description`, `status`, `create_at`) VALUES
(1, 17, 0, 'special', 'special', 'This is special product.', 1, '2021-09-08 20:10:26'),
(2, 17, 0, 'second', 'second_product', '', 1, '2021-09-08 20:11:57'),
(3, 16, 0, 'hello', 'fvdvd', 'ds', 1, '2021-09-08 20:43:24'),
(4, 17, 0, 'good', 'good', 'This is good', 1, '2021-09-08 21:05:39'),
(5, 16, 0, 'first', '', '', 1, '2021-09-09 11:40:22'),
(7, 16, 0, 'four', 'four', '', 1, '2021-09-09 12:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `ci_tag_post_relationships`
--

CREATE TABLE `ci_tag_post_relationships` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_tag_post_relationships`
--

INSERT INTO `ci_tag_post_relationships` (`post_id`, `tag_id`) VALUES
(154, 3),
(154, 7),
(99, 5),
(101, 3),
(101, 5),
(101, 8),
(101, 9),
(167, 1),
(167, 2),
(134, 5),
(134, 7),
(170, 2),
(178, 1),
(179, 2),
(180, 4),
(171, 2),
(168, 2),
(181, 2),
(181, 4),
(184, 2),
(185, 2),
(186, 2),
(202, 2),
(209, 6),
(188, 2),
(187, 1),
(212, 2),
(216, 1),
(189, 2),
(217, 2),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ci_taxonomy_post`
--

CREATE TABLE `ci_taxonomy_post` (
  `id` int(11) NOT NULL,
  `taxonomy_id` int(11) NOT NULL,
  `post_type` varchar(200) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_taxonomy_post`
--

INSERT INTO `ci_taxonomy_post` (`id`, `taxonomy_id`, `post_type`, `create_at`) VALUES
(60, 2, 'custom-posts', '2021-08-13 20:49:32'),
(65, 4, 'post', '2021-08-14 12:39:07'),
(66, 4, 'custom-posts', '2021-08-14 12:39:07'),
(67, 13, 'post', '2021-08-14 13:52:49'),
(147, 14, 'custom-posts', '2021-09-10 14:28:27'),
(150, 1, 'post', '2021-09-10 20:15:32'),
(152, 18, 'game', '2021-09-16 15:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `ci_tbl_books`
--

CREATE TABLE `ci_tbl_books` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_tbl_books`
--

INSERT INTO `ci_tbl_books` (`id`, `name`, `author`, `isbn`) VALUES
(1, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(2, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(3, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(4, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(5, 'Modern PHP: New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(6, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(7, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(8, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(9, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(10, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(11, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(12, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(13, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(14, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(15, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(16, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(17, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(18, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(19, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(20, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772');

-- --------------------------------------------------------

--
-- Table structure for table `ci_term_taxonomy`
--

CREATE TABLE `ci_term_taxonomy` (
  `taxonomy_id` int(11) NOT NULL,
  `taxonomy_slug` varchar(255) NOT NULL,
  `taxonomy_name` varchar(255) NOT NULL,
  `taxonomy_plural` varchar(255) NOT NULL,
  `taxonomy_type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_term_taxonomy`
--

INSERT INTO `ci_term_taxonomy` (`taxonomy_id`, `taxonomy_slug`, `taxonomy_name`, `taxonomy_plural`, `taxonomy_type`, `status`, `create_at`, `update_at`) VALUES
(1, 'category', 'category', 'categories', 'category', 1, '2021-08-13 18:36:41', '2021-08-13 18:36:41'),
(14, 'school_man', 'school man', 'schools', 'category', 1, '2021-08-14 14:13:55', '2021-08-14 14:13:55'),
(15, 'hello_cat', 'hello cat', 'hello cats', 'category', 1, '2021-08-17 12:04:14', '2021-08-17 12:04:14'),
(16, 'tags', 'tags', 'tags', 'tags', 1, '2021-09-08 14:09:49', '2021-09-08 14:09:49'),
(17, 'products_tags', 'products tags', 'products tags', 'products_tags', 1, '2021-09-08 14:09:49', '2021-09-08 14:09:49'),
(18, 'cricket', 'cricket', 'Crickets', '', 1, '2021-09-16 15:06:10', '2021-09-16 15:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `ci_usermeta`
--

CREATE TABLE `ci_usermeta` (
  `umeta_id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_usermeta`
--

INSERT INTO `ci_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'username', 'test'),
(2, 1, 'first_name', 'Go'),
(3, 1, 'last_name', 'Kumar'),
(4, 1, 'role', 'administrator'),
(5, 1, 'description', 'This is main user'),
(6, 1, 'address', 'ujjain'),
(7, 1, 'phone', '9988771122'),
(8, 1, 'facebook', 'facebook'),
(9, 1, 'twitter', ''),
(10, 1, 'instagram', 'insagram'),
(11, 1, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/2021-Microlearning5.png'),
(12, 2, 'username', 'demo'),
(13, 2, 'first_name', 'demo1'),
(14, 2, 'last_name', 'demo2'),
(15, 2, 'role', 'editor'),
(16, 2, 'description', ''),
(17, 2, 'address', ''),
(18, 2, 'phone', ''),
(19, 2, 'facebook', ''),
(20, 2, 'twitter', ''),
(21, 2, 'instagram', ''),
(22, 2, 'picture', ''),
(45, 4, 'username', 'Samiksha'),
(46, 4, 'first_name', ''),
(47, 4, 'last_name', ''),
(48, 4, 'role', 'administrator'),
(49, 4, 'description', ''),
(50, 4, 'address', ''),
(51, 4, 'phone', ''),
(52, 4, 'facebook', ''),
(53, 4, 'twitter', ''),
(54, 4, 'instagram', ''),
(55, 4, 'picture', ''),
(56, 5, 'username', 'Samiksha'),
(57, 5, 'first_name', ''),
(58, 5, 'last_name', ''),
(59, 5, 'role', 'administrator'),
(60, 5, 'description', ''),
(61, 5, 'address', ''),
(62, 5, 'phone', ''),
(63, 5, 'facebook', ''),
(64, 5, 'twitter', ''),
(65, 5, 'instagram', ''),
(66, 5, 'picture', ''),
(78, 7, 'username', 'Samiksha@123'),
(79, 7, 'first_name', 'Samiksha'),
(80, 7, 'last_name', 'Gayakwad'),
(81, 7, 'role', 'administrator'),
(82, 7, 'description', ''),
(83, 7, 'address', ''),
(84, 7, 'phone', ''),
(85, 7, 'facebook', 'https://bcvn bzxzxvcn bzxcz.com'),
(86, 7, 'twitter', ''),
(87, 7, 'instagram', ''),
(88, 7, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/abc1.png'),
(89, 8, 'username', 'samiksha432423'),
(90, 8, 'first_name', 'Samiksha'),
(91, 8, 'last_name', 'Gayakwad'),
(92, 8, 'role', 'editor'),
(93, 8, 'description', ''),
(94, 8, 'address', ''),
(95, 8, 'phone', ''),
(96, 8, 'facebook', ''),
(97, 8, 'twitter', ''),
(98, 8, 'instagram', ''),
(99, 8, 'picture', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_usermeta_05082021`
--

CREATE TABLE `ci_usermeta_05082021` (
  `umeta_id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_usermeta_05082021`
--

INSERT INTO `ci_usermeta_05082021` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'username', 'test'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'role', 'administrator'),
(5, 1, 'description', ''),
(6, 1, 'address', ''),
(7, 1, 'phone', ''),
(8, 1, 'facebook', ''),
(9, 1, 'twitter', ''),
(10, 1, 'instagram', ''),
(11, 1, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/2021-Microlearning3.png'),
(12, 2, 'username', 'demo'),
(13, 2, 'first_name', 'demo1'),
(14, 2, 'last_name', 'demo2'),
(15, 2, 'role', 'editor'),
(16, 2, 'description', ''),
(17, 2, 'address', ''),
(18, 2, 'phone', ''),
(19, 2, 'facebook', ''),
(20, 2, 'twitter', ''),
(21, 2, 'instagram', ''),
(22, 2, 'picture', ''),
(23, 5, 'username', 'jkj'),
(24, 5, 'first_name', ''),
(25, 5, 'last_name', ''),
(26, 5, 'role', 'administrator'),
(27, 5, 'description', ''),
(28, 5, 'address', ''),
(29, 5, 'phone', ''),
(30, 5, 'facebook', ''),
(31, 5, 'twitter', ''),
(32, 5, 'instagram', ''),
(33, 5, 'picture', ''),
(34, 6, 'username', 'hello cutomer'),
(35, 6, 'first_name', 'customer 2'),
(36, 6, 'last_name', 'agent'),
(37, 6, 'role', 'customer'),
(38, 6, 'description', ''),
(39, 6, 'address', ''),
(40, 6, 'phone', ''),
(41, 6, 'facebook', ''),
(42, 6, 'twitter', ''),
(43, 6, 'instagram', ''),
(44, 6, 'picture', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_usermeta_09092021`
--

CREATE TABLE `ci_usermeta_09092021` (
  `umeta_id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_usermeta_09092021`
--

INSERT INTO `ci_usermeta_09092021` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'username', 'test'),
(2, 1, 'first_name', 'good'),
(3, 1, 'last_name', ''),
(4, 1, 'role', 'administrator'),
(5, 1, 'description', ''),
(6, 1, 'address', ''),
(7, 1, 'phone', ''),
(8, 1, 'facebook', 'facebook'),
(9, 1, 'twitter', ''),
(10, 1, 'instagram', ''),
(11, 1, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/2021-Microlearning4.png'),
(12, 2, 'username', 'demo'),
(13, 2, 'first_name', 'demo1'),
(14, 2, 'last_name', 'demo2'),
(15, 2, 'role', 'editor'),
(16, 2, 'description', ''),
(17, 2, 'address', ''),
(18, 2, 'phone', ''),
(19, 2, 'facebook', ''),
(20, 2, 'twitter', ''),
(21, 2, 'instagram', ''),
(22, 2, 'picture', ''),
(23, 3, 'username', 'shai'),
(24, 3, 'first_name', 'shailendra'),
(25, 3, 'last_name', 'kumar'),
(26, 3, 'role', 'editor'),
(27, 3, 'description', ''),
(28, 3, 'address', ''),
(29, 3, 'phone', ''),
(30, 3, 'facebook', ''),
(31, 3, 'twitter', ''),
(32, 3, 'instagram', ''),
(33, 3, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/fax31.png'),
(56, 6, 'username', 'samiksha'),
(57, 6, 'first_name', 'sam'),
(58, 6, 'last_name', 'kumar'),
(59, 6, 'role', 'administrator'),
(60, 6, 'description', 'hfgh'),
(61, 6, 'address', 'gkjbh.k1253641.3521vbjhgjgkj,gb hgf'),
(62, 6, 'phone', 'jgkjmghb, hgh'),
(63, 6, 'facebook', 'facebook'),
(64, 6, 'twitter', 'twiitter'),
(65, 6, 'instagram', 'insagram'),
(66, 6, 'picture', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/assets/dist/uploads/fax33.png'),
(67, 7, 'username', 'Samiksha123'),
(68, 7, 'first_name', 'samiksha'),
(69, 7, 'last_name', ''),
(70, 7, 'role', 'editor'),
(71, 7, 'description', ''),
(72, 7, 'address', ''),
(73, 7, 'phone', ''),
(74, 7, 'facebook', ''),
(75, 7, 'twitter', ''),
(76, 7, 'instagram', ''),
(77, 7, 'picture', ''),
(89, 9, 'username', 'samiksha'),
(90, 9, 'first_name', ''),
(91, 9, 'last_name', ''),
(92, 9, 'role', 'administrator'),
(93, 9, 'description', ''),
(94, 9, 'address', ''),
(95, 9, 'phone', ''),
(96, 9, 'facebook', ''),
(97, 9, 'twitter', ''),
(98, 9, 'instagram', ''),
(99, 9, 'picture', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_users`
--

CREATE TABLE `ci_users` (
  `ID` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `forgot_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_users`
--

INSERT INTO `ci_users` (`ID`, `user_login`, `user_pass`, `user_email`, `user_url`, `user_registered`, `user_status`, `token`, `forgot_update`) VALUES
(1, 'test', '25d55ad283aa400af464c76d713c07ad', 'citstestdev@gmail.com', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/', '2021-09-09 18:24:15', 1, '3e20d3991af3a38847782e116cb397cd', NULL),
(2, 'demo', '25d55ad283aa400af464c76d713c07ad', 'demo@demo.com', '', '2021-09-09 18:35:32', 1, '34cdcbaee945e91c8a6421fa111b24d4', NULL),
(4, 'Samiksha', '25d55ad283aa400af464c76d713c07ad', 'samiksha@gmail.com', '', '2021-09-29 19:40:23', 1, 'ad02d109c2a0a1f41aa0b8fe1c5a0d1b', NULL),
(5, 'Samiksha', '25f9e794323b453885f5181f1b624d0b', 'samiksha123@gmail.com', '', '2021-09-30 11:15:38', 1, 'de1fc74d184e08fb840c6ec5045caeef', NULL),
(7, 'Samiksha@123', '25d55ad283aa400af464c76d713c07ad', 'Samiskha321@gmal.com', '', '2021-10-04 17:19:36', 1, '4feb351158e7c8444ce2d1615a637ef9', NULL),
(8, 'samiksha432423', '25d55ad283aa400af464c76d713c07ad', 'Samiksha23123@gmail.com', 'https://jhvbhjvbjcxvb3.com', '2021-10-06 10:46:56', 1, 'b3494470533e2c49fca7568b04fc28ba', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_users_05082021`
--

CREATE TABLE `ci_users_05082021` (
  `ID` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `forgot_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_users_05082021`
--

INSERT INTO `ci_users_05082021` (`ID`, `user_login`, `user_pass`, `user_email`, `user_url`, `user_registered`, `user_status`, `token`, `forgot_update`) VALUES
(1, 'test', '827ccb0eea8a706c4c34a16891f84e7b', 'test@test.com', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/', '2021-07-27 17:31:09', 1, 'df0661ea9446806aab6e38d9a7b89347', '2021-07-29 03:07:15'),
(2, 'demo', '827ccb0eea8a706c4c34a16891f84e7b', 'demo@demo.com', '', '2021-07-27 17:32:55', 1, '258a7fe241e6c8fdc108f53ad39af343', NULL),
(5, 'jkj', 'e10adc3949ba59abbe56e057f20f883e', 'test@uutyututest.com', 'http://192.168.1.101:30016/Khushboo_Jaiswal/WordPress-CI/', '2021-07-29 15:19:00', 1, '393034f7b2371f412ad9f532ecd6e64e', NULL),
(6, 'hello cutomer', '827ccb0eea8a706c4c34a16891f84e7b', 'customer@customer.com', '', '2021-08-05 13:39:48', 1, 'ee012b6c132a1c6c21ff9c7f23990683', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_users_09092021`
--

CREATE TABLE `ci_users_09092021` (
  `ID` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `forgot_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_users_09092021`
--

INSERT INTO `ci_users_09092021` (`ID`, `user_login`, `user_pass`, `user_email`, `user_url`, `user_registered`, `user_status`, `token`, `forgot_update`) VALUES
(1, 'test', '25d55ad283aa400af464c76d713c07ad', 'citstestdev@gmail.com', 'http://stagingwebsite.co.in:30016/Shailendra_Tiwari/2021/15072021/project/', '2021-08-05 17:17:16', 1, 'd9e6381acc2561185c126860ea7d9267', '2021-09-01 07:41:21'),
(2, 'demo', '25d55ad283aa400af464c76d713c07ad', 'demo@demo.com', '', '2021-08-06 11:41:56', 1, 'bc9e31ea170b44afe8675dfae992d96d', '2021-09-01 08:35:06'),
(3, 'shai', '25d55ad283aa400af464c76d713c07ad', 'shailendratiwari@conative.in', '', '2021-09-01 20:30:10', 1, 'eb8c9d72be643c5cb9c4872376f71376', '2021-09-01 08:36:52'),
(6, 'samiksha', '827ccb0eea8a706c4c34a16891f84e7b', 'samikshagayakwad@conative.in', 'http://stagingwebsite.co.in:30016/', '2021-09-07 16:47:00', 1, '866390bb95c5dbe975edef29fb815c6f', NULL),
(7, 'Samiksha123', '827ccb0eea8a706c4c34a16891f84e7b', 'samikshagayakwad123@conative.in', '', '2021-09-07 16:48:53', 1, 'e12e6865f235a18ed2f1a9ef36f3f81b', NULL),
(9, 'samiksha', '5efb39b2d76da2cd37b51797ce888c32', 'samiksha@gmail.com', '', '2021-09-07 17:02:28', 1, '89e0bc1d66c338eb43e417feff08a58d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_customer_lookup`
--

CREATE TABLE `ci_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(200) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_order_coupon`
--

CREATE TABLE `ci_wc_order_coupon` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `discount_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_order_itemmeta`
--

CREATE TABLE `ci_wc_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_order_items`
--

CREATE TABLE `ci_wc_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_order_product_lookup`
--

CREATE TABLE `ci_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL,
  `product_gross_revenue` double NOT NULL,
  `coupon_amount` double NOT NULL,
  `tax_amount` double NOT NULL,
  `shipping_amount` double NOT NULL,
  `shipping_tax_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_order_status`
--

CREATE TABLE `ci_wc_order_status` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_created_gmt` datetime NOT NULL,
  `num_items_sold` double NOT NULL,
  `total_sales` double NOT NULL,
  `tax_total` double NOT NULL,
  `shipping_total` double NOT NULL,
  `net_total` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_product_attribute_tags`
--

CREATE TABLE `ci_wc_product_attribute_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_wc_product_attribute_tags`
--

INSERT INTO `ci_wc_product_attribute_tags` (`id`, `name`, `slug`, `product_type`, `status`, `create_date`, `update_date`) VALUES
(3, 'size', 'size', 'product_attribute', '1', '2021-09-07 13:23:50', '0000-00-00 00:00:00'),
(4, 'color', 'color', 'product_attribute', '1', '2021-09-07 14:36:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_product_attribute_tags_items`
--

CREATE TABLE `ci_wc_product_attribute_tags_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value_item` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_wc_product_attribute_tags_items`
--

INSERT INTO `ci_wc_product_attribute_tags_items` (`id`, `attribute_id`, `value_item`, `status`, `create_date`, `update_date`) VALUES
(1, 4, 'red', '1', '2021-09-07 20:12:36', '0000-00-00 00:00:00'),
(2, 4, 'green', '1', '2021-09-07 20:15:51', '0000-00-00 00:00:00'),
(3, 3, 'l', '1', '2021-09-07 20:16:21', '0000-00-00 00:00:00'),
(4, 3, 'm', '1', '2021-09-07 20:16:44', '0000-00-00 00:00:00'),
(6, 3, 'x', '1', '2021-09-09 19:10:29', '0000-00-00 00:00:00'),
(7, 6, '2020', '1', '2021-09-13 14:14:53', '0000-00-00 00:00:00'),
(8, 6, '2021', '1', '2021-09-13 14:14:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_product_gallery`
--

CREATE TABLE `ci_wc_product_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_product_meta_lookup`
--

CREATE TABLE `ci_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `min_price` decimal(19,4) NOT NULL,
  `max_price` decimal(19,4) NOT NULL,
  `stock_status` varchar(100) NOT NULL,
  `onsale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_wc_shipping_zones`
--

CREATE TABLE `ci_wc_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `zone_country` varchar(255) NOT NULL,
  `zone_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_category`
--
ALTER TABLE `ci_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_category_26072021old`
--
ALTER TABLE `ci_category_26072021old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_contactmeta`
--
ALTER TABLE `ci_contactmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`contact_id`) USING BTREE;

--
-- Indexes for table `ci_contact_details`
--
ALTER TABLE `ci_contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_contact_enquiry`
--
ALTER TABLE `ci_contact_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_display_location`
--
ALTER TABLE `ci_display_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_gallery_files`
--
ALTER TABLE `ci_gallery_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_gallery_images`
--
ALTER TABLE `ci_gallery_images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_menu`
--
ALTER TABLE `ci_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_menu_items`
--
ALTER TABLE `ci_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_menu_levels`
--
ALTER TABLE `ci_menu_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_options`
--
ALTER TABLE `ci_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `ci_options_09092021`
--
ALTER TABLE `ci_options_09092021`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `ci_payment_tokens`
--
ALTER TABLE `ci_payment_tokens`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `ci_postmeta`
--
ALTER TABLE `ci_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE;

--
-- Indexes for table `ci_postmeta_03082021`
--
ALTER TABLE `ci_postmeta_03082021`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `ci_postmeta_22092021`
--
ALTER TABLE `ci_postmeta_22092021`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE;

--
-- Indexes for table `ci_posts`
--
ALTER TABLE `ci_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_posts_03082021`
--
ALTER TABLE `ci_posts_03082021`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_posts_18082021`
--
ALTER TABLE `ci_posts_18082021`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_posts_22092021`
--
ALTER TABLE `ci_posts_22092021`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_post_menu`
--
ALTER TABLE `ci_post_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_product_variation`
--
ALTER TABLE `ci_product_variation`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `ci_product_variationmeta`
--
ALTER TABLE `ci_product_variationmeta`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `ci_product_variationmeta_22092021`
--
ALTER TABLE `ci_product_variationmeta_22092021`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `ci_product_variation_22092021`
--
ALTER TABLE `ci_product_variation_22092021`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `ci_tags`
--
ALTER TABLE `ci_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_taxonomy_post`
--
ALTER TABLE `ci_taxonomy_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_tbl_books`
--
ALTER TABLE `ci_tbl_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_term_taxonomy`
--
ALTER TABLE `ci_term_taxonomy`
  ADD PRIMARY KEY (`taxonomy_id`);

--
-- Indexes for table `ci_usermeta`
--
ALTER TABLE `ci_usermeta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `ci_usermeta_05082021`
--
ALTER TABLE `ci_usermeta_05082021`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `ci_usermeta_09092021`
--
ALTER TABLE `ci_usermeta_09092021`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `ci_users`
--
ALTER TABLE `ci_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_users_05082021`
--
ALTER TABLE `ci_users_05082021`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_users_09092021`
--
ALTER TABLE `ci_users_09092021`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_wc_customer_lookup`
--
ALTER TABLE `ci_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ci_wc_order_itemmeta`
--
ALTER TABLE `ci_wc_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `ci_wc_order_items`
--
ALTER TABLE `ci_wc_order_items`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `ci_wc_order_product_lookup`
--
ALTER TABLE `ci_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `ci_wc_order_status`
--
ALTER TABLE `ci_wc_order_status`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ci_wc_product_attribute_tags`
--
ALTER TABLE `ci_wc_product_attribute_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_wc_product_attribute_tags_items`
--
ALTER TABLE `ci_wc_product_attribute_tags_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_wc_product_gallery`
--
ALTER TABLE `ci_wc_product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_wc_shipping_zones`
--
ALTER TABLE `ci_wc_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_category`
--
ALTER TABLE `ci_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ci_category_26072021old`
--
ALTER TABLE `ci_category_26072021old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_contactmeta`
--
ALTER TABLE `ci_contactmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_contact_details`
--
ALTER TABLE `ci_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ci_contact_enquiry`
--
ALTER TABLE `ci_contact_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ci_display_location`
--
ALTER TABLE `ci_display_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_gallery_files`
--
ALTER TABLE `ci_gallery_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `ci_gallery_images`
--
ALTER TABLE `ci_gallery_images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ci_menu`
--
ALTER TABLE `ci_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ci_menu_items`
--
ALTER TABLE `ci_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ci_menu_levels`
--
ALTER TABLE `ci_menu_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_options`
--
ALTER TABLE `ci_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ci_options_09092021`
--
ALTER TABLE `ci_options_09092021`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ci_payment_tokens`
--
ALTER TABLE `ci_payment_tokens`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_postmeta`
--
ALTER TABLE `ci_postmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ci_postmeta_03082021`
--
ALTER TABLE `ci_postmeta_03082021`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ci_postmeta_22092021`
--
ALTER TABLE `ci_postmeta_22092021`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `ci_posts`
--
ALTER TABLE `ci_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ci_posts_03082021`
--
ALTER TABLE `ci_posts_03082021`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ci_posts_18082021`
--
ALTER TABLE `ci_posts_18082021`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `ci_posts_22092021`
--
ALTER TABLE `ci_posts_22092021`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `ci_post_menu`
--
ALTER TABLE `ci_post_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ci_product_variation`
--
ALTER TABLE `ci_product_variation`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ci_product_variationmeta`
--
ALTER TABLE `ci_product_variationmeta`
  MODIFY `variation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `ci_product_variationmeta_22092021`
--
ALTER TABLE `ci_product_variationmeta_22092021`
  MODIFY `variation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `ci_product_variation_22092021`
--
ALTER TABLE `ci_product_variation_22092021`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ci_tags`
--
ALTER TABLE `ci_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ci_taxonomy_post`
--
ALTER TABLE `ci_taxonomy_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `ci_tbl_books`
--
ALTER TABLE `ci_tbl_books`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ci_term_taxonomy`
--
ALTER TABLE `ci_term_taxonomy`
  MODIFY `taxonomy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ci_usermeta`
--
ALTER TABLE `ci_usermeta`
  MODIFY `umeta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `ci_usermeta_05082021`
--
ALTER TABLE `ci_usermeta_05082021`
  MODIFY `umeta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ci_usermeta_09092021`
--
ALTER TABLE `ci_usermeta_09092021`
  MODIFY `umeta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `ci_users`
--
ALTER TABLE `ci_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ci_users_05082021`
--
ALTER TABLE `ci_users_05082021`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ci_users_09092021`
--
ALTER TABLE `ci_users_09092021`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ci_wc_customer_lookup`
--
ALTER TABLE `ci_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_order_itemmeta`
--
ALTER TABLE `ci_wc_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_order_items`
--
ALTER TABLE `ci_wc_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_order_product_lookup`
--
ALTER TABLE `ci_wc_order_product_lookup`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_order_status`
--
ALTER TABLE `ci_wc_order_status`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_product_attribute_tags`
--
ALTER TABLE `ci_wc_product_attribute_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_wc_product_attribute_tags_items`
--
ALTER TABLE `ci_wc_product_attribute_tags_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ci_wc_product_gallery`
--
ALTER TABLE `ci_wc_product_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_wc_shipping_zones`
--
ALTER TABLE `ci_wc_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
