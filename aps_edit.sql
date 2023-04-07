-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 11:38 AM
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
-- Database: `aps`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(2) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(4, '10 TJKT'),
(3, '10 PM'),
(2, '10 MPLB'),
(1, '10 AKL');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(2) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(5, 'Matematika'),
(4, 'Bahasa Indonesia'),
(3, 'Pendidikan Agama Islam'),
(2, 'Pendidikan Pancasila & Kewarga'),
(1, 'Pendidikan Agama Kristen'),
(6, 'Bahasa Inggris'),
(7, 'Bahasa Mandarin'),
(8, 'Pendidikan Jasmani, Olahraga d'),
(9, 'Seni Teater'),
(10, 'Projek IPAS'),
(11, 'Informatika'),
(12, 'Bimbingan Konseling'),
(13, 'Dasar - Dasar Akuntansi'),
(14, 'Dasar - Dasar Perkantoran'),
(15, 'Dasar - Dasar Pemasaran'),
(16, 'Dasar - Dasar TJKT'),
(17, 'Sejarah Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`) VALUES
(1, 'Manajemen User', '?module=user', 'N', 'admin', 'Y', 1),
(2, 'Manajemen Modul', '?module=modul', 'N', 'admin', 'Y', 2),
(5, 'Mata Pelajaran', '?module=mapel', 'Y', 'admin', 'Y', 5),
(3, 'Siswa', '?module=siswa', 'N', 'user', 'N', 3),
(6, 'Nilai', '?module=nilai', 'Y', 'user', 'Y', 6),
(4, 'Kelas', '?module=kelas', 'N', 'admin', 'Y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(2) NOT NULL,
  `tgs1` decimal(5,2) NOT NULL,
  `tgs2` decimal(5,2) NOT NULL,
  `uh1` decimal(5,2) NOT NULL,
  `uh2` decimal(5,2) NOT NULL,
  `uh3` decimal(5,2) NOT NULL,
  `uts` decimal(5,2) NOT NULL,
  `uas` decimal(5,2) NOT NULL,
  `rpt` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_siswa`, `id_kelas`, `id_mapel`, `tgs1`, `tgs2`, `uh1`, `uh2`, `uh3`, `uts`, `uas`, `rpt`) VALUES
(6, 45, 4, 11, '82.00', '89.00', '80.00', '85.00', '89.00', '93.00', '81.00', '86.00'),
(5, 44, 4, 11, '93.00', '90.00', '80.00', '92.00', '85.00', '95.00', '82.00', '88.00'),
(4, 43, 4, 11, '80.00', '83.00', '86.00', '95.00', '91.00', '81.00', '95.00', '87.00'),
(3, 42, 4, 11, '92.00', '85.00', '81.00', '88.00', '95.00', '84.00', '85.00', '87.00'),
(2, 41, 4, 11, '81.00', '94.00', '86.00', '81.00', '82.00', '87.00', '92.00', '86.00'),
(1, 40, 4, 11, '81.00', '83.00', '88.00', '82.00', '89.00', '89.00', '83.00', '85.00'),
(7, 46, 4, 11, '88.00', '90.00', '84.00', '87.00', '91.00', '93.00', '83.00', '88.00'),
(8, 47, 4, 11, '80.00', '89.00', '86.00', '84.00', '88.00', '88.00', '83.00', '85.00'),
(9, 48, 4, 11, '84.00', '80.00', '85.00', '81.00', '82.00', '86.00', '83.00', '83.00'),
(10, 49, 4, 11, '92.00', '83.00', '93.00', '89.00', '89.00', '91.00', '94.00', '90.00'),
(11, 50, 4, 11, '93.00', '89.00', '87.00', '85.00', '88.00', '80.00', '81.00', '86.00'),
(12, 51, 4, 11, '82.00', '93.00', '94.00', '85.00', '81.00', '90.00', '82.00', '87.00'),
(13, 52, 4, 11, '93.00', '93.00', '85.00', '89.00', '86.00', '84.00', '94.00', '89.00'),
(14, 53, 4, 11, '95.00', '89.00', '93.00', '87.00', '83.00', '93.00', '83.00', '89.00'),
(15, 54, 4, 11, '90.00', '94.00', '87.00', '89.00', '94.00', '91.00', '94.00', '91.00'),
(16, 55, 4, 11, '84.00', '82.00', '85.00', '94.00', '82.00', '93.00', '87.00', '87.00'),
(17, 56, 4, 11, '84.00', '89.00', '86.00', '83.00', '86.00', '88.00', '89.00', '86.00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(4) NOT NULL,
  `id_kelas` int(2) NOT NULL,
  `nama_siswa` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nis` int(5) NOT NULL,
  `jk` enum('L','P') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nama_siswa`, `nis`, `jk`) VALUES
(15, 1, 'Aditya Saputra Darmawansah', 5114, 'L'),
(14, 3, 'Suhendar Maulana', 5167, 'L'),
(13, 3, 'Selli Ramadhani', 5162, 'P'),
(12, 3, 'Safita Bella Monika', 5160, 'P'),
(11, 3, 'Ririn Febrianti', 5158, 'P'),
(10, 3, 'Muhammad Rosi Fahmi', 5153, 'L'),
(9, 3, 'Muhamad Fauzan', 5146, 'L'),
(8, 3, 'Moehammad Rizq Ramadhan', 5143, 'L'),
(7, 3, 'Muhammad Aliyansyah', 5142, 'L'),
(6, 3, 'Jasmin Khalisha Putri Ma\'Arif', 5139, 'P'),
(5, 3, 'Gadiza Sesis Olivia Febriani', 5135, 'P'),
(4, 3, 'Fahmi Althaf Hidayat', 5132, 'L'),
(3, 3, 'Dea Anatasyah', 5127, 'P'),
(2, 3, 'Anissa Fauziyah', 5123, 'P'),
(1, 3, 'Ahlul Ulum Hakiki', 5116, 'L'),
(16, 1, 'Ananda Sahti', 5118, 'P'),
(17, 1, 'Andika Prabowo', 5121, 'L'),
(18, 1, 'Dian Apriyanti', 5128, 'P'),
(19, 1, 'Dini Najlal Haq', 5130, 'P'),
(20, 1, 'Dita Rahmawati', 5131, 'P'),
(21, 1, 'Khesya Putri Alinka', 5141, 'P'),
(22, 1, 'Muhamad Pandu Subekti', 5147, 'L'),
(23, 1, 'Muhammad Fadhil Nurlail', 5150, 'L'),
(24, 1, 'Muhammad Najwan Hafizh', 5152, 'L'),
(25, 1, 'Satria Galih Wibowo', 5161, 'L'),
(26, 1, 'Silma Fitria Nuzunul Lutfi', 5163, 'P'),
(27, 1, 'Siti Fathia Adhwa', 5165, 'P'),
(28, 2, 'Anbia Fauziah', 5119, 'P'),
(29, 2, 'Andhika Fadillah', 5120, 'L'),
(30, 2, 'Anggrainny Salziah', 5122, 'P'),
(31, 2, 'Febrian Maulana Ibrahim', 5134, 'L'),
(32, 2, 'Indah Nur\'Aini', 5138, 'P'),
(33, 2, 'Muchammad Ndaru Triantoro', 5144, 'L'),
(34, 2, 'Naufal Dzaki Ramadhan', 5154, 'L'),
(35, 2, 'Naziyah Maulani', 5155, 'P'),
(36, 2, 'Ridho Azibril Rachman', 5157, 'L'),
(37, 2, 'Risya Kartika Dewi', 5159, 'P'),
(38, 2, 'Siti Fariza', 5164, 'P'),
(39, 2, 'Tiara Ananda Akim', 5169, 'P'),
(40, 4, 'Agung Wijaya Putra', 5115, 'L'),
(41, 4, 'Ahmad Fahri Ramadhan', 5117, 'L'),
(42, 4, 'Bunga Candra Lestari', 5124, 'P'),
(43, 4, 'Dahlan Sugiarto Ramdani', 5125, 'L'),
(44, 4, 'Dawwas Dzaky Nurlian', 5126, 'L'),
(45, 4, 'Dimas Abid Fatoni', 5129, 'L'),
(46, 4, 'Fathimah Azzahra', 5133, 'P'),
(47, 4, 'Galih Adhitya', 5136, 'L'),
(48, 4, 'Ghalih Mulya Putra Intan', 5137, 'L'),
(49, 4, 'Keysya Kinania Sulistio', 5140, 'P'),
(50, 4, 'Muhamad Ardian Pasha', 5145, 'L'),
(51, 4, 'Muhamad Ramli', 5148, 'L'),
(52, 4, 'Muhammad Imamul Asfhiya', 5151, 'L'),
(53, 4, 'Reza Ahmad Rasyadin', 5156, 'L'),
(54, 4, 'Siti Nur Alysah', 5166, 'P'),
(55, 4, 'Thoriq Hasan Al Ghiffari', 5168, 'L'),
(56, 4, 'Trio Nugrahawan Zuhry', 5170, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL,
  `id_mapel` int(2) NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `nip`, `id_mapel`, `level`, `blokir`, `id_session`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Aris Riyadi', '198506232003051001', 11, 'admin', 'N', '9q99d1rv0ru63airt2v2rtfr52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
