-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 05:38 PM
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
  `id_talent` int(11) DEFAULT 0,
  `player_experience` varchar(100) DEFAULT '-',
  `skill` varchar(100) DEFAULT '-',
  `intellegence` varchar(100) DEFAULT '-',
  `attitude` varchar(100) DEFAULT '-',
  `turnamen` varchar(100) DEFAULT '-',
  `target` varchar(100) DEFAULT 'belum',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_uji`
--

INSERT INTO `data_uji` (`id_data_uji`, `id_talent`, `player_experience`, `skill`, `intellegence`, `attitude`, `turnamen`, `target`, `created_at`, `updated_at`) VALUES
(457, 1, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(458, 2, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(459, 3, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(460, 4, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(461, 5, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(462, 6, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(463, 7, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(464, 8, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(465, 9, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(466, 10, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(467, 11, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(468, 12, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(469, 13, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(470, 14, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(471, 15, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(472, 16, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(473, 17, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(474, 18, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(475, 19, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(476, 20, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(477, 21, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(478, 22, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(479, 23, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(480, 24, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(481, 25, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(482, 26, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(483, 27, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(484, 28, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(485, 29, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(486, 30, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(487, 31, 'lolos', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(488, 32, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(489, 33, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(490, 34, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(491, 35, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(492, 36, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(493, 37, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(494, 38, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(495, 39, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(496, 40, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(497, 41, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(498, 42, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(499, 43, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(500, 44, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(501, 45, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(502, 46, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(503, 47, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(504, 48, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(505, 49, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(506, 50, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(507, 51, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(508, 52, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(509, 53, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(510, 54, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(511, 55, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(512, 56, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(513, 57, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(514, 58, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(515, 59, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(516, 60, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(517, 61, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(518, 62, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(519, 63, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(520, 64, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(521, 65, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(522, 66, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(523, 67, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(524, 68, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(525, 69, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(526, 70, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(527, 71, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(528, 72, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(529, 73, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(530, 74, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(531, 75, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(532, 76, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(533, 77, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(534, 78, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(535, 79, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(536, 80, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(537, 81, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(538, 82, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(539, 83, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(540, 84, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(541, 85, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(542, 86, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(543, 87, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(544, 88, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(545, 89, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(546, 90, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(547, 91, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(548, 92, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(549, 93, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(550, 94, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(551, 95, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(552, 96, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(553, 97, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(554, 98, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(555, 99, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(556, 100, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(557, 101, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(558, 102, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(559, 103, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(560, 104, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(561, 105, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(562, 106, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(563, 107, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(564, 108, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(565, 109, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(566, 110, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(567, 111, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(568, 112, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(569, 113, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(570, 114, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(571, 115, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(572, 116, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(573, 117, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(574, 118, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(575, 119, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(576, 120, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(577, 121, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(578, 122, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(579, 123, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(580, 124, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(581, 125, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(582, 126, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(583, 127, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(584, 128, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(585, 129, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(586, 130, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(587, 131, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(588, 132, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(589, 133, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(590, 134, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(591, 135, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(592, 136, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(593, 137, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(594, 138, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(595, 139, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(596, 140, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(597, 141, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(598, 142, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(599, 143, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(600, 144, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(601, 145, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(602, 146, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(603, 147, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(604, 148, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(605, 149, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(606, 150, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(607, 151, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09'),
(608, 152, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak diterima', '2021-07-08 14:34:09', '2021-07-08 14:34:09');

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
(2688, 1, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2689, 2, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2690, 3, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2691, 4, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2692, 5, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2693, 6, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2694, 7, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2695, 8, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2696, 9, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2697, 10, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2698, 11, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2699, 12, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2700, 13, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2701, 14, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2702, 15, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2703, 16, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2704, 17, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2705, 18, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2706, 19, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2707, 20, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2708, 21, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2709, 22, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2710, 23, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2711, 24, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2712, 25, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2713, 26, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2714, 27, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2715, 28, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2716, 29, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2717, 30, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2718, 31, 'lolos', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2719, 32, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2720, 33, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2721, 34, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2722, 35, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2723, 36, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2724, 37, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2725, 38, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2726, 39, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2727, 40, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2728, 41, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2729, 42, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2730, 43, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2731, 44, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2732, 45, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2733, 46, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2734, 47, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2735, 48, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2736, 49, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2737, 50, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2738, 51, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2739, 52, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2740, 53, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2741, 54, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2742, 55, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2743, 56, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2744, 57, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2745, 58, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2746, 59, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2747, 60, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2748, 61, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2749, 62, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2750, 63, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2751, 64, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2752, 65, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2753, 66, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2754, 67, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2755, 68, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2756, 69, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2757, 70, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2758, 71, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2759, 72, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2760, 73, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2761, 74, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2762, 75, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2763, 76, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2764, 77, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2765, 78, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2766, 79, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2767, 80, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2768, 81, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2769, 82, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2770, 83, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2771, 84, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2772, 85, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2773, 86, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2774, 87, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2775, 88, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2776, 89, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2777, 90, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2778, 91, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2779, 92, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2780, 93, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2781, 94, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2782, 95, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2783, 96, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2784, 97, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2785, 98, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2786, 99, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2787, 100, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2788, 101, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2789, 102, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2790, 103, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2791, 104, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2792, 105, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2793, 106, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2794, 107, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2795, 108, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2796, 109, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2797, 110, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2798, 111, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2799, 112, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2800, 113, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2801, 114, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2802, 115, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2803, 116, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2804, 117, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2805, 118, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2806, 119, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2807, 120, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2808, 121, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2809, 122, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2810, 123, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2811, 124, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2812, 125, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2813, 126, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2814, 127, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2815, 128, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2816, 129, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2817, 130, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2818, 131, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2819, 132, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2820, 133, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2821, 134, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2822, 135, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2823, 136, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2824, 137, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2825, 138, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2826, 139, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2827, 140, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2828, 141, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2829, 142, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2830, 143, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2831, 144, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2832, 145, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2833, 146, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2834, 147, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2835, 148, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2836, 149, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2837, 150, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2838, 151, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27'),
(2839, 152, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-07-08 12:47:27', '2021-07-08 12:47:27');

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
  MODIFY `id_data_uji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

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
  MODIFY `id_survey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2840;

--
-- AUTO_INCREMENT for table `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
