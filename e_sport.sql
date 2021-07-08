-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 04:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name`, `email`, `password`) VALUES
(2, 'admin', 'admin@admin.com', '$2y$10$cpdOzPukZLMJWFD5jmxzbuyofv0mmcwf5eXcJ1DyTYbOVUAShbPIW');

-- --------------------------------------------------------

--
-- Table structure for table `attitude`
--

CREATE TABLE `attitude` (
  `id_attitude` int(11) NOT NULL,
  `lolos` float NOT NULL DEFAULT 0,
  `tidak` float NOT NULL DEFAULT 0,
  `gain` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attitude`
--

INSERT INTO `attitude` (`id_attitude`, `lolos`, `tidak`, `gain`) VALUES
(1, 0.974, 0.672, 0.105),
(2, 0, 0.983, 0.31505),
(3, 0.852, 0.738, -0.177091),
(4, 0.371, 0.519, 0.00235088),
(5, 0.371, 0, 0.0371154);

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `id_data_uji` int(11) NOT NULL,
  `id_talent` int(11) DEFAULT NULL,
  `player_experience` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `intellegence` varchar(100) DEFAULT NULL,
  `attitude` varchar(100) DEFAULT NULL,
  `turnamen` varchar(100) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT '-',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `intellegence`
--

CREATE TABLE `intellegence` (
  `id_intellegence` int(11) NOT NULL,
  `lolos` float NOT NULL DEFAULT 0,
  `tidak` float NOT NULL DEFAULT 0,
  `gain` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intellegence`
--

INSERT INTO `intellegence` (`id_intellegence`, `lolos`, `tidak`, `gain`) VALUES
(1, 0, 0.786, 0.110352),
(2, 0, 0.961, 0.017025),
(3, 0, 0.971, 0.0493462),
(4, 0, 0.918, 0.035375),
(5, 0, 0.485, 0.173136);

-- --------------------------------------------------------

--
-- Table structure for table `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_rasio` int(11) NOT NULL,
  `gain_experience` float NOT NULL DEFAULT 0,
  `gain_skill` float NOT NULL DEFAULT 0,
  `gain_intellegence` float NOT NULL DEFAULT 0,
  `gain_attitude` float NOT NULL DEFAULT 0,
  `gain_turnamen` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perhitungan`
--

INSERT INTO `perhitungan` (`id_rasio`, `gain_experience`, `gain_skill`, `gain_intellegence`, `gain_attitude`, `gain_turnamen`) VALUES
(1, 0.153737, 0.0653404, 0.110352, 0.105, 0.0644145),
(2, 0, 0.0485, 0.017025, 0.31505, 0),
(3, 0, 0.431615, 0.0493462, 0, 0),
(4, 0, 0, 0.035375, 0, 0),
(5, 0, 0, 0, 0, 0),
(6, 0, -0.0596364, 0.173136, -0.177091, -0.00321212),
(7, 0, 0.0614737, 0, 0.00235088, 0.360018),
(8, 0, 0.0121154, 0, 0.0371154, 0),
(9, 0, 0.0161429, 0, 0, 0),
(10, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_experience`
--

CREATE TABLE `player_experience` (
  `id_experience` int(11) NOT NULL,
  `lolos` float NOT NULL DEFAULT 0,
  `tidak` float NOT NULL DEFAULT 0,
  `gain` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_experience`
--

INSERT INTO `player_experience` (`id_experience`, `lolos`, `tidak`, `gain`) VALUES
(1, 0.954, 0.592, 0.153737);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `pohon_keputusan` text NOT NULL,
  `keputusan` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `pohon_keputusan`, `keputusan`, `created_at`, `updated_at`) VALUES
(1, 'player_experience=lolosANDattitude=lolos', 'Diterima', NULL, NULL),
(2, 'player_experience=lolosANDattitude=tidakANDskill=lolosANDintellegence=lolos', 'Diterima', NULL, NULL),
(3, 'player_experience=lolosANDattitude=tidakANDskill=lolosANDintellegence=tidak', 'tidak diterima', NULL, NULL),
(4, 'player_experience=lolosANDattitude=tidakANDskill=tidak', 'tidak diterima', NULL, NULL),
(5, 'player_experience=tidakANDintellegence=lolos', 'Diterima', NULL, NULL),
(6, 'player_experience=tidakANDintellegence=tidakANDturnamen=lolos', 'Diterima', NULL, NULL),
(7, 'player_experience=tidakANDintellegence=tidakANDturnamen=tidakANDattitude=lolosANDskill=lolos', 'Diterima', NULL, NULL),
(8, 'player_experience=tidakANDintellegence=tidakANDturnamen=tidakANDattitude=lolosANDskill=tidak', 'tidak diterima', NULL, NULL),
(9, 'player_experience=tidakANDintellegence=tidakANDturnamen=tidakANDattitude=tidak', 'tidak diterima', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id_skill` int(11) NOT NULL,
  `lolos` float NOT NULL DEFAULT 0,
  `tidak` float NOT NULL DEFAULT 0,
  `gain` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id_skill`, `lolos`, `tidak`, `gain`) VALUES
(1, 0.99, 0.576, 0.0653404),
(2, 0.811, 1, 0.0485),
(3, 0.896, 0, 0.431615),
(4, 0.896, 0, -0.0596364),
(5, 0.619, 0, 0.0614737),
(6, 0.191, 0, 0.0121154),
(7, 0.414, 0, 0.0161429);

-- --------------------------------------------------------

--
-- Table structure for table `talent_survey`
--

CREATE TABLE `talent_survey` (
  `id_survey` int(11) NOT NULL,
  `id_talent` int(11) DEFAULT NULL,
  `player_experience` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `intellegence` varchar(100) DEFAULT NULL,
  `attitude` varchar(100) DEFAULT NULL,
  `turnamen` varchar(100) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `talent_survey`
--

INSERT INTO `talent_survey` (`id_survey`, `id_talent`, `player_experience`, `skill`, `intellegence`, `attitude`, `turnamen`, `target`, `created_at`, `updated_at`) VALUES
(2232, 1, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2233, 2, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2234, 3, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2235, 4, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2236, 5, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2237, 6, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2238, 7, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2239, 8, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2240, 9, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2241, 10, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2242, 11, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2243, 12, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2244, 13, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2245, 14, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2246, 15, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2247, 16, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2248, 17, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2249, 18, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2250, 19, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2251, 20, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2252, 21, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2253, 22, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2254, 23, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2255, 24, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2256, 25, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2257, 26, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2258, 27, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2259, 28, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2260, 29, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2261, 30, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2262, 31, 'lolos', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2263, 32, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2264, 33, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2265, 34, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2266, 35, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2267, 36, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2268, 37, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2269, 38, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2270, 39, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2271, 40, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2272, 41, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2273, 42, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2274, 43, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2275, 44, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2276, 45, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2277, 46, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2278, 47, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2279, 48, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2280, 49, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2281, 50, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2282, 51, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2283, 52, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2284, 53, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2285, 54, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2286, 55, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2287, 56, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2288, 57, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2289, 58, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2290, 59, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2291, 60, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2292, 61, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2293, 62, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2294, 63, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2295, 64, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2296, 65, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2297, 66, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2298, 67, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2299, 68, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2300, 69, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2301, 70, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2302, 71, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2303, 72, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2304, 73, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2305, 74, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2306, 75, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2307, 76, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2308, 77, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2309, 78, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2310, 79, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2311, 80, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2312, 81, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2313, 82, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2314, 83, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2315, 84, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2316, 85, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2317, 86, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2318, 87, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2319, 88, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2320, 89, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2321, 90, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2322, 91, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2323, 92, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2324, 93, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2325, 94, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2326, 95, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2327, 96, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2328, 97, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2329, 98, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2330, 99, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2331, 100, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2332, 101, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2333, 102, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2334, 103, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2335, 104, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2336, 105, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2337, 106, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2338, 107, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2339, 108, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2340, 109, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2341, 110, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2342, 111, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2343, 112, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2344, 113, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2345, 114, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2346, 115, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2347, 116, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2348, 117, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2349, 118, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2350, 119, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2351, 120, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2352, 121, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2353, 122, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2354, 123, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2355, 124, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2356, 125, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2357, 126, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2358, 127, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2359, 128, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2360, 129, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2361, 130, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2362, 131, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2363, 132, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2364, 133, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2365, 134, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2366, 135, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2367, 136, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2368, 137, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2369, 138, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2370, 139, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2371, 140, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2372, 141, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2373, 142, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2374, 143, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2375, 144, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2376, 145, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2377, 146, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2378, 147, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2379, 148, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2380, 149, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2381, 150, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2382, 151, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21'),
(2383, 152, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-04 11:32:21', '2021-07-04 11:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `turnamen`
--

CREATE TABLE `turnamen` (
  `id_turnamen` int(11) NOT NULL,
  `lolos` float NOT NULL DEFAULT 0,
  `tidak` float NOT NULL DEFAULT 0,
  `gain` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `lolos`, `tidak`, `gain`) VALUES
(1, 0, 0.803, 0.0644145),
(2, 0, 0.954, 0),
(3, 0, 0.983, 0),
(4, 0, 0.896, 0),
(5, 0, 0.918, 0),
(6, 0, 0.644, -0.00321212),
(7, 0, 0.137, 0.360018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `attitude`
--
ALTER TABLE `attitude`
  ADD PRIMARY KEY (`id_attitude`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_data_uji`);

--
-- Indexes for table `intellegence`
--
ALTER TABLE `intellegence`
  ADD PRIMARY KEY (`id_intellegence`);

--
-- Indexes for table `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_rasio`);

--
-- Indexes for table `player_experience`
--
ALTER TABLE `player_experience`
  ADD PRIMARY KEY (`id_experience`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id_skill`);

--
-- Indexes for table `talent_survey`
--
ALTER TABLE `talent_survey`
  ADD PRIMARY KEY (`id_survey`);

--
-- Indexes for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attitude`
--
ALTER TABLE `attitude`
  MODIFY `id_attitude` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_data_uji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intellegence`
--
ALTER TABLE `intellegence`
  MODIFY `id_intellegence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_rasio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `player_experience`
--
ALTER TABLE `player_experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `talent_survey`
--
ALTER TABLE `talent_survey`
  MODIFY `id_survey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2384;

--
-- AUTO_INCREMENT for table `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
