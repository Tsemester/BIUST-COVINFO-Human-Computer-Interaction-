-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 07:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biust`
--

-- --------------------------------------------------------

--
-- Table structure for table `athlete`
--

CREATE TABLE `athlete` (
  `Last_name` varchar(10) NOT NULL,
  `best_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `athlete`
--

INSERT INTO `athlete` (`Last_name`, `best_time`) VALUES
('Tseme', 10),
('Kesa', 20),
('Lorato ', 15),
('Sesa', 30),
('Kutlwano ', 18);

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `total_cases` int(10) NOT NULL,
  `active_cases` int(10) NOT NULL,
  `recoveries` int(10) NOT NULL,
  `death` int(10) NOT NULL,
  `month` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `total_cases`, `active_cases`, `recoveries`, `death`, `month`) VALUES
(3, 20, 10, 5, 5, 'January '),
(4, 30, 2, 28, 0, 'February '),
(5, 40, 20, 1, 19, 'March '),
(6, 40, 12, 28, 7, 'April'),
(7, 20, 10, 15, 5, 'November'),
(8, 50, 12, 28, 7, 'December'),
(9, 12, 1, 1, 12, 'May');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `place` varchar(255) NOT NULL,
  `capacity` int(10) NOT NULL,
  `occupied` int(10) NOT NULL,
  `free` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`place`, `capacity`, `occupied`, `free`) VALUES
('Clinic ', 200, 190, 10),
('Hall', 10, 10, 0),
('gAB', 90, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `hotspot`
--

CREATE TABLE `hotspot` (
  `place` varchar(255) NOT NULL,
  `risk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotspot`
--

INSERT INTO `hotspot` (`place`, `risk`) VALUES
('West ', '90 % '),
('South', '90%');

-- --------------------------------------------------------

--
-- Table structure for table `suspectedcase`
--

CREATE TABLE `suspectedcase` (
  `fever` varchar(255) NOT NULL,
  `cough` varchar(255) NOT NULL,
  `tired` varchar(255) NOT NULL,
  `speech` varchar(255) NOT NULL,
  `breath` varchar(255) NOT NULL,
  `pain` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suspectedcase`
--

INSERT INTO `suspectedcase` (`fever`, `cough`, `tired`, `speech`, `breath`, `pain`, `fname`, `lname`, `contact`, `date`, `gender`, `location`) VALUES
('Fever', 'Cough', 'Tired', 'Speech', 'No', 'yes', 'Tseme', 'Botlhe', '7773773', '2021-05-02', 'M', 'Gabs'),
('No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Botlhe', 'Tseme', '76272466', '2021-05-05', 'on', 'Francistown '),
('No', 'No', 'No', 'No', 'No', 'No', 'Botlhe', 'Tseme', '76272466', '2021-05-06', 'on', 'Francistown '),
('No', 'No', 'No', 'No', 'No', 'No', 'Botlhe', 'Tseme', '76272466', '2021-05-06', 'on', 'Francistown '),
('No', 'No', 'No', 'No', 'No', 'No', 'Lesego', 'Tseme', '76272466', '2021-05-07', 'on', 'Palapye');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
