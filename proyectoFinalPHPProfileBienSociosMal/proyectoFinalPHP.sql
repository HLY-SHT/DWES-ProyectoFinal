-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-03-2025 a las 13:53:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoFinalPHP`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_03_115137_create_socios_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zMgOyOuyxlDvHADsENN3K69m6mVtlaKrkfOQAnD2', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSEdDRjhOc0ZuVkhpV3c3MWFWaW1oZmo0QXJCNTBmZkgySDM1dEtpMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zb2Npb3M/cGFnZT0xIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1741006032);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `monedero` decimal(8,2) NOT NULL DEFAULT 0.00,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_caducidad_cuota` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `nombre`, `apellido`, `monedero`, `telefono`, `direccion`, `fecha_ingreso`, `fecha_caducidad_cuota`, `created_at`, `updated_at`) VALUES
(2, 'manuel', 'valero', 10.00, '123456789', 'rio guadaira 9', '2025-03-03', '2025-04-03', '2025-03-03 11:13:59', '2025-03-03 11:38:29'),
(3, 'Juan', 'Pérez', 50.00, '123456789', 'Calle A, Madrid', '2024-01-10', '2025-01-10', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(4, 'María', 'García', 75.50, '987654321', 'Av. B, Barcelona', '2023-12-05', '2024-12-05', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(5, 'Carlos', 'Fernández', 30.20, '654321987', 'Calle C, Valencia', '2024-02-15', '2025-02-15', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(6, 'Laura', 'López', 90.00, '321987654', 'Plaza D, Sevilla', '2024-03-01', '2025-03-01', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(7, 'David', 'Martínez', 120.75, '456789123', 'Calle E, Zaragoza', '2023-11-20', '2024-11-20', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(8, 'Elena', 'Ruiz', 40.00, '789123456', 'Av. F, Málaga', '2024-04-18', '2025-04-18', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(9, 'Javier', 'Sánchez', 60.30, '159753486', 'Calle G, Bilbao', '2023-10-30', '2024-10-30', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(10, 'Ana', 'Torres', 85.90, '753159486', 'Av. H, Alicante', '2024-05-22', '2025-05-22', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(11, 'Miguel', 'Jiménez', 33.45, '951753852', 'Calle I, Vigo', '2023-09-12', '2024-09-12', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(12, 'Sofía', 'Díaz', 95.00, '357159852', 'Plaza J, Murcia', '2024-06-15', '2025-06-15', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(13, 'Fernando', 'Moreno', 110.20, '852159357', 'Calle K, Salamanca', '2023-08-25', '2024-08-25', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(14, 'Patricia', 'Álvarez', 45.80, '654789123', 'Av. L, Cádiz', '2024-07-10', '2025-07-10', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(15, 'Alejandro', 'Romero', 70.60, '852654789', 'Calle M, Valladolid', '2023-07-05', '2024-07-05', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(16, 'Clara', 'Navarro', 105.75, '951852654', 'Plaza N, Santander', '2024-08-01', '2025-08-01', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(17, 'Hugo', 'Castro', 28.90, '789456123', 'Calle O, Oviedo', '2023-06-20', '2024-06-20', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(18, 'Lucía', 'Ortega', 80.30, '654123789', 'Av. P, León', '2024-09-05', '2025-09-05', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(19, 'Daniel', 'Vega', 98.00, '357852159', 'Calle Q, Almería', '2023-05-15', '2024-05-15', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(20, 'Natalia', 'Lorenzo', 55.90, '258159357', 'Plaza R, Tarragona', '2024-10-18', '2025-10-18', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(21, 'Iván', 'Iglesias', 67.40, '951357852', 'Av. S, Logroño', '2023-04-10', '2024-04-10', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(22, 'Carmen', 'Reyes', 92.50, '852357951', 'Calle T, Badajoz', '2024-11-22', '2025-11-22', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(23, 'Oscar', 'Hernández', 125.00, '159357852', 'Plaza U, Huelva', '2023-03-28', '2024-03-28', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(24, 'Isabel', 'Méndez', 49.99, '753951852', 'Av. V, Castellón', '2024-12-05', '2025-12-05', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(25, 'Raúl', 'Giménez', 77.20, '654357951', 'Calle W, Ceuta', '2023-02-14', '2024-02-14', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(26, 'Beatriz', 'Santos', 102.40, '789654357', 'Plaza X, Melilla', '2024-01-25', '2025-01-25', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(27, 'Gabriel', 'Cabrera', 35.75, '357654789', 'Av. Y, Ibiza', '2023-01-18', '2024-01-18', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(28, 'Eva', 'Guerrero', 86.60, '852951753', 'Calle Z, Palma', '2024-02-05', '2025-02-05', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(29, 'Manuel', 'Prieto', 99.80, '951753852', 'Plaza AA, Córdoba', '2023-12-20', '2024-12-20', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(30, 'Rosa', 'Flores', 59.20, '357159486', 'Av. BB, Segovia', '2024-03-10', '2025-03-10', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(31, 'Pedro', 'Delgado', 89.30, '654951357', 'Calle CC, Guadalajara', '2023-11-15', '2024-11-15', '2025-03-03 12:40:43', '2025-03-03 12:40:43'),
(32, 'Teresa', 'Pascual', 120.40, '951654357', 'Plaza DD, Toledo', '2024-04-28', '2025-04-28', '2025-03-03 12:40:43', '2025-03-03 12:40:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$j9uQi/SHlAG.v736utYiIOqKBZkxAtZlxHkLIlxxVdSrVBj14lJJy', NULL, '2025-03-03 11:06:29', '2025-03-03 11:06:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
