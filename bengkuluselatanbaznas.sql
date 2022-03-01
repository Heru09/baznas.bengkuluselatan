-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2022 pada 04.37
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengkuluselatanbaznas`
--
CREATE DATABASE IF NOT EXISTS `bengkuluselatanbaznas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bengkuluselatanbaznas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calonmustahik`
--

CREATE TABLE `calonmustahik` (
  `no` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `iduser` char(12) NOT NULL,
  `kk` char(50) NOT NULL,
  `nama` tinytext NOT NULL,
  `namapanggilan` tinytext NOT NULL,
  `nik` char(50) NOT NULL,
  `jk` char(2) NOT NULL,
  `tempatlahir` tinytext NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` char(12) NOT NULL,
  `hp` char(12) NOT NULL,
  `alamatlengkap` text NOT NULL,
  `status` tinytext NOT NULL,
  `terdaftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calonmustahik`
--

INSERT INTO `calonmustahik` (`no`, `email`, `iduser`, `kk`, `nama`, `namapanggilan`, `nik`, `jk`, `tempatlahir`, `tanggallahir`, `agama`, `hp`, `alamatlengkap`, `status`, `terdaftar`) VALUES
(6, 'baznas.airnipis.maras@gmail.com', '1701051003', '1701082212110003', 'REDHO ABDI', 'REDHO', '1701081210070001', 'L', 'MARAS', '2007-10-12', 'ISLAM', '', 'DESA MARAS KEC. AIR NIPIS', 'di setujui', '2019-02-15'),
(7, 'baznas.airnipis.palakbengkerung@gmail.com', '1701051006', '1701081805160001', 'SAHARIA', 'NDUK IMI', '1701086701470002', 'P', 'MUARA TIGA', '1947-01-27', 'ISLAM', '085238138038', 'DESA PALAK BENGKERUNG KEC. AIR NIPIS', 'di setujui', '2019-02-10'),
(8, 'baznas.airnipis.palakbengkerung@gmail.com', '1701051006', '1701082212110003', 'REDHO ABDI', 'REDHO', '1701081210070001', 'L', 'MARAS', '2007-10-12', 'ISLAM', '', 'DESA PALAK BENGKERUNG KEC. AIR NIPIS', 'di setujui', '2019-02-15'),
(9, 'baznas.airnipis.maras@gmail.com', '1701051003', '170/mrs/2019', 'FURKAN', 'FURKAN', '170/mrs/2019', 'L', 'MARAS', '1985-10-12', 'ISLAM', '', 'DESA MARAS KEC. AIR NIPIS', 'di setujui', '2019-02-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gurumengaji`
--

CREATE TABLE `gurumengaji` (
  `no` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `iduser` char(12) NOT NULL,
  `kk` char(50) NOT NULL,
  `nama` tinytext NOT NULL,
  `namapanggilan` tinytext NOT NULL,
  `nik` char(50) NOT NULL,
  `jk` char(2) NOT NULL,
  `tempatlahir` tinytext NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` char(12) NOT NULL,
  `hp` char(12) NOT NULL,
  `alamatlengkap` text NOT NULL,
  `skpengangkatanbaznas` tinytext NOT NULL,
  `skpengangkatandesa` tinytext NOT NULL,
  `skpemberhentianbaznas` tinytext NOT NULL,
  `skpemberhentiandesa` tinytext NOT NULL,
  `tempatkegiatan` tinytext NOT NULL,
  `linklaporan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gurumengaji`
--

INSERT INTO `gurumengaji` (`no`, `email`, `iduser`, `kk`, `nama`, `namapanggilan`, `nik`, `jk`, `tempatlahir`, `tanggallahir`, `agama`, `hp`, `alamatlengkap`, `skpengangkatanbaznas`, `skpengangkatandesa`, `skpemberhentianbaznas`, `skpemberhentiandesa`, `tempatkegiatan`, `linklaporan`) VALUES
(1, 'baznas.airnipis.sukanegeri@gmail.com', '1701051007', '17010800200001', 'BETTY KARLINA', 'BETTY', '1701051103810001', 'P', 'PALAK BENGKERUNG', '1981-03-11', 'ISLAM', '', 'DESA SUKANEGERI KEC. AIR NIPIS', '01/baznas.bs/gurumengaji/I/2019', '', '', '', 'Masjid Bilal Bin Rabbah', 'https://drive.google.com/open?id=1CHGiD7fv6ZKM-Dv0YzYpT-LG7I6tVY7oJj6zk-vElXA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mustahik`
--

CREATE TABLE `mustahik` (
  `no` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `iduser` char(12) NOT NULL,
  `kk` char(50) NOT NULL,
  `nama` tinytext NOT NULL,
  `namapanggilan` tinytext NOT NULL,
  `nik` char(50) NOT NULL,
  `jk` char(2) NOT NULL,
  `tempatlahir` tinytext NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` char(12) NOT NULL,
  `hp` char(12) NOT NULL,
  `alamatlengkap` text NOT NULL,
  `bidang` tinytext NOT NULL,
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

INSERT INTO `mustahik` (`no`, `email`, `iduser`, `kk`, `nama`, `namapanggilan`, `nik`, `jk`, `tempatlahir`, `tanggallahir`, `agama`, `hp`, `alamatlengkap`, `bidang`, `bantuan`, `satuan`, `rp`, `tgl`, `via`, `ket`) VALUES
(1, 'baznas.airnipis.maras@gmail.com', '1701051003', '1701082212110003', 'REDHO ABDI', 'REDHO', '1701081210070001', 'L', 'MARAS', '2007-10-12', 'ISLAM', '', 'DESA MARAS KEC. AIR NIPIS', 'PENDIDIKAN', 'BANTUAN PENDIDIKAN', '', '300.000', '2019-02-15', 'KANTOR BAZNAS', ''),
(2, 'baznas.airnipis.maras@gmail.com', '1701051003', '1701082212110003', 'REDHO ABDI', 'REDHO', '1701081210070001', 'L', 'MARAS', '2007-10-12', 'ISLAM', '', 'DESA MARAS KEC. AIR NIPIS', 'PENDIDIKAN', 'BANTUAN PENDIDIKAN', '', '300.000', '2019-02-18', 'KANTOR BAZNAS', ''),
(3, 'baznas.airnipis.palakbengkerung@gmail.com', '1701051006', '1701081805160001', 'SAHARIA', 'NDUK IMI', '1701086701470002', 'P', 'MUARA TIGA', '1947-01-27', 'ISLAM', '085238138038', 'DESA PALAK BENGKERUNG KEC. AIR NIPIS', 'KEMANUSIAAN', 'BANTUAN LANSIA', '', '300.000', '2019-02-19', 'KANTOR BAZNAS', ''),
(4, 'baznas.airnipis.maras@gmail.com', '1701051003', '170/mrs/2019', 'FURKAN', 'FURKAN', '170/mrs/2019', 'L', 'MARAS', '1985-10-12', 'ISLAM', '', 'DESA MARAS KEC. AIR NIPIS', 'KEMANUSIAAN', 'MESIN SIONSO', '1 Buah', '1.500.000', '2019-02-22', 'KANTOR BAZNAS', '');

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
('baznas.airnipis.maras@gmail.com', '', 'DESA MARAS', '1701051003', 'AIR NIPIS', 0),
('baznas.airnipis.palakbengkerung@gmail.com', '', 'DESA PALAK BENGKERUNG', '1701051006', 'AIR NIPIS', 0),
('baznas.airnipis.sukanegeri@gmail.com', '', 'DESA SUKA NEGERI', '1701051007', 'AIR NIPIS', 0),
('baznaskab@gmail.com', '', 'Jl Oprt Ghalib', '123', 'Pasar Manna', 1),
('rsmu@gmail.com', '', 'Jl Oprt Ghalib', '123', 'Pasar Manna', 2);

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
-- Indeks untuk tabel `calonmustahik`
--
ALTER TABLE `calonmustahik`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `gurumengaji`
--
ALTER TABLE `gurumengaji`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `mustahik`
--
ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `usulanfrm`
--
ALTER TABLE `usulanfrm`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `idbantuan` (`idbantuan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `calonmustahik`
--
ALTER TABLE `calonmustahik`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `gurumengaji`
--
ALTER TABLE `gurumengaji`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mustahik`
--
ALTER TABLE `mustahik`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `usulanfrm`
--
ALTER TABLE `usulanfrm`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Database: `db_ujilevel`
--
CREATE DATABASE IF NOT EXISTS `db_ujilevel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_ujilevel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'mr_admin', '12345'),
(2, 'admin', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_databarang`
--

CREATE TABLE `tb_databarang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_databarang`
--

INSERT INTO `tb_databarang` (`kode_barang`, `nama_barang`, `harga`, `stok`, `tanggal`) VALUES
(2000, 'Kertas Origami', 200, 300, '2020-03-26'),
(2001, 'Kertas HVS', 100, 960, '2020-03-09'),
(2004, 'Tipe X', 5000, 400, '2020-03-09'),
(2005, 'Penghapus', 1000, 480, '2020-03-09'),
(2006, 'Pulpen', 3000, 205, '2020-03-09'),
(2007, 'Spidol', 7500, 485, '2020-03-13'),
(2013, 'Penggaris', 2500, 90, '2020-04-02'),
(2015, 'Buku', 3000, 95, '2020-04-03'),
(2020, 'Kertas Folio', 500, 1405, '2020-04-04'),
(2022, 'Kertas Asturo', 2500, 50, '2020-03-09'),
(2023, 'ayam potong', 43000, 10, '2020-03-26'),
(2024, 'Kertas Folio', 500, 1405, '2020-04-04'),
(2025, 'Kertas Folio', 500, 1405, '2020-04-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_datapetugas`
--

CREATE TABLE `tb_datapetugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_datapetugas`
--

INSERT INTO `tb_datapetugas` (`id_petugas`, `nama_petugas`, `email`, `alamat`, `tanggal_pendaftaran`, `username`, `password`) VALUES
(13, 'Hadi', 'firmansyah', 'Depok', '2020-04-05', 'guest', '12345'),
(14, 'Hadi Firmansyah', 'hadifirmansyah.id@gmail.com', 'Depok', '2020-04-16', 'mr_firman', '1234567890'),
(15, 'Heru', 'banxpras@gmail.com', 'jl blk', '2021-06-10', 'heru09', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` int(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `tb_keranjang`
--
DELIMITER $$
CREATE TRIGGER `cancel` AFTER DELETE ON `tb_keranjang` FOR EACH ROW BEGIN
UPDATE tb_databarang SET
stok = stok + OLD.jumlah
WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tgl_transaksi` date NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` int(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tgl_transaksi`, `id_transaksi`, `kode_barang`, `nama_barang`, `harga`, `jumlah_barang`, `total_harga`) VALUES
('2020-04-04', 2, 2006, 'Pulpen', 3000, 9, 27000),
('2020-04-04', 4, 2013, 'Penggaris', 2500, 5, 12500),
('2020-04-04', 5, 2007, 'Spidol', 7500, 2, 15000),
('2020-04-04', 6, 2016, 'Double Tip', 1000, 5, 5000),
('2020-04-04', 7, 2016, 'Double Tip', 1000, 10, 10000),
('2020-04-04', 12, 2000, 'Kertas Origami', 200, 5, 1000),
('2020-04-04', 15, 2007, 'Spidol', 7500, 3, 22500),
('2020-04-04', 16, 2016, 'Double Tip', 3500, 10, 35000),
('2020-04-04', 17, 2006, 'Pulpen', 3000, 5, 15000),
('2020-04-04', 18, 2000, 'Kertas Origami', 200, 40, 8000),
('2020-04-04', 19, 2004, 'Tipe X', 5000, 8, 40000),
('2020-04-04', 24, 2007, 'Spidol', 7500, 5, 37500),
('2020-04-05', 27, 2004, 'Tipe X', 5000, 60, 300000),
('2020-04-16', 37, 2024, 'new', 5, 5, 25),
('2021-06-10', 38, 2023, 'ayam potong', 43000, 1, 43000),
('2021-06-10', 39, 2023, 'ayam potong', 43000, 1, 43000),
('2021-06-10', 40, 2001, 'Kertas HVS', 100, 1, 100),
('2021-06-10', 41, 2005, 'Penghapus', 1000, 2, 2000),
('2021-06-10', 42, 2023, 'ayam potong', 43000, 1, 43000),
('2021-06-10', 43, 2000, 'Kertas Origami', 200, 2, 400),
('2021-06-10', 44, 2022, 'Kertas Asturo', 2500, 2, 5000),
('2021-06-10', 45, 2013, 'Penggaris', 2500, 1, 2500),
('2021-06-10', 46, 2013, 'Penggaris', 2500, 1, 2500),
('2021-06-10', 47, 2023, 'ayam potong', 43000, 1, 43000),
('2021-06-10', 48, 2000, 'Kertas Origami', 200, 1, 200),
('2021-06-17', 49, 2000, 'Kertas Origami', 200, 50, 10000),
('2021-06-17', 50, 2005, 'Penghapus', 1000, 10, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksipenjualan`
--

CREATE TABLE `transaksipenjualan` (
  `no` int(11) NOT NULL,
  `faktur` varchar(25) NOT NULL,
  `namakasir` varchar(25) NOT NULL,
  `tanggaltransaksi` date NOT NULL,
  `waktu` time NOT NULL,
  `namabarang` text NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `hargajual` varchar(9) NOT NULL,
  `banyakbeli` varchar(12) NOT NULL,
  `subtotal` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksipenjualan`
--

INSERT INTO `transaksipenjualan` (`no`, `faktur`, `namakasir`, `tanggaltransaksi`, `waktu`, `namabarang`, `satuan`, `hargajual`, `banyakbeli`, `subtotal`) VALUES
(0, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'bumbu', '0', '0', '-', '2.000'),
(1, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'ayam potong', '1 kg', '43.000', '2', '86.000'),
(2, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'masako', '1 bks', '500', '5', '2.500'),
(3, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'sayur kangkung', '3 ikat', '5.000', '1', '5.000'),
(4, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'KECAP', '1 bks', '500', '10', '5.000'),
(5, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'KECAP', '1 botol', '5.000', '2', '10.000'),
(6, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'kerupuk ayam', '1 bks', '500', '5', '2.500'),
(7, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'kitaro', '1 dus', '18.000', '1', '18.000'),
(8, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'gendum', '1 kg', '8.000', '2', '16.000'),
(9, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'KACANG', '1 kebat', '3.000', '2', '6.000'),
(10, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'sambal terasi', '1 bks', '5000', '2', '1.000'),
(11, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'roti', '1 bks', '12.000', '2', '24.000'),
(12, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'buah labu', '1 kg', '5.000', '2', '10.000'),
(13, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'jeruk purut', '-', '-', '-', '6.000'),
(14, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'petai', '1 papan', '15.000', '2', '30.000'),
(15, 'TR01', 'TRIA NOPENDA', '2021-06-16', '09:00:00', 'KACANG', '1 kebat', '3.000', '2', '6.000'),
(16, 'TR02', 'HERU PRASETYO', '2021-06-17', '12:00:00', 'beras', '1 kulak', '22.000', '2', '44.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_databarang`
--
ALTER TABLE `tb_databarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `tb_datapetugas`
--
ALTER TABLE `tb_datapetugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksipenjualan`
--
ALTER TABLE `transaksipenjualan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_databarang`
--
ALTER TABLE `tb_databarang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2026;

--
-- AUTO_INCREMENT untuk tabel `tb_datapetugas`
--
ALTER TABLE `tb_datapetugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Database: `gowarung`
--
CREATE DATABASE IF NOT EXISTS `gowarung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gowarung`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `no` int(11) NOT NULL,
  `namabarang` text NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `hargajual` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`no`, `namabarang`, `satuan`, `hargajual`) VALUES
(1, 'ayam potong', '1 kg', '41.000'),
(2, 'beras', '1 kulak', '27.000'),
(3, 'buah labu', '1 kg', '5.000'),
(4, 'bumbu', '100 ons', '5.000'),
(5, 'gendum', '1 kg', '8.000'),
(6, 'jeruk purut', '0', '0'),
(7, 'kacang', '1 kebat', '2.000'),
(8, 'kecap abc sachet', '1 bks', '500'),
(9, 'kecap abc botol', '1 botol', '5.000'),
(10, 'kerupuk ayam', '1 bks', '500'),
(11, 'kitaro', '1 dus', '18.000'),
(12, 'masako', '1 bks', '500'),
(13, 'petai', '1 papan', '15.000'),
(14, 'roti kacang', '1 bks', '12.000'),
(15, 'sambal terasi', '1 bks', '5.000'),
(16, 'sayur kangkung', '3 ikat', '5.000'),
(17, 'cabe keriting', '1 kg', '14.000'),
(18, 'cabe merah', '1  kg', '20.000'),
(19, 'cabe merah', '1/4  kg', '12.000'),
(20, 'roti nanas', '1 bks', '9.000'),
(21, 'ikan asap tongkol', '2 ekor', '15.000'),
(22, 'roti rasa kacang padi', '1 bks', '1.000'),
(23, 'cabe merah', '1  ons', '2.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangyangterjual`
--

CREATE TABLE `barangyangterjual` (
  `no` int(11) NOT NULL,
  `faktur` varchar(25) DEFAULT NULL,
  `namakasir` varchar(25) NOT NULL,
  `tanggaltransaksi` datetime NOT NULL,
  `namabarang` text NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `hargajual` varchar(9) NOT NULL,
  `banyakbeli` varchar(12) NOT NULL,
  `subtotal` varchar(9) NOT NULL,
  `status` varchar(25) NOT NULL,
  `tanggalstatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barangyangterjual`
--

INSERT INTO `barangyangterjual` (`no`, `faktur`, `namakasir`, `tanggaltransaksi`, `namabarang`, `satuan`, `hargajual`, `banyakbeli`, `subtotal`, `status`, `tanggalstatus`) VALUES
(18, '', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'bumbu', '0', '0', '-', '2.000', '', ''),
(19, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'ayam potong', '1 kg', '43.000', '2', '86.000', '', ''),
(20, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'masako', '1 bks', '500', '5', '2.500', '', ''),
(21, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'sayur kangkung', '3 ikat', '5.000', '1', '5.000', '', ''),
(22, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'kecap abc sachet', '1 bks', '500', '10', '5.000', '', ''),
(23, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'kecap abc botol', '1 botol', '5.000', '2', '10.000', '', ''),
(24, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'kerupuk ayam', '1 bks', '500', '5', '2.500', '', ''),
(25, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'kitaro', '1 dus', '18.000', '1', '18.000', '', ''),
(26, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'gendum', '1 kg', '8.000', '2', '16.000', '', ''),
(27, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'kacang', '1 kebat', '3.000', '2', '6.000', '', ''),
(28, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'sambal terasi', '1 bks', '5.000', '2', '1.000', '', ''),
(29, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'roti', '1 bks', '12.000', '2', '24.000', '', ''),
(30, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'buah labu', '1 kg', '5.000', '2', '10.000', '', ''),
(31, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'jeruk purut', '0', '0', '-', '6.000', '', ''),
(32, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'petai', '1 papan', '15.000', '2', '30.000', '', ''),
(34, '1/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-17 00:00:00', 'beras', '1 kulak', '22.000', '2', '44.000', '', ''),
(35, '1/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-17 00:00:00', 'masako', '1 bks', '500', '2', '1.000', '', ''),
(36, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'sayur paku', '1 kebat', '2.000', '2', '4.000', '', ''),
(37, '2/GOWARUNG/06/2021', 'TRIA NOPENDA', '2021-06-16 00:00:00', 'sayur kubis', '1 kg', '10.000', '1', '10.000', '', ''),
(46, '3/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'bumbu', '0', '0', '-', '2.000', '', ''),
(47, '3/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'kacang', '1 kebat', '2.000', '2', '4.000', '', ''),
(48, '3/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(49, '4/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'buah labu', '1 kg', '5.000', '1', '5.000', '', ''),
(50, '4/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'beras', '1 kulak', '22.000', '1', '22.000', '', ''),
(51, '5/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'cabe merah', '1/4  kg', '12.000', '2', '24.000', '', ''),
(52, '5/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'gendum', '1 kg', '8.000', '1', '8.000', '', ''),
(53, '6/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'bumbu', '0', '0', '-', '1.000', '', ''),
(54, '6/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-25 00:00:00', 'cabe keriting', '1 kg', '16.000', '2', '32.000', '', ''),
(55, '7/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'ikan asap tongkol', '2 ekor', '15.000', '1', '15.000', '', ''),
(56, '7/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'beras', '1 kulak', '22.000', '1', '22.000', '', ''),
(57, '8/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'roti rasa kacang padi', '1 bks', '1.000', '5', '5.000', '', ''),
(58, '9/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'ikan asap tongkol', '2 ekor', '15.000', '1', '15.000', '', ''),
(59, '9/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(60, '10/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'jeruk purut', '0', '0', '-', '10.000', '', ''),
(61, '10/GOWARUNG/06/2021', 'HERU PRASETYO', '2021-06-26 00:00:00', 'gendum', '1 kg', '8.000', '1', '8.000', '', ''),
(62, '10/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'kerupuk ayam', '1 bks', '500', '2', '1.000', '', ''),
(63, '10/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'roti kacang', '1 bks', '12.000', '2', '24.000', '', ''),
(64, '10/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'cabe merah', '1  ons', '2.000', '2', '4.000', '', ''),
(65, '11/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'gendum', '1 kg', '8.000', '1', '8.000', '', ''),
(66, '11/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'cabe merah', '1  kg', '20.000', '1', '20.000', '', ''),
(67, '12/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-17 00:00:00', 'beras', '1 kulak', '22.000', '1', '22.000', '', ''),
(68, '13/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'beras', '1 kulak', '22.000', '1', '22.000', '', ''),
(69, '13/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'beras', '1 kulak', '22.000', '1', '22.000', '', ''),
(70, '14/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'ikan asap tongkol', '2 ekor', '15.000', '1', '15.000', '', ''),
(71, '15/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(72, '15/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(73, '16/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1  kg', '20.000', '1', '20.000', '', ''),
(74, '17/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(75, '17/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(76, '18/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kecap abc botol', '1 botol', '5.000', '1', '5.000', '', ''),
(77, '19/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1  ons', '2.000', '1', '2.000', '', ''),
(78, '20/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(79, '21/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(80, '22/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1  ons', '2.000', '1', '2.000', '', ''),
(81, '22/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1  ons', '2.000', '1', '2.000', '', ''),
(82, '23/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'ayam potong', '1 kg', '43.000', '12', '516.000', '', ''),
(83, '23/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'ayam potong', '1 kg', '43.000', '12', '516.000', '', ''),
(84, '23/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'ayam potong', '1 kg', '43.000', '12', '516.000', '', ''),
(85, '24/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'bumbu', '0', '0', '-', '5.000', '', ''),
(86, '24/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'bumbu', '0', '0', '-', '5.000', '', ''),
(94, '25/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'cabe merah', '1  kg', '20.000', '1', '20.000', '', ''),
(95, '25/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'gendum', '1 kg', '8.000', '1', '8.000', '', ''),
(96, '26/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'beras', '1 kulak', '25.000', '1', '25.000', '', ''),
(97, '26/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'ayam potong', '1 kg', '41.000', '2', '82.000', '', ''),
(98, '27/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-18 00:00:00', 'beras', '1 kulak', '25.000', '1', '25.000', '', ''),
(99, '28/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(100, '29/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(101, '30/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'beras', '1 kulak', '25.000', '1', '25.000', '', ''),
(102, '31/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'ikan asap tongkol', '2 ekor', '15.000', '1', '15.000', '', ''),
(103, '31/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1  ons', '2.000', '1', '2.000', '', ''),
(104, '32/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(105, '32/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'buah labu', '1 kg', '5.000', '2', '10.000', '', ''),
(106, '33/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(107, '33/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'buah labu', '1 kg', '5.000', '2', '10.000', '', ''),
(108, '34/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(109, '35/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe merah', '1/4  kg', '12.000', '1', '12.000', '', ''),
(110, '36/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'ayam potong', '1 kg', '41.000', '1', '41.000', '', ''),
(111, '36/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'beras', '1 kulak', '25.000', '2', '50.000', '', ''),
(112, '37/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'ayam potong', '1 kg', '41.000', '2', '82.000', '', ''),
(113, '37/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'bumbu', '0', '0', '-', '1.000', '', ''),
(114, '38/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(115, '38/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'bumbu', '100 ons', '5.000', '2', '10.000', '', ''),
(116, '39/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'cabe keriting', '1 kg', '14.000', '1', '14.000', '', ''),
(117, '39/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'bumbu', '100 ons', '5.000', '5', '25.000', '', ''),
(118, '40/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'ayam potong', '1 kg', '41.000', '3', '123.000', '', ''),
(119, '41/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'beras', '1 kulak', '25.000', '3', '75.000', '', ''),
(120, '41/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'gendum', '1 kg', '8.000', '2', '16.000', '', ''),
(121, '42/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'beras', '1 kulak', '25.000', '3', '75.000', '', ''),
(122, '42/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-21 00:00:00', 'kacang', '1 kebat', '2.000', '1', '2.000', '', ''),
(123, '43/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 00:00:00', 'cabe keriting', '1 kg', '14.000', '3', '42.000', '', ''),
(124, '43/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 00:00:00', 'buah labu', '1 kg', '5.000', '2', '10.000', '', ''),
(125, '44/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 00:00:00', 'ayam potong', '1 kg', '41.000', '5', '205.000', '', ''),
(126, '45/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 00:00:00', 'kacang', '1 kebat', '2.000', '20', '40.000', '', ''),
(127, '45/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 00:00:00', 'gendum', '1 kg', '8.000', '2', '16.000', '', ''),
(128, '46/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 07:30:21', 'cabe merah', '1  kg', '20.000', '2', '40.000', '', ''),
(129, '46/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 07:30:21', 'beras', '1 kulak', '25.000', '3', '75.000', '', ''),
(130, '47/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 07:31:16', 'ayam potong', '1 kg', '41.000', '2', '82.000', '', ''),
(131, '48/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 07:31:59', 'ayam potong', '1 kg', '41.000', '5', '205.000', '', ''),
(132, '48/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-22 07:31:59', 'gendum', '1 kg', '8.000', '5', '40.000', '', ''),
(133, '49/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:11:37', 'kacang', '1 kebat', '2.000', '5', '10.000', '', ''),
(134, '49/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:11:37', 'cabe merah', '1  ons', '2.000', '1', '2.000', '', ''),
(135, '50/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:13:26', 'ikan asap tongkol', '2 ekor', '15.000', '5', '75.000', '', ''),
(136, '50/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:13:26', 'kecap abc botol', '1 botol', '5.000', '5', '25.000', '', ''),
(137, '51/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:15:36', 'cabe merah', '1  ons', '2.000', '4', '8.000', '', ''),
(138, '51/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:15:36', 'ayam potong', '1 kg', '41.000', '1', '41.000', '', ''),
(139, '52/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:22:41', 'gendum', '1 kg', '8.000', '3', '24.000', '', ''),
(140, '52/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:22:41', 'ayam potong', '1 kg', '41.000', '2', '82.000', '', ''),
(141, '52/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:22:41', 'beras', '1 kulak', '25.000', '5', '125.000', '', ''),
(142, '53/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:25:26', 'gendum', '1 kg', '8.000', '5', '40.000', '', ''),
(143, '53/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:25:26', 'bumbu', '100 ons', '5.000', '1', '5.000', '', ''),
(144, '54/GOWARUNG/07/2021', 'HERU PRASETYO', '2021-07-24 21:28:58', 'beras', '1 kulak', '27.000', '10', '270.000', '', ''),
(145, '55/GOWARUNG/08/2021', 'HERU PRASETYO', '2021-08-02 08:16:36', 'beras', '1 kulak', '27.000', '1', '27.000', '', ''),
(146, '55/GOWARUNG/08/2021', 'HERU PRASETYO', '2021-08-02 08:16:36', 'ayam potong', '1 kg', '41.000', '0', '0', 'dikembalikan', '02-08-2021 08:26:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatanpenjualan`
--

CREATE TABLE `pendapatanpenjualan` (
  `no` int(11) NOT NULL,
  `faktur` varchar(25) NOT NULL,
  `total` varchar(25) NOT NULL,
  `bayar` varchar(25) DEFAULT NULL,
  `kembali` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendapatanpenjualan`
--

INSERT INTO `pendapatanpenjualan` (`no`, `faktur`, `total`, `bayar`, `kembali`) VALUES
(1, '2/GOWARUNG/06/2021', '238.000', '240.000', '2.000'),
(2, '1/GOWARUNG/06/2021', '45.000', '50.000', '5.000'),
(3, '2/GOWARUNG/06/2021', '238.000', '240.000', '2.000'),
(4, '3/GOWARUNG/06/2021', '18.000', '20.000', '2.000'),
(5, '4/GOWARUNG/06/2021', '27.000', '30.000', '3.000'),
(7, '5/GOWARUNG/06/2021', '32.000', '33.000', '1.000'),
(8, '6/GOWARUNG/06/2021', '33.000', '34.000', '1.000'),
(9, '7/GOWARUNG/06/2021', '37.000', '40.000', '3.000'),
(10, '8/GOWARUNG/06/2021', '5.000', '10.000', '5.000'),
(11, '9/GOWARUNG/06/2021', '27.000', '30.000', '3.000'),
(12, '10/GOWARUNG/06/2021', '18.000', '20.000', '2.000'),
(13, '10/GOWARUNG/07/2021', '25.000', '25.000', '0'),
(14, '10/GOWARUNG/07/2021', '4.000', '5.000', '1.000'),
(15, '11/GOWARUNG/07/2021', '28.000', '30.000', '2.000'),
(16, '12/GOWARUNG/07/2021', '22.000', '25.000', '3.000'),
(17, '13/GOWARUNG/07/2021', '22.000', '25.000', '3.000'),
(18, '13/GOWARUNG/07/2021', '22.000', '25.000', '3.000'),
(19, '14/GOWARUNG/07/2021', '15.000', '20.000', '5.000'),
(20, '15/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(21, '15/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(22, '16/GOWARUNG/07/2021', '20.000', '25.000', '5.000'),
(23, '17/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(24, '17/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(25, '18/GOWARUNG/07/2021', '5.000', '10.000', '5.000'),
(26, '', '5.000', '5.000', '0'),
(27, '', '5.000', '5.000', '0'),
(28, '', '2.000', '5.000', '3.000'),
(29, '19/GOWARUNG/07/2021', '2.000', '', ''),
(30, '20/GOWARUNG/07/2021', '', '', ''),
(31, '20/GOWARUNG/07/2021', '', '', ''),
(32, '20/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(33, '21/GOWARUNG/07/2021', '12.000', '15.000', '3.000'),
(34, '22/GOWARUNG/07/2021', '2.000', '', ''),
(35, '22/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(36, '23/GOWARUNG/07/2021', '516.000', '520.000', '4.000'),
(37, '23/GOWARUNG/07/2021', '516.000', '520.000', '4.000'),
(38, '23/GOWARUNG/07/2021', '516.000', '520.000', '4.000'),
(39, '24/GOWARUNG/07/2021', '5.000', '', ''),
(40, '24/GOWARUNG/07/2021', '5.000', '5.000', '0'),
(49, '25/GOWARUNG/07/2021', '28.000', '30.000', '2.000'),
(50, '26/GOWARUNG/07/2021', '107.000', '', ''),
(51, '27/GOWARUNG/07/2021', '25.000', '', ''),
(52, '28/GOWARUNG/07/2021', '12.000', '15.000', '3.000'),
(53, '29/GOWARUNG/07/2021', '2.000', '5.000', '3.000'),
(54, '30/GOWARUNG/07/2021', '25.000', '25.000', '0'),
(55, '31/GOWARUNG/07/2021', '17.000', '20.000', '3.000'),
(56, '32/GOWARUNG/07/2021', '22.000', '25.000', '3.000'),
(57, '33/GOWARUNG/07/2021', '22.000', '', ''),
(58, '34/GOWARUNG/07/2021', '12.000', '15.000', '3.000'),
(59, '35/GOWARUNG/07/2021', '12.000', '15.000', '3.000'),
(60, '36/GOWARUNG/07/2021', '91.000', '95.000', '4.000'),
(61, '37/GOWARUNG/07/2021', '83.000', '85.000', '2.000'),
(62, '38/GOWARUNG/07/2021', '12.000', '', ''),
(63, '39/GOWARUNG/07/2021', '39.000', '40.000', '1.000'),
(64, '40/GOWARUNG/07/2021', '123.000', '125.000', '2.000'),
(65, '41/GOWARUNG/07/2021', '91.000', '100.000', '9.000'),
(66, '42/GOWARUNG/07/2021', '77.000', '80.000', '3.000'),
(67, '43/GOWARUNG/07/2021', '52.000', '52.000', '0'),
(68, '44/GOWARUNG/07/2021', '205.000', '205.000', '0'),
(69, '45/GOWARUNG/07/2021', '56.000', '60.000', '4.000'),
(70, '46/GOWARUNG/07/2021', '92.000', '95.000', '3.000'),
(71, '46/GOWARUNG/07/2021', '92.000', '95.000', '3.000'),
(72, '46/GOWARUNG/07/2021', '115.000', '120.000', '5.000'),
(73, '47/GOWARUNG/07/2021', '82.000', '90.000', '8.000'),
(74, '48/GOWARUNG/07/2021', '245.000', '250.000', '5.000'),
(77, '49/GOWARUNG/07/2021', '12.000', '15.000', '3.000'),
(78, '50/GOWARUNG/07/2021', '100.000', '100.000', '0'),
(79, '51/GOWARUNG/07/2021', '49.000', '100.000', '51.000'),
(80, '52/GOWARUNG/07/2021', '231.000', '250.000', '19.000'),
(81, '53/GOWARUNG/07/2021', '45.000', '50.000', '5.000'),
(82, '54/GOWARUNG/07/2021', '270.000', '270.000', '0'),
(83, '55/GOWARUNG/08/2021', '27.000', '110.000', '83.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `barangyangterjual`
--
ALTER TABLE `barangyangterjual`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `pendapatanpenjualan`
--
ALTER TABLE `pendapatanpenjualan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `barangyangterjual`
--
ALTER TABLE `barangyangterjual`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `pendapatanpenjualan`
--
ALTER TABLE `pendapatanpenjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bengkuluselatanbaznas\",\"table\":\"calonmustahik\"},{\"db\":\"bengkuluselatanbaznas\",\"table\":\"mustahik\"},{\"db\":\"bengkuluselatanbaznas\",\"table\":\"gurumengaji\"},{\"db\":\"bengkuluselatanbaznas\",\"table\":\"usulan\"},{\"db\":\"bengkuluselatanbaznas\",\"table\":\"user\"},{\"db\":\"bengkuluselatanbaznas\",\"table\":\"usulanfrm\"},{\"db\":\"gowarung\",\"table\":\"barangyangterjual\"},{\"db\":\"gowarung\",\"table\":\"pendapatanpenjualan\"},{\"db\":\"gowarung\",\"table\":\"barang\"},{\"db\":\"gowarung\",\"table\":\"returnbarang\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_ujilevel', 'transaksipenjualan', '{\"sorted_col\":\"`transaksipenjualan`.`no` ASC\"}', '2021-06-17 04:09:45'),
('root', 'gowarung', 'barang', '{\"sorted_col\":\"`no`  DESC\"}', '2021-06-25 03:38:54'),
('root', 'gowarung', 'barangyangterjual', '{\"sorted_col\":\"`barangyangterjual`.`no`  DESC\"}', '2021-07-22 00:28:59'),
('root', 'gowarung', 'pendapatanpenjualan', '{\"sorted_col\":\"`pendapatanpenjualan`.`no`  DESC\"}', '2021-07-18 04:34:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-01 03:36:40', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
