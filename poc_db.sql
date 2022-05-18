-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2021 a las 15:14:14
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `poc_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credentials`
--

CREATE TABLE `credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `VTEX_accountName` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VTEX_Key` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VTEX_Token` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `credentials`
--

INSERT INTO `credentials` (`id`, `VTEX_accountName`, `VTEX_Key`, `VTEX_Token`, `created_at`, `updated_at`) VALUES
(1, 'knownonline', 'vtexappkey-knownonline-VFLZUD', 'ABNZSLXIHVKWXOAGCGYRFVQAATLORPKMLJIYPYNLHRFUXFPKSCRJGTWELMZZZJRSLXKNGCRETNJNQVCUEAWOXBGSMDNCZNMYANJZVBEQLMPSJJOPKEVYNCUJRRADPOFF', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_26_082234_create_credentials_table', 1),
(2, '2021_05_26_172901_create_skus_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skus`
--

CREATE TABLE `skus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SkuId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameComplete` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `skus`
--

INSERT INTO `skus` (`id`, `SkuId`, `NameComplete`, `ProductId`, `created_at`, `updated_at`) VALUES
(1, '1', 'Collage Grid editado22 40 x 50', 1, '2021-05-27 02:32:38', '2021-05-27 02:32:38'),
(2, '2', 'Collage Grid editado22 50 x 60', 1, '2021-05-27 02:32:47', '2021-05-27 02:32:47'),
(3, '3', 'Producto Test', 2, '2021-05-27 02:32:51', '2021-05-27 02:32:51'),
(4, '4', 'Dino 10', 3, '2021-05-27 02:32:56', '2021-05-27 02:32:56'),
(5, '5', 'Dino 10 talle 41', 3, '2021-05-27 02:33:00', '2021-05-27 02:33:00'),
(6, '6', 'Dino 10 talle 42', 3, '2021-05-27 02:33:07', '2021-05-27 02:33:07'),
(7, '7', 'ADIDAS Soft Cross Mid W', 4, '2021-05-27 02:33:19', '2021-05-27 02:33:19'),
(8, '8', 'ADIDAS Soft Cross Mid W', 4, '2021-05-27 02:33:25', '2021-05-27 02:33:25'),
(9, '9', 'ADIDAS Soft Cross Mid W', 4, '2021-05-27 02:33:31', '2021-05-27 02:33:31'),
(10, '10', 'ADIDAS Soft Cross Mid W', 4, '2021-05-27 02:33:35', '2021-05-27 02:33:35'),
(11, '11', 'Cerveza Four Peaks Kilt Lifter 355ml editado Cerveza Four Peaks Kilt Lifter 355ml', 6, '2021-05-27 02:33:39', '2021-05-27 02:33:39'),
(12, '12', 'JP Azeitao Syrah', 7, '2021-05-27 02:33:43', '2021-05-27 02:33:43'),
(13, '13', 'Tazón \"Keep Calm & Do eCommerce\"', 8, '2021-05-27 02:33:47', '2021-05-27 02:33:47'),
(14, '14', 'Tazón \"Keep Calm & Love eCommerce\"', 9, '2021-05-27 02:33:54', '2021-05-27 02:33:54'),
(15, '15', 'Schwartau Extra Strawberry', 10, '2021-05-27 02:33:58', '2021-05-27 02:33:58'),
(16, '16', 'TEST-JT-7', 99, '2021-05-27 02:34:02', '2021-05-27 02:34:02'),
(17, '17', 'Jugo en polvo Naranja Clight 7,5 g.', 12, '2021-05-27 02:34:07', '2021-05-27 02:34:07'),
(18, '18', 'Polera Vans Classic Navy-white', 13, '2021-05-27 02:34:11', '2021-05-27 02:34:11'),
(19, '19', 'Nombre Keuken Nombre de SKU', 14, '2021-05-27 02:34:16', '2021-05-27 02:34:16'),
(20, '20', 'zapa loca', 16, '2021-05-27 02:34:20', '2021-05-27 02:34:20'),
(21, '21', 'Zapatilla loca Talle 34', 17, '2021-05-27 02:34:24', '2021-05-27 02:34:24'),
(22, '22', 'Zapatilla loca Zapatilla 2', 17, '2021-05-27 02:34:29', '2021-05-27 02:34:29'),
(23, '23', 'Nuevo producto SC 26-11 2 test-nuevo-.producto-sc-26-11-2-SKU', 25, '2021-05-27 02:34:33', '2021-05-27 02:34:33'),
(24, '24', 'test-nuevo-.producto-sc-26-11-8-sku', 26, '2021-05-27 02:34:37', '2021-05-27 02:34:37'),
(25, '25', 'test-nuevo-.producto-sc-26-11-9-sku', 27, '2021-05-27 02:34:41', '2021-05-27 02:34:41'),
(26, '26', 'test-nuevo-.producto-sc-26-11-10-sku', 28, '2021-05-27 02:34:45', '2021-05-27 02:34:45'),
(27, '27', 'test-nuevo-.producto-sc-26-11-11-sku', 29, '2021-05-27 02:34:49', '2021-05-27 02:34:49'),
(28, '28', 'test-nuevo-.producto-sc-26-11-12-sku', 30, '2021-05-27 02:34:53', '2021-05-27 02:34:53'),
(29, '29', 'test-nuevo-.producto-sc-27-11-1-sku', 32, '2021-05-27 02:34:57', '2021-05-27 02:34:57'),
(30, '30', 'test-nuevo-.producto-sc-27-11-2', 33, '2021-05-27 02:35:01', '2021-05-27 02:35:01'),
(31, '31', 'test-nuevo-.producto-sc-27-11-5', 34, '2021-05-27 02:35:05', '2021-05-27 02:35:05'),
(32, '40', 'HOLA', 32, '2021-05-27 02:47:05', '2021-05-27 02:47:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skus`
--
ALTER TABLE `skus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `skus`
--
ALTER TABLE `skus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
