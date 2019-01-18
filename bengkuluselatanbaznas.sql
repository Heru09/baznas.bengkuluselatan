-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 16 Jan 2019 pada 19.32
-- Versi Server: 5.7.24-0ubuntu0.18.04.1
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
  `keldes` varchar(25) NOT NULL,
  `idkeldes` char(12) NOT NULL,
  `kec` char(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` char(50) NOT NULL,
  `jk` char(2) NOT NULL,
  `tempatlahir` varchar(75) NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` char(12) NOT NULL,
  `pekerjaan` char(25) NOT NULL,
  `alamatlengkap` text NOT NULL,
  `hp` char(12) NOT NULL,
  `terdaftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calonmustahik`
--

INSERT INTO `calonmustahik` (`no`, `keldes`, `idkeldes`, `kec`, `nama`, `nik`, `jk`, `tempatlahir`, `tanggallahir`, `agama`, `pekerjaan`, `alamatlengkap`, `hp`, `terdaftar`) VALUES
(1, 'Palak Bengkerung', 'AN3', 'AIR NIPIS', 'HERU PRASETYO', '1701050909940002', 'L', 'PALAK BENGKERUNG', '1994-09-09', 'ISLAM', 'PEDAGANG', 'DESA PALAK BENGKERUNG KEC. AIR NIPIS', '085238138038', '2019-01-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mustahik`
--

CREATE TABLE `mustahik` (
  `keldes` char(100) NOT NULL,
  `idkeldes` char(12) NOT NULL,
  `kecamatan` char(125) NOT NULL,
  `nik` char(50) NOT NULL,
  `bantuan` tinytext NOT NULL,
  `satuan` char(12) NOT NULL,
  `rp` char(25) NOT NULL,
  `tgl` date NOT NULL,
  `via` tinytext NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `email` char(50) NOT NULL,
  `password` char(12) NOT NULL,
  `keldes` varchar(25) NOT NULL,
  `idkeldes` char(12) NOT NULL,
  `kec` char(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`email`, `password`, `keldes`, `idkeldes`, `kec`, `status`) VALUES
('banxpras@gmail.com', '12345', 'ADMIN', '', '', 1),
('baznas.airnipis.palakbengkerung@gmail.com', '', 'Palak Bengkerung', 'AN3', 'AIR NIPIS', 0),
('baznas.bungamas.gindosuli@gmail.com', '', 'Gindosuli', 'BM1', 'BUNGA MAS', 0),
('baznas.kdi.betungan@gmail.com', '', 'Betungan', 'KDI2', 'KEDURANG ILIR', 0),
('baznas.koma.kotamedan@gmail.com', '', 'Kota Medan', 'KM5', 'KOTA MANNA', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan`
--

CREATE TABLE `usulan` (
  `nik` char(50) NOT NULL,
  `usulanbantuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calonmustahik`
--
ALTER TABLE `calonmustahik`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
