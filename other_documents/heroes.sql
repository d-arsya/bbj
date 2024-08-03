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
-- Struktur dari tabel `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `status` enum('sudah','belum') NOT NULL,
  `form` bigint(20) UNSIGNED NOT NULL,
  `kode` char(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `heroes`
--

INSERT INTO `heroes` (`id`, `nama`, `telepon`, `asal`, `status`, `form`, `kode`, `created_at`, `updated_at`) VALUES
(1, 'Fariha Ramadhani', '62811288901', 'Kehutanan', 'sudah', 3, '123456', '2024-07-07 03:44:59', '2024-07-30 01:09:33'),
(2, 'Ema Zuli Ayu Lestari', '6285608655683', 'MIPA', 'sudah', 3, '234567', '2024-07-07 03:45:07', '2024-07-30 01:09:45'),
(3, 'Azka Adelia', '628990655819', 'Ilmu Budaya', 'sudah', 3, '345678', '2024-07-07 04:25:04', '2024-07-30 01:09:42'),
(4, 'Diska Malikhatu Z N', '6282331365461', 'Ilmu Budaya', 'sudah', 3, '456789', '2024-07-07 04:43:05', '2024-07-30 01:09:48'),
(5, 'Iffa Kamila Sandy', '6285216320635', 'Hukum', 'sudah', 3, '567890', '2024-07-07 04:43:42', '2024-07-30 01:09:50'),
(6, 'Angela Merici Maurus', '6281393454079', 'Ilmu Budaya', 'sudah', 3, '678901', '2024-07-07 04:45:57', '2024-07-30 01:09:53'),
(7, 'Nur Fadlilatul Lailil Mukarromah', '6285606031347', 'Filsafat', 'sudah', 3, '789012', '2024-07-07 04:48:28', '2024-07-30 01:10:14'),
(8, 'Zakia', '6281779454421', 'Pertanian', 'sudah', 3, '890123', '2024-07-07 05:01:19', '2024-07-30 01:09:56'),
(9, 'Juli Nur Haliza', '6282258282029', 'Pertanian', 'sudah', 3, '901234', '2024-07-07 05:01:29', '2024-07-30 01:10:25'),
(10, 'Khansa', '62895360719239', 'Filsafat', 'sudah', 3, '012345', '2024-07-07 05:23:05', '2024-07-30 01:10:28'),
(11, 'Iffa Kamila Sandg', '6282324971095', 'Hukum', 'sudah', 3, '123457', '2024-07-07 05:24:59', '2024-07-30 01:10:00'),
(12, 'Mahda Ryzma Damayanti', '62895386092180', 'Fisipol', 'sudah', 3, '345679', '2024-07-07 05:44:21', '2024-07-30 01:10:32'),
(13, 'Amarily', '6285655806071', 'FISIPOL', 'sudah', 3, '456780', '2024-07-07 05:55:01', '2024-07-30 01:10:18'),
(14, 'Fathia Zalfa Khairani', '+6282113444762', 'Psikologi', 'sudah', 3, '567891', '2024-07-07 06:02:08', '2024-07-30 01:10:07'),
(15, 'Tiffany Trisha Pasaribu', '6281910977905', 'Hukum', 'sudah', 3, '678902', '2024-07-07 06:24:04', '2024-07-30 01:10:35'),
(16, 'Dhea Nataya', '6289524197300', 'Ilmu Budaya', 'sudah', 3, '789013', '2024-07-06 17:00:00', '2024-07-30 01:10:03'),
(17, 'Felinda Indah', '62895591326470', 'Ilmu Budaya', 'sudah', 3, '890124', '2024-07-06 17:00:00', '2024-07-30 01:11:18'),
(18, 'Fahri', '62895422491729', 'Fisipol', 'sudah', 3, '901235', '2024-07-06 17:00:00', '2024-07-30 01:10:22'),
(19, 'Prima', '6285876700892', 'Teknologi Pertanian', 'sudah', 3, '012346', '2024-07-06 17:00:00', '2024-07-30 01:11:20'),
(20, 'Adinda', '6289613580913', 'Vokasi', 'sudah', 3, '123458', '2024-07-06 17:00:00', '2024-07-30 01:10:10'),
(21, 'Amalia', '6287858161650', 'Hukum', 'sudah', 3, '234569', '2024-07-06 17:00:00', '2024-07-30 01:09:39'),
(22, 'Nayla Hafizhah Maulida', '6281542600668', 'Ilmu Budaya', 'sudah', 4, '123456', '2024-07-17 11:15:32', '2024-07-30 01:19:40'),
(23, 'Rania', '6285740297985', 'Ilmu Budaya', 'sudah', 4, '234567', '2024-07-17 11:30:39', '2024-07-30 01:19:42'),
(24, 'Azizah Rahma Setiawan', '6285867694906', 'Kedokteran', 'sudah', 4, '345678', '2024-07-17 11:53:54', '2024-07-30 01:19:44'),
(25, 'Yunita', '6289612626530', 'Pertanian', 'sudah', 4, '456789', '2024-07-17 12:07:07', '2024-07-30 01:19:45'),
(26, 'Zakiatul', '6281779454421', 'Pertanian', 'sudah', 4, '567890', '2024-07-17 12:08:04', '2024-07-30 01:19:47'),
(27, 'Wulan Emilia', '6285647548425', 'Kehutanan', 'sudah', 4, '678901', '2024-07-17 12:12:41', '2024-07-30 01:19:48'),
(28, 'Krisnina Meilani Wardhani', '6282374517896', 'Hukum', 'sudah', 4, '789012', '2024-07-17 14:20:59', '2024-07-30 01:19:51'),
(29, 'Leli', '6285606031347', 'Filsafat', 'sudah', 4, '890123', '2024-07-18 00:02:02', '2024-07-30 01:19:52'),
(30, 'Khansa Muthia', '62895360719239', 'Filsafat', 'sudah', 4, '901234', '2024-07-18 00:02:35', '2024-07-30 01:19:54'),
(31, 'Regin Aprilian', '6287729293388', 'Ilmu Budaya', 'sudah', 4, '012345', '2024-07-18 00:24:31', '2024-07-30 01:19:56'),
(32, 'Geraldine Rosemary Sondakh', '628998426330', 'Hukum', 'sudah', 4, '123457', '2024-07-18 00:34:48', '2024-07-30 01:19:57'),
(33, 'Adrian Pratama Nasution', '6281378169649', 'Hukum', 'sudah', 4, '234568', '2024-07-18 00:47:21', '2024-07-30 01:19:59'),
(34, 'Betty Situmorang', '6289654956756', 'Hukum', 'sudah', 4, '345679', '2024-07-18 01:21:14', '2024-07-18 01:21:14'),
(35, 'Muhammad Bintang Akbar', '6281903987793', 'Fisipol', 'sudah', 4, '456780', '2024-07-18 01:32:35', '2024-07-18 01:32:35'),
(36, 'Fachrudin Abdul Rozaq', '628998907573', 'Ilmu Budaya', 'sudah', 4, '567891', '2024-07-18 01:32:44', '2024-07-18 01:32:44'),
(37, 'Erina Catur Widiyaningrum', '6285725234730', 'Teknologi Pertanian', 'sudah', 4, '678902', '2024-07-18 01:33:01', '2024-07-18 01:33:01'),
(38, 'Bagus Dwi Putra Atmaja', '6281567655553', 'TPB', 'sudah', 4, '789013', '2024-07-18 02:18:23', '2024-07-18 02:18:23'),
(39, 'Himatul Aliyah', '6281238269494', 'Pertanian', 'sudah', 4, '890124', '2024-07-18 02:24:08', '2024-07-18 02:24:08'),
(40, 'Tiffany', '6289', 'Hukum', 'sudah', 4, '901235', '2024-07-18 02:31:53', '2024-07-18 02:31:53'),
(41, 'Bagaskara Nur Rahmattulloh', '6282331603496', 'Teknologi Pertanian', 'sudah', 4, '012346', '2024-07-18 02:37:18', '2024-07-18 02:37:18'),
(42, 'Yazid Sholih', '6282331603496', 'Teknologi Pertanian', 'sudah', 4, '123458', '2024-07-18 02:38:37', '2024-07-18 02:38:37'),
(43, 'Abdi Sihol', '6282331603496', 'Teknologi Pertanian', 'sudah', 4, '234569', '2024-07-18 02:39:35', '2024-07-18 02:39:35'),
(44, 'Rania', '6285740297985', 'FIB', 'sudah', 4, '345680', '2024-07-24 06:15:00', '2024-07-24 06:15:00'),
(45, 'Dinda Ariana', '6285878518199', 'Ilmu Budaya', 'sudah', 4, '456781', '2024-07-24 07:53:21', '2024-07-24 07:53:21'),
(46, 'Regin Aprilian', '6287729293388', 'Ilmu Budaya', 'sudah', 4, '567892', '2024-07-24 08:07:27', '2024-07-24 08:07:27'),
(47, 'Efi Munasifah', '6282314403940', 'Ilmu Budaya', 'sudah', 4, '678903', '2024-07-24 09:15:51', '2024-07-24 09:15:51'),
(48, 'Mila', '6282324971095', 'Hukum', 'sudah', 4, '789014', '2024-07-24 09:46:55', '2024-07-24 09:46:55'),
(49, 'Muhammad Faris Alfatih', '6281211077201', 'Hukum', 'sudah', 4, '890125', '2024-07-24 09:50:58', '2024-07-24 09:50:58'),
(50, 'Aulia Zahra Arifianti', '6281542840898', 'Hukum', 'sudah', 4, '901236', '2024-07-24 09:51:59', '2024-07-24 09:51:59'),
(51, 'Dilva Febyola', '628973701530', 'Hukum', 'sudah', 4, '012347', '2024-07-24 09:54:42', '2024-07-24 09:54:42'),
(52, 'Nayla Hafizhah Maulida', '6281542600668', 'Ilmu Budaya', 'sudah', 4, '123459', '2024-07-24 10:01:38', '2024-07-24 10:01:38'),
(53, 'Berliana Suci Malta Putri', '6282337572068', 'Teknik', 'sudah', 4, '234570', '2024-07-24 11:02:07', '2024-07-24 11:02:07'),
(54, 'Sylviatul Muthqia', '6285795288121', 'Ilmu Budaya', 'sudah', 4, '345681', '2024-07-24 11:04:50', '2024-07-24 11:04:50'),
(55, 'Kenzo Cen', '6285786756846', 'Fisipol', 'sudah', 4, '456782', '2024-07-25 00:36:05', '2024-07-25 00:36:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
