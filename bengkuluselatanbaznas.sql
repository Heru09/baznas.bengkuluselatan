-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 11 Feb 2019 pada 14.14
-- Versi Server: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengkuluselatanbaznas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calonmustahik`
--

CREATE TABLE `calonmustahik` (
  `no` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `iduser` char(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `namapanggilan` tinytext NOT NULL,
  `nik` char(50) NOT NULL,
  `jk` char(2) NOT NULL,
  `tempatlahir` varchar(75) NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` char(12) NOT NULL,
  `hp` char(12) NOT NULL,
  `alamatlengkap` text NOT NULL,
  `terdaftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calonmustahik`
--

INSERT INTO `calonmustahik` (`no`, `email`, `iduser`, `nama`, `namapanggilan`, `nik`, `jk`, `tempatlahir`, `tanggallahir`, `agama`, `hp`, `alamatlengkap`, `terdaftar`) VALUES
(1, 'ekobudiarto@yahoo.com', 'AN3', 'HERU PRASETYO', '', '1701050909940002', 'L', 'PALAK BENGKERUNG', '1994-09-09', 'ISLAM', '0', 'DESA PALAK BENGKERUNG KEC. AIR NIPIS', '2019-01-12'),
(2, 'baznas.koma.kotamedan@gmail.com', 'KM5', 'HERU PRASETYO', '', '1701050909940002', 'L', 'PALAK BENGKERUNG', '1994-09-09', 'ISLAM', '0', 'JL BLK KEL. KOTA MEDAN KEC. KOTA MANNA', '2019-01-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mustahik`
--

CREATE TABLE `mustahik` (
  `no` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `iduser` char(12) NOT NULL,
  `nik` char(50) NOT NULL,
  `bantuan` tinytext NOT NULL,
  `satuan` char(12) NOT NULL,
  `rp` char(25) NOT NULL,
  `tgl` date NOT NULL,
  `via` tinytext NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mustahik`
--

INSERT INTO `mustahik` (`no`, `email`, `iduser`, `nik`, `bantuan`, `satuan`, `rp`, `tgl`, `via`, `ket`) VALUES
(1, 'ekobudiarto@yahoo.com', 'AN3', '1701050909940002', 'MODAL USAHA', '1', '1.000.000', '2019-02-10', 'KANTOR BAZNAS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `email` char(50) NOT NULL,
  `password` char(12) NOT NULL,
  `namauser` varchar(125) NOT NULL,
  `iduser` char(12) NOT NULL,
  `kec` char(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`email`, `password`, `namauser`, `iduser`, `kec`, `status`) VALUES
('banxpras@gmail.com', '12345', 'HERU PRASETYO ADMIN BAZNAS KABUPATEN BENGKULU SELATAN', '', '', 1),
('baznas.airnipis.palakbengkerung@gmail.com', '', 'ADMIN DESA PALAK BENGKERUNG', 'AN3', 'AIR NIPIS', 0),
('baznas.koma.kotamedan@gmail.com', '', 'Kota Medan', 'KM5', 'KOTA MANNA', 0),
('baznas.rumahsakit.muhammadiyah@gmail.com', '', 'ADMIN RUMAH SAKIT MUHAMMADIYAH KABUPATEN BENGKULU SELATAN', 'rsmu', 'KOTA MANNA', 2),
('ekobudiarto@yahoo.com', '', 'EKO BUDIARTO ADMIN DESA PALAK BENGKERUNG', 'AN3', 'AIR NIPIS', 0),
('ritaayuserimpi@gmail.com', '', 'RITA AYU SERIMPI ADMIN RUMAH SAKIT MUHAMMADIYAH KABUPATEN BENGKULU SELATAN', 'RSMU', 'KOTA MANNA', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan`
--

CREATE TABLE `usulan` (
  `nik` char(50) NOT NULL,
  `idbantuan` char(12) NOT NULL,
  `pengantarlurahdesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulanfrm`
--

CREATE TABLE `usulanfrm` (
  `no` int(11) NOT NULL,
  `idbidang` char(5) NOT NULL,
  `namabidang` tinytext NOT NULL,
  `idprogram` char(5) NOT NULL,
  `namaprogram` tinytext NOT NULL,
  `idbantuan` char(12) NOT NULL,
  `jenisbantuan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usulanfrm`
--

INSERT INTO `usulanfrm` (`no`, `idbidang`, `namabidang`, `idprogram`, `namaprogram`, `idbantuan`, `jenisbantuan`) VALUES
(1, 'B1', 'EKONOMI', 'B1P1', 'ZAKAT COMUNITY DEVELOPMENT', 'B1P11', 'PROGRAM ZCD 1'),
(2, 'B1', 'EKONOMI', 'B1P1', 'ZAKAT COMUNITY DEVELOPMENT', 'B1P12', 'PROGRAM ZCD 2'),
(3, 'B1', 'EKONOMI', 'B1P2', 'PROGRAM PEMBERDAYAAN EKONOMI', 'B1P21', 'PROGRAM MODAL USAHA'),
(4, 'B1', 'EKONOMI', 'B1P2', 'PROGRAM PEMBERDAYAAN EKONOMI', 'B1P22', 'PROGRAM PELATIHAN USAHA'),
(5, 'B1', 'EKONOMI', 'B1P2', 'PROGRAM PEMBERDAYAAN EKONOMI', 'B1P23', 'KOPERASI MUSTAHIK'),
(6, 'B1', 'EKONOMI', 'B1P2', 'PROGRAM PEMBERDAYAAN EKONOMI', 'B1P24', 'PEMBERDAYAAN EKONOMI'),
(7, 'B2', 'PENDIDIKAN', 'B2P1', 'PROGRAM BEASISWA PENDIDIKAN', 'B2P11', 'BEASISWA SD/MI'),
(8, 'B2', 'PENDIDIKAN', 'B2P1', 'PROGRAM BEASISWA PENDIDIKAN', 'B2P12', 'BEASISWA SMP/MTS'),
(9, 'B2', 'PENDIDIKAN', 'B2P1', 'PROGRAM BEASISWA PENDIDIKAN', 'B2P13', 'BEASISWA SMA/MA'),
(10, 'B2', 'PENDIDIKAN', 'B2P1', 'PROGRAM BEASISWA PENDIDIKAN', 'B2P14', 'BEASISWA DIPLOMA'),
(11, 'B2', 'PENDIDIKAN', 'B2P1', 'PROGRAM BEASISWA PENDIDIKAN', 'B2P15', 'BEASISWA SARJANA'),
(12, 'B2', 'PENDIDIKAN', 'B2P2', 'PROGRAM PELAYANAN PENDIDIKAN', 'B2P21', 'BANTUAN HUTANG PENDIDIKAN'),
(13, 'B2', 'PENDIDIKAN', 'B2P2', 'PROGRAM PELAYANAN PENDIDIKAN', 'B2P22', 'BANTUAN BIAYA PENDIDIKAN'),
(14, 'B2', 'PENDIDIKAN', 'B2P2', 'PROGRAM PELAYANAN PENDIDIKAN', 'B2P23', 'BIMBINGAN BELAJAR MUSTAHIK'),
(15, 'B2', 'PENDIDIKAN', 'B2P2', 'PROGRAM PELAYANAN PENDIDIKAN', 'B2P24', 'PENGEMBANGAN KARAKTER'),
(16, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P11', 'BANTUAN HUTANG PENGOBATAN'),
(17, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P12', 'BANTUAN BIAYA PENGOBATAN'),
(18, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P13', 'OPERASIONAL AMBULANCE'),
(19, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P14', 'PENGADAAN AMBULANCE'),
(20, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P15', 'POSYANDU MUSTAHIK'),
(21, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P16', 'ALAT BANTU KESEHATAN'),
(22, 'B3', 'KESEHATAN', 'B3P1', 'PROGRAM PELAYANAN KESEHATAN', 'B3P17', 'SUNATAN MASSAL'),
(23, 'B3', 'KESEHATAN', 'B3P2', 'RUMAH SEHAT BAZNAS', 'B3P21', 'PEMBANGUNAN RSB'),
(24, 'B3', 'KESEHATAN', 'B3P2', 'RUMAH SEHAT BAZNAS', 'B3P22', 'OPERASIONAL RSB'),
(25, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P11', 'PAKET ZAKAT FITRAH (IDUL FITRI)'),
(26, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P12', 'PAKET IFTHAR RAMADHAN'),
(27, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P13', 'KELAS PEMBINAAN ISLAM'),
(28, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P14', 'KELAS PEMBINAAN DAI/SANTUNAN'),
(29, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P15', 'BANTUAN BIAYA PERNIKAHAN'),
(30, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P16', 'SANTUNAN RIQAB'),
(31, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P17', 'ADVOKASI MUSTAHIK'),
(32, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P18', 'BANTUAN ORMAS ISLAM/MASJID'),
(33, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P19', 'SANTUNAN GURU MENGAJI'),
(34, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P110', 'FISABILILLAH UNTUK OPERASIONAL'),
(35, 'B4', 'DAKWAH ADVOKASI', 'B4P1', 'PROGRAM PELAYANAN DAKWAH', 'B4P111', 'SANTUNAN MUALAF'),
(36, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P11', 'SANTUNAN FAKIR MISKIN'),
(37, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P12', 'BANTUAN HUTANG SEWAH RUMAH'),
(38, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P13', 'BANTUAN RENOVASI RUMAH TIDAK LAYAK HUNI (RTLH)'),
(39, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P14', 'BANTUAN IBNU SABIL'),
(40, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P15', 'SANTUNAN KEMATIAN'),
(41, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P16', 'BANTUAN KEBENCANAAN'),
(42, 'B5', 'KEMANUSIAAN', 'B5P1', 'PROGRAM PELAYANAN KESEHATAN', 'B5P17', 'BANTUAN GHARIM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calonmustahik`
--
ALTER TABLE `calonmustahik`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `mustahik`
--
ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `usulanfrm`
--
ALTER TABLE `usulanfrm`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `idbantuan` (`idbantuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calonmustahik`
--
ALTER TABLE `calonmustahik`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mustahik`
--
ALTER TABLE `mustahik`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usulanfrm`
--
ALTER TABLE `usulanfrm`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
