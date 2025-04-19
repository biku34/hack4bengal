-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 10:34 AM
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
-- Database: `manoraksha`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password_hash`) VALUES
(2, 'admin@gmail.com', 'a4c18ee0ada59e343691ef4ddc0e502b86679f2eaa6a5576a0ec3c9ea0658e36');

-- --------------------------------------------------------

--
-- Table structure for table `brief_cope_assessment`
--

CREATE TABLE `brief_cope_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` int(11) DEFAULT NULL CHECK (`q1` between 1 and 4),
  `q2` int(11) DEFAULT NULL CHECK (`q2` between 1 and 4),
  `q3` int(11) DEFAULT NULL CHECK (`q3` between 1 and 4),
  `q4` int(11) DEFAULT NULL CHECK (`q4` between 1 and 4),
  `q5` int(11) DEFAULT NULL CHECK (`q5` between 1 and 4),
  `q6` int(11) DEFAULT NULL CHECK (`q6` between 1 and 4),
  `q7` int(11) DEFAULT NULL CHECK (`q7` between 1 and 4),
  `q8` int(11) DEFAULT NULL CHECK (`q8` between 1 and 4),
  `q9` int(11) DEFAULT NULL CHECK (`q9` between 1 and 4),
  `q10` int(11) DEFAULT NULL CHECK (`q10` between 1 and 4),
  `q11` int(11) DEFAULT NULL CHECK (`q11` between 1 and 4),
  `q12` int(11) DEFAULT NULL CHECK (`q12` between 1 and 4),
  `q13` int(11) DEFAULT NULL CHECK (`q13` between 1 and 4),
  `q14` int(11) DEFAULT NULL CHECK (`q14` between 1 and 4),
  `q15` int(11) DEFAULT NULL CHECK (`q15` between 1 and 4),
  `q16` int(11) DEFAULT NULL CHECK (`q16` between 1 and 4),
  `q17` int(11) DEFAULT NULL CHECK (`q17` between 1 and 4),
  `q18` int(11) DEFAULT NULL CHECK (`q18` between 1 and 4),
  `q19` int(11) DEFAULT NULL CHECK (`q19` between 1 and 4),
  `q20` int(11) DEFAULT NULL CHECK (`q20` between 1 and 4),
  `q21` int(11) DEFAULT NULL CHECK (`q21` between 1 and 4),
  `q22` int(11) DEFAULT NULL CHECK (`q22` between 1 and 4),
  `q23` int(11) DEFAULT NULL CHECK (`q23` between 1 and 4),
  `q24` int(11) DEFAULT NULL CHECK (`q24` between 1 and 4),
  `q25` int(11) DEFAULT NULL CHECK (`q25` between 1 and 4),
  `q26` int(11) DEFAULT NULL CHECK (`q26` between 1 and 4),
  `q27` int(11) DEFAULT NULL CHECK (`q27` between 1 and 4),
  `q28` int(11) DEFAULT NULL CHECK (`q28` between 1 and 4),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brief_cope_assessment`
--

INSERT INTO `brief_cope_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `q26`, `q27`, `q28`, `created_at`) VALUES
(1, 6, 4, 3, 2, 3, 4, 3, 2, 1, 2, 3, 4, 1, 2, 3, 3, 2, 4, 2, 4, 2, 1, 2, 1, 3, 4, 1, 1, 2, '2025-02-20 14:12:15'),
(2, 28, 4, 3, 1, 2, 3, 4, 1, 1, 1, 2, 3, 3, 4, 2, 2, 4, 3, 3, 4, 2, 3, 3, 4, 2, 3, 4, 1, 1, '2025-02-20 14:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `cage_assessment`
--

CREATE TABLE `cage_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(1) NOT NULL CHECK (`q1` in (0,1)),
  `q2` tinyint(1) NOT NULL CHECK (`q2` in (0,1)),
  `q3` tinyint(1) NOT NULL CHECK (`q3` in (0,1)),
  `q4` tinyint(1) NOT NULL CHECK (`q4` in (0,1)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cage_assessment`
--

INSERT INTO `cage_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `created_at`) VALUES
(1, 6, 1, 0, 1, 1, '2025-02-19 18:56:24'),
(3, 24, 1, 0, 0, 1, '2025-02-19 19:11:35'),
(4, 41, 0, 0, 0, 0, '2025-02-21 08:42:59'),
(5, 45, 0, 1, 1, 1, '2025-04-10 11:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `dass_stress_assessment`
--

CREATE TABLE `dass_stress_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` char(1) NOT NULL,
  `q2` char(1) NOT NULL,
  `q3` char(1) NOT NULL,
  `q4` char(1) NOT NULL,
  `q5` char(1) NOT NULL,
  `q6` char(1) NOT NULL,
  `q7` char(1) NOT NULL,
  `q8` char(1) NOT NULL,
  `q9` char(1) NOT NULL,
  `q10` char(1) NOT NULL,
  `q11` char(1) NOT NULL,
  `q12` char(1) NOT NULL,
  `q13` char(1) NOT NULL,
  `q14` char(1) NOT NULL,
  `q15` char(1) NOT NULL,
  `q16` char(1) NOT NULL,
  `q17` char(1) NOT NULL,
  `q18` char(1) NOT NULL,
  `q19` char(1) NOT NULL,
  `q20` char(1) NOT NULL,
  `q21` char(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `stress_score` int(11) DEFAULT 0,
  `anxiety_score` int(11) DEFAULT 0,
  `depression_score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dass_stress_assessment`
--

INSERT INTO `dass_stress_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `created_at`, `stress_score`, `anxiety_score`, `depression_score`) VALUES
(1, 27, '0', '1', '2', '2', '1', '1', '0', '3', '3', '1', '1', '2', '2', '2', '2', '2', '1', '1', '1', '2', '2', '2025-02-19 17:15:44', 0, 0, 0),
(2, 6, '1', '0', '0', '0', '3', '3', '3', '1', '2', '2', '1', '2', '0', '2', '2', '1', '0', '0', '1', '1', '0', '2025-02-19 18:21:55', 0, 0, 0),
(4, 41, '1', '2', '1', '0', '2', '1', '3', '3', '1', '2', '0', '1', '3', '3', '2', '1', '1', '0', '0', '1', '2', '2025-03-01 17:37:11', 18, 18, 24);

-- --------------------------------------------------------

--
-- Table structure for table `flagged_tests`
--

CREATE TABLE `flagged_tests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `flagged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flagged_tests`
--

INSERT INTO `flagged_tests` (`id`, `user_id`, `test`, `flagged_at`) VALUES
(11, 41, 'gad7', '2025-02-21 10:19:23'),
(12, 28, 'ptsd', '2025-02-21 10:24:04'),
(13, 27, 'iesr', '2025-02-21 10:24:08'),
(14, 24, 'stress', '2025-02-21 10:24:12'),
(15, 27, 'stress', '2025-02-21 10:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `gad7_assessment`
--

CREATE TABLE `gad7_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(4) DEFAULT NULL CHECK (`q1` between 0 and 3),
  `q2` tinyint(4) DEFAULT NULL CHECK (`q2` between 0 and 3),
  `q3` tinyint(4) DEFAULT NULL CHECK (`q3` between 0 and 3),
  `q4` tinyint(4) DEFAULT NULL CHECK (`q4` between 0 and 3),
  `q5` tinyint(4) DEFAULT NULL CHECK (`q5` between 0 and 3),
  `q6` tinyint(4) DEFAULT NULL CHECK (`q6` between 0 and 3),
  `q7` tinyint(4) DEFAULT NULL CHECK (`q7` between 0 and 3),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gad7_assessment`
--

INSERT INTO `gad7_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `created_at`) VALUES
(1, 24, 0, 1, 3, 0, 0, 1, 2, '2025-02-19 19:28:09'),
(2, 27, 2, 3, 1, 3, 1, 3, 0, '2025-02-19 19:31:00'),
(3, 1, 2, 2, 1, 1, 0, 2, 3, '2025-02-20 06:04:44'),
(4, 41, 0, 1, 0, 0, 0, 0, 1, '2025-02-21 08:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `iesr_assessment`
--

CREATE TABLE `iesr_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(4) NOT NULL CHECK (`q1` between 0 and 4),
  `q2` tinyint(4) NOT NULL CHECK (`q2` between 0 and 4),
  `q3` tinyint(4) NOT NULL CHECK (`q3` between 0 and 4),
  `q4` tinyint(4) NOT NULL CHECK (`q4` between 0 and 4),
  `q5` tinyint(4) NOT NULL CHECK (`q5` between 0 and 4),
  `q6` tinyint(4) NOT NULL CHECK (`q6` between 0 and 4),
  `q7` tinyint(4) NOT NULL CHECK (`q7` between 0 and 4),
  `q8` tinyint(4) NOT NULL CHECK (`q8` between 0 and 4),
  `q9` tinyint(4) NOT NULL CHECK (`q9` between 0 and 4),
  `q10` tinyint(4) NOT NULL CHECK (`q10` between 0 and 4),
  `q11` tinyint(4) NOT NULL CHECK (`q11` between 0 and 4),
  `q12` tinyint(4) NOT NULL CHECK (`q12` between 0 and 4),
  `q13` tinyint(4) NOT NULL CHECK (`q13` between 0 and 4),
  `q14` tinyint(4) NOT NULL CHECK (`q14` between 0 and 4),
  `q15` tinyint(4) NOT NULL CHECK (`q15` between 0 and 4),
  `q16` tinyint(4) NOT NULL CHECK (`q16` between 0 and 4),
  `q17` tinyint(4) NOT NULL CHECK (`q17` between 0 and 4),
  `q18` tinyint(4) NOT NULL CHECK (`q18` between 0 and 4),
  `q19` tinyint(4) NOT NULL CHECK (`q19` between 0 and 4),
  `q20` tinyint(4) NOT NULL CHECK (`q20` between 0 and 4),
  `q21` tinyint(4) NOT NULL CHECK (`q21` between 0 and 4),
  `q22` tinyint(4) NOT NULL CHECK (`q22` between 0 and 4),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iesr_assessment`
--

INSERT INTO `iesr_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `created_at`) VALUES
(1, 24, 4, 3, 2, 0, 2, 4, 2, 3, 0, 1, 2, 4, 3, 3, 2, 1, 1, 0, 0, 0, 0, 0, '2025-02-20 05:30:18'),
(2, 27, 4, 3, 1, 1, 0, 1, 2, 3, 3, 4, 1, 0, 0, 0, 1, 1, 2, 3, 3, 2, 2, 3, '2025-02-20 05:33:31'),
(3, 41, 4, 4, 0, 0, 1, 1, 0, 0, 0, 1, 1, 2, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, '2025-02-21 08:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `loneliness_test`
--

CREATE TABLE `loneliness_test` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `q1` tinyint(1) DEFAULT NULL,
  `q2` tinyint(1) DEFAULT NULL,
  `q3` tinyint(1) DEFAULT NULL,
  `q4` tinyint(1) DEFAULT NULL,
  `q5` tinyint(1) DEFAULT NULL,
  `q6` tinyint(1) DEFAULT NULL,
  `q7` tinyint(1) DEFAULT NULL,
  `q8` tinyint(1) DEFAULT NULL,
  `q9` tinyint(1) DEFAULT NULL,
  `q10` tinyint(1) DEFAULT NULL,
  `q11` tinyint(1) DEFAULT NULL,
  `q12` tinyint(1) DEFAULT NULL,
  `q13` tinyint(1) DEFAULT NULL,
  `q14` tinyint(1) DEFAULT NULL,
  `q15` tinyint(1) DEFAULT NULL,
  `q16` tinyint(1) DEFAULT NULL,
  `q17` tinyint(1) DEFAULT NULL,
  `q18` tinyint(1) DEFAULT NULL,
  `q19` tinyint(1) DEFAULT NULL,
  `q20` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loneliness_test`
--

INSERT INTO `loneliness_test` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `created_at`) VALUES
(2, 6, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 3, 3, 3, 2, 3, 3, 3, '2025-02-07 11:20:06'),
(10, 1, 1, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-02-07 17:30:17'),
(11, 10, 3, 1, 2, 3, 3, 3, 2, 1, 2, 4, 4, 4, 4, 3, 3, 1, 1, 1, 1, 3, '2025-02-12 11:13:47'),
(12, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-02-12 11:23:25'),
(13, 25, 3, 2, 1, 2, 1, 1, 2, 1, 3, 4, 2, 3, 4, 3, 2, 3, 3, 2, 2, 1, '2025-02-18 07:08:09'),
(15, 41, 4, 2, 3, 1, 3, 2, 2, 3, 2, 2, 2, 2, 1, 2, 2, 1, 2, 1, 3, 3, '2025-03-01 17:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `phq9_assessment`
--

CREATE TABLE `phq9_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` int(11) DEFAULT NULL CHECK (`q1` between 0 and 3),
  `q2` int(11) DEFAULT NULL CHECK (`q2` between 0 and 3),
  `q3` int(11) DEFAULT NULL CHECK (`q3` between 0 and 3),
  `q4` int(11) DEFAULT NULL CHECK (`q4` between 0 and 3),
  `q5` int(11) DEFAULT NULL CHECK (`q5` between 0 and 3),
  `q6` int(11) DEFAULT NULL CHECK (`q6` between 0 and 3),
  `q7` int(11) DEFAULT NULL CHECK (`q7` between 0 and 3),
  `q8` int(11) DEFAULT NULL CHECK (`q8` between 0 and 3),
  `q9` int(11) DEFAULT NULL CHECK (`q9` between 0 and 3),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phq9_assessment`
--

INSERT INTO `phq9_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `created_at`) VALUES
(1, 27, 1, 2, 3, 0, 1, 2, 3, 2, 1, '2025-02-19 19:49:46'),
(2, 1, 3, 3, 1, 2, 1, 2, 0, 2, 3, '2025-02-19 19:52:33'),
(3, 41, 3, 1, 2, 2, 3, 3, 3, 3, 3, '2025-02-21 08:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `ptsd_assessment`
--

CREATE TABLE `ptsd_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(4) DEFAULT NULL CHECK (`q1` between 0 and 4),
  `q2` tinyint(4) DEFAULT NULL CHECK (`q2` between 0 and 4),
  `q3` tinyint(4) DEFAULT NULL CHECK (`q3` between 0 and 4),
  `q4` tinyint(4) DEFAULT NULL CHECK (`q4` between 0 and 4),
  `q5` tinyint(4) DEFAULT NULL CHECK (`q5` between 0 and 4),
  `q6` tinyint(4) DEFAULT NULL CHECK (`q6` between 0 and 4),
  `q7` tinyint(4) DEFAULT NULL CHECK (`q7` between 0 and 4),
  `q8` tinyint(4) DEFAULT NULL CHECK (`q8` between 0 and 4),
  `q9` tinyint(4) DEFAULT NULL CHECK (`q9` between 0 and 4),
  `q10` tinyint(4) DEFAULT NULL CHECK (`q10` between 0 and 4),
  `q11` tinyint(4) DEFAULT NULL CHECK (`q11` between 0 and 4),
  `q12` tinyint(4) DEFAULT NULL CHECK (`q12` between 0 and 4),
  `q13` tinyint(4) DEFAULT NULL CHECK (`q13` between 0 and 4),
  `q14` tinyint(4) DEFAULT NULL CHECK (`q14` between 0 and 4),
  `q15` tinyint(4) DEFAULT NULL CHECK (`q15` between 0 and 4),
  `q16` tinyint(4) DEFAULT NULL CHECK (`q16` between 0 and 4),
  `q17` tinyint(4) DEFAULT NULL CHECK (`q17` between 0 and 4),
  `q18` tinyint(4) DEFAULT NULL CHECK (`q18` between 0 and 4),
  `q19` tinyint(4) DEFAULT NULL CHECK (`q19` between 0 and 4),
  `q20` tinyint(4) DEFAULT NULL CHECK (`q20` between 0 and 4),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ptsd_assessment`
--

INSERT INTO `ptsd_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `created_at`) VALUES
(1, 1, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 3, 0, 4, 0, 4, 1, 1, 1, 2, 0, '2025-02-20 02:01:50'),
(2, 28, 0, 1, 3, 2, 2, 0, 0, 4, 4, 3, 3, 2, 1, 0, 2, 3, 4, 3, 3, 2, '2025-02-20 02:04:44'),
(3, 41, 1, 1, 1, 1, 1, 2, 0, 3, 0, 0, 0, 1, 1, 3, 0, 0, 0, 1, 1, 1, '2025-02-21 08:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `stress_assessment`
--

CREATE TABLE `stress_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(4) DEFAULT NULL CHECK (`q1` between 0 and 4),
  `q2` tinyint(4) DEFAULT NULL CHECK (`q2` between 0 and 4),
  `q3` tinyint(4) DEFAULT NULL CHECK (`q3` between 0 and 4),
  `q4` tinyint(4) DEFAULT NULL CHECK (`q4` between 0 and 4),
  `q5` tinyint(4) DEFAULT NULL CHECK (`q5` between 0 and 4),
  `q6` tinyint(4) DEFAULT NULL CHECK (`q6` between 0 and 4),
  `q7` tinyint(4) DEFAULT NULL CHECK (`q7` between 0 and 4),
  `q8` tinyint(4) DEFAULT NULL CHECK (`q8` between 0 and 4),
  `q9` tinyint(4) DEFAULT NULL CHECK (`q9` between 0 and 4),
  `q10` tinyint(4) DEFAULT NULL CHECK (`q10` between 0 and 4),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stress_assessment`
--

INSERT INTO `stress_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `created_at`) VALUES
(3, 1, 4, 2, 0, 0, 0, 0, 3, 3, 1, 1, '2025-02-11 06:38:43'),
(4, 6, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2025-02-18 17:18:11'),
(5, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-18 17:20:47'),
(6, 24, 4, 2, 2, 0, 1, 2, 2, 3, 3, 2, '2025-02-20 08:57:54'),
(7, 41, 3, 2, 2, 4, 2, 3, 0, 4, 1, 2, '2025-03-01 17:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`) VALUES
(1, 'user@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
(6, 'admin@mr.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(9, 'bob@example.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(10, 'charlie@example.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(24, 'bikram@mr.com', 'b450c48ec9d579ede2f61ad997c1e16fe7c4d31eef3f102146bdd20d99a80209'),
(25, 'sadhukhan@gmail.com', '3db43d58d617a674506bc50f35c7ccf37e88a7286f952db6ee2359b4afc4752c'),
(27, 'x@outlook.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(28, 'riya@mr.com', 'f053af9aad9d37435d6537cba10231a9fe0fa3b802978ff2ad0c1d29e1614ddc'),
(41, 'bikramsadhukhan505@gmail.com', 'b450c48ec9d579ede2f61ad997c1e16fe7c4d31eef3f102146bdd20d99a80209'),
(42, 'test@gmail.com', '404cdd7bc109c432f8cc2443b45bcfe95980f5107215c645236e577929ac3e52'),
(45, 'aastha@gmail.com', '7832c2ad07d8ca03cf71944096076864d33db38dc9ff8ff9e738f232cdec6300'),
(46, 'yahoo@gmail.com', 'ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `rank` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `name`, `gender`, `rank`, `age`) VALUES
(10, 1, 'User', 'Male', 'User', 25),
(11, 6, 'Admin', 'Female', 'Admin', 30),
(12, 9, 'Bob', 'Male', 'Member', 28),
(13, 10, 'Charlie', 'Male', 'Member', 27),
(14, 24, 'Bikram', 'Female', 'Member', 22),
(15, 25, 'Sadhukhan', 'Male', 'Member', 24),
(16, 27, 'X', 'Female', 'Member', 26),
(17, 28, 'Riya', 'Female', 'Member', 23),
(18, 41, 'Bikram Sadhukhan', 'Male', 'Member', 22),
(19, 42, 'Mr X', 'Female', 'JCO', 36),
(21, 45, 'aastha', 'Male', '12', 20),
(22, 46, 'Mili', 'Female', 'JCO', 20);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_journal`
--

CREATE TABLE `weekly_journal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entry` text DEFAULT NULL,
  `family_relationship` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_score` float DEFAULT NULL,
  `family_score` float DEFAULT NULL,
  `entry_dep_score` float DEFAULT 0,
  `family_dep_score` float DEFAULT 0,
  `entry_emotion` varchar(50) DEFAULT NULL,
  `family_emotion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly_journal`
--

INSERT INTO `weekly_journal` (`id`, `user_id`, `entry`, `family_relationship`, `created_at`, `entry_score`, `family_score`, `entry_dep_score`, `family_dep_score`, `entry_emotion`, `family_emotion`) VALUES
(11, 6, 'It went well', 'Somewhat good', '2025-02-22 10:05:06', 7.32058, 1.47837, 2.69699, 2.53202, 'joy', 'joy'),
(12, 6, 'not feeling well, why do only I suffer?', '', '2025-02-22 10:17:13', 92.8319, 0, 49.2471, 0, 'sadness', 'No text provided'),
(13, 6, '', 'I feel hopeless and don\'t see a way out.\", \"My family never listens to me, and I feel isolated.', '2025-02-22 10:48:35', 0, 99.5512, 0, 82.3268, 'No text provided', 'sadness'),
(14, 6, '\"Life has been tough, but I\'m trying to stay strong.\", \"I have a supportive family that helps me through tough times.\"', '', '2025-02-22 10:48:50', 96.9115, 0, 12.1102, 0, 'joy', 'No text provided'),
(15, 6, '', '\"Sometimes, I just want to disappear and never come back.\", \"My parents always argue, and I feel stuck in the middle.\"', '2025-02-22 10:48:59', 0, 96.798, 0, 66.4181, 'No text provided', 'fear'),
(16, 6, '\"I enjoy spending time with my friends and engaging in hobbies.\", \"My family and I have a great relationship.\"', '\"I have been struggling a lot lately and feel like giving up.\", \"No one in my family understands me or cares about my feelings.\")', '2025-02-22 10:49:14', 2.30602, 98.3447, 15.9035, 81.1467, 'joy', 'sadness'),
(17, 28, 'asked for permission from officer did not give, could not attend child\'s first function, missed daughter', 'she is good and understanding, but I should give more time to her', '2025-02-22 11:00:24', 15.0112, 2.3711, 14.99, 5.78466, 'sadness', 'neutral'),
(18, 28, 'if he had a child he would understand how it feels not to go for first function. just beacuse he is in a top place I could not say anything, he is the worst man I have ever seen.', '', '2025-02-22 11:01:37', 94.9485, 0, 40.9459, 0, 'disgust', 'No text provided'),
(19, 28, 'if he had a child he would understand how it feels not to go for first function. just beacuse he is in a top place I could not say anything, he is the worst man I have ever seen.', '', '2025-02-22 12:53:10', 94.9485, 0, 40.9459, 0, 'disgust', 'No text provided'),
(21, 28, '', 'I did not sleep for last 2 days. I am stressed about my family. I am the sole bread earner now. My dad died last month. Mom is sick. Child\'s responsibility. Wife also fights with me.', '2025-02-22 13:12:03', 0, 95.0431, 0, 34.0969, 'No text provided', 'sadness'),
(22, 24, 'I had a stressful past weekl and hadd a very urgent workload', 'I could not call my family', '2025-03-04 19:08:26', 1.56532, 83.0463, 8.04478, 41.6014, 'sadness', 'sadness'),
(32, 6, 'did not get holiday. thinking of ending my life. what\'s the use of this if I can\'t have some free time?', 'sadly my dog died that day. I loved him from his childhood.', '2025-03-29 19:14:36', 99.416, 1.72656, 56.1786, 53.4509, 'sadness', 'sadness');

-- --------------------------------------------------------

--
-- Table structure for table `who5_assessment`
--

CREATE TABLE `who5_assessment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `q1` tinyint(4) DEFAULT NULL CHECK (`q1` between 0 and 5),
  `q2` tinyint(4) DEFAULT NULL CHECK (`q2` between 0 and 5),
  `q3` tinyint(4) DEFAULT NULL CHECK (`q3` between 0 and 5),
  `q4` tinyint(4) DEFAULT NULL CHECK (`q4` between 0 and 5),
  `q5` tinyint(4) DEFAULT NULL CHECK (`q5` between 0 and 5),
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `who5_assessment`
--

INSERT INTO `who5_assessment` (`id`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `submission_time`) VALUES
(7, 41, 4, 3, 4, 3, 4, '2025-02-21 07:48:47'),
(8, 27, 5, 3, 0, 4, 5, '2025-02-21 09:08:30'),
(9, 24, 3, 3, 1, 1, 1, '2025-03-29 12:54:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brief_cope_assessment`
--
ALTER TABLE `brief_cope_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cage_assessment`
--
ALTER TABLE `cage_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dass_stress_assessment`
--
ALTER TABLE `dass_stress_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `flagged_tests`
--
ALTER TABLE `flagged_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gad7_assessment`
--
ALTER TABLE `gad7_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iesr_assessment`
--
ALTER TABLE `iesr_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loneliness_test`
--
ALTER TABLE `loneliness_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phq9_assessment`
--
ALTER TABLE `phq9_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ptsd_assessment`
--
ALTER TABLE `ptsd_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stress_assessment`
--
ALTER TABLE `stress_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `weekly_journal`
--
ALTER TABLE `weekly_journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `who5_assessment`
--
ALTER TABLE `who5_assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brief_cope_assessment`
--
ALTER TABLE `brief_cope_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cage_assessment`
--
ALTER TABLE `cage_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dass_stress_assessment`
--
ALTER TABLE `dass_stress_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flagged_tests`
--
ALTER TABLE `flagged_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gad7_assessment`
--
ALTER TABLE `gad7_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iesr_assessment`
--
ALTER TABLE `iesr_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loneliness_test`
--
ALTER TABLE `loneliness_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phq9_assessment`
--
ALTER TABLE `phq9_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ptsd_assessment`
--
ALTER TABLE `ptsd_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stress_assessment`
--
ALTER TABLE `stress_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `weekly_journal`
--
ALTER TABLE `weekly_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `who5_assessment`
--
ALTER TABLE `who5_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brief_cope_assessment`
--
ALTER TABLE `brief_cope_assessment`
  ADD CONSTRAINT `brief_cope_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cage_assessment`
--
ALTER TABLE `cage_assessment`
  ADD CONSTRAINT `cage_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dass_stress_assessment`
--
ALTER TABLE `dass_stress_assessment`
  ADD CONSTRAINT `dass_stress_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gad7_assessment`
--
ALTER TABLE `gad7_assessment`
  ADD CONSTRAINT `gad7_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iesr_assessment`
--
ALTER TABLE `iesr_assessment`
  ADD CONSTRAINT `iesr_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loneliness_test`
--
ALTER TABLE `loneliness_test`
  ADD CONSTRAINT `loneliness_test_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `phq9_assessment`
--
ALTER TABLE `phq9_assessment`
  ADD CONSTRAINT `phq9_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ptsd_assessment`
--
ALTER TABLE `ptsd_assessment`
  ADD CONSTRAINT `ptsd_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stress_assessment`
--
ALTER TABLE `stress_assessment`
  ADD CONSTRAINT `stress_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekly_journal`
--
ALTER TABLE `weekly_journal`
  ADD CONSTRAINT `weekly_journal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `who5_assessment`
--
ALTER TABLE `who5_assessment`
  ADD CONSTRAINT `who5_assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
