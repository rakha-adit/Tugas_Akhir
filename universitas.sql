-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 06:29 AM
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
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id_registrasi` int(11) NOT NULL,
  `tanggal_registrasi` date DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`id_registrasi`, `tanggal_registrasi`, `nama`, `jenis_kelamin`, `kota`, `jurusan`, `angkatan`) VALUES
(265, '2020-06-29', 'Felicia Putri', 'P', 'Tangerang', 'Sosiologi', 2024),
(266, '2022-04-20', 'Renanta Elisa', 'L', 'Semarang', 'Teknik Informatika', 2018),
(267, '2020-08-09', 'Joko Wijaya', 'L', 'Makassar', 'Ekonomi', 2022),
(268, '2018-06-12', 'Siti Yulianto', 'L', 'Bekasi', 'Ekonomi', 2020),
(269, '2021-11-06', 'Eka Pratama', 'P', 'Semarang', 'Biologi', 2024),
(270, '2023-04-19', 'Ika Pratama', 'P', 'Medan', 'Teknik Informatika', 2018),
(271, '2020-07-16', 'Nina Wibisono', 'L', 'Depok', 'Biologi', 2024),
(272, '2022-01-13', 'Desnita Wijaya', 'L', 'Surabaya', 'Ekonomi', 2023),
(273, '2022-05-02', 'Budi Saputra', 'L', 'Palembang', 'Teknik Elektro', 2020),
(274, '2021-02-16', 'Fajar Saputri', 'L', 'Jakarta', 'Teknik Informatika', 2021),
(275, '2023-09-24', 'Gita Hartono', 'L', 'Jakarta', 'Ekonomi', 2023),
(276, '2022-12-02', 'Asep Aditya', 'L', 'Medan', 'Sejarah', 2023),
(277, '2021-02-28', 'Citra Wijaya', 'P', 'Palembang', 'Teknik Informatika', 2022),
(278, '2022-11-03', 'Raymond Prakoso', 'P', 'Surabaya', 'Teknik Elektro', 2022),
(279, '2021-11-09', 'Nina Wibisono', 'L', 'Semarang', 'Teknik Informatika', 2023),
(280, '2021-04-29', 'Deddy Wibisono', 'P', 'Semarang', 'Teknik Sipil', 2021),
(281, '2021-04-27', 'Ayu Saputra', 'L', 'Palembang', 'Matematika', 2024),
(282, '2018-08-15', 'Desti Awangga', 'L', 'Medan', 'Sejarah', 2024),
(283, '2020-08-23', 'Joko Pratama', 'P', 'Jakarta', 'Fisika', 2019),
(284, '2022-12-01', 'Deddy Hartono', 'L', 'Jakarta', 'Matematika', 2021),
(285, '2024-03-09', 'Siti Aditya', 'L', 'Medan', 'Teknik Elektro', 2022),
(286, '2020-11-16', 'Deddy Elisa', 'L', 'Bandung', 'Ekonomi', 2021),
(287, '2022-09-02', 'Gita Saputra', 'L', 'Surabaya', 'Filsafat', 2022),
(288, '2020-07-23', 'Gita Wibowo', 'P', 'Palembang', 'Matematika', 2019),
(289, '2021-03-23', 'Hadi Aditya', 'L', 'Makassar', 'Teknik Mesin', 2024),
(290, '2020-10-05', 'Fajar Azizah', 'P', 'Semarang', 'Matematika', 2021),
(291, '2023-04-14', 'Desti Pratama', 'P', 'Jakarta', 'Ekonomi', 2024),
(292, '2020-09-20', 'Ika Wibowo', 'L', 'Surabaya', 'Teknik Informatika', 2021),
(293, '2024-06-22', 'Ika Santoso', 'L', 'Depok', 'Filsafat', 2021),
(294, '2018-01-20', 'Desti Azizah', 'P', 'Depok', 'Teknik Kimia', 2024),
(295, '2022-06-18', 'Joko Setiawati', 'P', 'Depok', 'Ilmu Politik', 2023),
(296, '2021-09-06', 'Siti Aditya', 'L', 'Bekasi', 'Ilmu Politik', 2019),
(297, '2018-01-03', 'Desnita Azizah', 'L', 'Depok', 'Sejarah', 2020),
(298, '2020-03-04', 'Asep Setiawati', 'P', 'Tangerang', 'Teknik Elektro', 2020),
(299, '2020-03-16', 'Asep Saputra', 'P', 'Bandung', 'Teknik Elektro', 2021),
(300, '2022-11-12', 'Mita Yulianto', 'L', 'Surabaya', 'Sejarah', 2021),
(301, '2021-04-03', 'Deddy Setiawati', 'P', 'Tangerang', 'Biologi', 2018),
(302, '2023-12-15', 'Citra Yulianto', 'P', 'Semarang', 'Teknik Mesin', 2021),
(303, '2024-12-27', 'Fajar Saputri', 'L', 'Tangerang', 'Ilmu Politik', 2024),
(304, '2020-04-11', 'Siti Wibowo', 'P', 'Bandung', 'Matematika', 2018),
(305, '2021-04-30', 'Desti Yulianto', 'P', 'Jakarta', 'Sejarah', 2024),
(306, '2020-07-10', 'Ika Prakoso', 'L', 'Bekasi', 'Sosiologi', 2022),
(307, '2018-07-19', 'Nina Putri', 'P', 'Bekasi', 'Filsafat', 2024),
(308, '2022-06-10', 'Amanda Suryadi', 'L', 'Jakarta', 'Psikologi', 2022),
(309, '2022-02-11', 'Mita Saputra', 'P', 'Medan', 'Teknik Elektro', 2023),
(310, '2023-04-03', 'Raymond Wibisono', 'P', 'Bekasi', 'Ilmu Politik', 2023),
(311, '2021-02-21', 'Desti Setiawati', 'P', 'Bandung', 'Biologi', 2020),
(312, '2022-05-27', 'Mita Suryadi', 'L', 'Palembang', 'Teknik Informatika', 2020),
(313, '2018-07-30', 'Gita Setiawati', 'P', 'Palembang', 'Psikologi', 2022),
(314, '2021-07-09', 'Mita Wibowo', 'L', 'Depok', 'Teknik Sipil', 2024),
(315, '2022-08-18', 'Asep Yulianto', 'L', 'Surabaya', 'Teknik Mesin', 2022),
(316, '2021-05-01', 'Hadi Saputri', 'L', 'Surabaya', 'Filsafat', 2018),
(317, '2021-01-10', 'Deddy Putri', 'L', 'Surabaya', 'Teknik Mesin', 2020),
(318, '2024-08-20', 'Dedi Wijaya', 'P', 'Surabaya', 'Sejarah', 2025),
(319, '2021-01-27', 'Joko Azizah', 'P', 'Depok', 'Sosiologi', 2024),
(320, '2023-03-01', 'Desnita Hartono', 'P', 'Makassar', 'Matematika', 2022),
(321, '2020-11-22', 'Mita Santoso', 'L', 'Surabaya', 'Sosiologi', 2024),
(322, '2018-06-24', 'Ayu Suryadi', 'L', 'Surabaya', 'Psikologi', 2024),
(323, '2022-06-10', 'Renanta Setiawati', 'L', 'Bandung', 'Biologi', 2020),
(324, '2023-12-01', 'Fajar Wibisono', 'P', 'Bandung', 'Sosiologi', 2025),
(325, '2024-09-09', 'Desnita Azizah', 'P', 'Medan', 'Sosiologi', 2024),
(326, '2024-07-07', 'Asep Wibisono', 'L', 'Depok', 'Teknik Mesin', 2024),
(327, '2022-09-02', 'Eka Azizah', 'P', 'Palembang', 'Teknik Sipil', 2022),
(328, '2023-07-15', 'Citra Saputri', 'P', 'Makassar', 'Teknik Kimia', 2024),
(329, '2020-02-20', 'Siti Wibisono', 'L', 'Jakarta', 'Teknik Elektro', 2022),
(330, '2021-08-24', 'Fajar Prakoso', 'L', 'Medan', 'Fisika', 2023),
(331, '2021-04-11', 'Nina Awangga', 'L', 'Tangerang', 'Psikologi', 2022),
(332, '2023-10-21', 'Yulis Suryadi', 'L', 'Medan', 'Teknik Informatika', 2019),
(333, '2021-08-11', 'Rana Awangga', 'L', 'Depok', 'Ilmu Politik', 2021),
(334, '2024-12-06', 'Asep Aditya', 'L', 'Palembang', 'Fisika', 2023),
(335, '2022-06-28', 'Desti Saputri', 'L', 'Bandung', 'Teknik Sipil', 2021),
(336, '2018-11-11', 'Yulis Setiawati', 'L', 'Jakarta', 'Matematika', 2021),
(337, '2022-05-13', 'Renanta Prakoso', 'P', 'Tangerang', 'Matematika', 2022),
(338, '2022-02-13', 'Desnita Prakoso', 'P', 'Bandung', 'Teknik Elektro', 2023),
(339, '2023-11-08', 'Joko Wijaya', 'P', 'Tangerang', 'Biologi', 2023),
(340, '2024-04-12', 'Asep Aditya', 'L', 'Depok', 'Teknik Mesin', 2020),
(341, '2022-09-22', 'Patricia Wibisono', 'L', 'Palembang', 'Psikologi', 2019),
(342, '2022-08-16', 'Asep Setiawati', 'P', 'Bekasi', 'Teknik Kimia', 2022),
(343, '2023-02-28', 'Desti Azizah', 'L', 'Jakarta', 'Psikologi', 2018),
(344, '2022-07-12', 'Joko Aditya', 'L', 'Depok', 'Sosiologi', 2019),
(345, '2020-03-15', 'Amanda Wijaya', 'L', 'Tangerang', 'Teknik Informatika', 2020),
(346, '2023-06-22', 'Citra Wibisono', 'P', 'Medan', 'Teknik Kimia', 2018),
(347, '2021-07-07', 'Deddy Wibisono', 'P', 'Semarang', 'Filsafat', 2021),
(348, '2018-01-22', 'Patricia Azizah', 'P', 'Palembang', 'Teknik Elektro', 2020),
(349, '2023-07-22', 'Fajar Aditya', 'L', 'Makassar', 'Teknik Elektro', 2024),
(350, '2023-03-07', 'Ayu Setiawati', 'P', 'Palembang', 'Sejarah', 2024),
(351, '2018-09-11', 'Fajar Hartono', 'P', 'Medan', 'Matematika', 2021),
(352, '2022-07-10', 'Fajar Santoso', 'L', 'Bekasi', 'Sosiologi', 2024),
(353, '2021-03-17', 'Desti Hartono', 'L', 'Depok', 'Matematika', 2022),
(354, '2023-03-10', 'Ayu Hartono', 'L', 'Depok', 'Matematika', 2020),
(355, '2022-11-25', 'Siti Saputri', 'L', 'Semarang', 'Teknik Sipil', 2023),
(356, '2023-05-23', 'Rana Yulianto', 'P', 'Semarang', 'Sejarah', 2020),
(357, '2018-02-26', 'Renanta Saputra', 'L', 'Palembang', 'Sosiologi', 2024),
(358, '2021-10-21', 'Felicia Yulianto', 'P', 'Bekasi', 'Filsafat', 2025),
(359, '2021-09-10', 'Dedi Santoso', 'L', 'Depok', 'Filsafat', 2025),
(360, '2020-02-12', 'Mita Wijaya', 'L', 'Semarang', 'Psikologi', 2022),
(361, '2022-07-17', 'Asep Prakoso', 'P', 'Makassar', 'Filsafat', 2019),
(362, '2021-08-12', 'Amanda Wibisono', 'L', 'Jakarta', 'Fisika', 2021),
(363, '2018-08-29', 'Gita Suryadi', 'L', 'Semarang', 'Fisika', 2024),
(364, '2024-11-06', 'Joko Putri', 'L', 'Palembang', 'Teknik Kimia', 2023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id_registrasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id_registrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
