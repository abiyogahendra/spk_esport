-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 10:02 AM
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
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `pohon_keputusan` text NOT NULL,
  `akar` text NOT NULL,
  `keputusan` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `pohon_keputusan`, `akar`, `keputusan`, `created_at`, `updated_at`) VALUES
(1, '(penghasilan>1000000) AND (status_pernikahan=\'menikah\') AND (umur>35) AND (umur<=40)', '(penghasilan<=2000000)', 'diterima', '2021-06-22 15:21:20', '2021-06-23 15:21:26');

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
(1770, 1, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1771, 2, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1772, 3, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1773, 4, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1774, 5, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1775, 6, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1776, 7, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1777, 8, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1778, 9, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1779, 10, 'Tidak', 'lolos', 'tidak', 'tidak', 'lolos', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1780, 11, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1781, 12, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1782, 13, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1783, 14, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1784, 15, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1785, 16, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1786, 17, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1787, 18, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1788, 19, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1789, 20, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1790, 21, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1791, 22, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1792, 23, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1793, 24, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1794, 25, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1795, 26, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1796, 27, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1797, 28, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1798, 29, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1799, 30, 'Tidak', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1800, 31, 'lolos', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1801, 32, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1802, 33, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1803, 34, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1804, 35, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1805, 36, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1806, 37, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1807, 38, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1808, 39, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1809, 40, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1810, 41, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1811, 42, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1812, 43, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1813, 44, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1814, 45, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1815, 46, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1816, 47, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1817, 48, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1818, 49, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1819, 50, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1820, 51, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1821, 52, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1822, 53, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1823, 54, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1824, 55, 'Tidak', 'lolos', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1825, 56, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1826, 57, 'Tidak', 'tidak', 'tidak', 'lolos', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1827, 58, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1828, 59, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1829, 60, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1830, 61, 'lolos', 'lolos', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1831, 62, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1832, 63, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1833, 64, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1834, 65, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1835, 66, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1836, 67, 'lolos', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1837, 68, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1838, 69, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1839, 70, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1840, 71, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1841, 72, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1842, 73, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1843, 74, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1844, 75, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1845, 76, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1846, 77, 'lolos', 'tidak', 'tidak', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1847, 78, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1848, 79, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1849, 80, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1850, 81, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1851, 82, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1852, 83, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1853, 84, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1854, 85, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1855, 86, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1856, 87, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1857, 88, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1858, 89, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1859, 90, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1860, 91, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1861, 92, 'lolos', 'lolos', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1862, 93, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1863, 94, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1864, 95, 'Tidak', 'lolos', 'lolos', 'lolos', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1865, 96, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1866, 97, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1867, 98, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1868, 99, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1869, 100, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1870, 101, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1871, 102, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'Tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1872, 103, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1873, 104, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1874, 105, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1875, 106, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1876, 107, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1877, 108, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1878, 109, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1879, 110, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1880, 111, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1881, 112, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1882, 113, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1883, 114, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1884, 115, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1885, 116, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1886, 117, 'Tidak', 'lolos', 'lolos', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1887, 118, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1888, 119, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1889, 120, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1890, 121, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1891, 122, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1892, 123, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1893, 124, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1894, 125, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1895, 126, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1896, 127, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1897, 128, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1898, 129, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1899, 130, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1900, 131, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1901, 132, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1902, 133, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1903, 134, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1904, 135, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1905, 136, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1906, 137, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1907, 138, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1908, 139, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1909, 140, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1910, 141, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1911, 142, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1912, 143, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1913, 144, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1914, 145, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1915, 146, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1916, 147, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1917, 148, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1918, 149, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1919, 150, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1920, 151, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04'),
(1921, 152, 'Tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak Diterima', '2021-06-21 08:04:04', '2021-06-21 08:04:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_data_uji`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `talent_survey`
--
ALTER TABLE `talent_survey`
  ADD PRIMARY KEY (`id_survey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_data_uji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `talent_survey`
--
ALTER TABLE `talent_survey`
  MODIFY `id_survey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1922;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
