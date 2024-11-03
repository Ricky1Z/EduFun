-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2024 pada 12.45
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_31_155504_create_ms_writers_table', 1),
(5, '2024_10_31_155533_create_ms_categories_table', 1),
(6, '2024_10_31_155541_create_ms_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_categories`
--

CREATE TABLE `ms_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ms_categories`
--

INSERT INTO `ms_categories` (`id`, `created_at`, `updated_at`, `category`) VALUES
(1, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Data Science'),
(2, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Network Security');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_posts`
--

CREATE TABLE `ms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `writerId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ms_posts`
--

INSERT INTO `ms_posts` (`id`, `created_at`, `updated_at`, `title`, `description`, `categoryId`, `writerId`) VALUES
(1, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Machine Learning', 'Voluptates voluptatem inventore velit. Deserunt odio quod nihil. Sed quibusdam dolore in officiis. Consequatur omnis quia quis vero et sint.', 1, 5),
(2, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Deep Learning', 'Blanditiis qui ratione quas tempora. Nesciunt est assumenda sed enim. Nihil officia pariatur iste.', 1, 1),
(3, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Software Security', 'Qui reiciendis accusamus fugiat. Nisi aperiam doloremque deserunt odit velit aut quas temporibus. Itaque explicabo inventore rem voluptatem.', 2, 4),
(4, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Machine Learning', 'Et doloremque magni enim eligendi rem sapiente illum. Vel ut aperiam quidem eum voluptas minima est voluptatem. Nulla omnis illo consequatur quidem inventore unde. Quo ducimus blanditiis saepe recusandae rerum odit.', 1, 1),
(5, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Software Security', 'Aut sed sit asperiores minus natus rerum qui ut. Voluptas minus consequatur distinctio facere quo repellendus dolores eligendi. Debitis sint commodi sit sunt quis.', 2, 5),
(6, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Network Administration', 'Officiis beatae ipsam beatae fuga ut quae. Minus et dignissimos numquam sit in molestiae dolores officiis. Velit quidem accusamus rerum tempora.', 2, 8),
(7, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Network Administration', 'Deserunt explicabo animi voluptas sunt et modi. Blanditiis repellat molestias nihil velit. Recusandae voluptatem officiis qui reiciendis veniam.', 2, 4),
(8, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Deep Learning', 'Possimus necessitatibus dolor perferendis quia temporibus placeat. Quo quo ducimus aliquid harum quas. Est alias voluptatum vel quia esse ducimus labore enim.', 1, 1),
(9, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Popular Network Technology', 'Doloremque eum quia numquam quidem eum sapiente voluptatem. Omnis id accusamus voluptatem sapiente. Recusandae deserunt dolorem quia dolorem officia autem. Laborum repellat modi voluptate ad quidem omnis harum.', 2, 2),
(10, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Natural Language Processing', 'Vero laboriosam dolores eligendi veritatis. Eos quo consectetur ut. Nihil id placeat dicta quo magnam eveniet. Sapiente libero totam sint ducimus nobis tempore.', 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_writers`
--

CREATE TABLE `ms_writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ms_writers`
--

INSERT INTO `ms_writers` (`id`, `created_at`, `updated_at`, `name`, `specialist`) VALUES
(1, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Jayadi Sihombing', 'Nahkoda'),
(2, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Nasrullah Utama', 'Buruh Tani / Perkebunan'),
(3, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Danu Tamba', 'Penyiar Televisi'),
(4, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Labuh Lazuardi', 'Notaris'),
(5, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Jane Zulaika M.M.', 'Atlet'),
(6, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Lulut Rendy Waluyo S.Ked', 'Karyawan Swasta'),
(7, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Endah Suartini', 'Perancang Busana'),
(8, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Surya Dalimin Pradana S.H.', 'Psikiater / Psikolog'),
(9, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Mustika Haryanto', 'Bidan'),
(10, '2024-10-31 10:25:15', '2024-10-31 10:25:15', 'Kardi Wibowo', 'Mekanik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('x38k7QxyDPLbb4Fs568Em1ndA3lyXdDjcmoTObCI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzlXaGhpemN6Q0dEZU5iQmpRZnZaTk1wN21JaGNNdjFWWktmYmdHOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3BvcHVsYXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730547420);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ms_categories`
--
ALTER TABLE `ms_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ms_posts`
--
ALTER TABLE `ms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ms_posts_categoryid_foreign` (`categoryId`),
  ADD KEY `ms_posts_writerid_foreign` (`writerId`);

--
-- Indeks untuk tabel `ms_writers`
--
ALTER TABLE `ms_writers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ms_categories`
--
ALTER TABLE `ms_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ms_posts`
--
ALTER TABLE `ms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `ms_writers`
--
ALTER TABLE `ms_writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ms_posts`
--
ALTER TABLE `ms_posts`
  ADD CONSTRAINT `ms_posts_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `ms_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ms_posts_writerid_foreign` FOREIGN KEY (`writerId`) REFERENCES `ms_writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
