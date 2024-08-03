-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2024 pada 11.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbj`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donatur` varchar(255) NOT NULL,
  `kuota` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `pengambilan` date NOT NULL,
  `jam` int(11) NOT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `maps` varchar(255) DEFAULT NULL,
  `status` enum('aktif','selesai') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `forms`
--

INSERT INTO `forms` (`id`, `donatur`, `kuota`, `sisa`, `pengambilan`, `jam`, `lokasi`, `maps`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Sheraton Hotel', 166, 145, '2024-07-07', 9, 'Podocarpus Corner', 'https://maps.app.goo.gl/qcD3VUYT1ynjysi19', 'selesai', '2024-07-06 11:00:00', '2024-07-30 01:11:34'),
(4, 'Holland Bakery', 79, 45, '2024-07-18', 9, 'Podocarpus Corner', 'https://maps.app.goo.gl/qcD3VUYT1ynjysi19', 'selesai', '2024-07-18 11:00:00', '2024-07-30 01:20:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
