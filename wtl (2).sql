-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 01:20 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wtl`
--
CREATE DATABASE IF NOT EXISTS `wtl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wtl`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` varchar(5) NOT NULL,
  `nama_kategori` int(11) NOT NULL,
  `username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `username` varchar(15) NOT NULL,
  `namalist` varchar(15) NOT NULL,
  `judulmemo` varchar(15) NOT NULL,
  `keterangan` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`username`, `namalist`, `judulmemo`, `keterangan`) VALUES
('Bump', 'test 1', 'test 2', 1),
('Bump', 'test 2', 'fdas', 1),
('Bump', 'test 3', 'fdas', 1),
('Bump', 'test list', 'fdas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `judul` varchar(25) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `tanggal_dibuat` date NOT NULL,
  `tanggal_target` date NOT NULL,
  `terakhir_diedit` date NOT NULL,
  `keterangan` tinyint(1) NOT NULL DEFAULT 0,
  `kategori` varchar(10) NOT NULL,
  `username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memo`
--

INSERT INTO `memo` (`judul`, `isi`, `tanggal_dibuat`, `tanggal_target`, `terakhir_diedit`, `keterangan`, `kategori`, `username`) VALUES
('fdas', 'fas;gf\'j\'\"h\"', '2019-06-27', '2019-06-27', '2019-06-27', 0, 'KULIAHAN', 'Bump'),
('test 2', 'fas;gf\'j\'\"h\"', '2019-06-27', '2019-06-27', '2019-06-27', 0, 'KULIAHAN', 'Bump');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`) VALUES
('Bump', 'bump', 'Ghassan Fs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`namalist`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`judul`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
