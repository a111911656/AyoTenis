-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 08:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayotenis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `foto`) VALUES
('ahmad', 'Ahmad', 'ahmadreys@gmail.com', '12', 'ahmad.jpg'),
('tono', 'Tono', 'staff@gmail.com', '1', 'tono.jpg'),
('yunita', 'Yunita', 'yunitadwi79@gmail.com', '2', 'yunita.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bayar_cod`
--

CREATE TABLE `bayar_cod` (
  `id_book` varchar(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar_cod`
--

INSERT INTO `bayar_cod` (`id_book`, `jumlah_bayar`, `bayar`, `status`) VALUES
('KB00000002', 100000, 100000, 'Selesai'),
('KB00000003', 200000, 200000, 'Selesai'),
('KB00000007', 130000, 130000, 'Lunas'),
('KB00000009', 50000, 50000, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `bayar_transfer`
--

CREATE TABLE `bayar_transfer` (
  `id_book` varchar(10) NOT NULL,
  `rek_kirim` varchar(30) NOT NULL,
  `rek_tujuan` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar_transfer`
--

INSERT INTO `bayar_transfer` (`id_book`, `rek_kirim`, `rek_tujuan`, `status`, `bukti_bayar`) VALUES
('KB00000001', '010020931847834', 'bri', 'Selesai', 'bukti-transfer.jpg'),
('KB00000008', '01927327', 'bca', 'Telah Dikonfirmasi', 'bukti transfer bca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lap` varchar(5) NOT NULL,
  `jenis_rumput` varchar(20) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `harga` int(20) NOT NULL,
  `no_lap` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`id_lap`, `jenis_rumput`, `foto`, `harga`, `no_lap`, `username`) VALUES
('LP001', 'sintetis', 'lapangan-tenis-rumput-2.jpg', 65000, '01', 'yunita'),
('LP002', 'sintetis', 'lapangan-tenis-rumput-3.jpg', 100000, '02', 'yunita'),
('LP003', 'beton/semen', 'lapangan-tenis-beton-2.jpg', 50000, '03', 'yunita'),
('LP004', 'beton/semen', 'lapangan-tenis-beton-3.jpg', 70000, '04', 'yunita'),
('LP005', 'sintetis', 'lapangan-tenis-rumput-4.jpg', 50000, '05', 'yunita'),
('LP007', 'sintetis', 'lapangan-tenis-rumput-5.jpg', 100000, '02', 'vivinia'),
('LP008', 'beton/semen', 'lapangan-tenis-beton-4.jpg', 60000, '03', 'vivinia'),
('LP009', 'beton/semen', 'lapangan-tenis-beton-5.jpg', 60000, '01', 'vivinia'),
('LP010', 'beton/semen', 'lapangan-tenis-beton-6.jpg', 60000, '04', 'vivinia'),
('LP011', 'sintetis', 'lapangan-tenis-rumput-1.jpg', 90000, '06', 'yunita'),
('LP012', 'beton/semen', 'lapangan-tenis-beton-1.jpg', 70000, '08', 'yunita');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username_member` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username_member`, `nama`, `tgl_lahir`, `jk`, `email`, `password`, `foto`) VALUES
('bbg', 'Bambang', '1990-01-01', 'L', 'bambang123@wesmin.com', '1', 'profil.png'),
('risqi17', 'Risqi', '1997-03-12', 'L', 'risqi@gmail.com', '44', 'risqi.jpg'),
('ys', 'Yesi', '2000-02-28', 'P', 'yesi@yahoo.co.id', '1', 'yesi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `username` varchar(50) NOT NULL,
  `nama_opt` varchar(100) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`username`, `nama_opt`, `nama_lapangan`, `email`, `password`, `alamat`, `kota`, `foto`) VALUES
('andk', 'Andika', 'Zona Tenis Semarang', 'andika123@zona.com', '1', 'Jl. Diponegoro No. 23 Semarang', 'Semarang', 'andika.jpeg'),
('iqbal', 'Iqbal Fathur', 'Go Tenis Surabaya', 'golonganc@gmail.com', '55', 'Jl. Sudirman No. 77 Surabaya', 'Surabaya', 'iqbal.jpg'),
('vivinia', 'Vivinia Agustin S', 'Elphasindo Jakarta', 'viviniaaguss@gmail.com', '22', 'Jl. Pegangsaan Barat No. 54 Jakarta', 'Jakarta', 'vivin.jpg'),
('yunita', 'Yunita Dwi P', 'Zona Tenis Semarang', 'yuyunwi@gmail.com', '11', 'Jl. Diponegoro No. 23 Semarang', 'Semarang', 'yunita.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_book` varchar(10) NOT NULL,
  `username_member` varchar(30) NOT NULL,
  `id_lap` varchar(5) NOT NULL,
  `tgl_book` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `tgl_main` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_berakhir` time NOT NULL,
  `jenis_bayar` varchar(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_book`, `username_member`, `id_lap`, `tgl_book`, `batas_bayar`, `tgl_main`, `jam_mulai`, `jam_berakhir`, `jenis_bayar`, `total_harga`, `status`) VALUES
('KB00000001', 'risqi17', 'LP003', '2017-01-02 15:26:53', '2017-01-02 21:26:53', '2017-01-03', '18:00:00', '20:00:00', 'transfer', 100000, 'Selesai'),
('KB00000002', 'risqi17', 'LP003', '2017-01-02 15:36:52', '2017-01-02 21:36:52', '2017-01-03', '18:00:00', '20:00:00', 'cod', 100000, 'Selesai'),
('KB00000003', 'rijal-86K9', 'LP002', '2017-01-02 15:46:43', '2017-01-02 21:46:43', '2017-01-03', '12:00:00', '14:00:00', 'off cod', 200000, 'Selesai'),
('KB00000004', 'risqi17', 'LP001', '2017-01-02 20:51:41', '2017-01-03 02:51:41', '2017-01-03', '17:00:00', '19:00:00', 'transfer', 130000, 'Dibatalkan'),
('KB00000005', 'bbg', 'LP002', '2022-07-12 23:28:33', '2022-07-13 03:28:33', '2022-07-13', '10:00:00', '11:00:00', 'cod', 100000, 'Selesai'),
('KB00000006', 'bbg', 'LP003', '2022-07-12 23:29:19', '2022-07-13 03:29:19', '2022-07-13', '11:00:00', '12:00:00', 'transfer', 50000, 'Selesai'),
('KB00000007', 'bbg', 'LP001', '2022-07-12 23:34:22', '2022-07-13 06:34:22', '2022-07-14', '12:00:00', '14:00:00', 'cod', 130000, 'Lunas'),
('KB00000008', 'bbg', 'LP004', '2022-07-12 23:35:47', '2022-07-13 06:35:47', '2022-07-15', '12:00:00', '15:00:00', 'transfer', 210000, 'Telah Dikonfirmasi'),
('KB00000009', 'Tini-8F39', 'LP005', '2022-07-13 00:11:05', '2022-07-13 07:11:05', '2022-07-17', '15:00:00', '16:00:00', 'off cod', 50000, 'Selesai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bayar_cod`
--
ALTER TABLE `bayar_cod`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `bayar_transfer`
--
ALTER TABLE `bayar_transfer`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username_member`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
