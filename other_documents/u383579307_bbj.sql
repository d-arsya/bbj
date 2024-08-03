-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2024 pada 22.33
-- Versi server: 10.11.8-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u383579307_bbj`
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
(4, 'Holland Bakery', 79, 45, '2024-07-18', 9, 'Podocarpus Corner', 'https://maps.app.goo.gl/qcD3VUYT1ynjysi19', 'selesai', '2024-07-18 11:00:00', '2024-07-30 01:20:28'),
(8, 'Holland Bakery', 75, 66, '2024-07-25', 9, 'Podocarpus Corner', 'https://maps.app.goo.gl/qcD3VUYT1ynjysi19\r\n', 'selesai', '2024-07-25 05:21:50', '2024-07-25 05:21:50'),
(10, 'Holland Bakery', 20, 10, '2024-08-01', 13, 'Podocarpus Corner', 'https://maps.app.goo.gl/qcD3VUYT1ynjysi19', 'selesai', '2024-08-01 07:22:18', '2024-08-01 15:10:28');

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
(45, 'Dinda Ariana', '6285878518199', 'Ilmu Budaya', 'sudah', 8, '456781', '2024-07-24 07:53:21', '2024-07-24 07:53:21'),
(46, 'Regin Aprilian', '6287729293388', 'Ilmu Budaya', 'sudah', 8, '567892', '2024-07-24 08:07:27', '2024-07-24 08:07:27'),
(47, 'Efi Munasifah', '6282314403940', 'Ilmu Budaya', 'sudah', 8, '678903', '2024-07-24 09:15:51', '2024-07-24 09:15:51'),
(50, 'Aulia Zahra Arifianti', '6281542840898', 'Hukum', 'sudah', 8, '901236', '2024-07-24 09:51:59', '2024-07-24 09:51:59'),
(51, 'Dilva Febyola', '628973701530', 'Hukum', 'sudah', 8, '012347', '2024-07-24 09:54:42', '2024-07-24 09:54:42'),
(52, 'Nayla Hafizhah Maulida', '6281542600668', 'Ilmu Budaya', 'sudah', 8, '123459', '2024-07-24 10:01:38', '2024-07-24 10:01:38'),
(53, 'Berliana Suci Malta Putri', '6282337572068', 'Teknik', 'sudah', 8, '234570', '2024-07-24 11:02:07', '2024-07-24 11:02:07'),
(54, 'Sylviatul Muthqia', '6285795288121', 'Ilmu Budaya', 'sudah', 8, '345681', '2024-07-24 11:04:50', '2024-07-24 11:04:50'),
(55, 'Kenzo Cen', '6285786756846', 'Fisipol', 'sudah', 8, '456782', '2024-07-25 00:36:05', '2024-07-25 00:36:05'),
(60, 'Dian Restu Anggari', '6282229874701', 'Lainnya', 'sudah', 10, '952482', '2024-08-01 08:36:47', '2024-08-01 13:38:15'),
(61, 'Nurul Inayah', '6285891231094', 'Vokasi', 'sudah', 10, '547338', '2024-08-01 09:09:59', '2024-08-01 14:30:15'),
(62, 'Mira', '6282181917083', 'Vokasi', 'sudah', 10, '438761', '2024-08-01 10:55:56', '2024-08-01 13:38:35'),
(63, 'Nia Sijabat', '6285270930496', 'Vokasi', 'sudah', 10, '563988', '2024-08-01 11:25:11', '2024-08-01 13:38:42'),
(64, 'Innayah Khoerunnisa', '6283834571099', 'Lainnya', 'sudah', 10, '541850', '2024-08-01 12:02:45', '2024-08-01 14:30:17'),
(65, 'Riska Noviana Rahmadani', '6289687616389', 'Lainnya', 'sudah', 10, '586014', '2024-08-01 12:37:31', '2024-08-01 13:49:24'),
(66, 'Ayunda Talia', '6285727761787', 'Ilmu Budaya', 'sudah', 10, '507944', '2024-08-01 14:43:14', '2024-08-01 15:03:45'),
(67, 'Brian', '6285155116402', 'Pertanian', 'sudah', 10, '302705', '2024-08-01 14:46:30', '2024-08-01 15:03:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4HOxlt8CUeHkPIwLBwQgyBJQUdzNqXzSHnVOCi14', NULL, '2407:0:3002:107d:f076:76b7:259a:843e', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlNqQXdKMWtCMFlKRFVraFNNNEtMYWVJZkU4VjJjZEJXYTNjWTRPRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722498448),
('9TUMKNx5dGC1FjUCp3YCnSIsTIFyesVyN8X2VIyb', 1, '202.43.93.8', 'Mozilla/5.0 (Linux; U; Android 13; id-id; Redmi Note 11 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.1.1.2-gn', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0hYVGx1ZDBPN0Izc2hMWFB2SkVkNFVLRmM0aHhHQzdwcmYzZ3ZHSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722498387),
('9vkMzihoqQWq2EyuMg4YecL0Zb3Op2hrtEUXPBOj', 1, '114.10.153.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZEtxam9KR2JhWHZnRXljT1ZXcmdsSmtweldWTEp4VFJGMFhXZmtVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722499882),
('A2BNwW5gXHfNxqmBbnJMHkZaV2rDGyhRXhk0bh4i', NULL, '66.102.6.150', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3RCSDg5VmFodlpOQmFOcmk5blVDMnU3WXhtSjJXbG9tdm5EWk5LcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL3F3ZXJ0eXVpb3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722500112),
('Ag6WaVuFlDC9UpNnTHGGGWszmCtcOHQSjwKTOgwo', NULL, '182.253.126.6', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1820 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/12.4.2.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0xLY0hZaFlzVElLUHJZSjc4eGNsajZhVG1sZ1NFVWRENENRbEdRWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722509821),
('AUF0D0ikOdFwEfGLxBkL6oaPg1UK8wJdPjtOGhrp', NULL, '114.10.150.89', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicjFsZXFsT1Y3MlZXaVJnVzJleW94eW4ydjE1Q3RnbjFyQjhpaXhLWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9iYmouZGlzeWZhLnNpdGUvaGVyb2VzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL3F3ZXJ0eXVpb3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722511875),
('CSLHS1wflqtV75zcAEIcgsUbq9l8LaTxADnyoHKB', NULL, '64.233.173.203', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnI0U0tjVTlKSUc4cldHY05FVXNUOEtYS2d4YXFjcENFT2JTV2VueiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL3F3ZXJ0eXVpb3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722500111),
('CYofXXEM6N09YmT2V4crAk3gjfhObRUfgA2EunMc', 1, '114.10.150.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/15.0.0 Mobile/15A5370a Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3h6elRrYmU3R2hSWjNGRmJnWllYc0RscjlndlJYZmk4RGdMOXVmYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722551498),
('DTWHb2dvAQyWlNNlgBIb9tOh1kXtP884CE6zrNwX', NULL, '2001:448a:4041:26f2:ce6:f095:627f:23c3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTFVcjJxSGI5Z1hhcm93bmVpcjNMNjJTSUdUdDdkWlBDZG9tUzdBWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722498674),
('eKyV7gJHTnmHmU04WkzSUhUFXTU4764TmXN29f1N', NULL, '140.213.162.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZUZjd3E4RUE4akM2QkVaMlIyelo5WXlaUzR1NzNRV3ZaN0hTVHI4ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImZvcm0iO2k6MTA7czo0OiJrb2RlIjtzOjY6IjUwNzk0NCI7fQ==', 1722498194),
('ff5D39sQ8PATdked4pOoIs6iDG9xx0d1W5MyQZfP', NULL, '129.153.125.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVZSYUhWZXQ3ek03T01lUkFoT3lPWXhYRFJNcGtPMUtpU2c0NlU0byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722545481),
('FxzKJyanA04jmyEn5qzceI4LXnkP4TEHkIZfGd80', NULL, '147.92.179.115', 'facebookexternalhit/1.1;line-poker/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHd1eThpdVhWbmRVbU1vV1dmWU45NXdFa292YW9kUkY1TklBV2VoUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722525059),
('HaMwO1PG7Aoco6hHEmDkGLj2JOZ5SkfHb36fF99G', NULL, '114.10.152.25', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2QzYVVTZ0M2NE5jT0lDZzhEdGM5bEp3WlU2TEREcGM2ckZCVlZrciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722491059),
('HKmn1kbNizDltdcuu7wSvTn7t2xWgpwiDAo3j8GJ', NULL, '202.43.93.8', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXRnNk5pZGF4R3l3SjBuQmpNMU9WVE9naUNwNG9SMzJPOGZtWkFZUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722498138),
('hoKezqtCy4aIV7IxqqQeJOoKSD78qCBKRzVZcjPF', NULL, '140.213.176.129', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2ZIdVc3UTNsTmlEWFNEbVlRcmhpc3Z3c0dobmlMM2Z3NjlQWVhkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722498365),
('HSXgUTFu1FlKv0wLr0kEKw0aAnx0WDzYzYRSRGpQ', NULL, '129.153.125.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEdiZTVzcFNjUkw0TGZuM3JlNDF1eDB5bXZwRFN6eGprd2RpUTc3ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722545493),
('I6IannEMw3O40MqrBEtMzhChSY7cjFJOmTTatg7z', NULL, '182.1.65.163', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRTVLaFRPNExuOEVicTk3STNPVmVWYmRrRXBwejVWR1R5eWV1aURKQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImZvcm0iO2k6MTA7czo0OiJrb2RlIjtzOjY6IjMwMjcwNSI7fQ==', 1722498390),
('ICA4EqQRJ0MjJVWYvvT8jDCdtDlQQ45etpfritLq', 1, '114.10.151.41', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWhZZmFSdlh0OWpjMm45VXVWN0hyZjRFZXpDU0NHSmJ5TDk2T05tcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722500108),
('ij2uiMS6A9ET2l2NBmpg0XYybQ7X0hGZSwqjduD5', NULL, '180.253.66.38', 'Mozilla/5.0 (Linux; Android 13; CPH2473 Build/TP1A.220905.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/126.0.6478.186 Mobile Safari/537.36 Line/14.11.2/IAB', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUpKWGxja3pXQm0yTUlxS3kyeFFNSHJFN0JwdHhnTGNPNUFsQzdGaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722508392),
('kJpvWrt5Z0b0daSGwzoGOQRxoPfh6xMfDCFtyC36', NULL, '140.213.176.129', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2UwSGtIaGtjd1lpWEdXUlVkeWdUNnpWZTRFZFVUSjZCcUJSaUVicCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722498365),
('mAC057KA9Bb7a5CxGbJFhbrP6viGJOXW2SqMAi7h', NULL, '66.102.6.150', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWFiZWw0dzJkbjBHWTkxT0pxUDk4M0pqNDRERnBuYWREM0pSY0J2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL3F3ZXJ0eXVpb3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722500112),
('mUYpEi1iQDSzlfr35487Gqt4QNqKMI0aNCgYrAIL', NULL, '147.92.179.115', 'facebookexternalhit/1.1;line-poker/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0R0VmpoclR3amo0Q0U3ampRMFdIZlF4bWZoMjBob29BY3N4SWNxRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722505266),
('N0YAv0NAQbfjwXh53wrGM2tvlx60nRDAMy0dECBV', NULL, '2001:448a:404a:1b52:d34:5f3d:f1e:699e', 'Mozilla/5.0 (Linux; U; Android 10; id-id; Redmi Note 7 Build/QKQ1.190910.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.10.1-gn', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRHJKSDVpQzJZbnlvbGhsT0w0SWZzVHExRlZWYVFXc0VMQmdnVzNzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImZvcm0iO2k6MTA7czo0OiJrb2RlIjtzOjY6IjU4NjAxNCI7fQ==', 1722490652),
('pQ9klLOrEkT80nzIJ9dQlGmwKl6BkQpRLCOfperT', NULL, '147.92.179.115', 'facebookexternalhit/1.1;line-poker/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk45bGRJYWo1QnlPblI3V1VkNzdsQ1NjOXZCd1g5Nm9Lb21hN2U5UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722525059),
('pXFSOmdHq1ztepcKLs51QpMy7lfiYPGNXGN8zLCH', 1, '202.43.93.8', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid2l2MktxQzRINDVJVXpSUDZJRGNQYXZOT3JiVW5zODV5Uk9HRzZSUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722496590),
('pyKmVilylXXb6whfslKDkXNChz1aT1w105IrHg0b', 1, '202.43.93.8', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFM1WGpzMGc2ZndMWUNhQXlEeHMzOHZ6MWtKMVlpVExsYUN3MFQxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722499819),
('QB6PfXKJ15MbiTP78OJUFml4g4KYhJjVoewF2buu', NULL, '64.233.173.204', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDB0SlJ0cUxMallZUERUajVGRmhIQmpFbzNUVldvVUd3VU5zVGM5bSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9iYmouZGlzeWZhLnNpdGUvaGVyb2VzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722500111),
('qQLGDYN3ywiBYeXt700mH76xJvmIK3Zg0SeuAO6C', NULL, '147.92.179.115', 'facebookexternalhit/1.1;line-poker/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTFyT3U2UWY2VFlFeWN3U3gwdm9VaFVXNFR3enY2RDNuM1BJTFRObyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722505266),
('SvtucI38pAIUtCEEAkw4bazdmYrt2fwpBThtG9f5', NULL, '129.153.125.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTFVeTdaZU8xWHBZenBDN0g4cEVGUE92MFlseGpqWXZ2N2sxU0tTMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722545535),
('vtNXQFA6I7lsSc49bx0ui43LYeQcht9IylSQbyvA', NULL, '202.43.93.8', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0RBRzNTR1hWdzRkZkpSUjExRHhmeWZlWHFhd0U1eGd3dHQ5WVk3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722498137),
('XAYjovAKmFEmRnknFcile4gz8rXPqY1LAe4LLp4G', 1, '202.43.93.8', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOEZnbWNIRGdrOGJYblRhVjNENGpPa3owbUNneWFGWEMyUE9SblNVRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2hlcm9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722499846),
('Z2H5nbRGJyoJHQLzzoWBs60dybM8K7urOYpKa2X8', NULL, '2400:9800:921:c529:3460:48d1:e571:2b8f', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVDBZS1Z4RTdESnJ4OUFSSkE0REtEclNxQmFJQnQ3RTU4TXFFYWI5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vYmJqLmRpc3lmYS5zaXRlL2Zvcm0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImZvcm0iO2k6MTA7czo0OiJrb2RlIjtzOjY6Ijc1MzA2MSI7fQ==', 1722502557);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'bitesjogja', '$2y$12$dxKYW4zrRFFCApWQFZkcBuIy0tOjDS53AlY.0jXzkYavOgqeV8xcW', '2024-07-30 09:44:37', '2024-07-30 09:44:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
