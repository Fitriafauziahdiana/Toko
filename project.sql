-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2023 pada 12.51
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `nama_akses` varchar(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `deskripsi`) VALUES
(1, 'administrator', 'sebagai  pengelola kendali penuh pada sistem aplikasi'),
(2, 'Asisten admin', 'sebagai pengelola sistem stok barang, penjualan dan laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'MANDIRI'),
(2, 'BNI'),
(3, 'BCA'),
(4, 'BRI'),
(5, 'CIMB Niaga'),
(6, 'SEABANK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `harga_beli` int(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `barcode`, `nama_barang`, `id_kategori`, `ukuran`, `harga_beli`, `harga`, `foto`) VALUES
(6, '8995026806175', 'bedak', 0, '1', 1000, 5000, '54d76ba4659f289eae1994cc5958062f.jpg'),
(8, '-', 'Pet Hotel', 21, '14', 0, 40000, '6b767363f2bb019e82864b279ea6525b.jpg'),
(9, '-', 'Bolt Ikan', 4, '4', 0, 21000, '7a20035858d426b76744b32e6563538f.jpg'),
(10, '-', 'bolt donat', 4, ' 4', 0, 21000, 'be4d05efd1c30fd236263229667afb21.jpg'),
(11, '-', 'bolt salmon', 4, ' 4', 0, 21000, '2c025d88d244c0da481b97f53e30d0ac.jpg'),
(12, '-', 'bolt kitten tuna', 4, '5', 0, 16000, 'fb364ea2ad966e0c502e01019ee93c17.jpg'),
(13, '-', 'bolt kitten salmon', 4, ' 5', 0, 16000, 'fe9528c92632372e785face855239bbe.jpg'),
(15, '-', 'Full Treatment Grooming', 20, ' 14', 0, 110000, '0037ff03f0ec44816ed3d6a6ba755a1a.jpg'),
(16, '-', 'Medicated Grooming', 20, ' 14', 0, 95000, '6be428689f8d6547264b629685f31267.jpg'),
(17, '-', 'Daily Grooming', 20, ' 14', 0, 60000, 'f071616317f15ac0c44147fb7d68148d.jpg'),
(18, '-', 'Tetes Kutu/1kg BB Kucing', 20, ' 14', 0, 10000, '874a5a44f89caa3ec7e4a336e6f9e7ce.jpg'),
(19, '-', 'Gimbal/ Bulu Kusut', 20, ' 14', 0, 30000, '15beacce302f3624a1dd8827e7ef8a00.jpg'),
(20, '-', 'Jasa Cukur ', 20, ' 14', 0, 75000, '7f210206ca02f20fd9e15a20e1d0ad19.jpg'),
(21, '-', 'Oricat Kitten', 4, ' 4', 0, 22000, '5fd12bd6fe316e7fb8802e64445438d1.jpg'),
(22, '-', 'Oricat Adult', 4, ' 4', 0, 21000, '24673136bb05a538f886d51b87d732aa.jpg'),
(23, '-', 'Winky', 4, '3', 0, 23000, '235be82650c0756d05211898cb547bdd.jpg'),
(24, '-', 'Top Pet', 4, ' 3', 0, 22000, '41b1753b7b209504af2200edc703b798.jpg'),
(25, '-', 'Chester ', 4, ' 3', 0, 24000, 'cd6e0ee271f12892a423765f8a0dd711.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `no_trf` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `totalpure` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `diskon` int(3) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `tgl_trf` date NOT NULL,
  `jam_trf` time NOT NULL,
  `id_pembayaran` int(2) NOT NULL,
  `no_rek` int(18) DEFAULT NULL,
  `atas_nama` varchar(35) NOT NULL,
  `id_bank` int(2) DEFAULT NULL,
  `operator` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_trf`, `nama_pelanggan`, `totalpure`, `grand_total`, `diskon`, `bayar`, `kembalian`, `catatan`, `tgl_trf`, `jam_trf`, `id_pembayaran`, `no_rek`, `atas_nama`, `id_bank`, `operator`) VALUES
(1, '020231208015', 'umum', 10000, 10000, 0, 50000, 40000, '', '2023-12-08', '14:37:41', 1, 0, '', NULL, 'admin'),
(2, 'C20231209016', '', 36000, 35280, 2, 50000, 14720, '', '2023-12-09', '15:36:57', 2, 0, '', NULL, 'admin'),
(3, '020231209017', 'umum', 10000, 10000, 0, 12000, 2000, '', '2023-12-09', '16:37:55', 3, 0, '', 0, 'admin'),
(4, 'C20231209018', 'umum', 120000, 120000, 0, 150000, 30000, '', '2023-12-09', '18:50:09', 4, 0, '', NULL, 'admin'),
(5, 'C20231209004', 'umum', 2000, 2000, 0, 40000, 38000, '', '2023-12-09', '19:39:54', 1, 0, '', 0, 'admin'),
(6, '020231209005', '', 58000, 58000, 0, 58000, 0, '', '2023-12-09', '21:18:00', 3, 0, '', NULL, 'admin'),
(7, '020231209006', 'heni', 400000, 400000, 0, 500000, 100000, 'kucingnya gak mau makan', '2023-12-09', '22:42:02', 3, 0, '', NULL, 'admin'),
(8, 'T20231209007', '', 65000, 65000, 0, 100000, 35000, '', '2023-12-09', '22:48:25', 2, 0, '', 0, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Dry Food'),
(5, 'Wet Food'),
(7, 'Pasir Gumpal'),
(8, 'Pasir Zeolit'),
(10, 'Pasir Tofu'),
(11, 'Aksesoris'),
(12, 'Shampoo'),
(13, 'Parfum'),
(14, 'Hamster'),
(15, 'Dog Food'),
(16, 'Obat-Obatan'),
(18, 'Kandang'),
(19, 'Pet cargo dan Tas'),
(20, 'Grooming'),
(21, 'Pet Hotel'),
(22, 'Pakan Ikan'),
(23, 'Pakan Kelinci');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_akses` int(3) NOT NULL,
  `last_login` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `username`, `password`, `id_akses`, `last_login`, `foto`) VALUES
(1, 'Fitria Fauziah Diana', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-12-10', 'c5d306044bde35e205815d6b311721f9.png'),
(3, 'Fitria Fauziah Diana', 'admina', '91183e1cb4e46961f86a2ef6287927ad', 2, '2023-12-10', 'd157c999d1ed3627598f874ec4fe46fb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_byr` int(2) NOT NULL,
  `metode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_byr`, `metode`) VALUES
(1, 'Cash'),
(2, 'Transfer'),
(3, 'Qris'),
(4, 'Belum Bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_dtlpen` int(5) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `harga_beli` bigint(30) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `sub_totalaba` bigint(30) NOT NULL,
  `sub_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `barcode`, `id_dtlpen`, `id_barang`, `jumlah_stok`, `harga_beli`, `harga_barang`, `sub_totalaba`, `sub_total`) VALUES
(1, NULL, 19, 81, 1, 0, 10000, 0, 10000),
(2, NULL, 5, 6, 1, 0, 2000, 0, 2000),
(3, NULL, 6, 13, 1, 0, 16000, 0, 16000),
(4, NULL, 6, 9, 1, 0, 21000, 0, 21000),
(5, NULL, 6, 11, 1, 0, 21000, 0, 21000),
(6, NULL, 7, 8, 10, 0, 40000, 0, 400000),
(7, NULL, 8, 11, 1, 0, 21000, 0, 21000),
(8, NULL, 8, 10, 1, 0, 21000, 0, 21000),
(9, NULL, 8, 23, 1, 0, 23000, 0, 23000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `tanggal_stok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `stok_barang`, `tanggal_stok`) VALUES
(8, 8, 89, '2023-12-09'),
(9, 9, 98, '2023-12-09'),
(10, 10, 98, '2023-12-09'),
(11, 11, 97, '2023-12-09'),
(12, 12, 99, '2023-12-09'),
(13, 13, 98, '2023-12-09'),
(14, 15, 99, '2023-12-09'),
(15, 16, 99, '2023-12-09'),
(16, 17, 99, '2023-12-09'),
(17, 6, 99, '2023-12-09'),
(18, 18, 99, '2023-12-09'),
(19, 19, 99, '2023-12-09'),
(20, 20, 99, '2023-12-09'),
(21, 21, 99, '2023-12-09'),
(22, 22, 99, '2023-12-09'),
(23, 23, 98, '2023-12-09'),
(24, 24, 99, '2023-12-09'),
(25, 25, 99, '2023-12-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `nama_ukuran` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `nama_ukuran`) VALUES
(1, '1200 gram'),
(2, '1100 gram'),
(3, '1000 gram'),
(4, '800 gram'),
(5, '500 gram'),
(6, '450 gram'),
(7, '25 litter'),
(8, '20 litter'),
(9, '15 litter'),
(10, '10 litter'),
(11, '5 litter'),
(12, '75 CM'),
(13, '60 CM'),
(14, '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_byr`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_byr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
