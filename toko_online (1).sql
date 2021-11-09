-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2021 pada 10.03
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`, `subtotal`, `tgl_transaksi`) VALUES
(53, 16, 16, 1, 55000, '2021-10-15'),
(54, 2, 2, 1, 65000, '2021-10-15'),
(55, 1, 1, 2, 124000, '2021-10-15'),
(56, 15, 15, 3, 165000, '2021-10-15'),
(57, 1, 1, 1, 62000, '2021-10-15'),
(58, 2, 2, 1, 65000, '2021-10-15'),
(59, 1, 1, 1, 62000, '2021-10-17'),
(60, 1, 1, 1, 245000, '2021-10-17'),
(61, 16, 16, 1, 275000, '2021-10-18'),
(62, 15, 15, 2, 579800, '2021-10-18'),
(63, 2, 2, 1, 349000, '2021-10-19'),
(64, 15, 15, 1, 289900, '2021-10-19'),
(65, 1, 1, 1, 245000, '2021-10-19'),
(66, 16, 16, 3, 825000, '2021-10-19'),
(67, 2, 2, 1, 349000, '2021-10-21'),
(68, 1, 1, 1, 245000, '2021-10-21'),
(69, 15, 15, 1, 289900, '2021-10-21'),
(70, 15, 15, 1, 289900, '2021-10-21'),
(71, 15, 15, 1, 289900, '2021-10-21'),
(72, 16, 16, 1, 275000, '2021-10-21'),
(73, 1, 1, 1, 245000, '2021-10-21'),
(74, 1, 1, 1, 245000, '2021-10-21'),
(75, 1, 1, 2, 490000, '2021-10-21'),
(76, 16, 16, 2, 550000, '2021-10-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`) VALUES
(123, 'Inkra Andini ', 'Kota Malang', '081359129031'),
(165, 'Neilsya Amstrani', 'Kota Tulungagung', '081723971145'),
(521, 'Fadilla Ratna Dwita', 'Kota Tulungagung', '081671829017'),
(811, 'Inkra Andini Firmansyah', 'Kota Malang', '081359129031');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(721, 'Iinkra', 'iinkraa', 'iinkraa123', '3'),
(1423, 'Inkra Andini ', 'inkraandini', 'inkraandini', '3'),
(2672, 'Neilsya Amstrani', 'neilsyaamstrani', 'neilsyaamstrani', '2'),
(5261, 'Fadilla Ratna ', 'fadillaratna', 'fadillaratna', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(1, 'Panarybody', 'Sepatu Sneakers Pria Terbaru Panarybody', 245000, 'panarybody.jpg'),
(2, 'Ortuseight', 'ORTUSEIGHT Sepatu Sneakers Frontier - Off White', 349000, 'ortuseight.jpg'),
(15, 'PVN', 'Pvn Sepatu Sneakers Wanita 7830 ', 289900, 'pvn.jpg'),
(16, 'Mayonette', 'MAYONETTE Comfort Maulie - Sepatu Wanita Sneakers - Pink', 275000, 'mayonette.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_petugas`, `tgl_transaksi`) VALUES
(32, 123, '2021-10-19'),
(33, 123, '2021-10-19'),
(34, 123, '2021-10-19'),
(35, 123, '2021-10-19'),
(36, 123, '2021-10-21'),
(37, 123, '2021-10-21'),
(38, 1423, '2021-10-21'),
(39, 1423, '2021-10-21'),
(40, 1423, '2021-10-21'),
(41, 1423, '2021-10-21'),
(42, 1423, '2021-10-21'),
(43, 1423, '2021-10-21'),
(44, 1423, '2021-10-21'),
(45, 1423, '2021-10-27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=812;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5262;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
