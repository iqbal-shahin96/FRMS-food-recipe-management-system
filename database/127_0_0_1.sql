-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 04:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-recipe-management-system`
--
CREATE DATABASE IF NOT EXISTS `food-recipe-management-system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food-recipe-management-system`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Cuisine', '2022-07-30 05:48:54', '2022-07-30 05:48:54'),
(8, 'Appetizer', '2022-07-30 05:49:37', '2022-07-30 05:49:37'),
(9, 'Main Course', '2022-07-30 05:52:24', '2022-07-30 05:52:24'),
(10, 'Desserts', '2022-07-30 05:52:36', '2022-07-30 05:52:36'),
(11, 'Bakery', '2022-07-30 05:53:35', '2022-07-30 05:53:35'),
(12, 'Drinks', '2022-07-30 06:00:58', '2022-07-30 06:00:58'),
(14, 'Fast-food', '2022-08-05 13:27:20', '2022-08-05 13:27:20'),
(15, 'Sea-food', '2022-08-25 14:25:16', '2022-08-25 14:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Md. Shahin Iqbal', 'shahin96gaming@gmail.com', 'Test mail', 'This is test mail', '2022-08-10 04:48:51', '2022-08-10 04:48:51'),
(2, 'Sm shahin', 'customer2@gmail.com', 'Test mail', 'sadadas', '2022-08-10 04:49:31', '2022-08-10 04:49:31'),
(3, 'Md. Shahin Iqbal', 'shahin@gmail.com', 'Test mail for the System', 'Thank you.', '2022-08-13 06:38:17', '2022-08-13 06:38:17'),
(4, 'Rimon', 'remon123@gmail.com', 'Test mail for the System', 'hello there', '2022-08-26 09:41:41', '2022-08-26 09:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chef_id` int(11) NOT NULL,
  `chef_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredient` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `photo`, `name`, `category`, `chef_id`, `chef_name`, `price`, `description`, `ingredient`, `status`, `created_at`, `updated_at`) VALUES
(9, 'backend/img/food/uDQUqDd5OJF7xgLNm8TY7S1VUyRp1aoLeE8gRFoZ.jpg', 'BBQ-Chicken Burger', 'Fast-food', 9, 'chef2', 500, '<p><span style=\"color: rgb(45, 45, 49); font-family: Qualion, Lato, helvetica, sans-serif; font-size: 18px;\">They were so delicious that even I, who doesn’t need chicken to survive, loved them. And Mr. How Sweet, who&nbsp;</span><em style=\"font-family: Qualion, Lato, helvetica, sans-serif; font-size: 18px; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent; color: rgb(45, 45, 49);\">absolutely no matter what</em><span style=\"color: rgb(45, 45, 49); font-family: Qualion, Lato, helvetica, sans-serif; font-size: 18px;\">&nbsp;needs chicken to survive (fact), who calls himself a chicken connoisseur (even though he really just likes to eat it plain), who would lay in a lifeless lump on the floor and allow me to hand-feed him chicken in his last hours (not joking), loved them too.</span></p><h3 class=\"wprm-recipe-header wprm-recipe-instructions-header wprm-block-text-normal wprm-align-left wprm-header-decoration-none wprm-header-has-actions\" style=\"font-family: Qualion, Lato, helvetica, sans-serif; font-size: 20px; font-weight: 700; vertical-align: baseline; border: 0px; background: rgb(250, 250, 250); line-height: 1.2em; text-transform: uppercase; letter-spacing: 0.07em; color: rgb(45, 45, 49); clear: none; font-variant-numeric: normal; font-variant-east-asian: normal; display: flex; flex-wrap: wrap; align-items: center; margin: 25px 0px 15px !important; padding: 0px !important;\">INSTRUCTIONS&nbsp;</h3><h3 class=\"wprm-recipe-header wprm-recipe-ingredients-header wprm-block-text-normal wprm-align-left wprm-header-decoration-none\" style=\"font-family: Qualion, Lato, helvetica, sans-serif; font-size: 20px; font-weight: 700; vertical-align: baseline; border: 0px; background: rgb(250, 250, 250); line-height: 1.2em; text-transform: uppercase; letter-spacing: 0.07em; color: rgb(45, 45, 49); clear: none; font-variant-numeric: normal; font-variant-east-asian: normal; margin: 25px 0px 15px !important; padding: 0px !important;\"><div class=\"wprm-recipe-instruction-group\" style=\"font-size: 17px; font-weight: 400; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; letter-spacing: normal; text-transform: none;\"><ul class=\"wprm-advanced-list wprm-advanced-list-reset wprm-advanced-list-6492 wprm-recipe-instructions\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; border: 0px; background: transparent; list-style: none; margin-block: 0px; padding-inline-start: 0px; counter-reset: wprm-advanced-list-counter 0; margin-right: 0px !important; margin-bottom: 0px !important; margin-left: 0px !important; padding: 0px !important;\"><li id=\"wprm-recipe-60171-step-0-0\" class=\"wprm-recipe-instruction\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: none; font-size: 1em !important;\"><div class=\"wprm-recipe-instruction-text\" ;=\"\" style=\"font-family: inherit; font-size: 1em; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 15px; padding: 0px; border: 0px; background: transparent;\">In a large bowl, combine chicken, BBQ sauce, paprika, onion and garlic powder, salt, pepper and cheddar cheese. Mix until just combined, then form 4 patties. Preheat the grill or a skillet and cook the burgers until fully cooked through. I used a skillet and cooked mine about 8 minutes per side – they were juicy and not dried out, but cooked thoroughly.</div></li><li id=\"wprm-recipe-60171-step-0-1\" class=\"wprm-recipe-instruction\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: none; font-size: 1em !important;\"><div class=\"wprm-recipe-instruction-text\" ;=\"\" style=\"font-family: inherit; font-size: 1em; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 15px; padding: 0px; border: 0px; background: transparent;\">While burgers are cooking, heat a skillet on medium heat and add olive oil. Add sliced onions with a pinch of salt and saute until caramelized, about 10 minutes.</div></li><li id=\"wprm-recipe-60171-step-0-2\" class=\"wprm-recipe-instruction\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: none; font-size: 1em !important;\"><div class=\"wprm-recipe-instruction-text\" ;=\"\" style=\"font-family: inherit; font-size: 1em; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 15px; padding: 0px; border: 0px; background: transparent;\">When burgers are ready, top with gouda (or more cheddar), onions, BBQ sauce and fresh romaine. I also toast the buns!</div></li></ul></div></h3>', '<div class=\"wprm-recipe-ingredient-group\" style=\"font-family: Qualion, Lato, helvetica, sans-serif; font-size: 17px; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: rgb(250, 250, 250); color: rgb(45, 45, 49);\"><ul class=\"wprm-recipe-ingredients\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; border: 0px; background: transparent; list-style: none; margin-block: 0px; padding-inline-start: 0px; padding: 0px !important; margin-bottom: 0px !important; margin-right: 0px !important; margin-left: 0px !important;\"><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">pound</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">ground chicken breast</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/4</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">cup</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">finely grated sharp cheddar cheese</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">teaspoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">smoked paprika</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/2</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">teaspoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">onion powder</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/4</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">teaspoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">garlic powder</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/4</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">teaspoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">black pepper</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/4</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">teaspoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">salt</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1/4</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">cup</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">BBQ sauce – use homemade or your favorite!</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">4</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">whole wheat buns</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">onion,</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\" style=\"font-family: inherit; font-weight: inherit; font-style: italic; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent; opacity: 1; color: rgb(97, 97, 101);\">sliced</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-amount\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">tablespoon</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">olive oil</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">BBQ sauce for topping</span></li><li class=\"wprm-recipe-ingredient\" style=\"font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px 0px 10px 15px; padding: 0px; border: 0px; background: transparent; list-style-position: outside; position: relative; line-height: 1.7em; list-style-type: disc; font-size: 1em !important;\"><span class=\"wprm-recipe-ingredient-name\" style=\"font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; background: transparent;\">gouda cheese for topping</span></li></ul></div><p><br></p>', '1', '2022-08-05 13:29:12', '2022-08-20 05:37:04'),
(10, 'backend/img/food/EqrcF8AUrq7mw8CUaq8pgXJCQDLu6cwDFTHXJIZO.jpg', 'Beef Steak', 'Main Course', 9, 'chef2', 800, '<p style=\"margin: 12pt 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">I always marinate my\r\nsteak in zip-lock bags which I acknowledge is not environmentally friendly, but\r\nit is the most effective way to marinade steak because it keeps the steak\r\nevenly coated with a relatively small amount of marinade.<o:p></o:p></span></p><p style=\"margin: 12pt 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit;\"><span style=\"font-size:14.0pt;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:\r\nminor-latin;color:#3D3D3D\">If you want to use a container instead, use a glass\r\nor other non-reactive container and I would recommend doubling the marinade.<span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">12 to 24 hours is best. You can also\r\nfreeze it immediately – then it will marinate as it thaws!</span><o:p></o:p></span></p><p style=\"box-sizing: inherit; padding: 0px; margin: 16px 0px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px;\">\r\n\r\n\r\n\r\n</p><p style=\"margin: 12pt 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit;\"><span style=\"font-size:14.0pt;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:\r\nminor-latin;color:#3D3D3D\">Pan fry or\r\ngrill it, and marvel at how JUICY and FLAVOURFUL your steak is!!&nbsp;<span style=\"text-align: var(--bs-body-text-align);\"><span style=\"font-weight: var(--bs-body-font-weight);\">The steak\r\nmarinade injects enough&nbsp;</span>flavor<span style=\"font-weight: var(--bs-body-font-weight);\">&nbsp;into\r\nthe steak such that you don’t need to serve this with a sauce. But I couldn’t\r\nresist adding a smidge of garlic butter on top!</span></span></span><span style=\"font-size: 14pt; font-family: Calibri, sans-serif;\"><o:p></o:p></span></p><div class=\"wprm-recipe-instructions-container wprm-recipe-25177-instructions-container wprm-block-text-normal\" data-recipe=\"25177\" style=\"counter-reset: wprm-advanced-list-counter 0; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; background-color: rgb(246, 245, 243);\"><h3 class=\"wprm-recipe-header wprm-recipe-instructions-header wprm-block-text-normal wprm-align-left wprm-header-decoration-none\" style=\"font-family: Lora, serif; line-height: 1.2; margin: 20px 0px 8px; color: rgb(244, 121, 108); font-size: 18px; clear: none; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 0px; padding: 0px;\"><p class=\"MsoNormal\" style=\"font-weight: 700; margin: 15pt 0in 6pt; line-height: normal;\"><b><span style=\"font-size:13.5pt;font-family:&quot;Arial Black&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:red\">Instructions<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">1)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; &nbsp; &nbsp;</span></span><!--[endif]--><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Mix together mustard, garlic and onion powder. Then mix in\r\nremaining ingredients.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">2)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Place beef in a zip-lock bag with Marinade and marinade\r\novernight (12 - 24 hours).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">3)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Remove from the fridge 30 minutes before cooking to bring to\r\nroom temperature - key for even cooking of steaks. Shake off excess marinade.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">4)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Brush BBQ Grills with oil, then heat on high heat until is\r\nreally hot - you should see wisps of smoke. Or heat a heavy based skillet on\r\nhigh until very hot, then add oil - it will heat almost instantly.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">5)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Add steaks. For 2cm / 3/4\" thick steaks, cook the first\r\nside for 2 minutes, then turn and cook the other side for 2 minutes (medium\r\nrare 52°C/125°F, chart below for other doneness temps). (Note 3)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">6)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Remove from skillet onto a WARM plate, cover loosely with foil\r\nand set aside for 5 minutes.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 3pt 0.25in; text-align: justify; text-indent: -0.25in; line-height: normal;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:0in;margin-bottom:3.0pt;\r\nmargin-left:.25in;text-align:justify;text-indent:-.25in;line-height:normal;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:11.5pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">7)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; &nbsp; &nbsp;</span></span><!--[endif]--><span style=\"font-size:11.5pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:#3D3D3D\">Serve! I couldn\'t resist garlic butter - see recipe in notes.<o:p></o:p></span></p></h3></div><div class=\"wprm-recipe-notes-container wprm-block-text-normal\" style=\"margin: 24px -16px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif;\"><h3 class=\"wprm-recipe-header wprm-recipe-notes-header wprm-block-text-normal wprm-align-left wprm-header-decoration-none\" style=\"font-family: Lora, serif; font-weight: 700; line-height: 1.2; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; color: rgb(244, 121, 108); font-size: 18px; clear: none; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 0px; padding: 0px;\"><i class=\"fas fa-pencil\" style=\"font-style: italic;\"></i>Recipe Notes:</h3><div class=\"wprm-recipe-notes\"><span style=\"display: block;\"><span style=\"font-weight: 700;\">1. Choosing steak:</span>&nbsp;Use this for any good value cut of steak, not prime cuts. Typically, most steak cuts purchased in supermarkets are what I would consider good value steaks. Basically, the more you pay, the better the steak!</span><div class=\"wprm-spacer\" style=\"font-size: 0px; line-height: 0; width: 578px; height: 10px; background: none !important;\"></div><span style=\"display: block;\">And remember, it\'s not just the steak cut that determine quality. There are different grades for the same cut of steak. Rib Eye at my butcher costs almost twice as much as it does at the supermarket. I would never marinade the one from the butcher!</span><div class=\"wprm-spacer\" style=\"font-size: 0px; line-height: 0; width: 578px; height: 10px; background: none !important;\"></div><span style=\"display: block;\">Make sure you use a GRILLING steak. Any cut of steak suitable for grilling is great for this.</span><div class=\"wprm-spacer\" style=\"font-size: 0px; line-height: 0; width: 578px; height: 10px; background: none !important;\"></div><span style=\"display: block;\"><span style=\"font-weight: 700;\">2. Soy sauce</span>&nbsp;- use an all purpose, normal soy sauce. I use&nbsp;<a href=\"https://www.woolworths.com.au/Shop/Search/Products?searchTerm=kikkoman&amp;name=kikkoman-soy-sauce-soy&amp;productId=103725\" target=\"_blank\" rel=\"noopener\" style=\"background-color: transparent; color: rgb(244, 121, 108); transition: all 0.4s ease 0s;\">Kikkoman</a>. Do not use light soy sauce (too salty), tamari or dark soy sauce (too much flavor)</span><div class=\"wprm-spacer\" style=\"font-size: 0px; line-height: 0; width: 578px; height: 10px; background: none !important;\"></div><span style=\"display: block;\"><span style=\"font-weight: 700;\">3.Internal temperature of cooked steak.&nbsp;</span>The most popular (and my personal preference) is medium rare. Cook times differ drastically depending on how thick your cut is.</span></div></div>', '<p style=\"color: rgb(61, 61, 61); font-family: Raleway, sans-serif; background-color: rgb(246, 245, 243);\"></p><p style=\"color: rgb(61, 61, 61); font-family: Raleway, sans-serif; background-color: rgb(246, 245, 243);\"></p><ul class=\"wprm-recipe-ingredients\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; margin-block: 0px; padding-inline-start: 0px;\"><ul></ul></ul><p></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:.25in;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">2 steaks, economical\r\n(Note 1)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tsp Dijon mustard<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1/2 tsp minced garlic\r\n(1 large garlic clove)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1/2 tsp onion powder\r\n(or sub with garlic powder)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp soy sauce (Note\r\n2)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp oil (I use\r\nolive oil, but any oil is fine)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp Worcestershire\r\nsauce<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.25in;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 107%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp balsamic\r\nvinegar<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:.25in;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Segoe UI&quot;, sans-serif;\">Black pepper</span><o:p></o:p></p>', '2', '2022-08-05 13:35:26', '2022-08-20 05:38:00'),
(11, 'backend/img/food/2v3gzIrH49Oe9LvDt7kcPZgOSIcEWP0LPp4EHgGF.jpg', 'Cheesy Pizza', 'Fast-food', 9, 'chef2', 500, '<h4 class=\"stephead\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 1.2em; font-size: 18px; font-family: proxima-semibold, Calibri; color: rgb(51, 51, 51);\">Step 1 Prepare the pizza dough</h4><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\">Take a dough kneading plate and add all-purpose flour to it. Next, add salt and baking powder in it and sieve the flour once. Then, make a well in the center and add 1 teaspoon of oil to it. On the other hand, take a little warm water and mix the yeast in it along with 1 teaspoon of sugar. Mix well and keep aside for 10-15 minutes. The yeast will rise in the meantime. Once the yeast has risen, add it to the flour knead the dough nicely using some water. Keep this dough aside for 4-6 hours. Then knead the dough once again. Now, the pizza dough is ready.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\"><br></p><h5 class=\"stephead\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 1.2em; font-size: 18px; font-family: proxima-semibold, Calibri; color: rgb(51, 51, 51);\">Step 2 Prepare the pizza base</h5><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\">Preheat the oven at 180 degree Celsius. Now, is the time to make the pizza base when the dough is ready. Dust the space a little using dry flour and take a large amount of the pizza dough. Using a rolling pin, roll this dough into a nice circular base. (Note: Make sure that the circular base is even at all ends.) Once you have made the base, use a fork and prick the base with it so that the base doesn\'t rise and gets baked nicely. Put it into the preheated oven and bake it 10 minutes. Now, your pizza base is ready.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\"><br></p><h6 class=\"stephead\" style=\"line-height: 1.2em; font-size: 18px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: proxima-semibold, Calibri; padding: 0px; color: rgb(51, 51, 51);\">Step 3 Chop all the vegetables for the pizza</h6><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\">Now, wash the capsicum and slice it thinly in a bowl. Then, peel the onions and cut thin slices of it as well in another bowl. And finally, cut tomatoes and mushrooms in the same manner. However, make sure that those tomatoes have less juice in them. Once all the veggies are done, Now, grate the processed and mozzarella cheese in separate bowls.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\"><br></p><h6 class=\"stephead\" style=\"line-height: 1.2em; font-size: 18px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: proxima-semibold, Calibri; padding: 0px; color: rgb(51, 51, 51);\">Step 4 Spread the sauce and veggies on the base</h6><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\">Then, take the fresh pizza base and apply tomato ketchup all over. Spread half the processed cheese all over the base and evenly put the veggies all across the base. Once you have put all the veggies, put a thick layer of mozzarella cheese.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\"><br></p><h6 class=\"stephead\" style=\"line-height: 1.2em; font-size: 18px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: proxima-semibold, Calibri; padding: 0px; color: rgb(51, 51, 51);\">Step 5 Bake the pizza at 250 degree Celsius for 10 minutes</h6><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; font-size: 16px;\">Put this pizza base in a baking tray and place it inside the oven. Let the pizza bake 10 minutes at 250 degree Celsius. Once done, take out the baking tray and slice the pizza. Sprinkle oregano and chilli flakes as per your taste and serve hot. (Note: Make sure that the oven is preheated at 250 degree Celsius for 5 minutes at least.)</p>', '<ul data-convert=\"mainingriedient\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px; float: left; width: 340px;\"><li class=\"clearfix\" quantity=\"2\" unit=\"cup\" displayname=\"all purpose flour\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"1\" style=\"display: block; margin-left: 15px;\"><font color=\"#566a7f\"><span style=\"font-size: 12px; text-transform: uppercase;\"><b>Ingredients of Pizza</b></span></font><br></label></li><li class=\"clearfix\" quantity=\"2\" unit=\"cup\" displayname=\"all purpose flour\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"1\" style=\"display: block; margin-left: 15px;\">2 cup all purpose flour</label></li><li class=\"clearfix\" quantity=\"100\" unit=\"mililitre\" displayname=\"tomato ketchup\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"3\" style=\"display: block; margin-left: 15px;\">100 ml tomato ketchup</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"Numbers\" displayname=\"tomato\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"5\" style=\"display: block; margin-left: 15px;\">1 tomato</label></li><li class=\"clearfix\" quantity=\"2\" unit=\"Numbers\" displayname=\"onion\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"7\" style=\"display: block; margin-left: 15px;\">2 onion</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"teaspoon\" displayname=\"chilli flakes\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"9\" style=\"display: block; margin-left: 15px;\">1 teaspoon chilli flakes</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"teaspoon\" displayname=\"baking powder\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"11\" style=\"display: block; margin-left: 15px;\">1 teaspoon baking powder</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"teaspoon\" displayname=\"sugar\" suffix=\"\" style=\"color: rgb(51, 51, 51); font-family: proxima-regular1, Calibri; margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word;\"><label class=\"clearfix\" for=\"13\" style=\"display: block; margin-left: 15px;\">1 teaspoon sugar</label></li></ul><ul data-convert=\"mainingriedient\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px; float: left; width: 340px; color: rgb(51, 51, 51); font-family: proxima-semibold, calibri;\"><li class=\"clearfix\" quantity=\"100\" unit=\"grams\" displayname=\"processed cheese\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"2\" style=\"display: block; margin-left: 15px;\"><br></label></li><li class=\"clearfix\" quantity=\"100\" unit=\"grams\" displayname=\"processed cheese\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"2\" style=\"display: block; margin-left: 15px;\">100 gm processed cheese</label></li><li class=\"clearfix\" quantity=\"4\" unit=\"Numbers\" displayname=\"mushroom\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"4\" style=\"display: block; margin-left: 15px;\">4 mushroom</label></li><li class=\"clearfix\" quantity=\"1/2\" unit=\"Numbers\" displayname=\"capsicum (green pepper)\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"6\" style=\"display: block; margin-left: 15px;\">1/2 capsicum (green pepper)</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"teaspoon\" displayname=\"oregano\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"8\" style=\"display: block; margin-left: 15px;\">1 teaspoon oregano</label></li><li class=\"clearfix\" quantity=\"1/2\" unit=\"cup\" displayname=\"mozzarella\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"10\" style=\"display: block; margin-left: 15px;\">1/2 cup mozzarella</label></li><li class=\"clearfix\" quantity=\"1\" unit=\"tablespoon\" displayname=\"dry yeast\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"12\" style=\"display: block; margin-left: 15px;\">1 tablespoon dry yeast</label></li><li class=\"clearfix\" quantity=\"0\" unit=\"As required\" displayname=\"water\" suffix=\"\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;\"><label class=\"clearfix\" for=\"14\" style=\"display: block; margin-left: 15px;\">water as required</label></li></ul>', '1', '2022-08-05 13:42:14', '2022-08-20 09:49:36');
INSERT INTO `food` (`id`, `photo`, `name`, `category`, `chef_id`, `chef_name`, `price`, `description`, `ingredient`, `status`, `created_at`, `updated_at`) VALUES
(12, 'backend/img/food/zXvIQi2hOelhDscAxataWYZq8nY02d3UQHkBCOnI.jpg', 'Chicken Curry', 'Main Course', 9, 'chef2', 400, '<div>In a large pot over medium-high heat, heat oil. Add onion and cook until soft, 5 minutes. Add chicken and sear until no pink remains, 5 minutes. Stir in garlic and ginger and cook until fragrant, 1 minute.</div><div>Add spices and cook until very fragrant, 1 minute. </div><div><br></div><div>Add tomatoes and broth and bring to a simmer. Stir in heavy cream, and season with salt and pepper. Simmer until chicken pieces are cooked through and tender, about 15 to 20 minutes.&nbsp;</div><div><br></div><div>Serve over rice or with naan, garnished with cilantro.</div>', '<div>INGREDIENTS:<br></div><ul><li>2 tbsp. extra-virgin olive oil</li><li>1 medium yellow onion, chopped</li><li>2 lb. boneless skinless chicken breasts, cut into 1\" pieces</li><li>3 cloves garlic, minced</li><li>1 tbsp. minced ginger</li><li>1 1/2 tsp. paprika</li><li>1 1/2 tsp. ground turmeric</li><li>1 1/2 tsp. ground coriander</li><li>1 tsp. ground cumin</li><li>1 (15-oz.) can crushed tomatoes</li><li>1 1/2 c. low-sodium chicken broth</li><li>1/2 c. heavy cream</li><li>Kosher salt</li><li>Freshly ground black pepper</li><li>Basmati rice or naan, for serving</li><li>1 tbsp. freshly chopped cilantro, for garnish</li></ul>', '1', '2022-08-05 13:47:54', '2022-08-20 09:50:19'),
(13, 'backend/img/food/U5PVwiZyVeaU8YfwtHNFH6iaViavDfgwqBo3DBW4.jpg', 'Chicken Pizza', 'Fast-food', 9, 'chef2', 1000, 'Let dough rest, covered, at room temperature for 30 minutes. Preheat oven to 450°. Preheat oven to 450°. Punch dough down. Sprinkle a baking sheet with cornmeal. Roll dough out to a 14-inch circle on baking sheet. Brush dough with 1 tablespoon oil; sprinkle with 2 ounces cheese. Arrange chicken mixture, vegetable mixture, and bell pepper over cheese, leaving a 1/4-inch border. Top with remaining cheese and crushed red pepper. Bake at 450° for 20 minutes or until golden. Sprinkle with herbs. Cut into slices.', 'Ingredients\r\n1 (12-ounce) portion fresh pizza dough\r\n2 ½ tablespoons olive oil, divided\r\n2 (6-ounce) skinless, boneless chicken breast halves, cubed\r\n1 (4-ounce) link sweet Italian sausage, casing removed\r\n¼ cup vertically sliced onion\r\n4 ounces cremini mushrooms, sliced\r\n1 tablespoon chopped fresh garlic\r\n2 teaspoons cornmeal\r\n4 ounces fontina cheese, shredded\r\n1 red bell pepper, seeded and sliced\r\n¾ teaspoon crushed red pepper\r\n2 tablespoons chopped parsley\r\n2 teaspoons chopped fresh thyme', '1', '2022-08-10 05:20:22', '2022-08-20 09:50:25'),
(14, 'backend/img/food/bVxGTgOs93UWIwcn9cpQXwID27deZIp3KVA0utTb.jpg', 'Beef Steak', 'Main Course', 9, 'chef2', 1200, '<p class=\"MsoNormal\" style=\"margin: 12pt 0in; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;mso-ascii-font-family:Calibri;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;\r\ncolor:#3D3D3D\">I always marinate my steak in zip-lock bags which I acknowledge\r\nis not environmentally friendly, but it is the most effective way to marinade\r\nsteak because it keeps the steak evenly coated with a relatively small amount\r\nof marinade.</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;mso-ascii-font-family:Calibri;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;\r\ncolor:#3D3D3D\">If you want to use a container instead, use a glass or other\r\nnon-reactive container and I would recommend doubling the marinade.12 to 24\r\nhours is best. You can also freeze it immediately – then it will marinate as it\r\nthaws!</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;mso-ascii-font-family:Calibri;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;\r\ncolor:#3D3D3D\">Pan fry or grill it, and marvel at how JUICY and FLAVOURFUL your\r\nsteak is!!&nbsp;The steak marinade injects enough&nbsp;flavor&nbsp;into the\r\nsteak such that you don’t need to serve this with a sauce. But I couldn’t\r\nresist adding a smidge of garlic butter on top!</span><span style=\"font-size: 11.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 6pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:13.5pt;font-family:&quot;Arial Black&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black;mso-color-alt:windowtext\">Instructions</span></b><b><span style=\"font-size:13.5pt;font-family:&quot;Arial Black&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Mix together mustard, garlic and onion\r\npowder. Then mix in remaining ingredients.</span><span style=\"font-size:14.0pt;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Place beef in a zip-lock bag with\r\nMarinade and marinade overnight (12 - 24 hours).</span><span style=\"font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Remove from the fridge 30 minutes before\r\ncooking to bring to room temperature - key for even cooking of steaks. Shake\r\noff excess marinade.</span><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Brush BBQ Grills with oil, then heat on\r\nhigh heat until is really hot - you should see wisps of smoke. Or heat a heavy\r\nbased skillet on high until very hot, then add oil - it will heat almost\r\ninstantly.</span><span style=\"font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Add steaks. For 2cm / 3/4\" thick\r\nsteaks, cook the first side for 2 minutes, then turn and cook the other side\r\nfor 2 minutes (medium rare 52°C/125°F, chart below for other doneness temps).\r\n(Note 3)</span><span style=\"font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-align: justify; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\ncolor:black;mso-color-alt:windowtext\">Remove from skillet onto a WARM plate,\r\ncover loosely with foil and set aside for 5 minutes.</span><span style=\"font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin;color:black;mso-color-alt:windowtext\">Serve!\r\nI couldn\'t resist garlic butter - see recipe in notes.</span><span style=\"font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 6pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.5pt;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 6pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:13.5pt;font-family:&quot;Arial Black&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black;mso-color-alt:windowtext\">Recipe Note:</span></b><b><span style=\"font-size:13.5pt;font-family:&quot;Arial Black&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:#3D3D3D\">1. Choosing steak:</span></b><span style=\"font-size:14.0pt;line-height:115%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">&nbsp;Use\r\nthis for any good value cut of steak, not prime cuts. Typically, most steak\r\ncuts purchased in supermarkets are what I would consider good value steaks.\r\nBasically, the more you pay, the better the steak!<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:#3D3D3D\">And remember, it\'s not just the\r\nsteak cut that determine quality. There are different grades for the same cut\r\nof steak. Rib Eye at my butcher costs almost twice as much as it does at the supermarket.\r\nI would never marinade the one from the butcher!<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:#3D3D3D\">Make sure you use a GRILLING\r\nsteak. Any cut of steak suitable for grilling is great for this.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:#3D3D3D\">2. Soy sauce</span></b><span style=\"font-size:14.0pt;line-height:115%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">&nbsp;-\r\nuse an all-purpose, normal soy sauce. I use&nbsp;<a href=\"https://www.woolworths.com.au/Shop/Search/Products?searchTerm=kikkoman&amp;name=kikkoman-soy-sauce-soy&amp;productId=103725\" target=\"_blank\"><span style=\"color:#F4796C\">Kikkoman</span></a>. Do not use\r\nlight soy sauce (too salty), tamari or dark soy sauce (too much flavor)<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;line-height:115%;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">3.Internal\r\ntemperature of cooked steak.&nbsp;</span></b><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin;color:#3D3D3D\">The most popular (and my\r\npersonal preference) is medium rare. Cook times differ drastically depending on\r\nhow thick your cut is.<o:p></o:p></span></p>', '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">2 steaks, economical (Note 1)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tsp Dijon mustard<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1/2 tsp minced garlic (1 large garlic clove)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1/2 tsp onion powder (or sub with garlic powder)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp soy sauce (Note 2)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp oil (I use olive oil, but any oil is fine)<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp Worcestershire sauce<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-size: 12pt; line-height: 17.12px; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">1 tbsp balsamic vinegar<o:p></o:p></span></p><p></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 0.25in; text-indent: -0.25in;\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 12pt; line-height: 17.12px; font-family: &quot;Segoe UI&quot;, sans-serif;\">Black pepper</span></p>', '1', '2022-08-21 03:34:19', '2022-08-22 02:36:49'),
(15, 'backend/img/food/5DzpZgGHQTecTZ0f8HdW5YwTKf0s7qT4I2PCLGdj.jpg', 'The Best Baked Salmon', 'Main Course', 5, 'Chef1', 1200, '<p><span style=\"color: rgb(28, 28, 28); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; font-size: 18px; font-style: italic; background-color: rgb(249, 249, 249);\">This simple baked salmon really hits all the right notes: tangy, sweet, savory, a little spicy and crunchy. Cooking a larger piece makes for a nice presentation. Topped with buttery golden breadcrumbs and parsley, it\'s perfect for a weeknight dinner yet fancy enough to serve to guests.</span></p><header class=\"o-Method__m-Header\" style=\"box-sizing: inherit; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(28, 28, 28); background-color: rgb(249, 249, 249);\"><div class=\"o-Method__m-TextWrap\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\"><h2 class=\"o-Method__a-Headline\" style=\"box-sizing: inherit; margin-bottom: 20px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.35; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; vertical-align: baseline; letter-spacing: -0.5px; color: rgb(28, 28, 28);\"><span class=\"o-Method__a-HeadlineText\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\">Directions</span></h2></div></header><section class=\"o-Method\" data-module=\"recipe-method\" data-read-more-target=\"\" id=\"mod-recipe-method-1\" style=\"box-sizing: inherit; margin-bottom: 20px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; contain: content; color: rgb(28, 28, 28); background-color: rgb(249, 249, 249);\"><div class=\"o-Method__m-Body\" style=\"box-sizing: inherit; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5; font-family: inherit; vertical-align: baseline; counter-reset: step-ctr 0; max-width: 700px;\"><ol style=\"box-sizing: inherit; padding-left: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: none;\"><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding-right: 20px; padding-bottom: 20px; padding-left: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Preheat the oven to 425 degrees F. Line a baking sheet with foil. Mix the brown sugar, paprika, garlic powder, cayenne pepper, 1 teaspoon kosher salt and a generous amount of freshly ground black pepper in a small bowl. Mix the panko with the parsley, butter, 1/4 teaspoon kosher salt and a few grinds of black pepper in another small bowl.</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding-top: 20px; padding-right: 20px; padding-left: 20px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Place the salmon skin-side down on the prepared baking sheet and spread the surface with the Dijon. Press the brown sugar mixture all over the salmon then top with the breadcrumb mixture. Crimp all four sides of the foil to create a border around the salmon, this will help collect the juices so they don\'t spread and burn. Bake until the breadcrumbs are golden brown, and the salmon is firm and flakes easily when pressed, 15 to 18 minutes. Cut into four equal portions for serving.&nbsp;</li></ol></div></section><p><br></p>', '<ul><li style=\"line-height: 150%;\"><b><span style=\"font-size:12.0pt;\r\nline-height:150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">&nbsp;</span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">2\r\ntablespoons light brown sugar<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1/2 teaspoon\r\npaprika<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1/2 teaspoon\r\ngarlic powder<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1/4 teaspoon\r\ncayenne pepper<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Kosher salt\r\nand freshly ground black pepper<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1/4 cup\r\npanko breadcrumbs<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1/2 cup\r\nparsley leaves, chopped<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">2\r\ntablespoons unsalted butter, melted<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1 1/2 pounds\r\nskin-on salmon fillet, preferably center-cut<o:p></o:p></span></b></li></ul>\r\n\r\n<ul><li style=\"text-align: justify; text-indent: -0.25in; line-height: 150%;\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span style=\"font-size:12.0pt;line-height:\r\n150%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">1 tablespoon\r\nDijon<o:p></o:p></span></b></li></ul>', '1', '2022-08-26 08:43:00', '2022-08-26 23:54:29');
INSERT INTO `food` (`id`, `photo`, `name`, `category`, `chef_id`, `chef_name`, `price`, `description`, `ingredient`, `status`, `created_at`, `updated_at`) VALUES
(16, 'backend/img/food/6P0rrb5nBjHk6tWW1q0OfCrKqMKraJAaDRYPQB1P.jpg', 'Peach Bruschetta', 'Appetizer', 11, 'Mr. Rahim Ullah', 400, '<p class=\"MsoNormal\"><b><span style=\"font-size:20.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Directions<o:p></o:p></span></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:.75in;mso-add-space:auto;\r\ntext-align:justify;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Preheat the oven to 350 degrees F.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-align:justify;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Lay the baguette pieces in a single layer on a\r\nparchment-lined baking sheet, brush both sides with 3 tablespoons of the olive\r\noil and bake until golden brown, 15 to 18 minutes.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-align:justify;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; &nbsp;&nbsp;</span></span><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">In a medium bowl, toss together the peaches,\r\nbasil, salt and remaining 1 tablespoon olive oil.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-align:justify;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Whisk together the honey, vinegar and hot\r\nsauce in a small bowl, adding more hot sauce to taste.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:normal;mso-outline-level:\r\n2;vertical-align:baseline\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:.75in;mso-add-space:auto;\r\ntext-align:justify;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">To build the bruschetta, start with a piece of\r\nbaguette, spread with the goat cheese, spoon on some peaches and top with the\r\nhot honey.<o:p></o:p></span></p>', '<ul><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1\r\nFrench baguette, sliced 1/4 inch thick<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1/4\r\ncup olive oil<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1pound\r\nlarge peaches, cut into small dice<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">2\r\ntablespoons chopped fresh basil <o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1/4\r\nteaspoon kosher salt <o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1/4\r\ncup honey <o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1\r\nteaspoon apple cider vinegar <o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">1\r\nteaspoon hot sauce, plus more as desired <o:p></o:p></span></li></ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ol><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; &nbsp; &nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">4 ounces goat cheese</span><span style=\"font-size:9.0pt;line-height:107%\"><o:p></o:p></span></li></ol>', '1', '2022-08-27 08:34:39', '2022-08-27 08:35:54'),
(17, 'backend/img/food/gser2qxQKM60FUiSQdbpTNJwzm6OgV8ZNL3y66te.jpg', 'Creamy Corn and Chile Dip', 'Appetizer', 11, 'Mr. Rahim Ullah', 500, '<p class=\"MsoNormal\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 16pt; text-align: justify; text-indent: -0.25in;\">Cut the kernels from the corn. Cut 2 thin\r\nrounds of the Fresno chile and reserve them for garnish. Seed the remaining\r\nchile, if desired, then finely chop it.</span><br></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif\">Heat the butter in a medium skillet over\r\nmedium heat. Add the scallion whites and garlic and cook, stirring\r\noccasionally, until softened, about 2 minutes Add the corn and cook, stirring\r\noccasionally, until crisp tender, about 6 minutes. Add the heavy cream and\r\nchopped chili and simmer, stirring occasionally, until thickened, about 2\r\nminutes. Stir in the cream cheese until melted, then remove from the heat and\r\nseason with salt to taste. Transfer to a serving bowl and top with the scallion\r\ngreens and the chile slices. Serve hot or at room temperature with tortilla\r\nchips for dipping.<o:p></o:p></span></p>', '<ul><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">6 ears corn, shucked<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 Fresno chile <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 tablespoons unsalted butter <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">3 scallions, chopped, white and green parts\r\nkept separate <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 small clove garlic, minced <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/3 cup heavy cream <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 ounces cream cheese <o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Kosher salt <o:p></o:p></span></li></ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ul><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:18.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Tortilla chips, for dipping, preferably\r\nmulti-colored<o:p></o:p></span></li></ul>', '1', '2022-08-27 08:42:38', '2022-08-27 08:53:24');
INSERT INTO `food` (`id`, `photo`, `name`, `category`, `chef_id`, `chef_name`, `price`, `description`, `ingredient`, `status`, `created_at`, `updated_at`) VALUES
(18, 'backend/img/food/6v7O2jVL8FlqoS3ZWV9c2tfvRMf0gnq8T1ZnTGzm.jpg', 'Summer Rolls with Peanut Sauce', 'Appetizer', 11, 'Mr. Rahim Ullah', 1000, '<p><span style=\"color: rgb(28, 28, 28); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; font-size: 18px; font-style: italic; background-color: rgb(249, 249, 249);\">Skip a yoga class and meditate on making this healthy (and beautiful!) dish. Use a mandoline to turn the vegetables into paper-thin slices, and then find zen while you perfect filling and rolling each lovely bundle. It takes time and practice, so be sure to have a few extra rice wrappers on hand in case some tear.</span></p><header class=\"o-Method__m-Header\" style=\"box-sizing: inherit; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(28, 28, 28); background-color: rgb(249, 249, 249);\"><div class=\"o-Method__m-TextWrap\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\"><h2 class=\"o-Method__a-Headline\" style=\"box-sizing: inherit; margin-bottom: 20px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.35; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; vertical-align: baseline; letter-spacing: -0.5px; color: rgb(28, 28, 28);\"><span class=\"o-Method__a-HeadlineText\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\">Directions</span></h2></div></header><section class=\"o-Method\" data-module=\"recipe-method\" data-read-more-target=\"\" id=\"mod-recipe-method-1\" style=\"box-sizing: inherit; margin-bottom: 20px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; contain: content; color: rgb(28, 28, 28); background-color: rgb(249, 249, 249);\"><div class=\"o-Method__m-Body\" style=\"box-sizing: inherit; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5; font-family: inherit; vertical-align: baseline; counter-reset: step-ctr 0; max-width: 700px;\"><ul style=\"box-sizing: inherit; padding-left: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: none;\"><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding-right: 20px; padding-bottom: 20px; padding-left: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Cook the rice noodles according to package directions. Lay them out on a baking sheet in an even layer. Use a pair of kitchen shears to cut them into 4-inch lengths. Set aside.</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Use a mandoline slicer to shave the orange, red and yellow bell peppers into long, paper-thin slices. Then shave the beets, carrot and cucumber into paper-thin rounds. Set aside.&nbsp;</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Whisk together the peanut butter, hoisin sauce, chili garlic sauce, sesame oil, lime juice and 1/4 cup of warm water in a small bowl until well combined. Season to taste with salt.</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Toss together the chicken, cilantro, mint, scallion and 2 tablespoons of the peanut sauce in a large bowl until well coated.&nbsp;</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Set up your rolling station with a damp cutting board, a medium bowl filled with water and a serving platter. Place the orange, red and yellow bell peppers, beets, carrots, cucumber, rice noodles, chicken-herb mixture and rice paper wrappers nearby. &nbsp; &nbsp;</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Take 1 rice paper wrapper and wet it with some water until just slightly softened. Lay it on the cutting board and make sure it is completely flat. Arrange 3 mint leaves about 1/4-inch from one another, in the middle of the wrapper (the tips of each mint leaf should be pointing up and away from you). Take 3 slices of yellow bell pepper and lay them over the first mint leaf. Take 3 slices of red bell pepper and lay them over the second mint leaf. Take 3 slices of orange bell pepper and lay them over the third mint leaf. Lay 6 slices of beet, slightly shingled, over the bell pepper layer. There should be about a 1-inch of space above and below the beet edge where the bell peppers peak out slightly. Shingle 6 slices of cucumbers right above the beets and over the pepper ends. Shingle 6 slices of carrots right below the beets and over the pepper ends. Take a bunch of the cut rice noodles, about the same diameter of a silver dollar, and put them on top of the candy cane beet layer, being mindful of keeping them in a tight line. Take a heaping 2 tablespoons of the chicken mixture and put on top of the noodles.</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding-top: 20px; padding-right: 20px; padding-left: 20px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Working from the edge of the rice paper wrapper closest to you, fold it over the filling, then fold in the sides, like you are rolling a burrito, and roll up tightly. Put the finished roll on the serving platter and cover with a damp paper towel to keep it from drying out, repeat with the remaining 11 rice paper wrappers and fillings. Serve with the remaining peanut sauce on the side for dipping.</li></ul></div></section><section class=\"o-ChefNotes\" style=\"box-sizing: inherit; padding: 20px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(224, 224, 224); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; background-color: rgb(249, 249, 249); color: rgb(28, 28, 28);\"><header class=\"o-ChefNotes__m-Header\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\"><h3 class=\"o-ChefNotes__a-Headline\" style=\"box-sizing: inherit; margin-bottom: 10px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 20px; line-height: 1; font-family: FranklinGothicURW-Dem, Helvetica, Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px;\">Cook’s Note</h3></header><p class=\"o-ChefNotes__a-Description\" style=\"box-sizing: inherit; margin-bottom: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5; vertical-align: baseline;\">Rice paper wrappers have a tendency to tear. Make sure you have a couple extra on hand.</p></section><p><br></p>', '<ul><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">One 6.25-ounce package of mai fun rice noodles<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 orange bell pepper, stemmed and seeded<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 red bell pepper, stemmed and seeded<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 yellow bell pepper, stemmed and seeded<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 candy cane beets, peeled<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 large carrot<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 Persian cucumber<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/4 cup creamy peanut butter<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 tablespoons hoisin sauce<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 tablespoons chili garlic sauce<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 teaspoons toasted sesame oil<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Juice of 2 limes (about 2 tablespoons)<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Kosher salt<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">2 1/2 cups shredded cooked chicken<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/4 cup fresh cilantro leaves, roughly chopped<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/4 cup fresh mint leaves, roughly chopped,\r\nplus 36 whole fresh leaves<o:p></o:p></span></li><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">4 scallions, sliced thinly<o:p></o:p></span></li></ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ul><li style=\"text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;line-height:107%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">12 8-inch round rice paper wrappers (see\r\nCook\'s Note)<o:p></o:p></span></li></ul>', '1', '2022-08-27 08:52:32', '2022-08-27 08:53:30'),
(19, 'backend/img/food/wOHKfW4K4KAef0KFoWrVjmZuJ8sL91mcJsfaD9HT.jpg', 'Classic Deviled Eggs', 'Appetizer', 11, 'Mr. Rahim Ullah', 200, '<div class=\"o-VideoPromo\" data-module=\"launch-lead-video\" id=\"mod-launch-lead-video-1\" style=\"box-sizing: inherit; margin-bottom: 20px; padding: 11px 20px 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; width: auto; justify-content: center; float: none; background-color: rgb(249, 249, 249); clear: right; color: rgb(28, 28, 28);\"><div class=\"l-List\" style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"font-family: inherit; font-size: 16px; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">Place eggs in a single layer in a saucepan and cover with enough water that there\'s 1 1/2 inches of water above the eggs. Heat on high until water begins to boil, then cover, turn the heat to low, and cook for 1 minute. Remove from heat and leave covered for 14 minutes, then rinse under cold water continuously for 1 minute.</span><br></div></div><section class=\"o-Method\" data-module=\"recipe-method\" data-read-more-target=\"\" id=\"mod-recipe-method-1\" style=\"box-sizing: inherit; margin-bottom: 20px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: FranklinGothicURW-Boo, Helvetica, Arial, sans-serif; vertical-align: baseline; contain: content; color: rgb(28, 28, 28); background-color: rgb(249, 249, 249);\"><div class=\"o-Method__m-Body\" style=\"box-sizing: inherit; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5; font-family: inherit; vertical-align: baseline; counter-reset: step-ctr 0; max-width: 700px;\"><ol style=\"box-sizing: inherit; padding-left: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: none;\"><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding: 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Crack egg shells and carefully peel under cool running water. Gently dry with paper towels. Slice the eggs in half lengthwise, removing yolks to a medium bowl, and placing the whites on a serving platter. Mash the yolks into a fine crumble using a fork. Add mayonnaise, vinegar, mustard, salt, and pepper, and mix well.</li><li class=\"o-Method__m-Step\" style=\"box-sizing: inherit; padding-top: 20px; padding-right: 20px; padding-left: 20px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Evenly disperse heaping teaspoons of the yolk mixture into the egg whites. Sprinkle with paprika and serve.</li><li></li></ol></div></section>', '<ul><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">6 eggs<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/4 cup mayonnaise<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 teaspoon white vinegar<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1 teaspoon yellow mustard<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">1/8 teaspoon salt<o:p></o:p></span></li><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Freshly ground black pepper<o:p></o:p></span></li></ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ul><li style=\"text-align: justify; text-indent: -0.25in;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;color:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;\r\nmso-border-alt:none windowtext 0in;padding:0in;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:16.0pt;line-height:107%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#1C1C1C;letter-spacing:-.4pt;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0in;padding:0in\">Smoked Spanish paprika, for garnish</span><b><span style=\"font-size:26.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#1C1C1C;letter-spacing:-.4pt;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;padding:0in\"><o:p></o:p></span></b></li></ul>', '1', '2022-08-27 09:03:07', '2022-08-27 09:04:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_30_091511_create_categories_table', 2),
(9, '2022_08_03_102539_create_customers_table', 4),
(12, '2022_07_30_130105_create_food_table', 6),
(13, '2022_08_04_080809_create_chefs_table', 7),
(14, '2022_08_10_095919_create_contacts_table', 7),
(15, '2022_08_03_104625_create_orders_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chef_id` int(11) NOT NULL,
  `chef_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tnx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food_id`, `food_name`, `user_id`, `user_name`, `chef_id`, `chef_name`, `price`, `method`, `tnx_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 9, 'BBQ-Chicken Burger', 3, 'customer2', 9, 'chef2', 500, 'bKash', '87YAUS8AY', '2022-08-10 06:49:43', '2022-08-25 01:54:30', 1),
(2, 11, 'Cheesy Pizza', 3, 'customer2', 9, 'chef2', 500, 'Nagad', '8977GYGDYTFW', '2022-08-10 10:16:32', '2022-08-25 06:12:00', 1),
(3, 11, 'Cheesy Pizza', 3, 'customer2', 9, 'chef2', 500, 'bKash', '87YAUS8AY', '2022-08-11 00:47:55', '2022-08-25 06:12:06', 1),
(4, 12, 'Chicken Curry', 3, 'customer2', 9, 'chef2', 400, 'Nagad', 'wcfvtgbmjmj', '2022-08-21 03:23:36', '2022-08-25 06:12:11', 1),
(5, 14, 'Beef Steak', 3, 'customer2', 9, 'chef2', 1200, 'bKash', '8977GYGDYTFW', '2022-08-27 00:05:37', '2022-08-27 00:05:48', 1),
(6, 13, 'Chicken Pizza', 3, 'customer2', 9, 'chef2', 1000, 'bKash', 'THNF12KJDF8', '2022-08-27 03:05:48', '2022-08-27 03:07:04', 1),
(7, 19, 'Classic Deviled Eggs', 14, 'sm shahin', 11, 'Mr. Rahim Ullah', 200, 'bKash', 'HJKGRYT65FHG', '2022-08-29 12:24:29', '2022-08-29 12:24:46', 1),
(8, 15, 'The Best Baked Salmon', 14, 'sm shahin', 5, 'Chef1', 1200, 'bKash', 'JAKHYKHK56', '2022-08-29 12:25:27', '2022-08-29 12:25:46', 1),
(9, 9, 'BBQ-Chicken Burger', 14, 'sm shahin', 9, 'chef2', 500, 'bKash', 'AJKDFFFSD45', '2022-08-29 12:31:19', '2022-08-29 12:31:36', 1),
(10, 12, 'Chicken Curry', 14, 'sm shahin', 9, 'chef2', 400, 'Nagad', 'KLAHDG35HH', '2022-08-29 12:33:33', '2022-08-29 12:34:15', 1),
(11, 14, 'Beef Steak', 14, 'sm shahin', 9, 'chef2', 1200, 'bKash', 'LDUTUBJHG67', '2022-08-29 12:33:59', '2022-08-29 12:34:20', 1),
(12, 11, 'Cheesy Pizza', 14, 'sm shahin', 9, 'chef2', 500, 'bKash', 'KJDGYG47', '2022-08-29 12:35:26', '2022-08-29 12:35:39', 1),
(13, 17, 'Creamy Corn and Chile Dip', 15, 'Ms. Trisha', 11, 'Mr. Rahim Ullah', 500, 'bKash', 'KJJGSJG76', '2022-08-29 12:36:56', '2022-08-29 12:37:32', 1),
(14, 12, 'Chicken Curry', 15, 'Ms. Trisha', 9, 'chef2', 400, 'bKash', 'JDSGFG7985', '2022-08-29 12:37:19', '2022-08-29 12:37:37', 1),
(15, 14, 'Beef Steak', 15, 'Ms. Trisha', 9, 'chef2', 1200, 'bKash', '8977GYGDYTFW', '2022-08-29 12:39:54', '2022-08-29 12:40:57', 1),
(16, 9, 'BBQ-Chicken Burger', 15, 'Ms. Trisha', 9, 'chef2', 500, 'Nagad', '87YAUS8AY', '2022-08-29 12:40:17', '2022-08-29 12:41:02', 1),
(17, 13, 'Chicken Pizza', 15, 'Ms. Trisha', 9, 'chef2', 1000, 'bKash', '8977GYGDYTFW', '2022-08-29 12:40:43', '2022-08-29 12:41:07', 1),
(18, 9, 'BBQ-Chicken Burger', 10, 'Israt', 9, 'chef2', 500, 'Nagad', 'THNF12KJDF8', '2022-08-29 12:44:18', '2022-08-29 12:45:40', 1),
(19, 14, 'Beef Steak', 10, 'Israt', 9, 'chef2', 1200, 'bKash', '87YAUS8AY', '2022-08-29 12:44:39', '2022-08-29 12:45:45', 1),
(20, 15, 'The Best Baked Salmon', 10, 'Israt', 5, 'Chef1', 1200, 'bKash', 'THNF12KJDF8', '2022-08-29 12:45:01', '2022-08-29 12:45:50', 1),
(21, 11, 'Cheesy Pizza', 10, 'Israt', 9, 'chef2', 500, 'bKash', '8977GYGDYTFW', '2022-08-29 12:45:28', '2022-08-29 12:45:55', 1),
(22, 17, 'Creamy Corn and Chile Dip', 2, 'user1', 11, 'Mr. Rahim Ullah', 500, 'bKash', 'THNF12KJDF8', '2022-08-29 12:52:37', '2022-08-29 12:53:57', 1),
(23, 12, 'Chicken Curry', 2, 'user1', 9, 'chef2', 400, 'bKash', 'THNF12KJDF8', '2022-08-29 12:52:56', '2022-08-29 12:54:04', 1),
(24, 14, 'Beef Steak', 2, 'user1', 9, 'chef2', 1200, 'Select payment option', '8977GYGDYTFW', '2022-08-29 12:53:19', '2022-08-29 12:54:09', 1),
(25, 9, 'BBQ-Chicken Burger', 2, 'user1', 9, 'chef2', 500, 'bKash', '8977GYGDYTFW', '2022-08-29 12:53:46', '2022-08-29 12:54:15', 1),
(27, 14, 'Beef Steak', 7, 'customer1', 9, 'chef2', 1200, 'Nagad', '8977GYGDYTFW', '2022-08-29 13:01:09', '2022-08-29 13:02:05', 1),
(28, 18, 'Summer Rolls with Peanut Sauce', 7, 'customer1', 11, 'Mr. Rahim Ullah', 1000, 'bKash', '8977GYGDYTFW', '2022-08-29 13:01:29', '2022-08-29 13:02:11', 1),
(29, 16, 'Peach Bruschetta', 7, 'customer1', 11, 'Mr. Rahim Ullah', 400, 'Nagad', '8977GYGDYTFW', '2022-08-29 13:05:50', '2022-08-29 13:06:04', 1),
(30, 9, 'BBQ-Chicken Burger', 7, 'customer1', 9, 'chef2', 500, 'Nagad', '8977GYGDYTFW', '2022-08-29 13:06:40', '2022-08-29 13:06:54', 1),
(31, 18, 'Summer Rolls with Peanut Sauce', 12, 'customer 5', 11, 'Mr. Rahim Ullah', 1000, 'bKash', '87YAUS8AY', '2022-08-29 13:09:03', '2022-08-29 13:09:40', 1),
(32, 15, 'The Best Baked Salmon', 12, 'customer 5', 5, 'Chef1', 1200, 'bKash', 'THNF12KJDF8', '2022-08-29 13:09:26', '2022-08-29 13:09:45', 1),
(33, 14, 'Beef Steak', 12, 'customer 5', 9, 'chef2', 1200, 'Nagad', 'wcfvtgbmjmj', '2022-08-29 13:10:30', '2022-08-29 13:11:25', 1),
(34, 12, 'Chicken Curry', 12, 'customer 5', 9, 'chef2', 400, 'bKash', 'wcfvtgbmjmj', '2022-08-29 13:10:56', '2022-08-29 13:11:31', 1),
(35, 9, 'BBQ-Chicken Burger', 12, 'customer 5', 9, 'chef2', 500, 'Nagad', 'wcfvtgbmjmj', '2022-08-29 13:11:16', '2022-08-29 13:11:37', 1),
(36, 18, 'Summer Rolls with Peanut Sauce', 16, 'Trisha Saha', 11, 'Mr. Rahim Ullah', 1000, 'Nagad', 'THNF12KJDF8', '2022-08-29 13:16:04', '2022-08-29 13:16:36', 1),
(37, 15, 'The Best Baked Salmon', 16, 'Trisha Saha', 5, 'Chef1', 1200, 'Nagad', '8977GYGDYTFW', '2022-08-29 13:16:20', '2022-08-29 13:16:42', 1),
(38, 14, 'Beef Steak', 16, 'Trisha Saha', 9, 'chef2', 1200, 'Nagad', 'wcfvtgbmjmj', '2022-08-29 13:18:01', '2022-08-29 13:18:32', 1),
(39, 9, 'BBQ-Chicken Burger', 16, 'Trisha Saha', 9, 'chef2', 500, 'bKash', '87YAUS8AY', '2022-08-29 13:18:23', '2022-08-29 13:18:39', 1),
(40, 9, 'BBQ-Chicken Burger', 3, 'customer2', 9, 'chef2', 500, 'bKash', 'GJSGYDYGY', '2022-08-29 21:36:11', '2022-08-29 21:37:03', 1),
(41, 15, 'The Best Baked Salmon', 15, 'Ms. Trisha', 5, 'Chef1', 1200, 'bKash', '87YAUS8AY', '2022-08-29 21:57:23', '2022-08-29 21:58:19', 1),
(42, 11, 'Cheesy Pizza', 20, 'Hasina Pervin', 9, 'chef2', 500, 'bKash', 'THNF12KJDF8', '2022-09-29 00:57:48', '2022-09-29 00:59:47', 1),
(43, 14, 'Beef Steak', 22, 'rahim', 9, 'chef2', 1200, 'bKash', '12fvd v nj v x', '2023-04-09 09:10:47', '2023-04-09 09:13:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `address`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '+880128375', 'Dhanmondi, Dhaka-1209', '$2y$10$yVNPHe4IKwihI47bNJCY9eHb3hXp5QywSC5lTQMKpAHOtCEsE/hLO', '1', NULL, NULL, NULL),
(2, 'user1', 'user1@gmail.com', NULL, '015091727', '13/4, road#11, Hazi Camp, Dhaka', '$2y$10$XdWYRV9vTqREX/2SJIBg/ewTAwyP.shavdxarc/ppfH5DW8eDptdq', '3', NULL, '2022-07-20 07:28:37', '2022-07-20 07:28:37'),
(3, 'customer2', 'customer2@gmail.com', NULL, '018882645', 'Dakkhinkhan, Uttara, Dhaka-1209', '$2y$10$jISB1SW5SLtxju9p8r0O.uo2UcBk2JACXvgaXRYFsn9BqTfwdr6oa', '3', NULL, '2022-07-20 21:04:03', '2022-07-20 21:04:03'),
(4, 'Sm shahin', 'shahin96gaming@gmail.com', NULL, '015201346', 'Dhanmondi, Dhaka-1209', '$2y$10$1DxxZltsOdNQeSOo.0irzeOxrtoAWNp.9qW2aQRmMXcRy4KpqbogW', '2', NULL, '2022-07-21 05:31:14', '2022-07-21 05:31:14'),
(5, 'Chef1', 'chef1@gmail.com', NULL, '019123972', 'Gulshan 31/D, Dhaka-1209', '$2y$10$8L3Fm02Iw7ED5pL3hDpEwOsh0H7Fb5R6iQljOPk7U9qRHkupJa1SC', '2', NULL, '2022-07-23 05:11:27', '2022-07-23 05:11:27'),
(6, 'Md. Shahin Iqbal', 'shahiniqbal2425@gmail.com', NULL, '013923479', 'Kawlar, Uttara, Dhaka-1209', '$2y$10$FpXyefyds/gfKda/zJq6AeRmMfmgv4Gu.OU.ofZ26KzUoY/NoRqiu', '2', NULL, '2022-07-25 01:15:27', '2022-07-25 01:15:27'),
(7, 'customer1', 'cus12@gmailcom', NULL, '013923474', 'Dakhshinkhan, 1/12, Uttara, Dhaka', '$2y$10$2/8H5qu3HNUKauEkzlyAuechxKz2QrGxJ0wyzSMs1.5ovfkI7ZkP.', '3', NULL, '2022-07-26 13:26:41', '2022-07-26 13:26:41'),
(9, 'chef2', 'chef2@gmail.com', NULL, '016892344', 'Uttarkhan, Dhaka-1209', '$2y$10$w7EERxugglQ.NAt6p9CkOuuNbEfBgpMhaNgiXyi1rRmdDNPDgmXpe', '2', NULL, '2022-07-31 02:06:14', '2022-07-31 02:06:14'),
(10, 'Israt', 'israt@gmail.com', NULL, '013923471', '18/3, Banani, Dhaka', '$2y$10$jo8FgdPPfQ9db.eU11zEC.obmhfBCP/fKWCcISZ.XCGZRBUkA6Yd2', '3', NULL, '2022-07-31 23:40:31', '2022-07-31 23:40:31'),
(11, 'Mr. Rahim Ullah', 'rahim24@gmail.com', NULL, '015091726', 'Road:12, Banani, Dhaka ', '$2y$10$eTRRBKqO1lb86x4.w5blEOkP69tsWWF19tS9QN2dl2FbVkL8j5Dp2', '2', NULL, '2022-08-04 01:10:01', '2022-08-04 01:10:01'),
(12, 'customer 5', 'customer5@gmail.com', NULL, '015091725', 'Lp-72, Khalishpur, Khulna-9000', '$2y$10$ADfvFhyXauuzNz8gcuMfQ.UFpoLYwfasSJsytz40Q5iVD/aX4Yei2', '3', NULL, '2022-08-10 03:32:30', '2022-08-10 03:32:30'),
(14, 'sm shahin', 'customer1@gmail.com', NULL, '015091724', 'NR-35, Khalishpur, Khulna', '$2y$10$ke5UQN1LUN/JxTLGyO1Jx.eH7XraVnQsEfoXiyJV/Qsp9dk7EIUDe', '3', NULL, '2022-08-15 11:05:48', '2022-08-15 11:05:48'),
(15, 'Ms. Trisha', 'trisha@gmail.com', NULL, '015091723', 'Road#11, Airport, Dhaka-1209', '$2y$10$NsTwW/cwz0NzMpbap633K.LhMSB3Oh0yfngSUltppj5OBkTntTctO', '3', NULL, '2022-08-17 04:29:06', '2022-08-17 04:29:06'),
(16, 'Trisha Saha', 'trisha1@gmail.com', NULL, '015091722', 'Lp-73, Doulatpur, Khulna', '$2y$10$PcEjh1pB3SME.dAJyJaEfeeEyX.6llaUFl8HCpiPDl64Rgj3F1iL.', '3', NULL, '2022-08-17 04:40:31', '2022-08-17 04:40:31'),
(17, 'Abul Hossen', 'abc@gmail.com', NULL, '016403515', 'NB-32, Road#19, Kashipur, Khulna', '$2y$10$yNSKFFt3Wi2nlkOcVYPhbuj4q3mRLlvjZ6gKw.tLiGUEPQ9hqdeXi', '2', NULL, '2022-08-23 07:35:25', '2022-08-23 07:35:25'),
(18, 'Mr.Abul', 'abul.chef@gmail.com', NULL, '0137627488', 'Uttara, Dhaka', '$2y$10$cPy90idO3Wb6nTKGfl/tfuzg7Vq3ELaCSjcQJ50HJKKZh4bIqTZVK', '2', NULL, '2022-08-29 10:51:44', '2022-08-29 10:51:44'),
(19, 'Mina Roy', 'mina.chef@gmail.com', NULL, '0137627489', 'Banani, Dhaka', '$2y$10$BxswPxOmM3yK2ut7fuRdZek5J.zcwNO5NY9x9k9xHmm1g2DUHFqqK', '2', NULL, '2022-08-29 10:59:02', '2022-08-29 10:59:02'),
(20, 'Hasina Pervin', 'hasinapervin@gmail.com', NULL, '01917096344', 'Khalishpur, Khulna', '$2y$10$X0NfVWsBKvVg7S04DngaI.AFUmgDt8dSpCpsfTeH17gf2/KSHkf.q', '3', NULL, '2022-09-29 00:55:08', '2022-09-29 00:55:08'),
(21, 'sm iqbal', 'shahin6gaming@gmail.com', NULL, '01917096348', 'Uttara, Dhaka', '$2y$10$PW3UUAwQwbZjKPYBz9gD3ugcGPApBilWanH47DrF80IbjSeG2kHI.', '2', NULL, '2023-01-28 04:38:51', '2023-01-28 04:38:51'),
(22, 'rahim', 'shahiniqba@gmail.com', NULL, '12345678', 'dhaka', '$2y$10$fLXS8sWqmRTgCwUvl4cNKusZXpyH08YEA3Fe9vWDn3zp6cgGpT/3i', '3', NULL, '2023-04-09 09:09:40', '2023-04-09 09:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `onxy-esports-gaming`
--
CREATE DATABASE IF NOT EXISTS `onxy-esports-gaming` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onxy-esports-gaming`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"food-recipe-management-system\",\"table\":\"users\"},{\"db\":\"food-recipe-management-system\",\"table\":\"chefs\"},{\"db\":\"food-recipe-management-system\",\"table\":\"orders\"},{\"db\":\"food-recipe-management-system\",\"table\":\"food\"},{\"db\":\"food-recipe-management-system\",\"table\":\"customers\"},{\"db\":\"food-recipe-management-system\",\"table\":\"failed_jobs\"},{\"db\":\"food-recipe-management-system\",\"table\":\"categories\"},{\"db\":\"food-recipe-management-system\",\"table\":\"migrations\"},{\"db\":\"food-recipe-management-system\",\"table\":\"contacts\"},{\"db\":\"food-recipe-management-system\",\"table\":\"password_resets\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'food-recipe-management-system', 'orders', '{\"sorted_col\":\"`orders`.`created_at` ASC\"}', '2022-08-19 17:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-10 14:58:01', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
