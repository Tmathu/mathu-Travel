-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2025 at 05:46 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mathu`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE IF NOT EXISTS `contact_form` (
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`name`, `email`, `address`, `message`) VALUES
('mitha', 'msdmathu799387@gmail.com', 'jaffna', 'sdcfervgerg'),
('mathumitha', 'msdmathu799387@gmail.com', 'kandy', 'good place'),
('mitha', 'tmathumitha21@gmail.com', 'jaffna', '32fr34erf');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `place` varchar(255) NOT NULL,
  `stars` int NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `place`, `stars`, `feedback`, `created_at`) VALUES
(1, 'kandy', 4, 'good', '2025-04-25 17:36:14'),
(2, 'jaffna', 5, 'very nice', '2025-04-25 17:37:23'),
(3, 'nuwaraeliya', 4, 'good ', '2025-04-25 17:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`) VALUES
(1, 'ASP2022128', 'tmathumitha21@gmail.com', '$2y$10$CgspvvQ/MUFXlmTbTBh0leaIdtz.c1tnTYNi9ojuTd2FDcOksb0Kq'),
(2, 'ASP2022120', 'tmathumithau21@gmail.com', '$2y$10$E60NWdR9vg.4LJUonyms0uaMJwglSp2/Q/tD4zHjg49YBoZIybjMS'),
(3, 'asp2022126', 'hjbsq@gmail.com', '$2y$10$u8u7AAHbRI0c9Id4cQCV8OL8rDYjXTUREs77aUZaA//nbsKZOmU/2'),
(6, 'mathumathu', 'mathumathu@gmail.com', '$2y$10$b2SPDljNx5gD9ZMKesxi1uwWMB.FGRDARWqWY9tOccWZB0jkrkXWG'),
(5, 'mathumitha', 'mathu@gmail.com', '$2y$10$xGxZKHzchfxjeMZ2Rp0rYelv2LDOg080GOlVL3cnAFnHqhA5Vffpe'),
(7, 'mathumi', 'mathumi@gmail.com', '$2y$10$TCe0rVPznvmfE9l30B/HdObvpNqtymqeOs/pPpX5na6R5bIuMvyFu'),
(8, 'mathumith', 'm@gamil.com', '$2y$10$ce3oJhW6O3qaffmNhLLyquEsXFoSx23HiNX8tcPSIpnYM2R8nETLa'),
(9, 'mathu12345', 'math@gmail.com', '$2y$10$9Jvi6fnTu07NrOKDoQjWDOJLetZh31nFhv6TYreI4Krl71CZcj1Ty'),
(10, 'mathumitha34', 'mathumitha@gmail.com', '$2y$10$0VfNY7H7cJ8mW8FcKkCQPugkWwNC3u8c6ht.oiu9sOVojrWF917bu'),
(11, 'ASP20221282', 'asp@gmail.com', '$2y$10$.VnFJG9Q./8iRVkmOa3wWOqJrUTvnkQ4iwkCDjbpqF8P8z3XYEVSm'),
(12, 'mathumathu1', 'mth@gamil.com', '$2y$10$SfHj3oXNtL4SgOgGuRn7kOpXLpdxzC246vyns9Hqllf59zgdX6LV6');

-- --------------------------------------------------------

--
-- Table structure for table `trip_plans`
--

DROP TABLE IF EXISTS `trip_plans`;
CREATE TABLE IF NOT EXISTS `trip_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `return_date` date NOT NULL,
  `activities` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trip_plans`
--

INSERT INTO `trip_plans` (`id`, `destination`, `start_date`, `return_date`, `activities`) VALUES
(1, 'paris', '2025-04-03', '2025-04-16', 'hwgsgcvjwe'),
(2, 'paris', '2025-04-03', '2025-04-16', 'hwgsgcvjwe'),
(3, 'newyork', '2025-04-08', '2025-04-23', 'good'),
(4, 'newyork', '2025-04-08', '2025-04-23', 'good'),
(5, 'tokyo', '2025-04-09', '2025-04-30', 'good');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
