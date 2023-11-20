-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 08:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin1', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'admin', '', '', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(23, 10, 'Muhammad Najhan', 'Bin Wahab', 'candidate 1.jpg', 'BACHELOR OF INFORMATION TECHNOLOGY (HONOURS) IN BUSINESS COMPUTING'),
(24, 10, 'Muhammad Syafiq', 'Bin Saharudin', 'candidate 2.jpg', 'BACHELOR OF INFORMATION TECHNOLOGY (HONOURS) IN COMPUTER APPLICATION DEVELOPMENT'),
(25, 10, 'Muhammad Adib Zikri', 'Bin Kamarul Idzham', 'candidate 3.jpg', 'DIPLOMA IN TEACHING ENGLISH AS A SECOND LANGUAGE (TESL)'),
(26, 10, 'Amielia Areesa', 'Binti Nasri', 'candidate 4.jpg', 'BACHELOR OF COMMUNICATION (HONS) IN CORPORATE COMMUNICATION'),
(27, 10, 'Nur Izzati', 'Binti Bahrin', 'candidate 5.jpg', 'BACHELOR OF BUSINESS ADMINISTRATION (HONOURS)'),
(28, 10, 'Nurul Ain', 'Binti Kamaruzaman', 'candidate 6.jpg', 'DIPLOMA OF ACCOUNTANCY'),
(29, 10, 'Hafiz Alfikri', 'Bin Amri', 'candidate 7.jpg', 'BACHELOR OF EDUCATION (HONOURS) IN TEACHING ENGLISH AS A SECOND LANGUAGE (TESL)'),
(30, 10, 'Nurnasywa Dzafirah', 'Binti Mohd Dzulmee', 'candidate 8.jpg', 'DIPLOMA IN COMPUTER SCIENCE'),
(31, 10, 'Muhammad Syahmi', 'Bin Ahmad Suhaimi', 'candidate 9.jpg', 'BACHELOR OF BUSINESS ADMINISTRATION (HONOURS) HUMAN RESOURCE MANAGEMENT'),
(32, 10, 'Mas Nur Aisyah', 'Binti Muhammad Ilyas', 'candidate 10.jpg', 'BACHELOR OF ARTS (HONOURS) IN APPLIED ENGLISH LANGUAGE STUDIES'),
(33, 10, 'Raziq Naufal', 'Bin Noor Azli Sham', 'candidate 11.jpg', 'BACHELOR OF INFORMATION (HONOURS) IN CYBER SECURITY'),
(34, 10, 'Muhammad Azim', 'Bin Hishamuddin', 'candidate 12.jpg', 'BACHELOR OF BUSINESS ADMINISTRATION (HONOURS)'),
(35, 10, 'Muhammad Amirul Fithri', 'Bin Abdul Hafiz', 'candidate 13.jpg', 'BACHELOR OF BUSINESS ADMINISTRATION (HONOURS) HUMAN RESOURCE MANAGEMENT'),
(36, 10, 'Mohamad Faiz', 'Bin Ahmad Daman Huri', 'candidate 14.jpg', 'BACHELOR OF INFORMATION TECHNOLOGY (HONOURS) IN COMPUTER APPLICATION DEVELOPMENT'),
(37, 10, 'Mohamad Muqri Saputra', 'Bin Mohamad Pajar', 'candidate 15.jpg', 'DIPLOMA IN TEACHING ENGLISH AS A SECOND LANGUAGE (TESL)');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'MPP 23', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(4, 'kl2207011660@student.kuptm.edu.my', '$2y$10$kijq61BOxV5Z.RqZs1/fF.1BOZ4IKwv8IpYr5KYIZpZXLVk02XDPq', 'Anis', 'Farahin', ''),
(5, 'kl2207011667@student.kuptm.edu.my', '$2y$10$ndMmvB99r0uJ87S0DotXgupuaiC60TB.JNZehF0STbbw.3rxrL/MC', 'Nur Fatin', 'Amirah', ''),
(6, 'kl2207011898@student.kuptm.edu.my', '$2y$10$xQ8GceZKySAqcK541LDLA.0B0TjQUu3YHFYz1lwx8vrTrDI8WvC8e', 'Nor Azwa', 'Asyazrin', ''),
(7, 'kl2207011701@student.kuptm.edu.my', '$2y$10$yYljnEKTtQWBE2ypIIyV9.44oOBQ4xwNoNV/mjfAS6Nn1q.edYBvC', 'Nisrina', 'Nabihah', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(92, 4, 26, 10),
(93, 4, 30, 10),
(94, 4, 31, 10),
(95, 6, 25, 10),
(96, 6, 26, 10),
(97, 6, 30, 10),
(98, 6, 32, 10),
(99, 6, 34, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
