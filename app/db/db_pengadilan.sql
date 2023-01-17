-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2022 at 11:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengadilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `saw_access`
--

CREATE TABLE `saw_access` (
  `id_access` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_access`
--

INSERT INTO `saw_access` (`id_access`, `name`) VALUES
(1, 'Administrator'),
(2, 'Penilai'),
(3, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `saw_alternatives`
--

CREATE TABLE `saw_alternatives` (
  `id_alternative` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_alternatives`
--

INSERT INTO `saw_alternatives` (`id_alternative`, `id_event`, `id_user`, `ket`) VALUES
(1, 1, 10, ''),
(2, 1, 12, ''),
(3, 1, 14, ''),
(13, 3, 10, 'disipin dan selalu berbuat baik'),
(19, 2, 14, ''),
(21, 2, 17, 'ema ema'),
(22, 2, 16, '');

-- --------------------------------------------------------

--
-- Table structure for table `saw_criterias`
--

CREATE TABLE `saw_criterias` (
  `id_criteria` int(10) UNSIGNED NOT NULL,
  `id_event` int(11) NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `alias` varchar(5) NOT NULL,
  `weight` int(11) NOT NULL,
  `attribute` set('benefit','cost') DEFAULT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_criterias`
--

INSERT INTO `saw_criterias` (`id_criteria`, `id_event`, `criteria`, `alias`, `weight`, `attribute`, `status`) VALUES
(1, 1, 'PROFESIONAL : PEGAWAI MEMAHAMI PERATURAN & PER UU YANG BERLAKU', 'C1', 30, 'benefit', '1'),
(2, 1, 'PROFESIONAL : PEGAWAI MENYELESAIKAN TUGAS POKOK DAN FUNGSI SESUAI SOP', 'C2', 20, 'benefit', '1'),
(3, 1, 'PROFESIONAL : PEGAWAI MEMAHAMI TUGAS POKOK & FUNGSI BERKUALITAS & SESUAI DENGAN KAIDAH HUKUM', 'C3', 30, 'benefit', '1'),
(4, 1, 'Tanggungjawab', 'C4', 20, 'benefit', '1'),
(5, 2, 'Pegawai menyelesaikan tugas pokok dan fungsi sesuai sop', 'C1', 25, 'benefit', '1'),
(6, 2, 'Performance yang baik dan sopan', 'C2', 35, 'benefit', '1'),
(7, 2, 'Jam masuk dan jam pulang kantor tepat waktu', 'C3', 20, 'benefit', '1'),
(8, 2, 'Pegawai memahami peraturan dan UU yang berlaku', 'C4', 20, 'benefit', '1'),
(9, 3, 'PROFESIONAL : PEGAWAI MEMAHAMI PERATURAN & PER UU YANG BERLAKU', 'C1', 30, 'benefit', '1'),
(10, 3, 'PROFESIONAL : PEGAWAI MENYELESAIKAN TUGAS POKOK DAN FUNGSI SESUAI SOP', 'C2', 20, 'benefit', '1'),
(11, 3, 'PROFESIONAL : PEGAWAI MEMAHAMI TUGAS POKOK & FUNGSI BERKUALITAS & SESUAI DENGAN KAIDAH HUKUM', 'C3', 30, 'benefit', '1'),
(12, 3, 'Tanggungjawab', 'C4', 20, 'benefit', '1');

-- --------------------------------------------------------

--
-- Table structure for table `saw_evaluations`
--

CREATE TABLE `saw_evaluations` (
  `id_evaluations` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_alternative` int(11) NOT NULL,
  `id_criteria` int(10) NOT NULL,
  `id_user` int(11) NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_evaluations`
--

INSERT INTO `saw_evaluations` (`id_evaluations`, `id_event`, `id_alternative`, `id_criteria`, `id_user`, `value`) VALUES
(1, 1, 1, 1, 18, 3),
(2, 1, 1, 2, 18, 3),
(3, 1, 1, 3, 18, 3),
(4, 1, 1, 4, 18, 3),
(5, 1, 2, 1, 18, 3),
(6, 1, 2, 2, 18, 4),
(7, 1, 2, 3, 18, 3),
(8, 1, 2, 4, 18, 2),
(9, 1, 3, 1, 18, 4),
(10, 1, 3, 2, 18, 3),
(11, 1, 3, 3, 18, 2),
(12, 1, 3, 4, 18, 3),
(13, 1, 1, 1, 16, 4),
(14, 1, 1, 2, 16, 3),
(15, 1, 1, 3, 16, 3),
(16, 1, 1, 4, 16, 3),
(17, 1, 2, 1, 16, 3),
(18, 1, 2, 2, 16, 3),
(19, 1, 2, 3, 16, 3),
(20, 1, 2, 4, 16, 3),
(21, 1, 3, 1, 16, 3),
(22, 1, 3, 2, 16, 4),
(23, 1, 3, 3, 16, 3),
(24, 1, 3, 4, 16, 4),
(25, 1, 1, 1, 11, 3),
(26, 1, 1, 2, 11, 3),
(27, 1, 1, 3, 11, 3),
(28, 1, 1, 4, 11, 3),
(29, 1, 2, 1, 11, 3),
(30, 1, 2, 2, 11, 2),
(31, 1, 2, 3, 11, 3),
(32, 1, 2, 4, 11, 2),
(33, 1, 3, 1, 11, 3),
(34, 1, 3, 2, 11, 4),
(35, 1, 3, 3, 11, 4),
(36, 1, 3, 4, 11, 3),
(37, 2, 19, 5, 11, 1),
(38, 2, 19, 6, 11, 1),
(39, 2, 19, 7, 11, 1),
(40, 2, 19, 8, 11, 1),
(41, 2, 21, 5, 11, 1),
(42, 2, 21, 6, 11, 1),
(43, 2, 21, 7, 11, 1),
(44, 2, 21, 8, 11, 1),
(45, 2, 22, 5, 11, 1),
(46, 2, 22, 6, 11, 1),
(47, 2, 22, 7, 11, 1),
(48, 2, 22, 8, 11, 1),
(49, 2, 19, 5, 10, 2),
(50, 2, 19, 6, 10, 2),
(51, 2, 19, 7, 10, 2),
(52, 2, 19, 8, 10, 2),
(53, 2, 21, 5, 10, 2),
(54, 2, 21, 6, 10, 2),
(55, 2, 21, 7, 10, 2),
(56, 2, 21, 8, 10, 2),
(57, 2, 22, 5, 10, 2),
(58, 2, 22, 6, 10, 2),
(59, 2, 22, 7, 10, 2),
(60, 2, 22, 8, 10, 2),
(61, 2, 19, 5, 18, 3),
(62, 2, 19, 6, 18, 3),
(63, 2, 19, 7, 18, 3),
(64, 2, 19, 8, 18, 3),
(65, 2, 21, 5, 18, 2),
(66, 2, 21, 6, 18, 2),
(67, 2, 21, 7, 18, 2),
(68, 2, 21, 8, 18, 2),
(69, 2, 22, 5, 18, 3),
(70, 2, 22, 6, 18, 3),
(71, 2, 22, 7, 18, 3),
(72, 2, 22, 8, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `saw_event`
--

CREATE TABLE `saw_event` (
  `id_event` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_event`
--

INSERT INTO `saw_event` (`id_event`, `title`, `tgl`, `status`) VALUES
(1, 'Pegawai Terbaik Tahun 2021', '0000-00-00', '2'),
(2, 'Pegawai teladan 2022', '0000-00-00', '2');

-- --------------------------------------------------------

--
-- Table structure for table `saw_login`
--

CREATE TABLE `saw_login` (
  `id_login` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_access` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_login`
--

INSERT INTO `saw_login` (`id_login`, `id_event`, `id_user`, `id_access`, `username`, `password`) VALUES
(1, 0, 1, 1, 'admin', 'YWRtaW4yMTM='),
(17, 1, 18, 2, 'penilai181', 'cGVuaWxhaTE4MjI='),
(18, 1, 16, 2, 'penilai161', 'cGVuaWxhaTE2MjI='),
(19, 1, 11, 2, 'penilai111', 'cGVuaWxhaTExMjI='),
(30, 2, 11, 2, 'penilai211', 'cGVuaWxhaTIxMQ=='),
(31, 2, 10, 2, 'penilai210', 'cGVuaWxhaTIxMA=='),
(33, 3, 11, 2, 'penilai311', 'cGVuaWxhaTMxMQ=='),
(36, 2, 18, 2, 'penilai218', 'cGVuaWxhaTIxOA=='),
(39, 3, 18, 2, 'penilai318', 'cGVuaWxhaTMxOA==');

-- --------------------------------------------------------

--
-- Table structure for table `saw_result`
--

CREATE TABLE `saw_result` (
  `id_result` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_alternative` int(11) NOT NULL,
  `score` float NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_result`
--

INSERT INTO `saw_result` (`id_result`, `id_event`, `id_user`, `id_alternative`, `score`, `status`) VALUES
(1, 1, 18, 1, 0.875, '0'),
(2, 1, 18, 2, 0.858333, '0'),
(3, 1, 18, 3, 0.85, '0'),
(4, 1, 16, 1, 0.9, '0'),
(5, 1, 16, 2, 0.825, '0'),
(6, 1, 16, 3, 0.925, '0'),
(7, 1, 11, 1, 0.875, '0'),
(8, 1, 11, 2, 0.758333, '0'),
(9, 1, 11, 3, 1, '0'),
(10, 2, 11, 19, 1, '0'),
(11, 2, 11, 21, 1, '0'),
(12, 2, 11, 22, 1, '0'),
(13, 2, 10, 19, 1, '0'),
(14, 2, 10, 21, 1, '0'),
(15, 2, 10, 22, 1, '0'),
(16, 2, 18, 19, 1, '0'),
(17, 2, 18, 21, 0.666667, '0'),
(18, 2, 18, 22, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `saw_score`
--

CREATE TABLE `saw_score` (
  `id_score` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_score`
--

INSERT INTO `saw_score` (`id_score`, `score`, `ket`) VALUES
(1, 1, 'Sangat Rendah'),
(2, 2, 'Rendah'),
(3, 3, 'Cukup'),
(4, 4, 'Baik'),
(5, 5, 'Sangat Baik');

-- --------------------------------------------------------

--
-- Table structure for table `saw_users`
--

CREATE TABLE `saw_users` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(14) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` enum('off','on') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saw_users`
--

INSERT INTO `saw_users` (`id_user`, `fullname`, `tempat_lahir`, `tgl_lahir`, `alamat`, `telp`, `jenis_kelamin`, `jabatan`, `foto`, `status`) VALUES
(1, 'Administrator', 'Pekalongan', '1987-12-12', 'Pekalongan', '058988451258', 'Laki-laki', 'Administrator', 'avatar5.png', 'on'),
(10, 'Muhammad Iqbal', 'Pekalongan', '1992-02-02', 'Pekalongan', '058988451258', 'Laki-laki', 'Kepala Bidang', '123.png', 'on'),
(11, 'Bagus Adi Wijaya', 'Pekalongan', '1991-06-16', 'Pekalongan', '058988451258', 'Laki-laki', 'Kepala Bidang', 'Screenshot_20221114-214454_Photos.jpg', 'on'),
(12, 'Musa Hamdun', 'Pekalongan', '2022-12-07', 'pekalongan barat', '85944521561', 'Laki-laki', 'Kepala cabang', 'avatar511.png', 'on'),
(14, 'Syahroni', 'Pekalongan', '1994-12-13', 'Batang', '95056499408', 'Laki-laki', 'Panitera ', 'images_(2).png', 'on'),
(16, 'Arip', 'Kendal', '1981-12-19', 'Kendal kota', '649401616', 'Laki-laki', 'Umum', 'images.png', 'on'),
(17, 'Ema', 'Kudus', '1994-12-14', 'Kudus kota', '64486140656', 'Perempuan', 'Hukum', 'download.jpeg', 'on'),
(18, 'Ardhi', 'Batang', '1979-12-19', 'Batang', '6110565619', 'Laki-laki', 'Hakim', 'images_(3).png', 'on'),
(19, 'Reza', 'Pekalongan', '1999-12-20', 'Pekalongan', '49979505', 'Laki-laki', 'Hakim', 'images_(3)1.png', 'on'),
(24, 'Yayayay', 'pekalongan', '2022-12-31', 'a', '00', 'Laki-laki', 'apasaja', 'avatar5115.png', 'off');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saw_access`
--
ALTER TABLE `saw_access`
  ADD PRIMARY KEY (`id_access`);

--
-- Indexes for table `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  ADD PRIMARY KEY (`id_alternative`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `saw_criterias`
--
ALTER TABLE `saw_criterias`
  ADD PRIMARY KEY (`id_criteria`),
  ADD KEY `id_event` (`id_event`);

--
-- Indexes for table `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  ADD PRIMARY KEY (`id_evaluations`),
  ADD KEY `id_criteria` (`id_criteria`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_alternative` (`id_alternative`),
  ADD KEY `id_event` (`id_event`);

--
-- Indexes for table `saw_event`
--
ALTER TABLE `saw_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `saw_login`
--
ALTER TABLE `saw_login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `saw_result`
--
ALTER TABLE `saw_result`
  ADD PRIMARY KEY (`id_result`);

--
-- Indexes for table `saw_score`
--
ALTER TABLE `saw_score`
  ADD PRIMARY KEY (`id_score`);

--
-- Indexes for table `saw_users`
--
ALTER TABLE `saw_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saw_access`
--
ALTER TABLE `saw_access`
  MODIFY `id_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  MODIFY `id_alternative` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `saw_criterias`
--
ALTER TABLE `saw_criterias`
  MODIFY `id_criteria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  MODIFY `id_evaluations` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `saw_event`
--
ALTER TABLE `saw_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saw_login`
--
ALTER TABLE `saw_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `saw_result`
--
ALTER TABLE `saw_result`
  MODIFY `id_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `saw_score`
--
ALTER TABLE `saw_score`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saw_users`
--
ALTER TABLE `saw_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
