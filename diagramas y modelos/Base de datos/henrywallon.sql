-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2024 a las 03:28:26
-- Versión del servidor: 10.4.27-MariaDB-log
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `henrywallon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Usuario` bigint(20) UNSIGNED NOT NULL,
  `semestre` int(11) NOT NULL,
  `fechaIngreso` datetime NOT NULL,
  `fechaEgreso` datetime DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `id_Usuario`, `semestre`, `fechaIngreso`, `fechaEgreso`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2019-06-30 01:59:06', NULL, 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(2, 8, 5, '2020-03-12 04:58:47', NULL, 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(3, 31, 3, '2013-01-20 00:46:41', NULL, 1, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(4, 86, 3, '2013-02-21 22:08:23', NULL, 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(5, 42, 6, '2010-07-09 10:19:39', '2014-08-10 05:26:57', 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(6, 71, 3, '2019-09-10 16:29:47', '2027-03-23 15:02:01', 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(7, 96, 4, '2009-07-23 04:54:56', NULL, 1, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(8, 85, 5, '2019-06-15 21:45:46', '2022-07-15 01:35:38', 1, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(9, 58, 2, '2017-03-15 18:45:35', '2022-03-18 07:36:19', 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(10, 12, 6, '2008-01-22 16:35:18', NULL, 0, '2024-04-21 06:16:52', '2024-04-21 06:16:52'),
(11, 30, 5, '2007-01-29 20:47:55', '2008-11-12 16:15:43', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(12, 85, 2, '2022-07-21 14:25:38', '2024-08-21 19:25:54', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(13, 41, 5, '2005-03-01 11:44:41', '2017-05-13 21:58:03', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(14, 13, 5, '2004-10-14 19:11:19', '2021-07-04 05:55:35', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(15, 75, 4, '2004-07-17 07:09:33', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(16, 31, 1, '2004-06-16 12:05:24', '2006-08-02 22:44:34', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(17, 4, 2, '2012-11-03 14:23:02', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(18, 9, 4, '2007-10-13 05:40:40', '2020-01-12 15:52:32', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(19, 7, 5, '2017-10-31 06:12:01', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(20, 58, 4, '2006-03-25 21:41:31', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(21, 97, 5, '2011-08-04 20:41:56', '2011-12-04 22:18:52', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(22, 96, 6, '2005-02-05 03:23:50', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(23, 73, 3, '2006-03-11 11:47:20', '2016-09-22 01:18:23', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(24, 7, 3, '2008-06-19 04:09:16', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(25, 4, 5, '2006-12-21 09:41:58', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(26, 78, 5, '2005-09-11 20:04:21', '2021-02-21 19:05:14', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(27, 14, 1, '2010-04-23 15:29:58', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(28, 43, 6, '2015-11-30 23:19:01', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(29, 59, 5, '2011-11-16 08:32:27', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(30, 71, 4, '2020-02-12 06:38:51', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(31, 78, 5, '2004-05-15 07:11:44', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(32, 2, 2, '2021-07-27 11:32:04', '2025-03-13 16:34:37', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(33, 59, 3, '2009-09-09 17:42:08', '2022-07-30 10:30:13', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(34, 30, 4, '2008-08-11 10:45:37', '2024-07-29 10:37:56', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(35, 7, 4, '2012-03-13 13:39:22', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(36, 73, 1, '2023-08-04 14:17:34', '2026-03-21 11:56:11', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(37, 58, 2, '2016-09-29 18:46:32', '2025-05-09 07:21:01', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(38, 56, 4, '2013-01-25 08:31:45', '2021-05-23 07:25:21', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(39, 76, 3, '2020-06-13 04:10:45', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(40, 21, 5, '2017-08-03 09:17:48', '2019-12-28 01:53:19', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(41, 20, 2, '2019-08-30 02:52:19', '2022-02-01 01:05:02', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(42, 21, 6, '2020-12-30 08:48:49', '2022-04-05 16:14:30', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(43, 14, 6, '2019-09-30 15:27:11', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(44, 86, 4, '2007-11-14 22:04:54', '2014-08-19 00:16:56', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(45, 71, 6, '2020-03-28 09:37:46', '2026-10-11 08:22:46', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(46, 14, 2, '2021-03-14 02:38:46', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(47, 2, 1, '2016-11-26 12:40:08', '2019-07-02 22:11:19', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(48, 4, 5, '2018-07-29 17:20:07', '2026-01-02 18:26:42', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(49, 78, 4, '2020-09-09 14:11:49', '2023-06-14 19:46:56', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(50, 13, 2, '2016-01-05 02:36:49', '2025-07-31 13:39:39', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(51, 78, 6, '2016-11-07 04:49:02', '2025-02-28 03:42:55', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(52, 59, 2, '2023-06-08 06:45:07', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(53, 34, 6, '2009-09-30 10:52:09', '2022-02-13 22:15:56', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(54, 4, 6, '2014-10-18 18:50:39', '2021-04-17 09:08:46', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(55, 58, 5, '2007-10-22 23:33:48', '2016-10-28 08:20:32', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(56, 6, 3, '2011-04-09 12:50:56', '2012-02-17 17:16:31', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(57, 18, 2, '2008-07-11 23:47:17', '2019-11-29 17:42:55', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(58, 59, 6, '2007-06-16 05:37:17', '2012-01-23 17:48:50', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(59, 14, 2, '2008-07-26 13:41:55', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(60, 21, 1, '2018-09-06 12:05:45', '2021-04-05 08:29:30', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(61, 34, 1, '2021-03-16 19:07:13', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(62, 58, 3, '2015-02-01 03:49:47', '2015-12-14 21:50:28', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(63, 59, 3, '2023-12-07 13:18:44', '2026-01-25 19:44:15', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(64, 78, 4, '2020-08-17 00:09:25', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(65, 2, 3, '2011-01-16 05:09:49', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(66, 31, 5, '2014-12-14 13:21:01', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(67, 71, 5, '2006-08-17 07:07:15', '2024-11-05 04:39:48', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(68, 20, 3, '2023-08-29 00:35:47', '2026-03-07 22:23:43', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(69, 41, 1, '2005-03-11 23:04:00', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(70, 97, 5, '2004-05-07 09:22:13', '2012-10-21 19:41:53', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(71, 75, 2, '2004-05-25 09:26:16', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(72, 41, 3, '2009-09-03 21:06:36', '2022-10-10 20:09:33', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(73, 66, 1, '2015-12-27 05:53:19', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(74, 76, 6, '2012-07-02 09:43:50', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(75, 72, 1, '2019-08-01 10:39:53', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(76, 76, 4, '2009-03-29 19:44:38', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(77, 97, 6, '2016-05-20 06:34:38', '2016-12-20 14:37:36', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(78, 4, 5, '2008-12-28 09:37:54', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(79, 85, 4, '2014-09-27 08:30:55', '2019-02-01 01:00:23', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(80, 6, 3, '2019-04-02 10:29:14', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(81, 86, 2, '2005-02-10 02:48:58', '2015-04-03 11:51:49', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(82, 58, 4, '2015-12-29 08:46:58', '2026-07-08 18:35:22', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(83, 78, 3, '2007-11-12 18:38:07', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(84, 85, 6, '2013-01-19 00:33:17', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(85, 76, 6, '2023-03-07 22:30:05', '2026-02-12 06:48:25', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(86, 97, 2, '2011-09-05 13:38:36', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(87, 97, 2, '2012-04-22 11:35:34', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(88, 71, 2, '2023-07-02 19:15:42', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(89, 13, 4, '2014-11-28 17:31:53', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(90, 97, 4, '2023-10-26 21:57:34', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(91, 30, 4, '2005-02-17 11:03:03', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(92, 12, 1, '2011-01-06 01:38:03', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(93, 58, 2, '2017-11-04 19:27:24', '2022-06-10 07:32:45', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(94, 85, 5, '2020-04-07 10:36:50', '2020-05-07 14:46:39', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(95, 86, 6, '2005-03-06 06:51:30', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(96, 58, 4, '2014-09-08 23:05:18', '2021-01-16 15:47:31', 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(97, 34, 2, '2006-12-11 06:59:05', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(98, 43, 3, '2015-01-31 20:11:56', '2020-12-27 08:18:43', 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(99, 12, 3, '2011-04-28 09:23:37', NULL, 1, '2024-04-21 06:16:53', '2024-04-21 06:16:53'),
(100, 12, 5, '2020-03-31 20:19:46', NULL, 0, '2024-04-21 06:16:53', '2024-04-21 06:16:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `objetivo` text NOT NULL,
  `intencionDidactica` text NOT NULL,
  `turno` enum('Matutino','Vespertino') NOT NULL,
  `semestre` int(10) UNSIGNED NOT NULL,
  `componente` enum('Fundamental','Fundamental Extendido','Fundamental Extendido Obligatorio','Laboral Básico','Ampliada') NOT NULL,
  `creditos` int(10) UNSIGNED NOT NULL,
  `horasDocente` int(10) UNSIGNED NOT NULL,
  `horasEstudioIndependiente` int(10) UNSIGNED NOT NULL,
  `calificacionAprobatoria` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`, `objetivo`, `intencionDidactica`, `turno`, `semestre`, `componente`, `creditos`, `horasDocente`, `horasEstudioIndependiente`, `calificacionAprobatoria`, `imagen`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 'Totam eius.', 'Et doloribus id magnam. Consectetur minima dignissimos culpa occaecati velit. Nam autem perferendis dolorem excepturi. Natus nisi magni explicabo veniam.', 'Qui laudantium perspiciatis molestiae dolore. Sit laudantium quis qui suscipit. Sint quaerat dolor est laboriosam sit sit. Voluptas esse laboriosam dolores illum tempore repellendus non sed. Eum tempore eos laboriosam voluptates quae.', 'Vespertino', 3, 'Fundamental Extendido', 5, 0, 5, 94, 'https://via.placeholder.com/640x480.png/008811?text=esse', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(2, 'Neque dolorum delectus.', 'Doloribus eum est quaerat alias consequuntur eos. Corporis necessitatibus voluptatem consequuntur aut qui. Consequuntur aut nihil consectetur cum. Voluptatem natus sit et aliquam.', 'Provident numquam est voluptas consectetur magnam. Eos hic delectus architecto quis. Ipsa veritatis ut natus molestiae sunt in facilis. Aut non quia non earum qui maiores qui et.', 'Matutino', 5, 'Fundamental Extendido Obligatorio', 5, 2, 3, 92, 'https://via.placeholder.com/640x480.png/00bb55?text=dolor', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(3, 'Delectus non fugit et.', 'Provident est fuga ex id. Rem quam repudiandae quia nemo. Illo illo nisi accusamus perferendis adipisci. Repellat illo distinctio dolorum cupiditate.', 'Suscipit iure aliquam occaecati iure. Deleniti tempora nam aut consequuntur veniam. Hic aperiam veniam ipsa sit repellat est.', 'Vespertino', 4, 'Fundamental Extendido Obligatorio', 5, 5, 0, 96, 'https://via.placeholder.com/640x480.png/0099dd?text=magni', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(4, 'Cupiditate quas et sunt est.', 'Neque voluptates vitae ipsam id pariatur et. Eum quo harum repellendus. Veniam perspiciatis facere illum molestiae quo aut illum. Voluptatibus id provident ea velit non quis.', 'Qui consequatur illum quam commodi nesciunt nulla reiciendis totam. Quia et omnis sapiente aliquid consequatur adipisci. Ea saepe ut ducimus vero.', 'Matutino', 6, 'Laboral Básico', 7, 6, 1, 89, 'https://via.placeholder.com/640x480.png/009999?text=id', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(5, 'Maiores non aut.', 'Unde odit rerum consequatur ea incidunt alias est. Recusandae soluta distinctio dicta nihil et.', 'Aperiam aliquam et magni maiores quia laborum. Repudiandae doloremque reprehenderit qui nostrum earum enim quia enim. Nemo natus sit labore recusandae. Ratione tempora asperiores id voluptatum et rerum.', 'Matutino', 6, 'Fundamental Extendido Obligatorio', 8, 5, 3, 100, 'https://via.placeholder.com/640x480.png/001177?text=quisquam', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(6, 'Sed est odit eius.', 'Dolorum asperiores reprehenderit nam. Adipisci laborum magnam repellendus fugit. Commodi sapiente id omnis qui repellendus. Aut maiores repellat sunt sunt quo distinctio.', 'Cumque qui odio sit illum rerum cum ut doloremque. Illo consequatur hic alias vitae. Et eveniet ut molestias eligendi et.', 'Matutino', 4, 'Fundamental', 8, 0, 8, 95, 'https://via.placeholder.com/640x480.png/00aaee?text=eum', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(7, 'Illo sequi et.', 'Rerum voluptatibus est vel magnam. Officiis sed animi quam officia. Rerum ea iusto architecto eum. Harum quo qui fugiat aliquam ipsa magnam id.', 'Cumque rerum dolores nostrum tenetur odio illum. Modi similique qui quo at. Cumque officia aut sint sed facilis ut rerum.', 'Vespertino', 2, 'Fundamental', 5, 5, 0, 89, 'https://via.placeholder.com/640x480.png/002266?text=dolor', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(8, 'Animi iure qui.', 'Asperiores consequatur magni expedita qui. Ipsum quasi magni eos ipsa. Commodi amet quidem sunt voluptatem quasi doloremque.', 'Tempora ut sunt impedit corporis ut et delectus. Nisi tempore qui dignissimos minima. Assumenda suscipit quod id. Ducimus quaerat asperiores nostrum et suscipit. Itaque sit ea deserunt.', 'Matutino', 4, 'Ampliada', 4, 1, 3, 81, 'https://via.placeholder.com/640x480.png/00ff66?text=maxime', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(9, 'Aut ut maxime et.', 'Error sit dolor rerum autem at reprehenderit sunt. Illo occaecati doloremque et beatae occaecati quasi.', 'Sequi eum illum vel nostrum cum. Quae qui amet et voluptatibus. Est laborum sit repellendus quia neque non aut. Assumenda rerum rerum fuga ipsum eos totam ad.', 'Matutino', 4, 'Ampliada', 8, 4, 4, 89, 'https://via.placeholder.com/640x480.png/00dd33?text=tenetur', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(10, 'Velit dolores qui explicabo.', 'Earum omnis voluptatem quaerat ad. Voluptatem hic sint non aperiam voluptatem.', 'Commodi optio at voluptatem in facere laudantium. Provident dolore voluptatem aut officia. Laboriosam sed iure rerum.', 'Matutino', 5, 'Laboral Básico', 9, 2, 7, 92, 'https://via.placeholder.com/640x480.png/009900?text=culpa', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(11, 'Eum sequi vel.', 'Quas nesciunt ab laudantium. Mollitia dolor velit commodi vero omnis consequatur est voluptate. Ad blanditiis et mollitia quo quia. Repellat blanditiis sapiente et labore qui aut quae.', 'Inventore eos cupiditate consequatur in. Totam et alias unde. Iste beatae autem vitae rerum ad et perspiciatis provident.', 'Matutino', 5, 'Fundamental Extendido Obligatorio', 5, 5, 0, 88, 'https://via.placeholder.com/640x480.png/00ee88?text=et', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(12, 'Autem explicabo blanditiis.', 'Velit consequuntur facilis porro. Harum qui quis blanditiis ut amet velit laudantium. Magnam provident nulla autem dolore enim et. Ut voluptas vel et. Ut quia numquam velit optio temporibus.', 'Ullam nisi inventore illo consequatur fugiat similique. Quia asperiores doloribus amet commodi occaecati magnam. In ducimus est tempore aut. Est officia quia reiciendis possimus alias ullam. Labore labore et repellat expedita.', 'Vespertino', 2, 'Ampliada', 8, 3, 5, 98, 'https://via.placeholder.com/640x480.png/00aa22?text=dolores', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(13, 'Voluptas voluptate quaerat.', 'Ducimus illum quo in ipsam ratione consectetur accusamus. Corrupti asperiores sed sint et quae eaque nam consequuntur. Labore ipsa quis sequi molestiae impedit qui laboriosam. Atque ad quo omnis.', 'Recusandae reprehenderit quia alias. Sit veritatis incidunt eos optio qui quae soluta. Sed animi aut est dolorem.', 'Vespertino', 3, 'Fundamental Extendido', 9, 9, 0, 93, 'https://via.placeholder.com/640x480.png/00bb88?text=voluptas', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(14, 'Quia voluptas expedita.', 'Eaque commodi perferendis facilis. Corrupti dolorum non enim a quasi fugiat. Necessitatibus perferendis id sapiente quasi vitae. Voluptas aut voluptatem quis inventore.', 'Aliquid sed omnis vero aperiam expedita non. Omnis a optio repellat expedita. Hic enim laborum at autem occaecati tempora at. Iure tempora libero sed dolorem autem atque assumenda.', 'Vespertino', 1, 'Laboral Básico', 8, 8, 0, 89, 'https://via.placeholder.com/640x480.png/00ff77?text=dolores', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(15, 'Recusandae ullam hic.', 'Eos quidem illo fugiat qui sapiente et adipisci. Repudiandae natus eius sit aut. Labore maiores quae tempora unde culpa aspernatur. Et suscipit ea nesciunt quibusdam eum.', 'Et architecto et similique molestiae mollitia beatae repudiandae. Ut cumque perferendis molestiae velit totam omnis. Qui tenetur et ducimus totam. Temporibus exercitationem veniam ut sed excepturi.', 'Vespertino', 6, 'Fundamental Extendido', 10, 8, 2, 85, 'https://via.placeholder.com/640x480.png/00ff77?text=voluptatem', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(16, 'Dolores deleniti voluptatem error.', 'In dolorem delectus sed sit. Maiores ea ipsa deleniti dolorum aut iste vel. Dolore asperiores et porro voluptates nostrum.', 'Nihil nobis possimus quisquam. Quia vitae est dicta fugit exercitationem praesentium. Alias eveniet consequatur cupiditate aut.', 'Matutino', 4, 'Laboral Básico', 4, 4, 0, 92, 'https://via.placeholder.com/640x480.png/003344?text=eum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(17, 'Voluptatibus hic est.', 'Corrupti et et repudiandae voluptatem rerum. Rerum assumenda ipsam et omnis est dolorem. Non itaque quia tempore ut.', 'Consectetur quam quis ex eum. Exercitationem possimus maiores consectetur rerum officia.', 'Vespertino', 6, 'Fundamental Extendido Obligatorio', 10, 4, 6, 85, 'https://via.placeholder.com/640x480.png/0011ff?text=dolores', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(18, 'Minima sed provident voluptatibus.', 'Excepturi praesentium dolore dolore ipsam consequatur. Id aut quo incidunt aliquam. Aut velit aut quod dolorem voluptatem. Minus cum sint voluptas sunt labore.', 'Assumenda voluptatem ipsum officia et consectetur possimus et perspiciatis. Aliquam tenetur quod unde repellendus blanditiis tenetur. Iusto odit adipisci et ducimus. Voluptatum officiis eos et odit tempora.', 'Vespertino', 4, 'Fundamental Extendido', 6, 0, 6, 81, 'https://via.placeholder.com/640x480.png/00bb55?text=blanditiis', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(19, 'Beatae fuga et.', 'Voluptates eum necessitatibus illo dolor et. Magni recusandae ut non libero ut consectetur natus. Consequatur laborum officia atque velit neque. Minus ut in quo expedita eius.', 'Beatae aliquam rerum illo quas voluptas cum. Possimus aut fugiat modi iusto tenetur explicabo.', 'Matutino', 2, 'Fundamental', 7, 2, 5, 99, 'https://via.placeholder.com/640x480.png/00ffff?text=necessitatibus', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(20, 'Consequuntur voluptas voluptas qui.', 'Facilis qui error aut laboriosam iure in deleniti. Accusamus asperiores odit corporis repellendus. Ex recusandae quasi quis atque.', 'Optio asperiores sunt suscipit reprehenderit fugiat culpa id. Ab nihil consectetur vel sed. Est saepe ea expedita aliquam est. Aut doloribus unde aspernatur dolorem officia ut illo rem. Dolorem delectus totam amet culpa qui.', 'Vespertino', 2, 'Fundamental Extendido Obligatorio', 8, 0, 8, 89, 'https://via.placeholder.com/640x480.png/00aa55?text=hic', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(21, 'Soluta sint.', 'Quo mollitia quae id illo suscipit magnam ea. Incidunt quia sapiente quas eum eos harum. Odio qui ut vel optio voluptatem laboriosam ad.', 'Ipsam modi et earum porro doloribus. Dignissimos quia repellendus illum.', 'Matutino', 4, 'Fundamental Extendido', 8, 3, 5, 97, 'https://via.placeholder.com/640x480.png/0000dd?text=qui', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(22, 'Inventore at rem.', 'Delectus et mollitia aut aliquid omnis. Tenetur delectus et non ut voluptatem. Aspernatur quidem omnis voluptatem voluptates.', 'Ipsa qui temporibus et ea quisquam quos. Eos sit velit ab eligendi accusantium culpa. Commodi consequatur at quis mollitia.', 'Matutino', 5, 'Laboral Básico', 4, 2, 2, 93, 'https://via.placeholder.com/640x480.png/0066cc?text=incidunt', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(23, 'Maxime beatae et inventore.', 'Iusto porro sint vitae reprehenderit aperiam itaque. Pariatur excepturi ea eius itaque esse. Sapiente est cumque deserunt et.', 'Omnis quibusdam est nam recusandae aut reiciendis. Qui reprehenderit suscipit quia in. Dolore magni voluptatem assumenda veritatis nesciunt ut deserunt. Qui similique libero porro maxime ratione.', 'Matutino', 5, 'Fundamental Extendido Obligatorio', 8, 5, 3, 95, 'https://via.placeholder.com/640x480.png/0066dd?text=dolores', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(24, 'Omnis sit consequatur ut.', 'Repudiandae non rerum iure ea fugiat et iusto. Qui numquam et id eius aut accusantium qui. Id sunt perferendis et nulla itaque ut qui.', 'Aspernatur sunt est ea in qui dolorum quam. Optio ratione dolorum odit rerum et corrupti id. Quia reiciendis esse nihil dignissimos.', 'Vespertino', 2, 'Ampliada', 10, 0, 10, 89, 'https://via.placeholder.com/640x480.png/0088aa?text=velit', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(25, 'Qui illum possimus odio.', 'Deleniti at consequatur pariatur quo eligendi eum. Voluptatem quod ut tempore veniam. Perferendis voluptatum ad reprehenderit officiis. Non eligendi quos neque aspernatur nobis.', 'Nihil et perferendis tempora. Corrupti in dignissimos quia sunt corrupti est. Reprehenderit omnis ea aperiam illum numquam est.', 'Vespertino', 5, 'Ampliada', 5, 4, 1, 95, 'https://via.placeholder.com/640x480.png/0011bb?text=quas', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(26, 'Animi aliquam deserunt asperiores.', 'Asperiores consectetur aspernatur molestiae et dolore. Assumenda quia officia quis quia. Rerum dolor suscipit quidem.', 'Consequatur dolores labore eos. Corrupti quidem vero enim voluptas. Quis nihil rem autem. Aut veniam officia quidem rerum. Non deleniti rem et nostrum debitis quibusdam.', 'Vespertino', 2, 'Laboral Básico', 6, 2, 4, 81, 'https://via.placeholder.com/640x480.png/0055cc?text=nostrum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(27, 'Exercitationem ad.', 'Reprehenderit officiis iure possimus rem ipsum. Possimus quia sit et recusandae est exercitationem. Fuga voluptate qui doloremque et ut minus.', 'Illo expedita porro ipsam omnis. Error mollitia voluptates voluptatum sint quidem non repudiandae. Repellendus provident eligendi dolorum error voluptatem natus necessitatibus.', 'Matutino', 1, 'Fundamental Extendido Obligatorio', 4, 0, 4, 92, 'https://via.placeholder.com/640x480.png/007755?text=debitis', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(28, 'Incidunt sint non ad.', 'Voluptate iusto doloremque quos temporibus ratione. Exercitationem minus quia sequi sed et culpa. Quisquam reprehenderit tempora eos. Dolores culpa eligendi pariatur vel voluptatem non odit.', 'Aliquid nemo assumenda modi mollitia sunt consequuntur sunt. Et enim officiis reprehenderit deleniti adipisci reprehenderit quos.', 'Matutino', 3, 'Fundamental Extendido', 10, 7, 3, 89, 'https://via.placeholder.com/640x480.png/00ff22?text=saepe', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(29, 'Culpa rerum esse facilis.', 'Natus accusamus est aut eaque eum. Ea unde ea officia ipsam illum. Ex rerum animi reprehenderit ut ut commodi ipsam. Officiis iusto tempore corporis et perferendis at.', 'Possimus assumenda voluptatem ea. Voluptatibus consequatur et quidem similique deserunt. Minima qui laborum eum dolore. Non perspiciatis autem adipisci id.', 'Vespertino', 1, 'Ampliada', 8, 1, 7, 85, 'https://via.placeholder.com/640x480.png/001155?text=alias', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(30, 'Qui qui eum.', 'Sed est architecto omnis. Non veniam aliquam laudantium molestiae quidem assumenda quos. Deleniti quaerat est at molestiae quos sed.', 'Quod aperiam quae voluptatum soluta illo amet. Voluptas ea ipsa facilis ducimus autem culpa vel. Voluptatem ipsa quae id dolor voluptatibus. Aut et voluptates sunt consequatur aut voluptatem omnis ducimus.', 'Matutino', 2, 'Fundamental Extendido', 7, 5, 2, 86, 'https://via.placeholder.com/640x480.png/00ccee?text=aliquid', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(31, 'Eaque reprehenderit aliquid sint vero.', 'Sint a asperiores error laborum magnam delectus dolore numquam. Voluptatem accusantium odit ipsum omnis quisquam. Neque dolores qui voluptas.', 'Nihil assumenda et eligendi iure vel et ipsam. Exercitationem aut dolores eum voluptas. Esse soluta ut magnam.', 'Vespertino', 2, 'Fundamental Extendido Obligatorio', 10, 7, 3, 91, 'https://via.placeholder.com/640x480.png/0088ee?text=vel', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(32, 'Laudantium tempora voluptatum distinctio.', 'Cupiditate atque ut veritatis. Sit ut autem facilis quidem consequatur quia. Sapiente sint voluptatum ipsum eum. Molestias saepe ut repudiandae dolor nobis animi.', 'Laboriosam ea ipsa sunt odit ut quod. Dolorum adipisci et placeat ipsum nihil iure. Molestias repellat eum cupiditate harum. Quaerat corporis at itaque laboriosam id.', 'Vespertino', 2, 'Fundamental Extendido Obligatorio', 7, 0, 7, 96, 'https://via.placeholder.com/640x480.png/00aaee?text=qui', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(33, 'Fuga est quo molestias debitis.', 'Dolores laboriosam hic similique ab eos et quos. Est consequatur amet sequi et. Magni quis cupiditate nulla ducimus dolorem.', 'Fugit voluptas quia quidem. Culpa libero consequuntur excepturi ratione et est natus voluptatem. Expedita ad officia eos accusantium sunt iusto cum quis.', 'Vespertino', 3, 'Fundamental Extendido Obligatorio', 4, 0, 4, 96, 'https://via.placeholder.com/640x480.png/000022?text=aperiam', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(34, 'Aut blanditiis ullam consequatur.', 'Facere est iure voluptatem doloribus aspernatur. Harum explicabo inventore explicabo. Tempora molestiae officia quia et. Et repudiandae fugiat pariatur delectus.', 'Iste perferendis nisi eligendi maiores dolores. Repellendus sapiente ipsa et incidunt corporis et. Qui id tempore assumenda. Officia exercitationem exercitationem voluptates qui et velit ullam.', 'Vespertino', 3, 'Fundamental', 10, 10, 0, 91, 'https://via.placeholder.com/640x480.png/001199?text=fugiat', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(35, 'Ut nihil pariatur et eos.', 'Earum et quia vero autem corrupti. Ut est libero praesentium est. Qui laborum dolore odit dolore asperiores. Culpa dolorem consequatur optio excepturi voluptatem sunt.', 'Nihil exercitationem dolores incidunt veritatis. Maiores eum officia voluptatem minus. Expedita placeat autem sint quia eius odit. Ipsa quos et laborum impedit porro. Et architecto quas et.', 'Vespertino', 1, 'Fundamental Extendido', 10, 0, 10, 96, 'https://via.placeholder.com/640x480.png/0066ee?text=earum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(36, 'Voluptatibus nostrum.', 'Commodi ut id aspernatur veniam et eum. Quo non magnam voluptatem dolor et. Vitae maxime voluptas quia. Rerum id quas corrupti quo non facilis ipsum.', 'Voluptatibus omnis voluptatem totam rerum voluptatibus. Officiis est et provident. Tempore nihil ab quas non molestiae ut ut.', 'Vespertino', 6, 'Laboral Básico', 9, 6, 3, 97, 'https://via.placeholder.com/640x480.png/00ff77?text=magnam', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(37, 'Cumque commodi consectetur eos.', 'Quidem quam ea aperiam qui non. Nihil perferendis eaque temporibus facere explicabo nostrum. Neque dolores sit aperiam provident qui qui sit. Veniam enim est voluptatibus et iste cumque.', 'Tenetur quia provident libero debitis qui. Doloribus cum dolores ea quas aut. Libero voluptas temporibus sint minima iusto perspiciatis ab est. Provident ut distinctio nihil.', 'Matutino', 6, 'Fundamental', 5, 5, 0, 100, 'https://via.placeholder.com/640x480.png/009977?text=debitis', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(38, 'Libero id.', 'Ullam iste ipsum eos eligendi nesciunt harum. Ut fuga quidem sit ut omnis et. Omnis dolores vel consectetur architecto consequatur ipsa inventore. Maxime animi at minus dolore a error.', 'Dolorem ex et ex ab sint. Soluta laborum expedita repellat eius ea dolorem esse. Inventore culpa vel velit optio delectus dolores dolorum. Ut eveniet eum dolores cum minus impedit ipsa.', 'Vespertino', 4, 'Laboral Básico', 6, 4, 2, 81, 'https://via.placeholder.com/640x480.png/00dd77?text=corporis', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(39, 'Similique eum porro et.', 'Nam similique ratione perferendis ipsa incidunt rem. Numquam nesciunt et aperiam aut qui esse. Qui numquam dolorum qui. At tempore dolorem voluptatem cum perferendis iusto.', 'Veniam nemo est soluta. Officia modi ipsam ut sint. Veniam ducimus soluta sed aut molestiae in voluptatem.', 'Vespertino', 4, 'Fundamental Extendido', 8, 5, 3, 94, 'https://via.placeholder.com/640x480.png/0022dd?text=omnis', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(40, 'Autem itaque.', 'Laboriosam voluptas et vel nisi ea. Similique consectetur sit laudantium aut. Eos omnis quaerat velit sed.', 'Consequatur assumenda molestiae distinctio temporibus ut beatae pariatur. Accusamus qui quo temporibus. Quidem ipsam vel at veritatis maxime.', 'Matutino', 5, 'Fundamental Extendido', 6, 1, 5, 92, 'https://via.placeholder.com/640x480.png/00ddaa?text=sit', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(41, 'Officia eveniet nesciunt omnis.', 'Excepturi nemo perspiciatis provident impedit et iure. Accusantium perferendis fugiat ipsum delectus. Molestiae molestiae placeat consequatur facilis animi.', 'Odit quia quas et hic dolore. Sit corporis sed deleniti inventore hic iusto. Dignissimos et vero nobis voluptas magni. Neque et expedita porro quasi est non.', 'Vespertino', 4, 'Fundamental Extendido', 4, 4, 0, 93, 'https://via.placeholder.com/640x480.png/0099ff?text=corporis', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(42, 'Recusandae et.', 'Sint ad necessitatibus fuga totam. Recusandae magnam exercitationem molestias et voluptatem possimus porro. Voluptas voluptatibus voluptas et qui.', 'Non labore excepturi omnis ut. Quam eos non tempore assumenda eaque.', 'Vespertino', 1, 'Fundamental Extendido', 8, 8, 0, 89, 'https://via.placeholder.com/640x480.png/00ee33?text=recusandae', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(43, 'Porro harum voluptatem debitis.', 'Est non eligendi aut est vel. Voluptatem et blanditiis dolorum vitae qui. Voluptatem facilis quia et vel nulla. Temporibus est rem aut accusamus incidunt rerum.', 'Quaerat officia eius sapiente est est dicta commodi. Laborum doloremque quidem voluptates vel consequuntur est consequatur. Vero velit sint et ullam.', 'Matutino', 4, 'Laboral Básico', 4, 3, 1, 85, 'https://via.placeholder.com/640x480.png/000033?text=perferendis', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(44, 'Aut dolores quis dolorem.', 'Eum id eveniet dignissimos laborum sit eos. Veniam fuga et aut iste commodi non. Ut aut assumenda et in ut modi.', 'Sit rerum soluta aperiam quasi ab fugit voluptas. Nobis maiores sint dolore tempora et. Odio ut sint quisquam nesciunt tenetur. Iusto perspiciatis blanditiis natus aperiam aut.', 'Vespertino', 3, 'Fundamental Extendido Obligatorio', 7, 3, 4, 98, 'https://via.placeholder.com/640x480.png/00cccc?text=dolores', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(45, 'Sequi repellat.', 'Facere dolorem aut voluptatum a nulla eius cumque ipsa. Ratione labore optio ducimus deleniti ad. Expedita enim aut ab ipsam nulla. Ullam quia nisi ipsum quo quia ipsam et.', 'Aut laboriosam accusamus natus blanditiis tempore. Vel et non officia odit. Aspernatur quas ad deleniti.', 'Matutino', 6, 'Ampliada', 8, 5, 3, 99, 'https://via.placeholder.com/640x480.png/00aa77?text=reprehenderit', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(46, 'A saepe enim perferendis.', 'Id voluptas dolores omnis facilis nobis incidunt quod minima. Blanditiis est qui velit itaque tempora. Rerum sit dolorum neque doloribus.', 'Eius rerum atque molestiae neque impedit repellat similique laboriosam. Ab saepe accusantium blanditiis totam molestiae. Ab odit itaque molestias aperiam qui.', 'Matutino', 6, 'Fundamental', 4, 2, 2, 97, 'https://via.placeholder.com/640x480.png/007744?text=consequatur', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(47, 'Magni quis dolor ab.', 'Ea sint est eum quo incidunt officia dignissimos. Voluptatem dolorum earum ad omnis sit molestiae reprehenderit.', 'Dolorum qui et porro numquam ut ut odio nesciunt. Quaerat consectetur quia dolores sed minima provident quia. Iste alias neque consectetur assumenda eaque officiis animi. Quam molestiae ut libero dolorem non cum nemo impedit.', 'Vespertino', 6, 'Fundamental Extendido', 7, 7, 0, 87, 'https://via.placeholder.com/640x480.png/00bb88?text=nisi', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(48, 'Eos similique dolores.', 'Est qui omnis at dignissimos omnis alias non. Sunt vel et quod velit et commodi est. Autem architecto ut dignissimos nisi eveniet corporis.', 'Eum ea illo quae. Odio aut animi nesciunt quae veritatis ut.', 'Vespertino', 4, 'Laboral Básico', 4, 0, 4, 87, 'https://via.placeholder.com/640x480.png/006600?text=consequatur', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(49, 'Recusandae ea maxime autem.', 'Quo autem quidem eum ad dolorum consequatur. Nam consequuntur natus cum. Quis quam amet suscipit. Et aut enim iste.', 'Veniam quibusdam ea quas. Nobis a laboriosam voluptatem sit praesentium culpa rerum itaque.', 'Vespertino', 3, 'Fundamental Extendido', 5, 3, 2, 96, 'https://via.placeholder.com/640x480.png/0033aa?text=natus', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(50, 'Quia dicta maiores.', 'Minima at eos qui minus quia veritatis non. Et neque aut maiores in exercitationem minima dolorum. Cumque ut non laborum.', 'Dolorum aut tempora distinctio omnis quam. Iusto quidem quas in tempora consectetur. Et nobis illo aut quidem iste iure ducimus qui.', 'Matutino', 6, 'Fundamental Extendido', 10, 9, 1, 82, 'https://via.placeholder.com/640x480.png/00dd33?text=et', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(51, 'Enim pariatur rerum.', 'Accusamus dolores corporis similique ipsa inventore rerum enim. Consequuntur voluptatem aspernatur quaerat voluptatum eum.', 'Non temporibus deleniti odio. Nisi totam dolore enim. Omnis inventore itaque rem ipsa placeat earum repellat ut. Ipsam impedit asperiores incidunt repellat laudantium facilis qui.', 'Matutino', 6, 'Fundamental Extendido', 6, 1, 5, 87, 'https://via.placeholder.com/640x480.png/00bb11?text=rerum', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(52, 'Facilis accusantium labore.', 'Dignissimos sed sint autem dolor odit ipsa ipsam et. Repudiandae repudiandae ducimus autem perspiciatis quisquam quas. Perspiciatis inventore error dolorem et aut distinctio aut.', 'Veritatis quod voluptate ut est voluptate qui. Eligendi delectus cupiditate quidem amet adipisci. Quam similique voluptatem quia repudiandae.', 'Vespertino', 2, 'Fundamental Extendido', 7, 0, 7, 89, 'https://via.placeholder.com/640x480.png/00bb88?text=modi', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(53, 'Facere at tempore tempore.', 'Aperiam a sit sed nostrum architecto ut ut. Nemo voluptas mollitia a impedit voluptatem quis. Nihil illum qui a beatae enim. Corporis aut aut quod.', 'Et rerum quibusdam aspernatur voluptatem laboriosam. Vero assumenda in deleniti temporibus ut. Excepturi minus occaecati quo voluptas.', 'Vespertino', 6, 'Laboral Básico', 8, 2, 6, 95, 'https://via.placeholder.com/640x480.png/00ff77?text=vel', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(54, 'Inventore ducimus quo neque nisi.', 'Ut alias consequatur enim facere et esse non. Quas placeat expedita expedita et eum adipisci voluptas. Saepe et est perspiciatis illum dolor amet omnis.', 'Et quia voluptas blanditiis quae similique illo quaerat. Amet sed voluptatem dolor laudantium sunt. Ut sed et et id voluptas. Consequatur ab optio omnis.', 'Matutino', 6, 'Fundamental Extendido Obligatorio', 4, 3, 1, 85, 'https://via.placeholder.com/640x480.png/007722?text=quasi', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(55, 'Voluptas nemo ipsa.', 'Expedita cupiditate repellat adipisci. Provident non vitae eum molestiae quia incidunt repudiandae. Ratione qui occaecati error quo. Minima qui sed veritatis maiores.', 'Quaerat qui perferendis error enim voluptas minus eum. Quia iste possimus possimus dolor. Accusantium qui sed et assumenda quibusdam iure. Est sed non velit magnam nemo eum.', 'Matutino', 6, 'Ampliada', 9, 1, 8, 88, 'https://via.placeholder.com/640x480.png/00ff00?text=nisi', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(56, 'Quos quos consequatur qui est.', 'Sed sapiente doloremque et recusandae error. At voluptatem quidem sunt modi. Unde qui laboriosam laudantium perferendis facilis aut.', 'Molestias molestiae error nihil et ad esse. Esse dolores esse molestiae tenetur qui quidem corrupti in. Sint aut magnam aut dolorem quia et ut molestiae.', 'Matutino', 3, 'Fundamental Extendido', 10, 7, 3, 97, 'https://via.placeholder.com/640x480.png/008822?text=enim', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(57, 'Delectus itaque sequi veritatis.', 'Nihil ut quas aut doloribus soluta. Maiores sed qui autem et quos iusto. Est aperiam enim optio et sed voluptatem ducimus. Et et consectetur excepturi.', 'Qui consequatur molestiae sint eum natus sit maxime. Ad expedita aspernatur sed est. Distinctio debitis nostrum dolorem natus doloribus quasi sit tempore. Eos aut nemo dolores dolore.', 'Vespertino', 2, 'Laboral Básico', 8, 4, 4, 83, 'https://via.placeholder.com/640x480.png/004444?text=exercitationem', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(58, 'Aliquid est.', 'Distinctio incidunt occaecati alias. Voluptatum natus itaque sit magni. Ut eum animi debitis et qui.', 'Ex nemo dolor nostrum qui labore dolores possimus. Ratione voluptatem dolorem tempore non ut eos. Quisquam vel et molestias reiciendis explicabo aut rerum. Iusto voluptatem iste quaerat maiores optio.', 'Matutino', 1, 'Fundamental', 4, 0, 4, 81, 'https://via.placeholder.com/640x480.png/00ddff?text=earum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(59, 'Est est tenetur.', 'Aliquam numquam harum quibusdam suscipit necessitatibus est quo. Iure corrupti odio qui nemo maiores. Nesciunt libero eligendi dolorem quia ipsam veritatis.', 'Sit reiciendis omnis illo corrupti. In quisquam placeat omnis facilis a vel qui. Aut eius harum consectetur ullam adipisci qui. Omnis enim voluptas itaque eveniet esse adipisci.', 'Matutino', 4, 'Laboral Básico', 10, 6, 4, 84, 'https://via.placeholder.com/640x480.png/00aa66?text=ipsam', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(60, 'Ratione et dolores ut.', 'Quos ea voluptatum unde minima. Reiciendis quod odit vitae voluptas aperiam qui animi. Aut rerum non nihil sed quibusdam voluptates.', 'Vero ullam aut tenetur ut voluptatem ea velit. Dignissimos qui ut a rerum ipsa fuga. Dolorum molestiae placeat laboriosam sunt praesentium. At sed omnis doloribus doloremque animi.', 'Vespertino', 2, 'Fundamental Extendido', 6, 5, 1, 82, 'https://via.placeholder.com/640x480.png/0011cc?text=magni', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(61, 'Non veritatis omnis explicabo.', 'Ut exercitationem est quos et voluptatem ipsum aut. Ex voluptatibus minima est. Id est id nulla quo. Doloribus quidem accusamus nulla cum.', 'Quos et voluptatibus animi quia cumque adipisci debitis. Sed distinctio recusandae aspernatur eos nihil. Quia tenetur suscipit inventore vero sed.', 'Matutino', 5, 'Fundamental', 4, 3, 1, 88, 'https://via.placeholder.com/640x480.png/00ddcc?text=eligendi', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(62, 'Odit expedita sunt laudantium.', 'Quos harum repellendus qui. Dolor cupiditate aspernatur officiis eum ullam beatae vel. Ea consequuntur vitae magni architecto qui rerum. Culpa ex voluptate molestiae alias.', 'Qui omnis quia voluptas necessitatibus molestiae dolor ab veniam. Labore non voluptate placeat rem.', 'Vespertino', 1, 'Fundamental Extendido Obligatorio', 10, 1, 9, 82, 'https://via.placeholder.com/640x480.png/00cc22?text=eum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(63, 'Error pariatur doloribus voluptates.', 'Quae ut vero quaerat minus laborum. Praesentium deserunt quis a quo voluptatem reiciendis ut enim. Sit et nemo exercitationem qui. Ratione laborum recusandae voluptatem distinctio cupiditate quas.', 'Quaerat debitis alias cupiditate animi sit. Nihil enim enim odit velit. Est voluptas non ex voluptatem.', 'Matutino', 3, 'Ampliada', 5, 1, 4, 95, 'https://via.placeholder.com/640x480.png/00aadd?text=natus', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(64, 'Soluta consequatur.', 'Officia in ab omnis quibusdam ipsam harum explicabo. Dolor natus quia incidunt provident ratione nemo. Temporibus aut minus omnis in.', 'Aut quia voluptates et vero. Ut ea illum odit. Eligendi officia doloremque cumque ut corporis aspernatur incidunt sit.', 'Vespertino', 1, 'Fundamental Extendido', 6, 2, 4, 87, 'https://via.placeholder.com/640x480.png/00ffaa?text=est', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(65, 'Et iusto accusantium accusamus.', 'Adipisci ad totam est odio placeat delectus. Fuga omnis velit qui itaque. Vitae omnis vero ipsa.', 'Vel voluptatem aliquid perspiciatis. Nobis perferendis aut est fugiat sed qui est eos.', 'Vespertino', 5, 'Fundamental Extendido', 4, 4, 0, 86, 'https://via.placeholder.com/640x480.png/00cc11?text=sed', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(66, 'Repellendus qui dicta incidunt.', 'Accusamus est quisquam nobis dicta ipsam omnis. Provident dolores laudantium et.', 'Consequuntur dolor animi ad blanditiis laboriosam qui. Aspernatur autem iusto ratione tempora velit hic. Possimus vero officiis sit optio aut unde. Ut vitae dolores deleniti esse dignissimos.', 'Vespertino', 3, 'Ampliada', 5, 1, 4, 81, 'https://via.placeholder.com/640x480.png/0044ee?text=natus', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(67, 'Numquam ab vel et.', 'Error est eius voluptas numquam libero qui incidunt. Ut natus ducimus et est adipisci minus qui. Et aut aut molestiae ex libero ut. Animi ipsa dolor aliquid dolorem.', 'Et ad ut facere saepe soluta. Reiciendis occaecati voluptas impedit officiis. Quasi omnis nisi facere ipsum aliquid. Perferendis fuga quisquam ut autem dolor voluptatem veniam facere.', 'Matutino', 6, 'Fundamental Extendido', 7, 1, 6, 89, 'https://via.placeholder.com/640x480.png/002244?text=officiis', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(68, 'Tenetur voluptatem reprehenderit.', 'Delectus est laborum voluptatem consectetur. Explicabo repellendus nihil blanditiis earum placeat culpa. Sint tempore inventore ex. At ducimus quidem quidem et quo maiores ea.', 'Recusandae earum iusto veritatis ad sunt incidunt eaque. Eum officiis quam a esse qui accusantium qui. Beatae minus qui facere id nam commodi facere ut. Placeat aliquam id asperiores illum.', 'Vespertino', 4, 'Fundamental Extendido Obligatorio', 5, 5, 0, 80, 'https://via.placeholder.com/640x480.png/0033aa?text=et', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(69, 'Eos exercitationem rerum sed.', 'Explicabo sed sit eligendi molestiae voluptatem pariatur. Et aut sint ut ullam similique. Ratione ducimus quia voluptas totam fugit sit.', 'Numquam corporis laboriosam at molestiae. Rerum magnam culpa maxime cumque similique numquam. Nobis rerum doloribus qui voluptas quae. Voluptatum vel et iste dicta. Dolor et rerum est reiciendis omnis consequatur.', 'Matutino', 1, 'Fundamental', 10, 6, 4, 85, 'https://via.placeholder.com/640x480.png/0044cc?text=ab', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(70, 'Expedita beatae quidem.', 'Et laborum sed sint autem quia architecto officia enim. Incidunt facere autem accusantium natus reiciendis porro incidunt. Qui quod non sint quos est.', 'Sequi dolorem vel in temporibus et vel similique. Sunt illo quia eligendi omnis laboriosam in laboriosam. Quia nihil sit sequi dolores distinctio. Earum dolores ad odio sed beatae molestias consequatur. Eveniet error sed eos vero et.', 'Matutino', 2, 'Laboral Básico', 5, 2, 3, 87, 'https://via.placeholder.com/640x480.png/002211?text=sint', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(71, 'Vel est voluptates officia.', 'Eius et qui blanditiis minus. Dolores illum enim et rerum odit. Quaerat aut illum dolorum alias distinctio esse dolorem sit. Deleniti placeat quisquam consequatur odit qui est velit.', 'Pariatur iure delectus maiores autem odit. Qui architecto odio voluptate sit assumenda aliquid veniam. Natus sapiente est doloribus et autem.', 'Matutino', 6, 'Fundamental Extendido', 5, 0, 5, 96, 'https://via.placeholder.com/640x480.png/006655?text=ab', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(72, 'Culpa voluptas eveniet.', 'Adipisci aut quia nostrum vero nisi quam. Iste at qui blanditiis sit non quo cum dolor. Suscipit nulla qui dolorum eos iste. Ut porro iste voluptatem.', 'Qui mollitia facilis non nisi totam iusto. Rerum eligendi adipisci amet veritatis alias est. Officiis voluptates aut molestiae nihil.', 'Vespertino', 2, 'Ampliada', 9, 4, 5, 88, 'https://via.placeholder.com/640x480.png/001100?text=iusto', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(73, 'Dignissimos ut et molestiae.', 'Ea modi ducimus aliquam dolores numquam rerum ut. Est perspiciatis dicta sapiente culpa soluta. Perspiciatis autem corporis et nisi quia atque et officia. Quo et veniam quia cumque.', 'Quod officia necessitatibus recusandae consectetur doloremque omnis. Necessitatibus inventore praesentium est debitis nulla fugiat repudiandae.', 'Vespertino', 6, 'Fundamental', 10, 2, 8, 85, 'https://via.placeholder.com/640x480.png/008844?text=error', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(74, 'Omnis est ad.', 'Consequatur tenetur minus quaerat tenetur. Pariatur qui quis provident et ab iure quae repellendus. Perferendis incidunt unde qui et quo. Dicta ea aut rerum molestiae harum repellendus consequatur.', 'Perferendis sit ut perferendis quis suscipit at. Est officiis rerum blanditiis sequi qui nesciunt beatae. Quaerat dolor at praesentium aperiam qui quasi et ratione. Quibusdam explicabo iure et laborum suscipit.', 'Vespertino', 1, 'Fundamental Extendido Obligatorio', 5, 2, 3, 81, 'https://via.placeholder.com/640x480.png/003322?text=earum', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(75, 'Dolore earum itaque facilis.', 'Accusantium voluptatem et voluptatem totam qui similique. Possimus qui et eaque qui iusto. Quae fugiat eligendi nulla est.', 'Velit vero voluptas corrupti sint eaque. Sint eaque harum non ut facilis earum libero. Assumenda culpa libero quod cupiditate quos est eaque. Voluptatem eum aperiam veniam et est corporis atque. Nemo corporis sint est.', 'Matutino', 6, 'Fundamental Extendido', 4, 2, 2, 92, 'https://via.placeholder.com/640x480.png/00bbff?text=minima', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(76, 'Assumenda molestias ea vel.', 'Ducimus est sint dolorum repellat perferendis fuga laudantium. Ut cum optio aut vero sed. Ipsa veniam harum quos consequatur repellendus.', 'Ullam vitae enim quia sint numquam voluptas. Dolores exercitationem dolore a facere. Inventore dolor sapiente exercitationem deserunt debitis.', 'Matutino', 6, 'Ampliada', 7, 6, 1, 83, 'https://via.placeholder.com/640x480.png/008888?text=omnis', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(77, 'Eos non qui et beatae.', 'Voluptatem porro maiores totam quos qui. Aperiam sit explicabo magnam quisquam rerum autem deserunt. Suscipit aut exercitationem provident nihil dolor.', 'Totam enim voluptatum aut voluptatem dolorem eum. Delectus facere qui optio et dolores repellat. Debitis occaecati quod ullam qui. Sit incidunt quisquam occaecati odit eum.', 'Vespertino', 5, 'Fundamental', 10, 10, 0, 93, 'https://via.placeholder.com/640x480.png/00cc55?text=ex', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(78, 'Deserunt quos tempore.', 'Quia ab neque sunt totam doloremque error saepe. Iste voluptatem beatae maiores consequuntur ut quaerat et aperiam. Est quis in cumque optio ut sed mollitia.', 'Dolorem amet et sit itaque earum autem. Et perspiciatis esse voluptas molestiae fugit unde. Rerum aut eos est esse. Et rem autem libero quidem.', 'Vespertino', 5, 'Fundamental Extendido', 8, 0, 8, 96, 'https://via.placeholder.com/640x480.png/00bb77?text=tenetur', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(79, 'Unde cumque.', 'Aut facere ut omnis nesciunt qui. Natus qui enim ut. Et ad laboriosam voluptatem porro iusto. Numquam dolores vero et sed officia ut.', 'Ut eos sed voluptatibus provident quibusdam saepe. Voluptatem molestiae quasi omnis dignissimos. Totam non et fuga doloribus doloribus dolores.', 'Matutino', 1, 'Fundamental Extendido Obligatorio', 8, 2, 6, 93, 'https://via.placeholder.com/640x480.png/0000dd?text=in', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(80, 'Aut vero assumenda.', 'Qui iure dolore consectetur nostrum aspernatur saepe autem. Ratione facilis ea mollitia officia voluptate in dolor. Id hic modi exercitationem molestiae.', 'Voluptatem aut nam non dolor. Amet aliquam consequatur nihil quasi sint est. Quas ducimus rerum consectetur quae occaecati voluptas. Nulla nesciunt impedit animi quidem maiores nostrum.', 'Matutino', 2, 'Fundamental Extendido', 4, 1, 3, 93, 'https://via.placeholder.com/640x480.png/0033cc?text=quo', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(81, 'Eligendi dolor necessitatibus.', 'Eaque eligendi voluptatem optio perspiciatis. Sit in at beatae et explicabo doloribus. Aut enim placeat rerum omnis.', 'Architecto non aut placeat sed maxime. Et ab sed dolor dolorem nihil.', 'Matutino', 1, 'Laboral Básico', 10, 7, 3, 99, 'https://via.placeholder.com/640x480.png/0055aa?text=rerum', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(82, 'Nostrum voluptatem ratione.', 'Voluptatem maiores est tempora ipsam porro molestiae qui sint. Consequatur et molestias corrupti earum quae. Exercitationem ut libero est rerum exercitationem itaque.', 'Odit optio iste nulla architecto. Cum cupiditate repellendus officiis. Dolorem consequatur repudiandae sapiente sunt quaerat eveniet tempore impedit. Amet tempora beatae sed aspernatur vel consequuntur et velit.', 'Vespertino', 3, 'Laboral Básico', 4, 0, 4, 83, 'https://via.placeholder.com/640x480.png/00ddff?text=omnis', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(83, 'Consequuntur aut eum consequatur.', 'Dolor sint non aliquam doloribus et nisi nihil. Itaque consequatur provident aliquam voluptas qui eos ut ut. Eveniet similique eius quasi ea itaque.', 'Voluptatem distinctio aut reprehenderit suscipit unde excepturi. Ea dolor est veniam quo sit nam quaerat. Vero vitae quae aspernatur unde. Quia odit rerum quam tempore eaque.', 'Matutino', 1, 'Fundamental Extendido', 6, 1, 5, 80, 'https://via.placeholder.com/640x480.png/00ffee?text=enim', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(84, 'Consequatur optio qui.', 'Consequuntur eaque illum veritatis. Inventore illum vero qui voluptas expedita eum enim. Illum et nulla repellat sunt. Velit reprehenderit unde quis minima.', 'Sunt id exercitationem iure. Iusto ut voluptatem consequuntur ut ullam. Eveniet quaerat et culpa fugiat eveniet nostrum. Delectus voluptatem autem aut repudiandae amet nihil.', 'Vespertino', 5, 'Fundamental Extendido', 10, 10, 0, 97, 'https://via.placeholder.com/640x480.png/00aaff?text=non', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(85, 'Magnam et consequuntur ut.', 'Laboriosam at rem sint consequatur cupiditate numquam. Voluptas voluptatibus aut optio et consequuntur labore. Commodi nesciunt officia vitae quam officia numquam.', 'Quidem pariatur exercitationem voluptatem. Vel aut a qui suscipit vel cumque quos. Dolorem minima sit qui quasi voluptatem aliquid architecto. Optio vitae eius voluptatibus dolorem sunt libero sed voluptatem.', 'Matutino', 2, 'Fundamental Extendido Obligatorio', 7, 7, 0, 95, 'https://via.placeholder.com/640x480.png/00dd11?text=qui', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(86, 'Impedit cupiditate doloremque consequatur.', 'Omnis modi architecto est. Id rerum totam necessitatibus autem. Reiciendis aut aut veritatis et illo nesciunt molestiae. Ullam molestiae illo rerum quaerat.', 'Odio aut quisquam soluta tempora voluptas error odit. Enim officiis alias quae dolor ut eveniet. Quod voluptas minus id in ea. Voluptatem doloribus ea velit qui aliquam.', 'Matutino', 4, 'Fundamental', 10, 7, 3, 87, 'https://via.placeholder.com/640x480.png/000044?text=harum', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(87, 'Ullam porro qui.', 'Assumenda debitis facilis voluptatem sit odit ipsam eos atque. Excepturi minus ut soluta corporis animi totam. Voluptatem similique unde omnis mollitia minus veniam.', 'Error maxime ducimus incidunt cumque quam iste est quia. Omnis aut consequatur aspernatur quam perspiciatis. Et rerum incidunt dolores enim enim sequi. Omnis quibusdam tempore adipisci eaque ut quia.', 'Matutino', 3, 'Fundamental Extendido', 7, 6, 1, 95, 'https://via.placeholder.com/640x480.png/00bbaa?text=est', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(88, 'Et et quaerat atque.', 'Dolorem eius ad non optio corporis eaque ipsa. Et ut delectus facilis dolorum error sapiente. Doloremque in eum quibusdam velit.', 'Voluptas fugit dolores animi ipsa. Aspernatur cupiditate temporibus eveniet. Sit omnis mollitia molestiae ut ea reiciendis ut et. Sunt modi velit id et voluptas.', 'Matutino', 4, 'Fundamental', 10, 10, 0, 94, 'https://via.placeholder.com/640x480.png/000022?text=qui', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(89, 'Incidunt non qui.', 'Qui et tempore ea et tempore et. Laboriosam ratione doloremque aut illo. Velit id qui nulla quaerat. Nostrum dolore excepturi sint temporibus ad dolorum. Voluptatem aliquam nobis et saepe.', 'Vitae praesentium dolorum officiis nobis qui et. Nisi nisi facilis vero porro. Id pariatur tempore quisquam incidunt recusandae nihil. Consequatur dicta quasi iure ea.', 'Vespertino', 1, 'Fundamental Extendido', 8, 2, 6, 94, 'https://via.placeholder.com/640x480.png/002244?text=sint', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(90, 'In atque est.', 'Fugit delectus tempora iste cum. Esse a molestiae deserunt omnis debitis aut aut minima. Ea consectetur aliquid magnam quia omnis.', 'Quisquam beatae consequatur illo adipisci. Atque magnam sapiente molestiae occaecati debitis rerum. Numquam delectus blanditiis quia minima aut molestias doloremque.', 'Vespertino', 6, 'Laboral Básico', 8, 8, 0, 83, 'https://via.placeholder.com/640x480.png/00ff00?text=consectetur', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(91, 'Quos fugit sed.', 'Ut incidunt omnis voluptatem. Ut ipsum aperiam magnam in. Dolores pariatur quia voluptas qui sit. Qui harum voluptatem ea sit libero at. Nulla placeat aut voluptatem reprehenderit.', 'Eos ut inventore reprehenderit. Id exercitationem quasi quo. Voluptas ipsam labore exercitationem. Adipisci aut quidem omnis.', 'Vespertino', 6, 'Laboral Básico', 6, 5, 1, 92, 'https://via.placeholder.com/640x480.png/00ffdd?text=voluptatem', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(92, 'Cupiditate eligendi possimus sit.', 'Possimus quae laboriosam accusantium eveniet sint nesciunt. Enim nihil doloremque dolores similique id laudantium. Quis consequatur quod consequuntur et.', 'Repellendus ipsum voluptatem veritatis. Consequatur aut animi enim magnam deleniti sed. Recusandae voluptas quas sed. Et voluptatibus voluptate aut quaerat molestias delectus architecto quisquam. Totam corrupti ullam rerum placeat quaerat.', 'Vespertino', 3, 'Fundamental Extendido', 6, 4, 2, 88, 'https://via.placeholder.com/640x480.png/0055ee?text=neque', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(93, 'Et quo labore atque.', 'Dolorum repellat non voluptatum adipisci soluta repellendus. Ipsam fugiat velit provident nostrum laboriosam rem. Alias occaecati nulla accusantium sint quia. Eaque error error ut hic recusandae et.', 'Vel harum esse illo eaque et accusantium sunt. Maiores vitae rerum minus adipisci voluptates laboriosam et. Et reiciendis ipsa illum voluptatum aliquam provident et. Omnis qui neque tempore odio voluptas adipisci.', 'Matutino', 4, 'Fundamental', 5, 2, 3, 88, 'https://via.placeholder.com/640x480.png/0077dd?text=ratione', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(94, 'Ex quo aliquid.', 'Porro sed alias reprehenderit. Sequi quidem et aut aut atque est. Consectetur repudiandae quas ut recusandae et est. Voluptas magnam dolor voluptatum quam amet qui mollitia.', 'Dolor et id provident est nihil sint sit. Atque voluptas ut dignissimos vel.', 'Matutino', 4, 'Ampliada', 9, 8, 1, 93, 'https://via.placeholder.com/640x480.png/006644?text=laudantium', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(95, 'Autem maiores et expedita.', 'Qui est aspernatur necessitatibus adipisci eos et enim. Et commodi necessitatibus suscipit omnis ipsam ut. Numquam odit dolor et. Dolor vel corporis libero hic eum consequatur.', 'Dolor error aut et. Minima voluptas veritatis aut reiciendis. Quasi vel rerum veritatis et sit vel. Vero est labore reprehenderit possimus eius. Magnam sit sed blanditiis atque iure.', 'Matutino', 5, 'Laboral Básico', 4, 0, 4, 93, 'https://via.placeholder.com/640x480.png/00ffbb?text=asperiores', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(96, 'Accusamus unde nihil voluptatibus.', 'Sunt consequatur vitae doloremque fugiat consectetur perspiciatis mollitia. Minima qui neque nobis vitae sit sequi. Voluptatem fuga nisi et praesentium voluptatem nihil.', 'Adipisci sunt aut voluptas temporibus molestiae nulla quisquam. Iure neque velit soluta rem velit. Asperiores tempora optio sit doloremque aut totam. Omnis magnam suscipit sed nemo enim dolores.', 'Matutino', 3, 'Laboral Básico', 8, 6, 2, 94, 'https://via.placeholder.com/640x480.png/00bbee?text=modi', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(97, 'Quibusdam aperiam.', 'Aut tempora ut eaque. Cum dolor consequuntur mollitia exercitationem inventore laborum et. Neque esse dignissimos iste nobis quas sunt.', 'Maiores ex a doloremque. Est repudiandae sed illum sed. Deserunt amet molestiae corporis velit accusantium. Sequi dolore est harum ut. Ut ratione ipsa aliquam est voluptas dolorem tempore ut.', 'Matutino', 4, 'Ampliada', 6, 1, 5, 91, 'https://via.placeholder.com/640x480.png/00ff66?text=eos', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20');
INSERT INTO `asignatura` (`id`, `nombre`, `objetivo`, `intencionDidactica`, `turno`, `semestre`, `componente`, `creditos`, `horasDocente`, `horasEstudioIndependiente`, `calificacionAprobatoria`, `imagen`, `estatus`, `created_at`, `updated_at`) VALUES
(98, 'Omnis ut ipsam libero non.', 'Velit ea expedita qui accusamus accusantium. Amet distinctio ut laborum.', 'Quia tempore qui ut quia explicabo placeat. Molestiae ea velit quis dolor numquam hic. Voluptatem dignissimos eaque minus excepturi quo rerum. Deleniti veniam nobis aut.', 'Vespertino', 2, 'Fundamental', 4, 0, 4, 97, 'https://via.placeholder.com/640x480.png/005588?text=non', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(99, 'Recusandae expedita ut.', 'Consectetur animi at vitae impedit ut. Laborum accusantium itaque explicabo totam nemo. Autem sint ut quam voluptate.', 'Quis ipsam suscipit sequi incidunt. Mollitia ratione temporibus ratione quis autem non. Unde officia eveniet rerum amet ut.', 'Matutino', 4, 'Fundamental Extendido', 8, 0, 8, 89, 'https://via.placeholder.com/640x480.png/00cc11?text=repellendus', 1, '2024-04-21 06:46:20', '2024-04-21 06:46:20'),
(100, 'Molestias repellendus.', 'Tenetur dolorem distinctio ab possimus sed hic ducimus aliquam. Eum culpa vel eos. Repellat nihil corrupti quidem voluptatem.', 'Quia et eos ut suscipit totam voluptates nulla. Iste aut quod fugit incidunt cumque nam est. Ducimus corporis architecto totam eum.', 'Vespertino', 4, 'Fundamental Extendido', 9, 0, 9, 82, 'https://via.placeholder.com/640x480.png/006633?text=aperiam', 0, '2024-04-21 06:46:20', '2024-04-21 06:46:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_docente`
--

CREATE TABLE `asignatura_docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_asignatura` bigint(20) UNSIGNED NOT NULL,
  `id_docente` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura_docente`
--

INSERT INTO `asignatura_docente` (`id`, `id_asignatura`, `id_docente`, `created_at`, `updated_at`) VALUES
(1, 1, 94, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(2, 10, 85, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(3, 55, 87, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(4, 78, 72, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(5, 74, 34, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(6, 61, 37, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(7, 38, 76, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(8, 40, 80, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(9, 62, 5, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(10, 63, 52, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(11, 46, 21, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(12, 47, 64, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(13, 91, 5, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(14, 4, 39, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(15, 83, 71, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(16, 46, 21, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(17, 93, 44, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(18, 80, 19, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(19, 11, 59, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(20, 55, 6, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(21, 59, 44, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(22, 73, 59, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(23, 37, 22, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(24, 32, 85, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(25, 83, 40, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(26, 30, 51, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(27, 30, 15, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(28, 17, 3, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(29, 55, 67, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(30, 19, 69, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(31, 2, 55, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(32, 23, 26, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(33, 25, 23, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(34, 55, 39, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(35, 35, 24, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(36, 52, 77, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(37, 18, 58, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(38, 65, 12, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(39, 18, 77, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(40, 88, 52, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(41, 11, 12, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(42, 93, 53, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(43, 14, 65, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(44, 28, 33, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(45, 84, 89, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(46, 53, 21, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(47, 91, 34, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(48, 90, 41, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(49, 44, 89, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(50, 33, 66, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(51, 8, 18, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(52, 51, 53, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(53, 62, 84, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(54, 80, 46, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(55, 100, 24, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(56, 75, 3, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(57, 59, 83, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(58, 32, 89, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(59, 84, 10, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(60, 32, 36, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(61, 6, 98, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(62, 21, 32, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(63, 17, 70, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(64, 58, 13, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(65, 72, 21, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(66, 30, 29, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(67, 40, 98, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(68, 2, 40, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(69, 66, 74, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(70, 24, 32, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(71, 95, 77, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(72, 94, 4, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(73, 63, 65, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(74, 43, 64, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(75, 46, 33, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(76, 32, 23, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(77, 80, 90, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(78, 45, 21, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(79, 62, 57, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(80, 70, 24, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(81, 80, 13, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(82, 54, 28, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(83, 85, 95, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(84, 27, 74, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(85, 74, 83, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(86, 22, 69, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(87, 18, 24, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(88, 55, 74, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(89, 24, 61, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(90, 51, 28, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(91, 70, 25, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(92, 19, 67, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(93, 61, 9, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(94, 57, 84, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(95, 78, 19, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(96, 45, 41, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(97, 91, 68, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(98, 12, 11, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(99, 66, 76, '2024-04-21 06:54:24', '2024-04-21 06:54:24'),
(100, 11, 83, '2024-04-21 06:54:24', '2024-04-21 06:54:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_asignatura` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `proposito` text NOT NULL,
  `eje` varchar(255) NOT NULL,
  `componente` text NOT NULL,
  `contenidoCentral` text NOT NULL,
  `productoIntegrador` text NOT NULL,
  `calificacionMaxima` int(11) NOT NULL,
  `calificacionMinima` int(11) NOT NULL,
  `porcentajeCalificacionFinal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`id`, `id_asignatura`, `nombre`, `numero`, `proposito`, `eje`, `componente`, `contenidoCentral`, `productoIntegrador`, `calificacionMaxima`, `calificacionMinima`, `porcentajeCalificacionFinal`, `created_at`, `updated_at`) VALUES
(1, 31, 'Fugiat autem et incidunt.', 1, 'Est molestias dicta assumenda repellendus eligendi nostrum at.', 'Voluptatibus voluptatem reiciendis alias exercitationem minima eius.', 'Fuga veniam voluptatem voluptatem doloribus non sint.', 'Est in natus facere odio inventore ex. Qui fugit aut quis sed optio ut. Sed rerum perferendis et ut similique dolor quas. Nihil id quod iste quia. Velit saepe nobis harum consequatur incidunt.', 'Sit rerum eveniet quo molestiae facere quo.', 15, 12, 50, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(2, 67, 'Est architecto dolor adipisci.', 3, 'Rerum laborum maiores repellat asperiores.', 'Sint hic velit corporis sint beatae magni.', 'Cum amet fugit error laudantium.', 'Praesentium sit in aut dolore est aliquid. Voluptatem rem officia veritatis facere et doloribus pariatur vitae. Itaque velit esse aliquid sit et dolores asperiores numquam.', 'Impedit eum tempora suscipit vel in nemo minima.', 11, 9, 48, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(3, 28, 'Et vitae et ut eum.', 1, 'Tenetur quo impedit quidem ipsa perspiciatis rem ut.', 'Quaerat laboriosam distinctio eum inventore nobis voluptas hic animi.', 'Vel sed ad laborum.', 'Ratione aliquam et quos quibusdam corrupti. Eius unde et ad distinctio. Consequatur impedit aut voluptatem occaecati praesentium veritatis.', 'Excepturi voluptate vel et enim perspiciatis.', 24, 19, 32, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(4, 33, 'Assumenda neque sunt.', 2, 'Error qui sunt et impedit iure voluptas saepe expedita.', 'Doloremque et accusantium ut debitis natus.', 'Sit dolores atque sit rem atque quia est at.', 'Quia qui nemo consequatur et voluptates quae cumque. Vitae delectus possimus possimus a reiciendis. Ab velit et incidunt eaque voluptates.', 'Omnis debitis iste dolorem repudiandae molestiae est.', 22, 18, 46, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(5, 33, 'Corporis est qui.', 4, 'Dolorum nisi rerum animi eos eveniet.', 'Eveniet eum autem debitis.', 'Ut odio enim quae optio.', 'Quam ut tenetur qui rem magni. Sit molestiae est ut aut. Modi adipisci enim magni magni commodi quas.', 'Aut maiores quia est quia sit.', 25, 20, 41, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(6, 84, 'Voluptatem minima fuga.', 4, 'Vero voluptatem quo consequatur eos aut.', 'Mollitia sed aspernatur atque eos est vitae quas.', 'Quasi quisquam numquam error consequatur molestiae velit.', 'Quia amet porro laboriosam. Sunt autem modi sit voluptatum. Animi eos ea sit iure perferendis qui.', 'Illum exercitationem voluptas asperiores qui nesciunt.', 18, 14, 45, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(7, 69, 'Dolores similique reprehenderit illo.', 4, 'Alias non tempora occaecati illum.', 'Est at omnis id aliquam rerum soluta est.', 'Ut enim quasi dolor veritatis amet.', 'Ut iusto sed praesentium qui. Minus reiciendis iusto laborum sit. Quos maxime ut mollitia dolores.', 'Non laudantium et quis earum et et.', 28, 22, 36, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(8, 57, 'In est a nesciunt.', 3, 'Sunt rerum voluptatem in.', 'Sequi perferendis vero assumenda.', 'Voluptatem ex qui hic repudiandae animi doloremque voluptas.', 'Sequi consectetur et dolorum cupiditate architecto. Et est ullam aliquam alias. Accusantium id beatae facilis ut.', 'Id eum ducimus autem et earum.', 16, 13, 40, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(9, 51, 'Voluptas quos sed.', 5, 'Dolorum reiciendis est in et.', 'At error alias officiis autem voluptatem dolores veniam ut.', 'Quia voluptas facere et voluptate.', 'Explicabo officiis veritatis ex officia amet. Sunt optio laboriosam delectus id occaecati. Quisquam ut excepturi est aut architecto quia similique. Quae et possimus omnis facere eum officia explicabo.', 'Pariatur quia est voluptatem voluptates earum illum.', 24, 19, 43, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(10, 86, 'Vero soluta.', 5, 'Necessitatibus illo et omnis et quis.', 'Nesciunt saepe earum ut alias voluptate.', 'Aliquam maxime vitae dolor cupiditate dicta ipsum.', 'Similique repellendus eum unde qui ut modi. Omnis possimus necessitatibus provident quos. Consequatur sint et at mollitia aut. Dolor quae sed suscipit architecto quo aperiam iste quia.', 'Ducimus amet sed et at eos aut quia.', 14, 11, 33, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(11, 5, 'Iste saepe accusantium.', 5, 'Doloremque earum enim iusto quas.', 'Non est et sit repellendus ut et.', 'Incidunt facilis officia quidem at hic.', 'Enim autem nobis et consequatur. Consequatur vel dolores nihil nihil et optio modi. Quae enim at magni deleniti eum incidunt.', 'Cum aspernatur deserunt rerum id ratione veritatis.', 18, 14, 41, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(12, 5, 'Occaecati ipsa.', 5, 'Amet earum rerum qui est.', 'Voluptatem ut ut dolores.', 'Repudiandae voluptas id ut fugiat tempora et.', 'Culpa eum impedit dicta quae deleniti qui. Qui a ratione sit tempora aspernatur id. Omnis culpa tenetur nam explicabo debitis molestiae. Ab modi tenetur modi adipisci magni aperiam dolores. Commodi eveniet odio placeat facere.', 'Mollitia nihil minima molestiae est necessitatibus qui recusandae amet.', 12, 10, 42, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(13, 90, 'Molestiae praesentium unde sequi.', 1, 'Nihil necessitatibus aut ut quasi nihil.', 'Non tempora aspernatur sequi aut nulla omnis.', 'Ea aut velit fugit quisquam.', 'Eos est veritatis ipsa sit ut qui. Commodi qui recusandae et. Et enim facilis dolor sunt aperiam labore. Consequatur exercitationem quidem et aliquam.', 'Voluptatem dolores voluptatibus et amet ratione non autem.', 23, 18, 37, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(14, 91, 'Ex corporis ut minus.', 4, 'Eos et at animi nemo.', 'Dicta alias enim rerum eveniet impedit magni voluptatum non.', 'Ratione tenetur occaecati rerum perferendis error aut.', 'Nam magni aut nulla et ut magni et. In qui aut dolorem. Ut a dolor hic quasi fugiat quia. Ipsum quia occaecati eaque ut sequi et omnis eaque. Distinctio tenetur et itaque qui id id reiciendis.', 'Aspernatur numquam quaerat vero cum distinctio.', 18, 14, 39, '2024-04-21 06:47:05', '2024-04-21 06:47:05'),
(15, 79, 'Officiis quo voluptate.', 4, 'Consequatur suscipit aspernatur suscipit.', 'Soluta qui quia placeat nihil aut ut rem.', 'Veritatis quae praesentium sunt velit.', 'Non quaerat cupiditate doloremque. Porro ut repellendus qui libero commodi consectetur quo. Quas quos ut et aut.', 'Quia dignissimos dolorem nostrum quia quaerat.', 13, 10, 38, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(16, 38, 'Et dolorum nam quasi.', 5, 'Aut hic minus at reiciendis repellat ipsa.', 'Praesentium amet animi molestiae est placeat consequuntur esse quas.', 'Ut molestiae enim a.', 'Enim vel sit aut. Animi aperiam eius minus a expedita ducimus in. Et ducimus at quia velit eius harum. Facere nobis sunt nam sunt sed nostrum repudiandae. Totam tempora iusto qui in corporis delectus.', 'Culpa architecto reiciendis voluptates fuga quos voluptatem non.', 30, 24, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(17, 67, 'Distinctio unde id.', 1, 'Sed ut commodi at iste non recusandae magnam soluta.', 'Quod rem rem dolorum accusamus nulla est.', 'Saepe et sit et excepturi eos temporibus.', 'Similique dignissimos dignissimos voluptatem quod ut. Temporibus vero magnam cupiditate voluptatem sit nulla corrupti.', 'Qui recusandae sunt maxime illum.', 18, 14, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(18, 69, 'Quo porro.', 2, 'Iure minima consequatur fugit amet omnis voluptate.', 'Ea similique aut quis illum quae.', 'Est quis et expedita incidunt eum est.', 'Sed aut saepe repudiandae esse accusamus ab. Ullam aperiam eligendi unde totam quia sunt consequuntur. Quo sed ab dolorum expedita ea deleniti consequatur.', 'Ipsa impedit vel doloremque consectetur nam culpa omnis.', 30, 24, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(19, 63, 'Et libero aliquid rerum possimus.', 4, 'Pariatur vero sit debitis beatae eligendi consequatur.', 'Voluptatem est officiis nisi voluptas.', 'Delectus non reiciendis ut non modi rerum.', 'Nemo sequi saepe qui dolorum. Facilis quas reprehenderit et quasi repellat aliquam molestias. Quia eum velit deleniti dolorem. Non labore pariatur laudantium et.', 'Suscipit voluptatem ducimus aut ut pariatur repellendus harum.', 27, 22, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(20, 28, 'Eveniet dolore necessitatibus.', 3, 'Minus expedita velit nesciunt est repudiandae.', 'Ducimus et quisquam vel.', 'Ullam dolorem sit rerum qui quia velit.', 'Ut voluptatibus mollitia nam velit odit accusamus. Voluptatem et ipsum modi facere id corrupti qui. Voluptatem error id sit blanditiis neque quo doloremque.', 'Omnis doloremque doloribus sint fugiat et rerum id.', 30, 24, 50, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(21, 25, 'Aut inventore vel quas.', 3, 'Dolor quo voluptate ex et nisi aspernatur expedita.', 'Unde nesciunt eaque est suscipit expedita non.', 'Necessitatibus quo ullam veniam aut.', 'Qui itaque ducimus rerum. Provident omnis hic maxime quas doloremque sit. Doloribus rem velit alias a est at.', 'Ab quis aut molestiae et.', 28, 22, 32, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(22, 89, 'Ut alias non nihil.', 3, 'Qui illum iste et natus ut atque natus.', 'Quo ut molestiae corporis voluptatem sed in similique saepe.', 'Quo voluptatem eum eveniet.', 'At totam a illum eos sit iste. Aspernatur consequatur sapiente et qui sit. Inventore reiciendis fugit dignissimos voluptatem aliquam vel dolores. Cupiditate consequatur unde autem rerum maxime.', 'Vel quo odit occaecati commodi sint.', 15, 12, 46, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(23, 5, 'Ut autem.', 4, 'Quidem minus in corrupti sequi ut ipsam sit.', 'Et debitis cum ut sit quaerat nihil.', 'Eveniet et alias sed neque omnis.', 'Voluptatibus beatae inventore culpa nostrum soluta dolorum. Consectetur voluptas quo repellat ullam numquam maxime quia. Voluptatem architecto neque ea id consequuntur sequi.', 'Corporis quia aspernatur iure ex.', 11, 9, 46, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(24, 51, 'Voluptatem qui at modi.', 3, 'Temporibus magni eaque sed et quisquam est.', 'Dolores laboriosam enim dicta.', 'Ut quidem vel quidem laudantium et alias sed.', 'Voluptates rerum earum accusantium et sed. Blanditiis eum consequuntur nostrum non porro dignissimos. Earum dolorem vero quidem.', 'Voluptates deserunt deleniti voluptas voluptate est.', 23, 18, 24, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(25, 21, 'Totam at et.', 4, 'Adipisci autem rerum quia rerum.', 'Sit nihil aperiam vel.', 'Iure rem exercitationem beatae iure.', 'Est consectetur enim libero illo aut laborum. Quos quo et facilis. Laboriosam ducimus voluptatem aperiam fuga autem et sed rerum. Ea quibusdam veniam rem repellat praesentium labore facere repellat. Delectus vel explicabo illum numquam ut.', 'Ipsum quia neque nam ipsum enim velit laborum.', 17, 14, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(26, 27, 'Eaque molestiae.', 3, 'At consequuntur odit eligendi odio expedita est.', 'Explicabo temporibus mollitia tempore.', 'Quod aut sint ratione aut voluptas.', 'Vel aliquam sed veniam sit rerum necessitatibus. Nesciunt repellendus rem atque et laborum fugit corrupti. Autem fugit provident sequi vel rerum.', 'Rem voluptatem voluptate explicabo culpa consequatur.', 10, 8, 31, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(27, 13, 'Velit qui repellat inventore.', 3, 'Laudantium est sint assumenda eius aut praesentium.', 'Aut aut voluptas ex voluptas dolorem accusantium.', 'Voluptas non quia deleniti facere.', 'Nobis accusamus culpa nemo qui eaque iure. Officia saepe fugit error nulla eum dolor. Modi sit dolorum rerum deserunt. Iste provident placeat assumenda non.', 'Saepe et sit harum qui velit.', 16, 13, 31, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(28, 44, 'Doloribus sapiente ut blanditiis.', 2, 'Dolore velit et tempora minus nihil sint cum quia.', 'Enim in sunt quod nesciunt ut porro.', 'Commodi commodi reiciendis laudantium dignissimos.', 'Soluta voluptas rerum velit reiciendis dolorem. Nihil repellat aliquid ut voluptate omnis eligendi eos. Maiores velit corrupti maiores adipisci et iusto facilis aut. Ipsum ad nam incidunt quis nam quia. Illum dolorem iure et.', 'Nobis beatae perspiciatis fugit nihil.', 29, 23, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(29, 64, 'Incidunt esse itaque.', 1, 'Vero neque alias est aut.', 'Velit sit et ratione eos et sit.', 'Molestias incidunt blanditiis eligendi quo tempora.', 'Eveniet sed a earum voluptatibus in quos est. Omnis similique delectus aperiam consequatur qui. Sunt fuga sunt perferendis sint perferendis. Non magni dolorem perspiciatis quo suscipit incidunt. Nobis molestiae ullam aliquid doloribus vitae.', 'Autem consequatur provident vitae voluptas non est natus.', 10, 8, 31, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(30, 22, 'Ipsam maiores sit molestias.', 1, 'Occaecati vero voluptas sed voluptatum.', 'Aut voluptate suscipit itaque ratione voluptatum.', 'Rem recusandae cupiditate in illo est ea distinctio aut.', 'Accusantium sapiente consequatur autem quia dignissimos. Totam quas sit recusandae est debitis dolor cupiditate. Doloremque placeat sed omnis sed nisi ex dolores.', 'Totam maiores facilis modi velit delectus temporibus.', 20, 16, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(31, 85, 'Sequi perspiciatis necessitatibus rerum.', 5, 'Blanditiis magni iste ipsa corporis natus autem beatae.', 'Et iure neque non culpa commodi.', 'Dolore aut esse quibusdam a et doloremque.', 'Necessitatibus eum atque blanditiis architecto autem. Quia reprehenderit ea accusamus qui. Hic hic quisquam quis. Delectus ut quis ut excepturi ipsum ea non.', 'Quia nam natus perferendis id tenetur qui est commodi.', 13, 10, 21, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(32, 78, 'Neque ipsa velit.', 4, 'Et voluptatem aspernatur quasi accusamus voluptas.', 'Adipisci quo rerum nulla officiis quod.', 'Tempora distinctio laudantium deserunt quos.', 'Eius praesentium commodi minus. Enim molestiae ut tempore. Placeat est excepturi ea sed deserunt modi.', 'Exercitationem quia ut consequatur qui ullam delectus.', 19, 15, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(33, 89, 'Ut neque.', 4, 'Minus fugiat et nobis vero.', 'Mollitia repudiandae aut labore sint est qui ut suscipit.', 'Tenetur consectetur sequi quia nostrum facilis culpa cum modi.', 'Nulla maiores ullam voluptatem perspiciatis. Sed itaque dolorem rem et voluptatum iusto dolores. Omnis est vitae nam sunt illo sunt. Maiores magnam ipsum ea saepe doloremque ut sed.', 'Tempora dolore qui cumque non incidunt consequatur cupiditate.', 25, 20, 40, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(34, 66, 'Totam esse cumque maiores omnis.', 3, 'Id maiores est veritatis fugiat libero et et.', 'Est sint qui eum consequatur eaque omnis ex.', 'Nisi officiis nam aperiam quam autem numquam.', 'Quia distinctio quis officia autem ut est quia. Ducimus cupiditate qui natus voluptate consequatur quo accusantium rerum. Reiciendis sed ut ratione veniam debitis consequuntur voluptatibus. Impedit facilis aliquid sint aut earum.', 'Eligendi optio ea nulla quod corrupti mollitia eveniet.', 14, 11, 24, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(35, 72, 'Explicabo debitis est accusamus.', 5, 'Voluptate perspiciatis autem quia unde atque.', 'Tempore animi eum est.', 'Fugit possimus consequatur odit aperiam.', 'Mollitia in animi dignissimos repellendus. Voluptas et ea minima atque doloremque inventore qui sit. Veritatis ipsa a inventore perferendis minus non.', 'Eius omnis quibusdam eum voluptatem ut qui velit et.', 21, 17, 24, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(36, 64, 'Earum nihil quia magnam aperiam.', 1, 'Autem consectetur aut nam.', 'Recusandae similique velit delectus id esse explicabo qui.', 'Maxime voluptatem dolorem aut.', 'Dolor voluptatem dolores architecto. Et possimus earum et explicabo commodi quis consectetur.', 'Iste tempore molestias alias molestiae quos voluptatem.', 26, 21, 47, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(37, 57, 'Voluptate architecto ut minus.', 5, 'Soluta dolorem quia illo nulla autem nulla.', 'Aliquid aperiam voluptatum non veritatis labore alias.', 'Ipsa magnam harum beatae nulla harum sit.', 'Provident id fugiat necessitatibus enim alias ab. Ut sint quasi sed in veritatis officiis. Aut velit omnis repellat illo in dolor possimus libero.', 'Unde ullam ut deleniti corrupti et ut sed.', 11, 9, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(38, 59, 'Deserunt eos officia at.', 4, 'Reprehenderit eius consequuntur error porro asperiores fugiat.', 'Velit perferendis consequatur rerum quaerat eum consequatur.', 'Sit nam corporis natus minima recusandae occaecati autem.', 'Et aperiam voluptatem odio debitis et similique soluta earum. Pariatur dolore enim minus. Minima dicta cum molestiae ut.', 'Qui porro quibusdam provident ut expedita amet.', 24, 19, 37, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(39, 16, 'Beatae alias consequuntur animi.', 4, 'Inventore cumque quisquam rem.', 'Aut voluptatibus explicabo eius ipsa.', 'Beatae sapiente id dolorum ut et.', 'Repudiandae itaque magni maxime natus iure qui. Quasi in libero quis voluptas et laboriosam.', 'Consequuntur nulla iste sint.', 30, 24, 43, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(40, 73, 'Voluptas ea minus consequatur dolor.', 5, 'Unde et illum quas perferendis illum.', 'Modi sint accusamus est quae sequi illo aut id.', 'Laborum aut animi numquam aut eligendi aut.', 'Quis odio non omnis quidem omnis possimus at. Exercitationem autem nemo est laborum vel voluptatem corporis. Est consequatur rerum beatae minus et omnis quia.', 'Voluptatem cumque maxime similique vel animi tenetur quaerat.', 17, 14, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(41, 52, 'Officiis illum sed qui.', 4, 'Sunt necessitatibus aperiam ut iusto ratione delectus sint perspiciatis.', 'Laboriosam tempore atque illum quia.', 'Sed eos officia a recusandae ducimus molestiae quibusdam.', 'Qui autem explicabo inventore placeat. Ipsam quasi cumque doloribus ut. Ullam unde repellat excepturi.', 'Impedit quas tempora corporis iusto.', 22, 18, 39, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(42, 26, 'Dolorum quia ad.', 3, 'Quia illo accusamus in.', 'Qui eum minus corporis autem id nemo.', 'Non architecto corporis quos delectus necessitatibus reprehenderit omnis.', 'Inventore quo ad enim rem quia repellat. Ea officiis quia et enim ea. Deserunt minus voluptate velit repellendus. Tempore dolores ex aut.', 'Nihil deleniti quia perspiciatis perferendis quod omnis voluptatem.', 16, 13, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(43, 19, 'Ut provident sed.', 5, 'Maiores quibusdam sit non sequi est autem.', 'Modi unde beatae dolor qui et.', 'Distinctio molestiae aut qui ut at tempore molestias.', 'Facilis voluptates excepturi inventore facilis vel beatae. Sint asperiores consequatur consequuntur magni non beatae maiores omnis. Eius vel consequatur voluptate rem consequatur.', 'Quis blanditiis porro nostrum.', 25, 20, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(44, 97, 'Similique ipsam repellendus nihil qui.', 3, 'Soluta in pariatur beatae quasi tempore modi.', 'Non quo enim in eum quo aperiam nihil eligendi.', 'Distinctio ut molestias accusantium non enim sunt quis.', 'Recusandae distinctio atque aut. Aperiam enim id impedit voluptas. Non voluptas velit reiciendis provident pariatur ut vero.', 'Eum inventore veniam odit sit magnam.', 11, 9, 42, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(45, 69, 'Dolorem tempora veritatis enim.', 5, 'Voluptatum ipsa minus minima aut non dolores quis.', 'Non sint sunt atque aliquid.', 'Et totam officiis recusandae aut veniam aut.', 'Vel harum tempora omnis est. Aut recusandae aut qui officiis sit qui. Ipsa odio similique est commodi.', 'Minus velit sunt tempore nemo quibusdam.', 23, 18, 41, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(46, 17, 'Rerum repellat quae suscipit.', 1, 'Quis commodi consequatur delectus maxime omnis laudantium quia.', 'Recusandae ipsa aperiam dolor et autem rerum.', 'Voluptas dolorem consequuntur at deserunt.', 'Suscipit autem unde et repellat corporis recusandae nihil. Aut sit ea qui vel. Optio alias quidem ut illum ipsam aut sit est.', 'Voluptas facere sint provident et cupiditate.', 24, 19, 30, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(47, 66, 'Iusto minima odit.', 5, 'Tempora eaque maxime voluptatum.', 'Provident aliquam sed alias accusamus temporibus dolores autem.', 'Hic est quaerat rerum architecto consequuntur harum.', 'Ratione molestiae vel a eos facilis. Dignissimos dolorum voluptatem a nemo sint et. Debitis ipsum non harum veritatis accusantium officia.', 'Amet officia consequatur et reprehenderit ullam asperiores et eum.', 11, 9, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(48, 84, 'Corporis dolorum similique fugit qui.', 3, 'Delectus placeat sint laudantium quam vitae.', 'Qui est minima id.', 'Voluptas tenetur illo quo.', 'Esse eveniet illo atque provident eos. Quia optio repellat vitae atque quod debitis placeat possimus. Qui assumenda repellat fugiat quis.', 'Qui est autem aut voluptatem possimus rerum nostrum a.', 10, 8, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(49, 10, 'Minima officiis quaerat quod.', 4, 'Dolore aut vero dolore reprehenderit.', 'Ad est ipsum debitis officia architecto aspernatur aperiam veritatis.', 'Molestiae necessitatibus ut nobis omnis et sit quam.', 'Quia voluptatem officiis ut quia porro est fugit. Unde minus qui et veniam sit doloremque soluta. Qui fugit fugiat eos minus doloribus voluptas cumque.', 'Pariatur perspiciatis quae occaecati nam et minus corrupti.', 22, 18, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(50, 42, 'Vel nisi sequi.', 3, 'Beatae in quia fugit ut.', 'Iure est consequatur ipsam enim sequi.', 'Qui molestias similique dignissimos adipisci.', 'Dolorem autem facere nihil eligendi nobis consequatur. Distinctio voluptatem saepe corrupti.', 'In omnis vel ut.', 11, 9, 36, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(51, 33, 'Expedita iste sed.', 1, 'Nesciunt aut saepe recusandae tenetur.', 'Quam dolorum culpa quia id illum.', 'Neque quo id dolor excepturi vitae cupiditate quam.', 'Et temporibus aperiam eligendi ratione voluptates. Quidem minus et rerum deserunt qui. Eveniet molestias eum maxime.', 'Aut dicta quis voluptatem velit in voluptatem deserunt.', 19, 15, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(52, 12, 'Architecto numquam fugiat.', 3, 'Explicabo nisi accusamus est quasi laudantium.', 'Reiciendis aperiam asperiores in sed.', 'Consequatur sequi explicabo sequi qui eaque voluptas voluptas.', 'Sit fugiat exercitationem tempora. Et aliquid aliquid exercitationem fugit sed. Illum aut ipsa earum cum ea eius in corporis. Fuga aut ut et animi dolor est nisi.', 'Delectus sed fugiat blanditiis cum ut natus est ea.', 30, 24, 28, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(53, 35, 'Harum veniam rerum.', 3, 'Rem ab qui ut consequuntur qui eos deleniti.', 'Accusamus voluptatibus fugiat voluptas.', 'Aliquam enim id reiciendis sint eos unde.', 'Minus explicabo commodi modi sequi placeat. Harum quidem esse eos id est facilis labore. Error consequuntur architecto enim atque quae.', 'Sint veritatis odit repudiandae fugiat velit non labore nihil.', 15, 12, 27, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(54, 87, 'Maiores a optio.', 1, 'Vitae similique autem est incidunt omnis eum.', 'Vel molestiae dolorem aut rerum temporibus ut totam sit.', 'Ut sed ipsam sequi.', 'Aut placeat facere quas soluta quia repudiandae. Odio est temporibus blanditiis recusandae. Voluptas eum error nobis cumque ratione recusandae ipsum.', 'Earum id voluptas qui aliquid possimus dolor.', 21, 17, 36, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(55, 56, 'Dolor sed sed harum.', 5, 'Eligendi hic odit repudiandae voluptatem odio velit rerum nulla.', 'Vel debitis delectus commodi pariatur accusantium.', 'Eius assumenda magnam ratione ut dolor blanditiis quibusdam.', 'Id aspernatur quos velit consequatur expedita. Reprehenderit et recusandae et quisquam. Necessitatibus voluptatem ut aut id consequatur delectus facere.', 'Ipsum optio aut aspernatur et fugit in porro.', 24, 19, 48, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(56, 96, 'Officiis sunt nam illo.', 1, 'Atque consectetur commodi non dolorum laborum.', 'Neque ipsam ex vero est at voluptas.', 'Voluptatum nostrum repudiandae commodi id in.', 'Eos vitae dolorem nam quia quia qui. Blanditiis aut architecto accusamus consequatur. Quidem voluptas nemo voluptatem sit reprehenderit tenetur quidem labore. Voluptate dicta nam est ipsum rem reiciendis accusamus eos.', 'Ipsum laboriosam hic facilis voluptatem eum aut quod.', 29, 23, 36, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(57, 29, 'Ea et voluptatibus odit.', 5, 'Et autem itaque qui dolorum perspiciatis.', 'Est atque incidunt et est animi.', 'Non aut aut consectetur similique in commodi.', 'Veritatis corporis quam sed vitae. Ipsum eaque qui voluptatum animi. Sed id nobis veniam hic totam beatae repudiandae. Sed adipisci velit nisi est.', 'Labore eius minima quia molestiae vitae sint nihil.', 16, 13, 22, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(58, 36, 'Id quod suscipit suscipit.', 4, 'Voluptas fugiat qui illum occaecati porro officiis nulla.', 'Et qui aut quibusdam qui.', 'Asperiores culpa repudiandae est reiciendis repudiandae dolor.', 'Nemo et atque itaque. Consequuntur minus minima quia.', 'Ducimus debitis ab voluptas et quia nisi eos.', 13, 10, 24, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(59, 26, 'Sit eum et.', 1, 'Neque quo et libero.', 'Ad eos velit sit magni repellendus.', 'Magnam minima excepturi soluta id et accusantium.', 'Aliquam mollitia tempora assumenda id ut eum cum omnis. Iusto dolorum ea et atque cupiditate vel doloremque. Ea sint aperiam asperiores ratione harum qui voluptatem.', 'Nihil nostrum voluptatibus maxime ab repellat deserunt sed est.', 15, 12, 23, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(60, 64, 'Ut non itaque qui.', 4, 'Voluptatum amet eligendi ullam fugiat.', 'Totam asperiores modi nisi natus rerum.', 'Porro rerum non laudantium sint sint qui quis.', 'Odit odit sit et veritatis est tempore est. Dicta aut reprehenderit rerum est voluptatem et enim. Ut tenetur omnis assumenda tempora sed. Aliquam sapiente quae delectus quaerat.', 'Error quia ea hic qui officia saepe.', 21, 17, 47, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(61, 67, 'Quia molestiae aut.', 5, 'A omnis quaerat dolorum a odio expedita accusantium.', 'Odit quaerat sunt voluptatem earum aliquid.', 'Est sunt nihil consequuntur reiciendis.', 'Ipsam in corrupti autem. Quas nihil officiis sunt harum. Dolores in nihil autem et.', 'Itaque aut itaque ex.', 28, 22, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(62, 26, 'Aut voluptate assumenda.', 1, 'Reprehenderit repudiandae ea quis ea impedit molestiae et.', 'Est voluptates vel error alias inventore magnam.', 'Animi quae velit error qui et.', 'Quis assumenda delectus itaque et perferendis dolorem. Non nobis repudiandae similique cumque. Deserunt asperiores provident ea accusamus et eum voluptatem.', 'Incidunt voluptate hic repellendus.', 19, 15, 38, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(63, 80, 'Deleniti at dolorum hic.', 4, 'Quasi et quia cum exercitationem voluptatem itaque omnis.', 'Molestiae incidunt impedit at cumque.', 'Labore aut fugiat qui enim et necessitatibus quia.', 'Deleniti magnam tempore officiis. Dolorem similique exercitationem nihil voluptatum optio voluptas veniam. Quidem eius quis debitis est eius dolorum dicta. Minus impedit fugit nihil voluptate voluptas maiores aut qui.', 'Tempora aliquam dicta id magnam porro ipsum in.', 18, 14, 35, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(64, 37, 'Vitae quibusdam corrupti.', 4, 'Officia exercitationem et sit consequuntur occaecati nihil id.', 'Enim consequatur libero ut nobis quasi id aperiam.', 'Quia nam alias odit accusamus modi quia.', 'Eligendi totam fuga quia doloribus in quibusdam. A in perspiciatis voluptas quia debitis quia. Voluptas vero vel et nostrum.', 'Aperiam nulla doloremque qui at occaecati et.', 13, 10, 38, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(65, 70, 'Est alias ad.', 2, 'Ea sunt quia cum corrupti optio.', 'Ea quia sequi dolor fugit.', 'Et distinctio quidem exercitationem non aliquid et.', 'Harum fuga aut molestiae omnis itaque deleniti. Vel cupiditate asperiores quasi animi magni asperiores ea. Aperiam pariatur soluta sequi aut culpa. Velit quis qui odit nesciunt et doloremque. Et qui eum voluptatem beatae.', 'Optio est velit et dignissimos at ipsa ut recusandae.', 15, 12, 21, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(66, 95, 'Est eaque id.', 5, 'Adipisci maiores aut saepe.', 'Ducimus quis tempore nesciunt et.', 'Accusamus dolore exercitationem modi molestiae accusantium voluptatum.', 'Sunt odio et quas hic esse. Eos doloribus dolorem aut est asperiores suscipit facilis. Et aut aliquam saepe rerum qui.', 'Accusamus aut non magnam quia animi suscipit esse possimus.', 15, 12, 24, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(67, 6, 'A pariatur iure quia.', 5, 'Nihil ipsam voluptatem et quis.', 'Ratione atque cum reprehenderit ut.', 'Praesentium qui nulla quam sint ipsum in et.', 'Quis inventore sed reiciendis molestias nisi eos. Omnis et ea consequuntur excepturi. Iusto animi odio perspiciatis quasi at molestiae eaque.', 'Et ex repudiandae sunt animi nemo.', 23, 18, 40, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(68, 77, 'Eius illum voluptas voluptatum.', 2, 'Inventore aut perferendis accusantium est possimus laborum porro.', 'Voluptatem omnis repellendus ea dolorem omnis hic nihil.', 'Dignissimos qui distinctio quia fugiat labore non facilis.', 'Enim qui et minus ex voluptatem amet. Et adipisci porro libero veritatis et consequatur unde. Deserunt incidunt est aut. Quam saepe doloremque iure tempora explicabo. Explicabo eos harum consequatur expedita qui quibusdam quis blanditiis.', 'Odio dolores corporis reprehenderit maxime sit.', 18, 14, 27, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(69, 62, 'Sint velit quos.', 2, 'Laboriosam voluptatum recusandae beatae.', 'Sequi eum et omnis possimus qui.', 'Exercitationem consequatur ullam est.', 'Quas qui autem blanditiis natus doloribus et. Dolorum in dicta suscipit ut architecto quae sit. Error dolor facilis atque eum enim voluptatum qui sunt. Sed laudantium et voluptates et illum voluptate nostrum libero.', 'Cumque cupiditate dignissimos fuga et.', 26, 21, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(70, 40, 'Ut rerum vel a.', 4, 'Est error voluptates magni distinctio et.', 'Fuga quae ipsum voluptatem qui nisi quos.', 'Mollitia dolore et necessitatibus sit quis praesentium.', 'Ut non dolor nobis ut tenetur dicta suscipit. Nobis illum dignissimos debitis ipsam laboriosam autem non. Commodi molestias culpa illum rerum ipsam. Temporibus harum fuga itaque voluptas ad optio.', 'Consequatur in ut et animi ullam id.', 13, 10, 27, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(71, 14, 'Fuga minima molestias et quia.', 4, 'Sunt iusto quam consectetur incidunt eius.', 'Consequatur est perferendis praesentium voluptas.', 'Nostrum sint accusantium dicta possimus.', 'In aut nulla sed sunt. Tempore est sint quis. Nihil qui possimus vero.', 'Dolores maxime exercitationem laboriosam mollitia maiores.', 24, 19, 26, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(72, 66, 'Et rerum commodi rerum.', 5, 'Eos expedita et quasi qui debitis modi.', 'Facilis voluptatibus adipisci nulla.', 'Distinctio molestiae inventore ratione assumenda praesentium optio.', 'Aut vero sit veniam ullam. Voluptas praesentium quia explicabo distinctio est excepturi. Quidem magnam repellendus laborum.', 'Sit vero eum quisquam nulla omnis.', 26, 21, 35, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(73, 57, 'Dolore asperiores ut.', 4, 'Autem quo fugit earum iusto.', 'Quisquam perferendis et exercitationem.', 'At pariatur beatae dolorum occaecati non.', 'Illum ut sit aliquid inventore aut repellat. Recusandae sit quod accusantium et laborum rem est. Quod rerum aspernatur numquam voluptatum corrupti unde consequuntur ipsam.', 'Quas perspiciatis sed iusto aperiam omnis.', 30, 24, 44, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(74, 57, 'Eligendi est rerum temporibus molestiae.', 4, 'Autem ipsam beatae aliquid commodi consequatur veritatis consectetur.', 'Commodi iste modi non est aut ea sit.', 'Recusandae recusandae incidunt odit omnis facere autem.', 'Ut omnis esse porro ut facere quis in quo. Aut esse alias incidunt aspernatur aspernatur ipsam. Vero velit facilis fugit aliquid voluptatem voluptatem ipsam magni. Corporis dolores quia sit optio voluptas veniam nesciunt.', 'Ut fugit fugiat alias ut quibusdam et.', 19, 15, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(75, 95, 'Animi consequuntur in.', 5, 'Nihil fuga molestiae provident rerum.', 'Et recusandae ducimus dolorem.', 'Doloremque vero amet deleniti et voluptate.', 'Et consequatur nisi nesciunt doloremque impedit voluptas. Et fugiat facere ducimus. Et consectetur consequatur dolorum sint.', 'Aliquid iure quae suscipit temporibus quis placeat quia.', 26, 21, 38, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(76, 42, 'In minus rerum.', 4, 'Libero dolor quod voluptatem.', 'Blanditiis non nam molestiae animi porro veniam.', 'Cumque et et repudiandae facilis doloremque facilis.', 'Voluptatem corrupti consequuntur et voluptatibus consequatur quisquam. Rem quia quidem voluptas ipsum aliquam. Atque voluptatem soluta est cupiditate. Sequi ipsum ut dignissimos ut consectetur aliquam laboriosam.', 'Fuga odio numquam eos modi quo.', 30, 24, 25, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(77, 52, 'Dolore accusantium non.', 4, 'Quasi impedit alias quia quia accusamus hic.', 'Rerum sed iusto eos consequuntur.', 'Qui ipsa a dolore et quis eum.', 'Exercitationem quidem eum sed quasi eligendi sunt consequatur. At maiores minima tempore explicabo.', 'Velit unde in eum.', 10, 8, 26, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(78, 23, 'Molestiae cupiditate natus totam distinctio.', 4, 'Repudiandae nemo doloribus amet consequuntur maiores nobis accusamus dolore.', 'Dolores molestias qui et qui voluptatem asperiores.', 'Non porro molestiae earum et omnis est aliquid laudantium.', 'Est saepe omnis quasi repudiandae architecto. Nisi ipsam voluptates qui animi eaque. Autem ut sapiente consequatur repudiandae magnam cumque illum quia.', 'Odit ut facere est officiis animi sed sed.', 25, 20, 41, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(79, 83, 'Non dolor ut.', 2, 'Ducimus voluptas eum et nihil laboriosam voluptas.', 'Sed ut voluptatem libero ut et animi dolor.', 'Perferendis aut quia sit sapiente dicta.', 'Earum quis accusantium nulla quia in. Eligendi doloribus quia cumque fugiat incidunt. Odio accusamus ex velit et et vitae. Saepe repudiandae voluptate quasi dignissimos perspiciatis.', 'Quidem numquam placeat debitis sapiente ducimus corporis.', 22, 18, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(80, 60, 'Facere necessitatibus tempora omnis.', 4, 'Repudiandae ipsum eum at ut dolor assumenda accusamus quam.', 'Sit possimus ullam cumque necessitatibus explicabo et enim.', 'Ratione suscipit ipsam deserunt distinctio culpa reprehenderit voluptas.', 'Ut sapiente vel dicta molestiae. Eum corrupti quam deserunt sint. Nobis qui aspernatur a. Deleniti et ut voluptatibus quidem corporis quos.', 'Aut officia aut aliquam et.', 26, 21, 26, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(81, 65, 'Voluptatem ipsum amet est.', 3, 'Eaque totam tempora inventore possimus magni est id.', 'Earum et corrupti eligendi vel illo et.', 'Est earum quas architecto.', 'Unde dignissimos voluptatem exercitationem quia inventore. Ipsum et commodi eum ab voluptatibus omnis nulla. Ipsam dolorem maxime error pariatur ut delectus maxime aspernatur. Dolore dolor debitis hic cum nam.', 'Perferendis voluptas qui est modi.', 12, 10, 48, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(82, 72, 'Corrupti vel et.', 1, 'Aut aspernatur iusto praesentium dolorem.', 'Cupiditate dolor modi aliquam eum laboriosam quis animi.', 'Molestiae dolor sequi sed et sed delectus.', 'Aperiam veniam rerum voluptatem. Ullam quia fuga dolorem velit et. Veniam deserunt consequatur molestias aliquid soluta corporis explicabo.', 'Dolores sint perferendis fugit dolores dolores dolores velit.', 16, 13, 42, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(83, 19, 'Amet consequatur officiis et.', 4, 'Possimus voluptate fuga explicabo velit nesciunt molestias id.', 'Odit cum aperiam hic ipsam quia.', 'At optio natus molestiae voluptatum est.', 'Ipsa accusantium consequatur aut et aut. Ratione esse et quis modi assumenda fugit. Dolorem necessitatibus omnis et perspiciatis dolorem adipisci doloremque.', 'Qui expedita dicta sint hic sint voluptatibus.', 14, 11, 25, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(84, 95, 'Maxime est culpa.', 3, 'Voluptas dolor aut in natus.', 'Et vitae est recusandae.', 'Et dolore dolor non est nulla unde.', 'Laboriosam et architecto est possimus error. Quo est aut consequatur et voluptatem provident corporis consequatur. Fugit numquam animi dolor qui.', 'Possimus dicta neque neque.', 20, 16, 47, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(85, 69, 'Sed qui corporis consequatur nesciunt.', 1, 'Fugit accusamus aut ducimus earum.', 'Corporis similique laboriosam illum dolores.', 'Est iure placeat consequatur in ut quasi.', 'Modi incidunt voluptatum ut earum assumenda dicta neque. Id consequatur laborum voluptate et. Quis nemo velit optio vel at.', 'Ut ea inventore et nostrum.', 17, 14, 50, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(86, 38, 'Corporis veritatis in eum.', 3, 'Odit et quam est architecto.', 'Expedita tenetur earum ut dolorem.', 'Vero eum aut reiciendis dolores aliquid.', 'Accusamus quia rerum voluptas consequatur unde et quis temporibus. Est eius deserunt qui voluptatum fugit rerum officia. Ratione debitis atque tempore est reiciendis aspernatur. Sed enim eos facilis omnis.', 'Saepe aut minus reiciendis porro perspiciatis non placeat.', 28, 22, 26, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(87, 46, 'Quia ullam quibusdam velit.', 1, 'Ea ab nam ab consequatur qui.', 'A nostrum praesentium accusamus molestiae rerum eius aut voluptas.', 'Qui laudantium ex eveniet ipsam voluptatum explicabo.', 'Aut quo est magni amet. Dolorem et asperiores voluptatem possimus sint. Ratione repudiandae eaque qui totam optio quos distinctio.', 'Id necessitatibus ad cupiditate.', 17, 14, 44, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(88, 24, 'Ipsam cupiditate alias.', 3, 'Tenetur consectetur officia porro amet minima dolores.', 'Aperiam sunt voluptas aspernatur exercitationem consequuntur.', 'Esse et dignissimos debitis dolores distinctio explicabo fugit.', 'Voluptatibus nesciunt maxime repellendus magni. Sed distinctio qui accusantium voluptas hic qui aut. Ut nesciunt non sint sapiente aspernatur architecto ut.', 'Deleniti labore blanditiis vitae omnis.', 25, 20, 27, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(89, 13, 'Non numquam possimus voluptas.', 5, 'Et ut quis qui quisquam quos praesentium.', 'Nulla qui ex eum vel iusto.', 'Deserunt vel sunt veniam provident.', 'Qui magnam reiciendis quo dolores vel. Minus id saepe adipisci commodi qui. Quo accusamus rerum harum dolor neque.', 'Accusamus perspiciatis sequi iste nihil libero.', 16, 13, 34, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(90, 12, 'Tenetur et nemo.', 3, 'Blanditiis voluptas laborum asperiores.', 'Repellat qui officiis adipisci consequatur magnam.', 'In laborum autem dolore veniam laborum sequi.', 'Et non adipisci ea qui ut. Sit illo et quam et eius beatae. Ipsum officia nam aut.', 'Hic ducimus nostrum aperiam et suscipit.', 13, 10, 33, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(91, 87, 'Labore enim laborum ea.', 4, 'Expedita et sit deserunt.', 'Ullam aut culpa vitae omnis.', 'Ipsum vitae quisquam et velit quo officiis veniam.', 'Consectetur repellendus sunt autem excepturi dicta nisi aspernatur. Ratione eligendi facilis omnis. Ipsam et dolorem cumque illo quia iste deleniti. Deleniti est quasi ducimus voluptatem non eos. Esse quae molestiae similique aliquid dolores id.', 'At soluta recusandae voluptas et alias nihil distinctio atque.', 11, 9, 45, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(92, 55, 'Commodi saepe at omnis.', 3, 'Tempore corrupti adipisci in et voluptatem saepe perspiciatis libero.', 'Saepe dolores sit et similique magni optio.', 'Excepturi eos aspernatur quia beatae dignissimos velit doloribus.', 'Sit illo rerum adipisci voluptas amet. Tempore animi quia earum voluptatem. Alias cumque modi quia vitae. Totam maxime molestiae vel sint recusandae excepturi doloremque.', 'Molestiae error dolore molestias non aut quibusdam sit.', 28, 22, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(93, 88, 'Porro libero et aut.', 2, 'Molestiae illum neque dolore ut ut sit.', 'Sint sequi tempore rerum sunt ea est.', 'Veritatis voluptatem et sapiente repudiandae aut ipsa dolore.', 'Quam velit neque placeat sed quis. Quia qui alias ipsum qui fugiat qui et.', 'Aut officia fugit in.', 27, 22, 32, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(94, 44, 'Facilis ipsum.', 2, 'Est tempore at natus iste cum.', 'Omnis ipsam voluptatem deleniti ut qui.', 'Nesciunt quisquam odit iure perspiciatis.', 'Exercitationem sit quae excepturi non maxime. Veniam velit quis eum esse. Earum quos ratione numquam soluta quasi mollitia occaecati.', 'Eum eum nulla dolore libero qui quae.', 26, 21, 45, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(95, 84, 'Sit sint at hic.', 3, 'Placeat quasi omnis omnis quia eligendi.', 'Ipsum officia nisi iste soluta sit.', 'Labore aliquid illo id et.', 'Ullam et qui nobis omnis dolores natus iure. Soluta nam fugit nemo. Aliquam accusamus veritatis et natus sint et.', 'Sint minima pariatur ut ipsa adipisci.', 11, 9, 20, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(96, 24, 'Sunt ut est.', 3, 'Molestiae nobis voluptate itaque quae.', 'Quas quo quia sed consectetur quia vel ducimus.', 'Error quia quas iste incidunt earum voluptatem.', 'Corrupti corporis sed veritatis est qui in. Ducimus aperiam consequuntur nostrum molestias fuga facere. Quidem architecto nam consequuntur quaerat. Alias vero exercitationem unde in.', 'Sint non sapiente sequi autem omnis vel facilis.', 18, 14, 49, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(97, 52, 'Hic blanditiis hic voluptatum.', 3, 'Quaerat ab dignissimos et tempora illo voluptatibus.', 'Cum est omnis vel beatae voluptatem quia minima.', 'Impedit dolores natus doloremque quia facilis dicta.', 'Ut iure aut voluptatem illo nam. Sequi molestiae asperiores neque voluptas veniam. Ut non nesciunt eius eveniet eveniet.', 'Unde ipsum aut illo sit vero.', 11, 9, 47, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(98, 41, 'Harum minus harum ut.', 4, 'Aliquid et sunt blanditiis quae ut cum.', 'Blanditiis quod velit qui eum architecto eius.', 'Consectetur quasi et consequatur.', 'Dolores assumenda quisquam accusamus suscipit libero fugiat molestiae. Velit rerum neque iure necessitatibus reprehenderit distinctio dolor perferendis. Perferendis cumque facilis nihil officiis esse et. Debitis est ea possimus atque in libero quia.', 'Magnam iste tempore eum atque quia.', 14, 11, 29, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(99, 9, 'Consequatur enim aut dolores laudantium.', 1, 'Voluptate vel asperiores unde voluptatem adipisci qui in dolor.', 'Ex et sequi iusto.', 'Officiis quaerat sunt quia voluptatem minus doloremque.', 'Velit repellat molestias aperiam beatae laborum a qui officiis. Sit beatae dolor repudiandae hic. Porro aliquam quod eveniet consequatur nesciunt. Aperiam quia dolores laborum.', 'Et ut eius numquam aut sit est molestiae.', 10, 8, 40, '2024-04-21 06:47:06', '2024-04-21 06:47:06'),
(100, 2, 'Possimus non similique debitis rem.', 1, 'Quaerat nobis modi qui quia quasi odio.', 'Mollitia ratione cupiditate debitis.', 'Earum quod voluptatem quibusdam est repellat.', 'Consequuntur sit sed laudantium nostrum est nam libero et. Quo aspernatur totam cupiditate non. Eum atque aut rem laudantium possimus. Aspernatur ipsum inventore qui nemo occaecati animi.', 'Et eum aliquam id quisquam.', 20, 16, 31, '2024-04-21 06:47:06', '2024-04-21 06:47:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque_progresion`
--

CREATE TABLE `bloque_progresion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Bloque` bigint(20) UNSIGNED NOT NULL,
  `id_Progresion` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bloque_progresion`
--

INSERT INTO `bloque_progresion` (`id`, `id_Bloque`, `id_Progresion`, `created_at`, `updated_at`) VALUES
(1, 39, 98, '2024-04-21 07:19:14', '2024-04-21 07:19:14'),
(2, 16, 52, '2024-04-21 07:19:14', '2024-04-21 07:19:14'),
(3, 42, 49, '2024-04-21 07:19:14', '2024-04-21 07:19:14'),
(4, 74, 61, '2024-04-21 07:19:14', '2024-04-21 07:19:14'),
(5, 23, 22, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(6, 76, 4, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(7, 95, 98, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(8, 12, 44, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(9, 92, 88, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(10, 55, 20, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(11, 92, 41, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(12, 86, 66, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(13, 92, 66, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(14, 11, 2, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(15, 71, 7, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(16, 15, 40, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(17, 62, 67, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(18, 94, 26, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(19, 28, 84, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(20, 88, 62, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(21, 53, 34, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(22, 21, 61, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(23, 20, 47, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(24, 65, 100, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(25, 66, 87, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(26, 66, 35, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(27, 50, 16, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(28, 91, 39, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(29, 11, 47, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(30, 1, 24, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(31, 27, 78, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(32, 57, 38, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(33, 22, 75, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(34, 16, 50, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(35, 82, 18, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(36, 76, 24, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(37, 26, 100, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(38, 51, 79, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(39, 30, 83, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(40, 58, 30, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(41, 56, 30, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(42, 39, 7, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(43, 36, 42, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(44, 97, 6, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(45, 97, 49, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(46, 68, 20, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(47, 31, 89, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(48, 53, 28, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(49, 4, 90, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(50, 24, 7, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(51, 8, 39, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(52, 82, 92, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(53, 28, 45, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(54, 48, 96, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(55, 4, 3, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(56, 73, 52, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(57, 76, 88, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(58, 75, 98, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(59, 88, 96, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(60, 4, 16, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(61, 45, 33, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(62, 8, 74, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(63, 82, 62, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(64, 79, 18, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(65, 96, 76, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(66, 60, 40, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(67, 37, 94, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(68, 9, 41, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(69, 89, 35, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(70, 34, 48, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(71, 46, 66, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(72, 94, 63, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(73, 28, 77, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(74, 84, 45, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(75, 78, 46, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(76, 50, 4, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(77, 60, 65, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(78, 55, 1, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(79, 72, 53, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(80, 3, 85, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(81, 59, 95, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(82, 35, 85, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(83, 40, 44, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(84, 67, 74, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(85, 74, 55, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(86, 29, 23, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(87, 75, 4, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(88, 55, 38, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(89, 29, 69, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(90, 39, 35, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(91, 21, 26, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(92, 52, 98, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(93, 55, 95, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(94, 75, 42, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(95, 29, 2, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(96, 33, 50, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(97, 100, 66, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(98, 30, 60, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(99, 64, 42, '2024-04-21 07:19:15', '2024-04-21 07:19:15'),
(100, 48, 40, '2024-04-21 07:19:15', '2024-04-21 07:19:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Usuario` bigint(20) UNSIGNED NOT NULL,
  `fechaContratacion` datetime NOT NULL,
  `fechaDimision` datetime DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `id_Usuario`, `fechaContratacion`, `fechaDimision`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 44, '2011-09-08 15:50:12', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(2, 87, '2023-10-02 17:06:36', '2026-08-24 04:16:58', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(3, 64, '2020-05-20 09:34:59', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(4, 80, '2021-05-31 20:32:42', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(5, 64, '2009-10-31 00:46:30', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(6, 39, '2010-08-07 15:17:26', '2021-10-29 22:47:11', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(7, 11, '2020-05-12 19:01:51', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(8, 93, '2020-07-10 06:46:58', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(9, 62, '2013-02-21 22:12:57', '2021-01-23 04:25:03', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(10, 39, '2024-04-16 07:30:21', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(11, 1, '2004-10-10 09:24:19', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(12, 50, '2021-05-26 08:45:03', '2022-03-23 02:01:39', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(13, 95, '2018-10-24 07:35:45', '2026-03-12 15:05:17', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(14, 48, '2009-06-16 11:50:25', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(15, 5, '2020-12-05 19:34:22', '2021-08-22 10:52:36', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(16, 82, '2018-03-03 22:22:29', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(17, 64, '2019-05-13 23:02:52', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(18, 80, '2005-01-09 08:45:59', '2019-02-11 00:58:06', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(19, 53, '2005-05-01 13:40:36', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(20, 95, '2010-07-27 11:55:24', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(21, 53, '2018-03-29 23:27:22', '2026-08-30 10:16:49', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(22, 91, '2015-01-15 15:10:54', '2020-10-16 23:02:59', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(23, 36, '2006-06-17 15:53:42', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(24, 23, '2007-09-04 03:31:59', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(25, 36, '2019-01-21 16:33:23', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(26, 80, '2014-07-26 03:31:16', '2022-12-01 08:30:01', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(27, 99, '2004-10-28 10:50:51', '2024-05-29 23:57:09', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(28, 23, '2018-03-02 06:07:42', '2019-05-06 19:36:42', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(29, 55, '2019-02-13 03:41:37', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(30, 17, '2016-03-21 20:47:40', '2023-09-03 10:45:56', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(31, 99, '2021-01-20 10:56:25', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(32, 3, '2009-06-05 07:17:45', '2013-04-07 03:20:46', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(33, 84, '2009-11-01 03:14:37', '2010-08-06 16:57:20', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(34, 63, '2016-09-13 11:10:40', '2026-08-01 15:32:34', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(35, 23, '2018-11-12 18:57:39', '2025-11-06 15:01:57', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(36, 55, '2006-02-21 22:30:13', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(37, 69, '2018-12-24 01:35:05', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(38, 39, '2022-11-22 09:24:10', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(39, 89, '2011-05-22 00:57:33', '2014-05-23 19:52:40', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(40, 16, '2005-04-19 00:30:04', '2019-08-24 06:54:12', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(41, 55, '2022-12-30 10:29:44', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(42, 55, '2020-07-16 17:43:36', '2027-04-11 10:54:57', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(43, 55, '2015-09-11 03:17:08', '2016-04-08 16:06:59', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(44, 89, '2010-11-24 09:42:24', '2013-03-25 16:17:35', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(45, 63, '2011-10-26 13:37:48', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(46, 82, '2004-08-12 12:56:26', '2019-08-25 12:06:49', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(47, 89, '2019-03-03 07:52:19', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(48, 82, '2009-10-30 13:30:23', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(49, 69, '2009-02-20 22:58:23', '2016-01-22 18:39:28', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(50, 95, '2016-01-29 06:41:56', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(51, 55, '2010-12-25 13:19:57', '2017-09-16 13:53:13', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(52, 92, '2006-06-22 21:47:57', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(53, 84, '2005-03-06 22:28:57', '2011-12-06 14:54:47', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(54, 84, '2020-10-13 08:39:29', '2024-01-28 01:33:12', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(55, 63, '2012-10-05 10:35:31', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(56, 5, '2009-03-01 11:44:47', '2025-05-29 04:27:30', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(57, 99, '2005-07-14 03:21:09', '2009-07-08 13:02:24', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(58, 53, '2014-09-25 04:40:33', '2022-07-11 03:40:26', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(59, 89, '2020-07-06 08:19:14', '2025-01-05 23:06:54', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(60, 36, '2017-06-15 09:22:41', '2025-10-26 03:39:09', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(61, 23, '2023-11-26 21:35:42', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(62, 1, '2010-03-05 04:22:49', '2016-08-11 10:05:49', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(63, 69, '2018-09-24 23:42:38', '2018-10-23 11:14:40', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(64, 93, '2014-05-30 06:30:09', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(65, 92, '2019-03-06 17:56:26', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(66, 88, '2005-04-10 01:45:15', '2023-11-13 23:19:15', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(67, 91, '2005-02-24 04:09:08', '2023-12-03 18:31:58', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(68, 36, '2022-01-25 16:53:18', '2024-10-25 22:42:09', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(69, 3, '2010-05-20 16:59:33', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(70, 50, '2004-08-22 14:03:04', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(71, 92, '2018-03-15 21:54:55', '2019-02-09 16:05:17', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(72, 37, '2019-06-12 12:39:08', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(73, 93, '2006-08-18 13:14:59', '2025-04-30 22:54:41', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(74, 11, '2018-05-30 23:03:46', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(75, 91, '2016-08-24 21:46:33', '2020-01-19 06:55:16', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(76, 81, '2007-02-11 14:02:21', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(77, 64, '2004-11-11 11:18:23', '2023-01-03 13:26:56', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(78, 92, '2013-12-15 05:51:04', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(79, 87, '2016-02-03 23:10:42', '2026-04-13 13:51:00', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(80, 17, '2020-11-07 13:57:07', '2021-02-16 05:28:38', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(81, 93, '2018-10-15 04:51:16', '2022-12-06 21:04:41', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(82, 3, '2019-05-16 15:13:03', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(83, 82, '2007-06-16 12:36:09', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(84, 1, '2023-05-17 22:30:27', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(85, 62, '2012-05-06 05:18:05', '2015-11-06 09:02:45', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(86, 80, '2021-10-12 06:25:08', '2023-05-14 07:17:13', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(87, 16, '2009-12-25 11:28:21', '2017-04-11 16:11:51', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(88, 11, '2017-07-21 08:42:41', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(89, 37, '2013-12-25 13:31:03', '2021-02-26 08:23:49', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(90, 99, '2012-03-02 02:11:47', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(91, 93, '2021-05-04 11:30:45', '2026-12-09 23:26:09', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(92, 92, '2005-12-20 06:21:38', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(93, 62, '2010-03-01 22:55:08', '2025-09-05 09:34:50', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(94, 53, '2012-01-04 22:11:21', '2027-01-23 18:24:58', 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(95, 23, '2008-12-13 21:11:58', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(96, 82, '2022-09-29 14:08:47', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(97, 53, '2011-09-27 20:49:50', '2021-12-30 06:24:27', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(98, 84, '2010-05-18 13:19:06', NULL, 1, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(99, 53, '2010-03-13 10:50:11', '2022-03-04 08:15:36', 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38'),
(100, 89, '2020-06-08 05:21:57', NULL, 0, '2024-04-21 06:13:38', '2024-04-21 06:13:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actividadAprendizaje` varchar(255) NOT NULL,
  `tipoEvaluacion` enum('Examen','Rúbrica','Lista de Cotejo') NOT NULL,
  `archivoEjemplo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`id`, `actividadAprendizaje`, `tipoEvaluacion`, `archivoEjemplo`, `created_at`, `updated_at`) VALUES
(1, 'Ab ipsum ea et est quia.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(2, 'Dicta at inventore eligendi eum maxime est.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(3, 'Quidem nisi ipsa sit.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/008855?text=dolores', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(4, 'Praesentium blanditiis nemo eos enim a maxime numquam.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(5, 'Incidunt ea natus quisquam explicabo fugiat maxime.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/005588?text=est', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(6, 'Dolores et voluptatum corporis eos voluptates.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0099dd?text=eveniet', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(7, 'Ad quam sunt maiores et ipsa eum.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0022dd?text=et', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(8, 'Ut debitis incidunt veniam nam culpa quo placeat.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(9, 'Voluptas vel ut a.', 'Examen', 'https://via.placeholder.com/640x480.png/002222?text=accusamus', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(10, 'Deleniti dolores error debitis fugiat accusantium.', 'Examen', 'https://via.placeholder.com/640x480.png/009955?text=eius', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(11, 'Ducimus molestiae rem in aperiam rerum voluptas voluptates eos.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(12, 'Maxime accusantium blanditiis dolore saepe nihil.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(13, 'Quia sit hic qui culpa saepe rerum.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/0044bb?text=nemo', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(14, 'Alias aspernatur qui incidunt veritatis ducimus alias.', 'Examen', 'https://via.placeholder.com/640x480.png/006677?text=voluptatem', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(15, 'Sapiente ratione esse tempore rerum voluptas voluptas ipsam aut.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(16, 'Nostrum omnis odio rerum rerum.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(17, 'Iusto quia commodi eos minima.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/007766?text=eum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(18, 'Perspiciatis corporis explicabo a sapiente consequatur quibusdam.', 'Examen', 'https://via.placeholder.com/640x480.png/008811?text=est', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(19, 'Voluptate voluptatum at et quis aspernatur fugit nobis.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(20, 'Eos sint ipsam ea voluptatem architecto harum voluptatem.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00ddcc?text=qui', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(21, 'Accusamus voluptatem molestiae dolor iusto dicta impedit.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(22, 'Voluptatem sit voluptatem dolore laborum.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(23, 'Molestiae quos accusantium aut.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(24, 'Vel rerum asperiores dolores ipsa quaerat.', 'Examen', 'https://via.placeholder.com/640x480.png/004477?text=est', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(25, 'Vel rerum sint eos quas doloremque ut sunt.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(26, 'Soluta nesciunt aut deserunt asperiores.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(27, 'Cumque aut corrupti qui consequatur.', 'Examen', 'https://via.placeholder.com/640x480.png/00ee77?text=minima', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(28, 'Laborum et quas eos assumenda commodi et.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(29, 'Doloremque voluptatibus deserunt sequi delectus minima distinctio voluptatum.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00bb00?text=aut', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(30, 'At ullam est recusandae asperiores atque quo.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(31, 'Aut suscipit sed provident ut quos odio.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(32, 'Modi ea ea animi et nesciunt atque.', 'Examen', 'https://via.placeholder.com/640x480.png/006633?text=nihil', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(33, 'Odit impedit hic est voluptates quaerat qui magnam.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(34, 'Et ipsam temporibus omnis neque blanditiis illo dolorem.', 'Examen', 'https://via.placeholder.com/640x480.png/004466?text=quia', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(35, 'Qui voluptas aut maiores quas dignissimos voluptatibus nemo.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/004444?text=molestias', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(36, 'Amet ab quo sit qui consequatur suscipit exercitationem.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/0033dd?text=ut', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(37, 'Sed reiciendis et libero incidunt dolores.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/007766?text=non', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(38, 'Id ut similique fuga ullam.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/006611?text=ea', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(39, 'Voluptates enim aut velit praesentium ullam.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(40, 'Aspernatur tempora ipsa est voluptatem.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(41, 'Libero vel quod laborum itaque consequatur qui id.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(42, 'Quia deserunt est in odit et accusamus ut.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(43, 'Ad incidunt accusantium sint magnam enim aliquam quaerat.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(44, 'Nemo eius eaque odit voluptatem qui.', 'Examen', 'https://via.placeholder.com/640x480.png/008855?text=earum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(45, 'Quae ut sit ut non qui adipisci.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00ff88?text=illo', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(46, 'Laudantium molestiae impedit quae et ipsam vel perferendis itaque.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(47, 'Culpa officiis quae cumque magni et maxime.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/004400?text=porro', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(48, 'Vitae assumenda corporis atque alias.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(49, 'Et quia tempore ad at voluptatem.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(50, 'Ad non voluptas aut expedita.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(51, 'Consequuntur harum qui reprehenderit ullam magnam voluptate.', 'Examen', 'https://via.placeholder.com/640x480.png/0088cc?text=recusandae', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(52, 'Neque quis velit voluptates in repellendus et dolorem.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/003300?text=voluptatum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(53, 'Ratione velit sed fugiat error corporis et dolorum.', 'Examen', 'https://via.placeholder.com/640x480.png/0033aa?text=rerum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(54, 'Accusantium repellendus doloremque est recusandae qui odit quia.', 'Examen', 'https://via.placeholder.com/640x480.png/006633?text=saepe', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(55, 'Expedita quo cupiditate eveniet recusandae mollitia suscipit aspernatur.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/00bb88?text=itaque', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(56, 'Nobis sed qui et quis.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/009966?text=ducimus', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(57, 'Placeat mollitia ut expedita excepturi molestiae tenetur.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00ee55?text=ducimus', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(58, 'Consequuntur sed velit laudantium.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(59, 'Consequatur totam mollitia sint cupiditate aut omnis.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0022dd?text=modi', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(60, 'Voluptas eum ut culpa voluptate sit doloribus.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0066cc?text=sed', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(61, 'Sit voluptatibus occaecati dolor enim molestias ut.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0099dd?text=quis', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(62, 'Laboriosam minus eos sit voluptatibus.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(63, 'Laborum consequuntur iusto nam sunt.', 'Examen', 'https://via.placeholder.com/640x480.png/00dd44?text=eum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(64, 'Similique est porro dolores consequatur necessitatibus non sed sit.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(65, 'Nesciunt totam sed sequi.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/006622?text=velit', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(66, 'Nihil exercitationem alias sed corrupti.', 'Examen', 'https://via.placeholder.com/640x480.png/00aa99?text=reprehenderit', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(67, 'Consequatur corporis voluptatem quibusdam.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00bbbb?text=id', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(68, 'Ad eos quod dolorem quia modi sit qui quia.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(69, 'Facilis ea illo et a.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(70, 'Nemo earum quo consectetur cum magni autem reiciendis.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(71, 'Aut molestiae velit ea eius et qui aut.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(72, 'Consequatur laborum ex pariatur et est.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(73, 'Veritatis exercitationem et maiores alias tempore.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00ff55?text=et', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(74, 'Dolorum debitis amet iste et quod.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(75, 'Asperiores culpa cupiditate debitis exercitationem.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(76, 'Impedit et recusandae perspiciatis quae aut.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(77, 'Quam sit omnis amet nihil ratione id.', 'Examen', 'https://via.placeholder.com/640x480.png/003355?text=et', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(78, 'Labore ut sunt ut possimus dolor omnis vel.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/003311?text=facere', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(79, 'Laborum dolorem libero a non quam eos.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(80, 'Et quas eum inventore at exercitationem ut provident.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(81, 'Rem sunt sint nihil rerum omnis suscipit fugiat.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/00ee33?text=tenetur', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(82, 'Et repudiandae voluptatibus qui vel dolorum pariatur hic molestias.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/007777?text=nam', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(83, 'Id qui facilis reiciendis excepturi ex.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(84, 'Quisquam reiciendis laudantium aliquam harum non.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(85, 'Velit unde architecto dolor libero voluptatum est cum.', 'Examen', 'https://via.placeholder.com/640x480.png/00ee99?text=est', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(86, 'Repellat aut qui voluptas ipsum sit tempora.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(87, 'Sint est possimus aliquam est nobis labore.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/009988?text=saepe', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(88, 'Architecto aut laboriosam aut quae expedita.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(89, 'Et quia saepe velit ducimus.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/00bb33?text=ipsum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(90, 'Hic consequatur maiores nobis dolores.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(91, 'Eligendi mollitia cupiditate quia unde beatae iusto animi.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/0033cc?text=iste', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(92, 'Molestias harum reprehenderit adipisci eos.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/009988?text=odit', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(93, 'Molestias est ullam quo doloremque vitae nisi.', 'Examen', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(94, 'A facilis voluptate magnam illo magnam.', 'Examen', 'https://via.placeholder.com/640x480.png/00aaaa?text=dicta', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(95, 'Praesentium recusandae quia impedit ducimus doloremque neque id.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(96, 'Est iusto est deserunt dolor dicta.', 'Rúbrica', 'https://via.placeholder.com/640x480.png/008866?text=harum', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(97, 'Tempora dolorem dolores dolorem dolores omnis autem.', 'Rúbrica', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(98, 'Dolorum facilis qui nihil quam pariatur dolore.', 'Lista de Cotejo', 'https://via.placeholder.com/640x480.png/00ccff?text=eius', '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(99, 'Incidunt earum unde voluptate ut vel impedit omnis.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16'),
(100, 'Eius voluptatem libero consequuntur repellendus ad ut modi.', 'Lista de Cotejo', NULL, '2024-04-21 07:22:16', '2024-04-21 07:22:16');

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
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Asignatura_Docente` bigint(20) UNSIGNED NOT NULL,
  `id_Periodo` bigint(20) UNSIGNED NOT NULL,
  `semestre` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `id_Asignatura_Docente`, `id_Periodo`, `semestre`, `created_at`, `updated_at`) VALUES
(1, 75, 83, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(2, 67, 75, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(3, 4, 26, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(4, 9, 67, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(5, 45, 71, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(6, 72, 4, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(7, 58, 27, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(8, 30, 9, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(9, 12, 97, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(10, 99, 75, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(11, 1, 14, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(12, 77, 94, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(13, 68, 41, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(14, 17, 89, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(15, 40, 70, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(16, 74, 52, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(17, 38, 71, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(18, 79, 11, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(19, 35, 45, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(20, 16, 10, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(21, 35, 74, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(22, 24, 83, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(23, 91, 19, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(24, 78, 92, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(25, 82, 17, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(26, 4, 39, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(27, 68, 30, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(28, 40, 8, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(29, 100, 61, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(30, 25, 6, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(31, 72, 7, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(32, 74, 53, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(33, 69, 89, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(34, 39, 96, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(35, 73, 21, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(36, 70, 64, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(37, 24, 97, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(38, 25, 24, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(39, 71, 69, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(40, 72, 81, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(41, 84, 91, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(42, 39, 84, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(43, 72, 49, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(44, 89, 4, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(45, 81, 22, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(46, 34, 24, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(47, 16, 3, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(48, 21, 75, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(49, 12, 19, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(50, 76, 46, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(51, 70, 32, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(52, 73, 22, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(53, 6, 72, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(54, 24, 23, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(55, 33, 47, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(56, 93, 50, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(57, 71, 80, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(58, 89, 43, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(59, 64, 82, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(60, 14, 26, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(61, 75, 25, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(62, 28, 12, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(63, 66, 79, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(64, 78, 55, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(65, 71, 5, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(66, 73, 67, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(67, 83, 17, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(68, 25, 14, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(69, 13, 70, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(70, 48, 47, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(71, 45, 17, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(72, 2, 20, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(73, 75, 43, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(74, 12, 21, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(75, 5, 61, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(76, 74, 36, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(77, 8, 49, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(78, 31, 76, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(79, 99, 63, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(80, 74, 71, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(81, 4, 26, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(82, 24, 12, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(83, 58, 94, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(84, 49, 50, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(85, 35, 22, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(86, 22, 1, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(87, 78, 90, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(88, 32, 11, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(89, 55, 4, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(90, 56, 38, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(91, 35, 9, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(92, 4, 27, 5, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(93, 26, 49, 3, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(94, 47, 10, 2, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(95, 82, 53, 1, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(96, 72, 3, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(97, 36, 27, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(98, 36, 28, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(99, 45, 10, 4, '2024-04-21 07:10:21', '2024-04-21 07:10:21'),
(100, 93, 56, 6, '2024-04-21 07:10:21', '2024-04-21 07:10:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_alumno`
--

CREATE TABLE `grupo_alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Grupo` bigint(20) UNSIGNED NOT NULL,
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupo_alumno`
--

INSERT INTO `grupo_alumno` (`id`, `id_Grupo`, `id_alumno`, `created_at`, `updated_at`) VALUES
(1, 5, 24, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(2, 89, 54, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(3, 24, 64, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(4, 29, 51, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(5, 11, 84, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(6, 46, 76, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(7, 30, 80, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(8, 11, 83, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(9, 39, 98, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(10, 51, 97, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(11, 27, 74, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(12, 16, 38, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(13, 60, 30, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(14, 24, 34, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(15, 37, 43, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(16, 84, 64, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(17, 59, 34, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(18, 36, 83, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(19, 28, 91, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(20, 98, 36, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(21, 67, 79, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(22, 81, 65, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(23, 5, 73, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(24, 87, 81, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(25, 13, 15, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(26, 43, 24, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(27, 15, 59, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(28, 92, 4, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(29, 93, 88, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(30, 27, 32, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(31, 17, 12, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(32, 87, 77, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(33, 40, 77, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(34, 92, 9, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(35, 52, 29, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(36, 11, 10, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(37, 28, 2, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(38, 59, 84, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(39, 75, 94, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(40, 56, 99, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(41, 82, 45, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(42, 93, 30, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(43, 11, 81, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(44, 94, 92, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(45, 86, 54, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(46, 96, 42, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(47, 51, 66, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(48, 56, 25, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(49, 67, 98, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(50, 1, 98, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(51, 58, 24, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(52, 23, 10, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(53, 77, 51, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(54, 78, 73, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(55, 31, 68, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(56, 17, 84, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(57, 54, 96, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(58, 100, 75, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(59, 83, 26, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(60, 46, 71, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(61, 47, 31, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(62, 42, 38, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(63, 35, 99, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(64, 80, 70, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(65, 10, 73, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(66, 68, 82, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(67, 16, 59, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(68, 63, 83, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(69, 31, 94, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(70, 88, 24, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(71, 23, 33, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(72, 41, 63, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(73, 87, 54, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(74, 69, 39, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(75, 95, 97, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(76, 45, 28, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(77, 85, 74, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(78, 69, 66, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(79, 50, 47, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(80, 81, 76, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(81, 16, 92, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(82, 66, 97, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(83, 5, 33, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(84, 55, 6, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(85, 67, 25, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(86, 25, 46, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(87, 1, 19, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(88, 80, 45, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(89, 99, 80, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(90, 40, 84, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(91, 41, 19, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(92, 40, 85, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(93, 8, 57, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(94, 84, 33, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(95, 42, 40, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(96, 19, 12, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(97, 78, 67, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(98, 62, 85, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(99, 9, 41, '2024-04-21 07:11:52', '2024-04-21 07:11:52'),
(100, 94, 16, '2024-04-21 07:11:52', '2024-04-21 07:11:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia` varchar(255) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `dia`, `horaInicio`, `horaFin`, `created_at`, `updated_at`) VALUES
(1, 'Jueves', '09:55:00', '10:39:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(2, 'Lunes', '11:15:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(3, 'Jueves', '12:52:00', '12:54:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(4, 'Martes', '09:53:00', '10:20:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(5, 'Viernes', '10:46:00', '11:24:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(6, 'Viernes', '10:14:00', '11:52:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(7, 'Miércoles', '10:08:00', '12:26:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(8, 'Miércoles', '10:44:00', '12:28:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(9, 'Viernes', '10:45:00', '12:57:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(10, 'Viernes', '08:25:00', '08:34:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(11, 'Viernes', '11:42:00', '11:42:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(12, 'Miércoles', '11:16:00', '12:32:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(13, 'Jueves', '10:39:00', '11:56:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(14, 'Martes', '10:33:00', '11:07:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(15, 'Lunes', '09:02:00', '10:06:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(16, 'Miércoles', '09:32:00', '12:48:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(17, 'Martes', '09:25:00', '12:49:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(18, 'Martes', '09:53:00', '10:44:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(19, 'Lunes', '08:53:00', '11:10:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(20, 'Viernes', '12:32:00', '12:58:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(21, 'Miércoles', '08:20:00', '11:09:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(22, 'Lunes', '09:44:00', '12:01:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(23, 'Jueves', '12:57:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(24, 'Miércoles', '11:58:00', '12:49:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(25, 'Viernes', '12:38:00', '12:57:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(26, 'Miércoles', '10:42:00', '11:08:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(27, 'Martes', '10:45:00', '12:31:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(28, 'Viernes', '12:43:00', '12:56:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(29, 'Martes', '10:58:00', '11:38:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(30, 'Miércoles', '08:57:00', '11:07:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(31, 'Lunes', '10:56:00', '12:05:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(32, 'Viernes', '10:30:00', '12:33:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(33, 'Jueves', '12:09:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(34, 'Lunes', '11:54:00', '12:27:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(35, 'Viernes', '09:56:00', '12:39:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(36, 'Jueves', '11:23:00', '12:04:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(37, 'Jueves', '10:38:00', '11:08:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(38, 'Miércoles', '09:21:00', '09:25:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(39, 'Miércoles', '10:29:00', '11:47:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(40, 'Martes', '09:54:00', '12:33:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(41, 'Lunes', '12:55:00', '12:56:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(42, 'Jueves', '11:07:00', '12:41:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(43, 'Viernes', '12:28:00', '12:33:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(44, 'Martes', '10:30:00', '12:15:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(45, 'Jueves', '08:16:00', '11:20:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(46, 'Lunes', '12:25:00', '12:50:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(47, 'Martes', '11:33:00', '11:42:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(48, 'Viernes', '10:42:00', '11:03:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(49, 'Jueves', '12:53:00', '12:58:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(50, 'Jueves', '10:26:00', '11:48:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(51, 'Jueves', '08:20:00', '12:57:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(52, 'Miércoles', '11:07:00', '12:32:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(53, 'Martes', '10:33:00', '11:04:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(54, 'Miércoles', '11:44:00', '12:12:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(55, 'Miércoles', '09:01:00', '10:12:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(56, 'Miércoles', '10:11:00', '11:54:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(57, 'Martes', '12:20:00', '12:47:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(58, 'Lunes', '09:09:00', '10:43:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(59, 'Jueves', '08:08:00', '08:54:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(60, 'Martes', '08:36:00', '10:33:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(61, 'Jueves', '10:46:00', '11:34:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(62, 'Miércoles', '12:59:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(63, 'Viernes', '10:41:00', '12:17:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(64, 'Lunes', '10:52:00', '12:58:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(65, 'Jueves', '12:36:00', '12:44:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(66, 'Martes', '11:48:00', '11:55:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(67, 'Lunes', '11:37:00', '12:20:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(68, 'Miércoles', '10:47:00', '12:58:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(69, 'Martes', '10:51:00', '12:21:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(70, 'Jueves', '11:20:00', '12:25:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(71, 'Miércoles', '12:45:00', '12:48:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(72, 'Martes', '12:00:00', '12:05:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(73, 'Martes', '10:00:00', '11:44:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(74, 'Viernes', '08:09:00', '12:17:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(75, 'Jueves', '12:30:00', '12:41:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(76, 'Viernes', '11:31:00', '12:05:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(77, 'Lunes', '10:50:00', '11:17:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(78, 'Lunes', '12:59:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(79, 'Viernes', '12:58:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(80, 'Martes', '08:57:00', '12:25:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(81, 'Jueves', '09:02:00', '12:32:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(82, 'Martes', '12:50:00', '12:59:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(83, 'Martes', '11:57:00', '12:23:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(84, 'Martes', '11:50:00', '12:29:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(85, 'Lunes', '08:32:00', '10:37:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(86, 'Jueves', '10:31:00', '10:56:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(87, 'Jueves', '08:17:00', '12:45:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(88, 'Miércoles', '09:27:00', '10:16:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(89, 'Viernes', '11:58:00', '12:51:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(90, 'Viernes', '08:47:00', '11:31:00', '2024-04-21 06:46:42', '2024-04-21 06:46:42'),
(91, 'Viernes', '11:22:00', '11:57:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(92, 'Martes', '10:59:00', '11:38:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(93, 'Lunes', '09:11:00', '10:45:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(94, 'Lunes', '11:20:00', '11:32:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(95, 'Jueves', '11:28:00', '11:35:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(96, 'Jueves', '11:08:00', '12:50:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(97, 'Jueves', '09:08:00', '12:49:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(98, 'Jueves', '08:58:00', '10:04:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(99, 'Viernes', '12:47:00', '12:47:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43'),
(100, 'Martes', '12:19:00', '12:20:00', '2024-04-21 06:46:43', '2024-04-21 06:46:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_asignatura`
--

CREATE TABLE `horario_asignatura` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_horario` bigint(20) UNSIGNED NOT NULL,
  `id_asignatura` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario_asignatura`
--

INSERT INTO `horario_asignatura` (`id`, `id_horario`, `id_asignatura`, `created_at`, `updated_at`) VALUES
(1, 4, 74, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(2, 29, 27, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(3, 7, 13, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(4, 76, 38, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(5, 3, 38, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(6, 43, 19, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(7, 15, 78, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(8, 66, 57, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(9, 11, 59, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(10, 16, 96, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(11, 73, 19, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(12, 79, 57, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(13, 4, 99, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(14, 50, 39, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(15, 32, 29, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(16, 94, 70, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(17, 27, 37, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(18, 41, 98, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(19, 38, 62, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(20, 91, 25, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(21, 13, 38, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(22, 27, 28, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(23, 24, 28, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(24, 60, 24, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(25, 93, 2, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(26, 77, 43, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(27, 26, 41, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(28, 29, 38, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(29, 30, 90, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(30, 69, 4, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(31, 99, 13, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(32, 21, 24, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(33, 31, 2, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(34, 52, 41, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(35, 89, 32, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(36, 19, 42, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(37, 38, 83, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(38, 85, 3, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(39, 61, 54, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(40, 80, 14, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(41, 96, 61, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(42, 51, 1, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(43, 95, 52, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(44, 57, 61, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(45, 33, 79, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(46, 6, 85, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(47, 59, 37, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(48, 46, 79, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(49, 15, 65, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(50, 100, 44, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(51, 69, 99, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(52, 90, 75, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(53, 85, 99, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(54, 57, 79, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(55, 3, 77, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(56, 36, 76, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(57, 70, 39, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(58, 40, 87, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(59, 49, 64, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(60, 76, 90, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(61, 10, 95, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(62, 57, 84, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(63, 59, 76, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(64, 35, 42, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(65, 7, 92, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(66, 60, 89, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(67, 19, 100, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(68, 47, 25, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(69, 39, 56, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(70, 25, 36, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(71, 76, 53, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(72, 11, 70, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(73, 39, 97, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(74, 80, 68, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(75, 62, 87, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(76, 37, 98, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(77, 20, 26, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(78, 99, 69, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(79, 60, 26, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(80, 15, 62, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(81, 45, 3, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(82, 72, 2, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(83, 35, 51, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(84, 28, 56, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(85, 76, 34, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(86, 5, 19, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(87, 67, 43, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(88, 45, 28, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(89, 58, 70, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(90, 40, 11, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(91, 2, 64, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(92, 43, 34, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(93, 98, 5, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(94, 80, 73, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(95, 65, 92, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(96, 10, 16, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(97, 78, 61, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(98, 59, 96, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(99, 19, 29, '2024-04-21 06:46:54', '2024-04-21 06:46:54'),
(100, 57, 81, '2024-04-21 06:46:54', '2024-04-21 06:46:54');

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
(89, '2014_10_12_000000_create_users_table', 1),
(90, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(91, '2019_08_19_000000_create_failed_jobs_table', 1),
(92, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(93, '2024_04_20_050318_create_usuario_table', 1),
(94, '2024_04_21_000321_create_usuario_table', 2),
(96, '2024_04_21_001046_create_docente_table', 3),
(97, '2024_04_21_001519_create_alumno_table', 4),
(110, '2024_04_21_001908_create_asignatura_table', 5),
(111, '2024_04_21_002148_create_horario_table', 5),
(112, '2024_04_21_002346_create_horario_asignatura_table', 5),
(113, '2024_04_21_002633_create_bloque_table', 5),
(114, '2024_04_21_005049_create_asignatura_docente_table', 6),
(115, '2024_04_21_010130_create_periodo_table', 7),
(116, '2024_04_21_010256_create_grupo_table', 8),
(117, '2024_04_21_011113_create_grupo_alumno_table', 9),
(118, '2024_04_21_011235_create_progresion_table', 10),
(119, '2024_04_21_011547_create_bloque_progresion_table', 11),
(121, '2024_04_21_012019_create_evaluacion_table', 12),
(122, '2024_04_21_012238_create_progresion_evaluacion_table', 13);

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
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `tipo` enum('CicloEscolar','Semanal') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id`, `fechaInicio`, `fechaFin`, `tipo`, `created_at`, `updated_at`) VALUES
(1, '2024-10-20', '2024-12-20', 'Semanal', '2024-04-21 07:02:20', '2024-04-21 07:02:20'),
(2, '2024-11-29', '2024-12-24', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(3, '2024-08-30', '2024-12-18', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(4, '2024-04-02', '2024-09-13', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(5, '2024-08-02', '2024-10-07', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(6, '2024-09-04', '2024-12-05', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(7, '2024-06-18', '2024-10-05', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(8, '2024-02-27', '2024-07-18', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(9, '2024-10-11', '2024-11-11', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(10, '2024-12-19', '2024-12-27', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(11, '2024-01-26', '2024-10-04', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(12, '2024-02-29', '2024-05-04', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(13, '2024-09-18', '2024-11-20', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(14, '2024-12-16', '2024-12-20', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(15, '2024-05-27', '2024-11-23', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(16, '2024-05-14', '2024-12-24', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(17, '2024-03-16', '2024-08-02', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(18, '2024-02-23', '2024-12-06', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(19, '2024-09-21', '2024-11-03', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(20, '2024-05-22', '2024-09-18', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(21, '2024-03-12', '2024-09-01', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(22, '2024-01-23', '2024-03-06', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(23, '2024-05-23', '2024-08-04', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(24, '2024-11-13', '2024-11-23', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(25, '2024-06-30', '2024-11-03', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(26, '2024-08-01', '2024-10-09', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(27, '2024-12-19', '2024-12-23', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(28, '2024-12-16', '2024-12-30', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(29, '2024-06-16', '2024-10-06', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(30, '2024-03-03', '2024-09-06', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(31, '2024-11-08', '2024-12-05', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(32, '2024-06-13', '2024-10-29', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(33, '2024-01-13', '2024-10-15', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(34, '2024-03-27', '2024-11-14', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(35, '2024-11-19', '2024-12-13', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(36, '2024-05-29', '2024-09-29', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(37, '2024-09-10', '2024-12-05', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(38, '2024-07-31', '2024-12-16', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(39, '2024-05-06', '2024-06-17', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(40, '2024-05-21', '2024-12-12', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(41, '2024-03-20', '2024-07-23', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(42, '2024-12-18', '2024-12-20', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(43, '2024-02-06', '2024-12-08', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(44, '2024-08-07', '2024-12-30', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(45, '2024-01-17', '2024-06-27', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(46, '2024-09-22', '2024-12-16', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(47, '2024-09-29', '2024-10-30', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(48, '2024-05-15', '2024-10-17', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(49, '2024-10-29', '2024-12-27', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(50, '2024-02-08', '2024-12-14', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(51, '2024-02-27', '2024-03-16', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(52, '2024-09-09', '2024-09-20', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(53, '2024-01-30', '2024-01-31', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(54, '2024-07-02', '2024-12-04', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(55, '2024-10-30', '2024-12-11', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(56, '2024-06-26', '2024-08-03', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(57, '2024-03-16', '2024-11-23', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(58, '2024-01-03', '2024-07-06', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(59, '2024-09-25', '2024-09-26', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(60, '2024-02-13', '2024-02-23', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(61, '2024-11-15', '2024-11-15', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(62, '2024-07-02', '2024-09-25', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(63, '2024-06-30', '2024-10-21', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(64, '2024-06-03', '2024-06-17', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(65, '2024-03-08', '2024-10-29', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(66, '2024-11-30', '2024-12-17', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(67, '2024-11-06', '2024-11-07', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(68, '2024-02-10', '2024-10-09', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(69, '2024-06-28', '2024-10-24', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(70, '2024-01-30', '2024-04-10', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(71, '2024-07-14', '2024-11-14', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(72, '2024-05-08', '2024-07-03', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(73, '2024-12-03', '2024-12-27', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(74, '2024-01-03', '2024-01-03', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(75, '2024-08-10', '2024-12-04', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(76, '2024-04-02', '2024-05-28', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(77, '2024-08-09', '2024-11-14', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(78, '2024-10-13', '2024-12-06', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(79, '2024-09-22', '2024-12-08', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(80, '2024-10-16', '2024-12-01', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(81, '2024-12-08', '2024-12-24', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(82, '2024-02-09', '2024-05-07', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(83, '2024-11-28', '2024-12-27', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(84, '2024-10-05', '2024-12-02', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(85, '2024-03-22', '2024-06-06', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(86, '2024-01-26', '2024-05-23', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(87, '2024-05-03', '2024-10-23', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(88, '2024-03-22', '2024-05-16', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(89, '2024-11-10', '2024-11-15', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(90, '2024-01-25', '2024-10-06', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(91, '2024-06-09', '2024-10-22', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(92, '2024-07-23', '2024-11-16', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(93, '2024-10-15', '2024-12-25', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(94, '2024-03-23', '2024-10-05', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(95, '2024-04-12', '2024-11-26', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(96, '2024-02-29', '2024-04-09', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(97, '2024-02-12', '2024-08-09', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(98, '2024-06-14', '2024-09-14', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(99, '2024-01-02', '2024-08-16', 'Semanal', '2024-04-21 07:02:21', '2024-04-21 07:02:21'),
(100, '2024-10-16', '2024-10-19', 'CicloEscolar', '2024-04-21 07:02:21', '2024-04-21 07:02:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progresion`
--

CREATE TABLE `progresion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Periodo` bigint(20) UNSIGNED NOT NULL,
  `tema` varchar(255) NOT NULL,
  `aprendizajeEsperado` varchar(255) NOT NULL,
  `materiales` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `progresion`
--

INSERT INTO `progresion` (`id`, `id_Periodo`, `tema`, `aprendizajeEsperado`, `materiales`, `created_at`, `updated_at`) VALUES
(1, 10, 'Nihil qui numquam voluptates quia.', 'Aliquid qui non odio magni.', 'Natus omnis facere officia odio vel inventore est.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(2, 82, 'Enim aut illo minus et omnis eum qui sed.', 'Vero est unde consequuntur in dolore.', 'Quibusdam harum sequi sed voluptatem consequatur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(3, 14, 'Omnis pariatur fuga autem sequi.', 'Voluptas est eos quasi impedit.', 'Eos impedit distinctio ex illo voluptatem sapiente laudantium molestiae.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(4, 55, 'Dolore aperiam et qui minima libero.', 'Aspernatur dicta libero consectetur.', 'Illo quam quis non repellat et ut accusantium.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(5, 77, 'Saepe quo inventore tenetur ut quia inventore voluptatem.', 'Amet id fugit et expedita id eum corporis dignissimos.', 'Natus repellendus aut architecto aperiam quae totam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(6, 33, 'Ut beatae voluptas ducimus nemo eligendi.', 'Est dolor error quasi itaque harum mollitia rerum.', 'In aperiam accusamus unde facere soluta autem.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(7, 25, 'Velit error architecto aut.', 'Inventore culpa placeat excepturi sit atque eius.', 'Enim iure molestias tenetur corrupti.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(8, 44, 'Aut ad minima impedit iure vel.', 'Error neque ut ut eum fugiat est.', 'Et modi illo non non cupiditate quis voluptas.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(9, 2, 'Est minima voluptatem saepe.', 'Sint soluta excepturi nihil expedita atque.', 'Placeat non maxime quidem consequatur ducimus veritatis.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(10, 2, 'Iusto reprehenderit quibusdam harum dolorem unde officiis.', 'Consequatur nostrum distinctio modi dicta laudantium sunt eum.', 'Possimus voluptas vel quia qui harum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(11, 78, 'Aperiam qui et est aliquid delectus blanditiis.', 'Qui omnis enim non nemo mollitia exercitationem.', 'Laboriosam molestiae ea hic aut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(12, 32, 'Maxime voluptate tempora et.', 'Rerum ratione occaecati autem saepe repellat eos cumque tenetur.', 'Aut fugit labore quia.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(13, 90, 'Et sint voluptate excepturi et odio rerum molestiae explicabo.', 'Et sed nemo doloremque.', 'Sint voluptatem facilis dolores aut modi.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(14, 35, 'Sed molestiae enim atque ab quo.', 'Et et labore dignissimos quaerat veritatis non nesciunt.', 'Possimus fugit earum et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(15, 53, 'Quo porro sed itaque minus velit dolorem.', 'Et est rerum ab adipisci ea adipisci.', 'Omnis id consectetur ut qui id at.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(16, 10, 'Adipisci ea assumenda architecto quia laborum corrupti ut.', 'Iure quia quidem est.', 'Est laudantium nihil dolore nobis nihil.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(17, 17, 'Officia et laboriosam ratione fugiat.', 'A repellat repellat tempore voluptas eum ducimus sit.', 'Debitis ad et qui mollitia et ipsa.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(18, 35, 'Hic similique quidem iusto laudantium vel voluptatem.', 'Veritatis illo recusandae ut iure quos voluptatum.', 'Libero animi non modi aut quae aut et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(19, 15, 'Deserunt ipsa quod quis asperiores.', 'Aut porro qui voluptatem dolores incidunt quis.', 'Similique velit qui voluptas expedita eos neque.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(20, 13, 'Inventore dicta dignissimos eos quis exercitationem est incidunt et.', 'Et tenetur vel rerum quis.', 'Perspiciatis accusantium doloribus aut voluptatum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(21, 66, 'Nam occaecati aut earum dolores ducimus nisi facere.', 'Reprehenderit distinctio saepe et veniam quia neque eligendi.', 'Praesentium ratione laudantium eaque dolores ratione ullam est.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(22, 48, 'Labore inventore unde rem omnis vel quae repellat.', 'Et harum omnis temporibus similique iste sunt.', 'Et id ea voluptatem pariatur sapiente harum quaerat similique.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(23, 28, 'Quibusdam est molestias provident quidem aut consequatur.', 'At adipisci voluptates aspernatur recusandae tempore sit.', 'Sapiente saepe sint enim nemo dolorem eligendi.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(24, 31, 'Atque voluptatum modi architecto libero officia.', 'Unde quibusdam esse et dolorem voluptas consequatur.', 'Iste exercitationem ut et eos quis veritatis aspernatur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(25, 46, 'Fugit dolores officiis hic itaque recusandae incidunt.', 'Sed sit natus tenetur non.', 'Debitis iure quas modi excepturi qui repudiandae.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(26, 79, 'Commodi aliquam nihil aut culpa voluptatum est.', 'Soluta nesciunt sed beatae et nulla quibusdam.', 'Ipsum excepturi necessitatibus tempora officiis et aperiam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(27, 2, 'Voluptatem voluptatem et sapiente tenetur dicta magni voluptatem.', 'Veniam cum consequuntur voluptates cupiditate.', 'Consequatur amet perferendis qui tempore et aperiam officia.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(28, 81, 'Sapiente laudantium ipsam a expedita.', 'Praesentium porro quia autem perspiciatis.', 'Similique incidunt quia harum in quod cumque omnis.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(29, 13, 'Aut eum incidunt expedita explicabo soluta culpa quibusdam.', 'Aut quasi et earum fugiat voluptatibus.', 'Voluptatem dignissimos molestias nihil ullam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(30, 46, 'Quis pariatur sit error impedit alias repellendus.', 'Voluptates exercitationem a numquam debitis ea beatae explicabo itaque.', 'Libero velit dolores et laudantium et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(31, 26, 'Quia non eligendi nisi quas ut.', 'Sit est illo alias vel rerum incidunt in non.', 'Expedita ea in consectetur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(32, 50, 'Velit maiores quidem consectetur similique ut dolore similique.', 'Est optio aut voluptate nostrum consequatur.', 'Et praesentium dolor voluptatem non neque consequuntur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(33, 65, 'Perspiciatis laborum quos illo pariatur.', 'Atque eius et doloribus qui eligendi voluptatem.', 'Omnis magnam unde veniam doloremque.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(34, 21, 'Nisi est nihil velit dicta est quod.', 'At totam qui maxime nulla minus nostrum blanditiis fugiat.', 'Quo et et placeat reprehenderit.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(35, 22, 'Laboriosam incidunt et delectus.', 'Omnis tempora quaerat cum et.', 'Sit rerum nostrum est voluptas qui fugiat.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(36, 61, 'Quos aut molestiae unde reprehenderit consectetur.', 'Doloremque illo quam dignissimos unde.', 'Repellendus non dicta nihil doloremque consequuntur soluta.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(37, 42, 'Nihil omnis molestiae aut ea voluptas.', 'Consequatur ducimus ad veritatis vero.', 'Earum cupiditate quos velit occaecati reprehenderit quibusdam ut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(38, 61, 'Ab eius aut delectus eveniet adipisci eum quaerat earum.', 'Magni dolor maxime iste voluptatem.', 'Facere quia ab et architecto iste ea qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(39, 87, 'Doloribus ut enim voluptas sed.', 'Itaque accusamus quidem explicabo quo.', 'Voluptate et officiis omnis accusamus sit vitae pariatur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(40, 38, 'Omnis sequi sit ratione optio dolorem.', 'Rerum consequatur unde vero voluptatum tempora rerum.', 'Tempora architecto autem ex suscipit omnis.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(41, 34, 'Et neque alias neque soluta ipsum.', 'Fugiat at dolores qui quo.', 'Excepturi nihil excepturi ipsum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(42, 92, 'Cum fugit aut facere qui corporis aut sed sint.', 'Debitis officiis sit fuga architecto recusandae amet at veritatis.', 'Quos provident aperiam explicabo cupiditate aut qui numquam est.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(43, 93, 'Tenetur aut aspernatur molestiae eos ut nostrum impedit doloribus.', 'Nisi harum eos reprehenderit sequi.', 'Vitae fugit laudantium quidem voluptatem corporis sed et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(44, 78, 'Libero aliquam quaerat magnam mollitia incidunt qui.', 'Occaecati temporibus similique voluptatem possimus.', 'Dolor qui omnis quod qui magni accusantium.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(45, 72, 'Quas quasi sunt non esse qui dolorum.', 'Quas non eligendi cupiditate non.', 'Eum eius aliquid dolores optio.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(46, 97, 'Fuga rerum eveniet vero labore blanditiis maxime nobis.', 'Culpa qui officia reiciendis quia.', 'Veritatis iure possimus delectus ab ut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(47, 67, 'Nisi incidunt et porro labore eum deserunt qui temporibus.', 'Voluptatem laborum ab alias iusto nihil quod.', 'Ipsum maxime consectetur vitae labore et modi vitae saepe.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(48, 59, 'Et voluptas neque sint quos doloribus.', 'Et dolor dolores sint ad a quas rerum.', 'Perferendis eaque occaecati alias molestiae qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(49, 65, 'Et rerum harum est illum maiores saepe ut.', 'Minima doloremque officia non in vel consequuntur.', 'Voluptate rerum voluptatem et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(50, 91, 'Quaerat recusandae commodi vel velit.', 'Dolorum praesentium inventore voluptatum rem velit nesciunt aut recusandae.', 'Unde sequi porro eius eius.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(51, 100, 'Qui ad nihil et qui omnis.', 'Non natus odit voluptatem et aut ullam quos.', 'Dolores modi repellendus molestiae in officiis id.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(52, 23, 'Et nisi non nobis maiores.', 'Praesentium aliquam dolores sapiente ea illum facilis.', 'Possimus id et omnis est aliquam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(53, 63, 'Molestiae non maiores alias repellat error voluptates totam.', 'Eaque nisi ut facere accusamus.', 'Doloribus rem id cumque.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(54, 11, 'Qui rerum voluptatum qui.', 'Autem maiores earum minima veniam enim et.', 'Fuga et laboriosam ipsum quaerat harum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(55, 82, 'Sed possimus in assumenda nihil aut suscipit quibusdam.', 'Et aut voluptatem officiis ut sint facilis.', 'Voluptatem tempore necessitatibus quis tempore quisquam est quo impedit.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(56, 91, 'Sit voluptates consequatur sint voluptas dolor.', 'Ullam quo totam ratione et minima dolorem distinctio.', 'Omnis nobis natus est eum est sed ut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(57, 87, 'Ut minima repudiandae sapiente quasi.', 'Esse at facilis expedita.', 'Maxime neque rerum velit doloribus.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(58, 42, 'Ipsa quis et non debitis.', 'Voluptatibus alias sunt illum est officia et ut.', 'Dolore recusandae est voluptas alias.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(59, 25, 'Dolorem inventore labore facilis.', 'Porro quam accusamus ad vero.', 'Similique facere dolores tenetur qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(60, 29, 'Eum odit aut eos sapiente.', 'Necessitatibus eaque hic minima harum.', 'Quod sit eum sed totam laborum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(61, 70, 'Beatae libero iure ullam.', 'Laborum aut dolore quia sed qui.', 'Optio consequatur aut ut quibusdam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(62, 27, 'Suscipit reprehenderit et minus quas asperiores voluptate.', 'Voluptatibus libero quia quod placeat ut quibusdam nostrum.', 'Quia ex modi nostrum quo doloremque velit est quam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(63, 24, 'Ut fuga veritatis fuga esse.', 'Expedita ut dolorum quasi.', 'Voluptatum modi ex omnis tempora culpa aliquam nostrum fugiat.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(64, 70, 'Nulla est assumenda ut quia sequi ratione nobis nemo.', 'Autem dignissimos rerum et illo.', 'Beatae cumque non nihil ratione.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(65, 48, 'Commodi consectetur quia id aperiam.', 'Ipsum quod aut asperiores et.', 'Numquam doloribus error ullam eos quia doloribus necessitatibus.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(66, 88, 'Illo molestias sunt omnis eos aut.', 'Ab inventore voluptatem in sint animi.', 'Ratione similique omnis sunt.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(67, 51, 'Voluptas aspernatur voluptatum magnam.', 'Nihil quia asperiores impedit qui molestias eum.', 'Cupiditate dolorem odio recusandae mollitia qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(68, 37, 'Sed dolorem et debitis et omnis nostrum sint.', 'Ex ipsum quisquam occaecati est aliquid maiores illo.', 'Sed laudantium autem cum sequi quia.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(69, 29, 'Quas et officiis eos veritatis cumque.', 'Quia officia eos enim aut et illo dignissimos.', 'Quas natus quos in accusamus qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(70, 50, 'Et nobis quia modi illo eum illum.', 'Minus sint in ipsa architecto qui sed.', 'Sint iusto fuga ratione minima molestiae aspernatur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(71, 27, 'Voluptas nihil quia non.', 'Eos ipsum tempora vel aut.', 'Et eligendi dignissimos velit rem omnis et.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(72, 63, 'Perspiciatis quis dignissimos ipsa culpa nihil ut et.', 'Qui facilis dolores ipsa in.', 'Perferendis odio fugiat officia quia atque ut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(73, 83, 'Aspernatur dolor et asperiores adipisci aut iusto.', 'Eum culpa et rem.', 'Culpa rerum commodi iste aliquam repudiandae.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(74, 25, 'Sapiente dolorum libero cumque non.', 'Aut corporis architecto sit sed corporis.', 'Illum deleniti corrupti et id iure sunt quae quibusdam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(75, 100, 'Repellendus est aut mollitia.', 'Similique consequuntur ut iste delectus nam ducimus.', 'Culpa et ut ipsam qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(76, 66, 'Quo nisi amet placeat et nostrum dolorem.', 'Cum et alias repudiandae nostrum voluptatem iure eum.', 'Enim voluptatem in culpa sequi quam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(77, 51, 'Voluptas inventore est voluptates sapiente esse omnis error.', 'Mollitia qui explicabo molestiae aut.', 'Fugit adipisci occaecati et molestiae eius dicta.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(78, 38, 'Impedit voluptatibus eum repellat asperiores.', 'Excepturi maiores sequi quia magnam assumenda.', 'Repellat molestiae sed ea ullam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(79, 17, 'Consequatur ipsa esse alias et sint id.', 'Consequatur culpa est nulla et explicabo ut fugit in.', 'At omnis omnis debitis distinctio odio rerum quasi.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(80, 30, 'Reiciendis qui a aut maiores.', 'Laborum sit placeat itaque debitis.', 'Commodi aut et et rerum voluptatem fugit.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(81, 50, 'Saepe perspiciatis recusandae consequatur sunt sed alias.', 'Ut dolores deleniti ipsam quaerat assumenda.', 'Neque qui id qui sunt hic.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(82, 46, 'Animi nesciunt dicta et ullam.', 'Quam magnam et laborum mollitia.', 'Nihil provident libero deserunt.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(83, 1, 'Modi nulla unde saepe animi cumque aut.', 'Temporibus reprehenderit ut placeat qui eum occaecati.', 'Quia velit sit aut consequatur.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(84, 80, 'Veniam aut facilis ab dicta.', 'Molestias repellat voluptas quae perspiciatis facere assumenda.', 'Accusamus quod et repudiandae eum sint sint.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(85, 95, 'Ad nisi nam repellendus rerum facilis omnis.', 'Nesciunt veniam quia necessitatibus autem et suscipit.', 'Harum omnis magnam eum accusamus praesentium.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(86, 67, 'Quam tenetur sunt voluptatum ut voluptas.', 'Dolorum voluptas tenetur dicta alias et eligendi hic facere.', 'Hic omnis sed et iste optio iste itaque.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(87, 38, 'Dolor eligendi qui velit et.', 'Ex odit recusandae asperiores numquam ut commodi eos.', 'Laborum error nobis aut voluptate.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(88, 87, 'Expedita qui dolore rerum vel in.', 'Deleniti distinctio ad explicabo magnam magni.', 'Natus voluptates a et expedita iure mollitia magnam.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(89, 15, 'Necessitatibus ducimus similique voluptatem cum veniam nulla voluptatem.', 'Quis quasi suscipit magnam ipsa officia ut aspernatur.', 'Aut non omnis maxime veritatis ut.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(90, 35, 'Libero tenetur officiis velit sed aut hic.', 'Nihil quo harum et aliquid voluptatibus culpa.', 'Aut laborum voluptatem fugit incidunt.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(91, 72, 'Quis fuga qui vel ratione sed officiis dolore rerum.', 'Asperiores sit veniam velit rerum praesentium.', 'Voluptas molestiae occaecati recusandae unde occaecati ea impedit.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(92, 79, 'Fuga voluptas et nisi animi corrupti.', 'Vitae ipsum quis totam aliquam.', 'Nobis illo non aut ut ullam rerum.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(93, 12, 'Quia quos et recusandae quae nam adipisci vel.', 'Quia quae facilis fuga non deleniti quia.', 'Error ducimus explicabo dolorum repellendus sint optio dolorem velit.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(94, 93, 'Rerum qui rem quo libero accusantium sed non perspiciatis.', 'Aliquid dicta non eligendi impedit quasi non.', 'Ad est accusamus unde omnis omnis.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(95, 84, 'Dicta aut consequatur illum vero quod.', 'Beatae animi exercitationem sed fugit assumenda repellat voluptatibus qui.', 'Aut sit ut iusto eum sequi aut qui.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(96, 73, 'Commodi sit id vel aperiam qui dolorem.', 'Accusantium nisi ipsum quod qui.', 'Alias libero non autem quod.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(97, 25, 'Aliquid aperiam qui vero distinctio.', 'In at sapiente et dolor quo suscipit quasi.', 'Aperiam aut provident magni dolorem.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(98, 100, 'Fuga aliquam aliquam inventore sed praesentium ex aut.', 'Qui et itaque iusto quisquam.', 'Esse autem sit magni voluptas quo sed perspiciatis.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(99, 60, 'Laudantium dignissimos odio cumque nobis quisquam repellendus.', 'Mollitia quidem adipisci et repellat.', 'Temporibus minus odit numquam quisquam non.', '2024-04-21 07:14:57', '2024-04-21 07:14:57'),
(100, 16, 'Quisquam itaque et voluptas.', 'Iste et nulla numquam dolores tempore perferendis.', 'Consectetur commodi dolorem itaque doloremque aperiam porro unde.', '2024-04-21 07:14:57', '2024-04-21 07:14:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progresion_evaluacion`
--

CREATE TABLE `progresion_evaluacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Progresion` bigint(20) UNSIGNED NOT NULL,
  `id_Evaluacion` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `progresion_evaluacion`
--

INSERT INTO `progresion_evaluacion` (`id`, `id_Progresion`, `id_Evaluacion`, `created_at`, `updated_at`) VALUES
(1, 39, 10, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(2, 84, 41, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(3, 19, 5, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(4, 78, 93, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(5, 21, 21, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(6, 48, 28, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(7, 72, 22, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(8, 51, 48, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(9, 61, 91, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(10, 25, 73, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(11, 45, 17, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(12, 25, 44, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(13, 58, 70, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(14, 22, 28, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(15, 12, 91, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(16, 30, 10, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(17, 8, 69, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(18, 18, 4, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(19, 28, 46, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(20, 88, 32, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(21, 96, 38, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(22, 61, 32, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(23, 26, 79, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(24, 85, 29, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(25, 7, 66, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(26, 98, 17, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(27, 55, 29, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(28, 26, 68, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(29, 34, 27, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(30, 66, 17, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(31, 53, 39, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(32, 12, 96, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(33, 81, 93, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(34, 53, 22, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(35, 98, 29, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(36, 100, 60, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(37, 20, 76, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(38, 11, 92, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(39, 47, 75, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(40, 19, 40, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(41, 53, 13, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(42, 31, 13, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(43, 49, 88, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(44, 79, 71, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(45, 98, 73, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(46, 19, 100, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(47, 4, 58, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(48, 73, 29, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(49, 28, 4, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(50, 44, 87, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(51, 42, 23, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(52, 2, 70, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(53, 86, 56, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(54, 18, 43, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(55, 54, 57, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(56, 2, 20, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(57, 6, 98, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(58, 1, 29, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(59, 41, 5, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(60, 99, 20, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(61, 54, 12, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(62, 40, 75, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(63, 21, 87, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(64, 75, 64, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(65, 33, 22, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(66, 54, 80, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(67, 11, 8, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(68, 46, 88, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(69, 24, 6, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(70, 88, 40, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(71, 87, 41, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(72, 53, 83, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(73, 29, 54, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(74, 45, 83, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(75, 7, 31, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(76, 32, 25, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(77, 41, 36, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(78, 22, 81, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(79, 86, 98, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(80, 37, 37, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(81, 37, 96, '2024-04-21 07:26:17', '2024-04-21 07:26:17'),
(82, 80, 45, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(83, 25, 61, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(84, 69, 9, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(85, 77, 79, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(86, 84, 66, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(87, 98, 96, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(88, 64, 19, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(89, 81, 38, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(90, 11, 95, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(91, 44, 4, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(92, 18, 49, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(93, 14, 56, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(94, 53, 98, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(95, 47, 70, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(96, 39, 12, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(97, 37, 40, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(98, 62, 53, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(99, 61, 53, '2024-04-21 07:26:18', '2024-04-21 07:26:18'),
(100, 75, 12, '2024-04-21 07:26:18', '2024-04-21 07:26:18');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `primerNombre` varchar(255) NOT NULL,
  `segundoNombre` varchar(255) DEFAULT NULL,
  `apellidoPaterno` varchar(255) NOT NULL,
  `apellidoMaterno` varchar(255) NOT NULL,
  `nombreUsuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `rol` enum('administrador','alumno','docente') NOT NULL,
  `foto` varchar(255) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `primerNombre`, `segundoNombre`, `apellidoPaterno`, `apellidoMaterno`, `nombreUsuario`, `contrasenia`, `correo`, `rol`, `foto`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 'Pablo', NULL, 'Escobar', 'Meraz', 'francisco09', 'TYBSMW|UoL;\'EHu9]Y', 'alejandra.bermejo@example.net', 'docente', 'https://via.placeholder.com/640x480.png/00ddbb?text=hic', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(2, 'Ainhoa', NULL, 'Caldera', 'Olivo', 'madrigal.cristian', '|{x&ciN}CLxd', 'claudia64@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/007766?text=quia', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(3, 'Alexia', NULL, 'Vera', 'Flores', 'david88', ',TB$^X', 'alejandro95@example.org', 'docente', 'https://via.placeholder.com/640x480.png/00ffbb?text=expedita', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(4, 'Iker', NULL, 'Bermúdez', 'Aguilera', 'gaguayo', '\'U6X_o*7', 'rzavala@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/0077bb?text=voluptatem', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(5, 'Mireia', NULL, 'Agosto', 'Otero', 'mar79', 'WQHqk;O', 'zroque@example.org', 'docente', 'https://via.placeholder.com/640x480.png/009922?text=quidem', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(6, 'Nicolás', NULL, 'Padilla', 'Atencio', 'aleix87', '1yMREE7b7l', 'zsoriano@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/002233?text=officia', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(7, 'César', NULL, 'Armendáriz', 'Cotto', 'ucastellanos', 'xkVR$oVCP\"FO', 'riera.alexia@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/0033aa?text=voluptas', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(8, 'Iker', NULL, 'Cardona', 'Peña', 'vicente.lola', 'Hier,N&jxkzXOpg', 'isabel.rios@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/0033bb?text=perspiciatis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(9, 'Ana María', NULL, 'Luevano', 'Reyes', 'ariadna65', '4%0~N{:n', 'garrido.marta@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/00ff11?text=omnis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(10, 'Francisco Javier', NULL, 'Leal', 'Adame', 'samuel14', 'PWp/VQmZ3n,', 'helena47@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/00bbcc?text=quis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(11, 'Gael', NULL, 'Porras', 'Cruz', 'lara.lucero', 'PN@NmuU.QU4nt<M_\\\\', 'berta96@example.net', 'docente', 'https://via.placeholder.com/640x480.png/0033ff?text=at', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(12, 'Lorena', 'Encarnación', 'Preciado', 'Toledo', 'badillo.victor', 'H-,{.$`', 'sara.longoria@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/00aa99?text=accusamus', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(13, 'César', NULL, 'Quesada', 'Aguayo', 'carmona.isaac', '|@N4xs', 'paola.arana@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/000077?text=blanditiis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(14, 'Óscar', 'Blanca', 'Quesada', 'Riera', 'unai63', 'C26gjDK{.t', 'wtovar@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/009900?text=velit', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(15, 'María', NULL, 'Carreón', 'Gálvez', 'sergio.palacios', 'L-T>5WgLglfV.P\"', 'xbanda@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/004499?text=dolorem', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(16, 'Salma', NULL, 'Barraza', 'Gimeno', 'fatima.hernadez', 'uH+/+XO{Q1-fa13C:c', 'hector.naranjo@example.com', 'docente', 'https://via.placeholder.com/640x480.png/0033bb?text=reprehenderit', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(17, 'Ainara', NULL, 'Toledo', 'Alemán', 'villalpando.marcos', '\\q+E*\\4+w6~AW,O3', 'mariacarmen51@example.net', 'docente', 'https://via.placeholder.com/640x480.png/00ffdd?text=fugit', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(18, 'Clara', NULL, 'Llorente', 'Yáñez', 'lgarica', '_wt(%-Thl_fi<-%Ujj', 'jesus.vigil@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/00ddff?text=in', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(19, 'Adam', 'Elsa', 'Estévez', 'Fierro', 'santamaria.alexia', 'W_Xb$.b.\'3j', 'yaiza44@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00cc88?text=occaecati', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(20, 'Ignacio', 'Andrés', 'Dávila', 'Roldán', 'emilia.villar', 'RLUjw)\"xp_|=', 'regalado.anamaria@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/00bb22?text=beatae', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(21, 'Raquel', NULL, 'Alonso', 'Santacruz', 'mascarenas.yeray', '\'X]\"r.oqCCUqQx', 'nicolas95@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/00ee99?text=quibusdam', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(22, 'Clara', NULL, 'Macias', 'Vila', 'joseantonio.montano', '0):FFD', 'baez.biel@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/0011dd?text=blanditiis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(23, 'Nora', NULL, 'Carrero', 'Gallardo', 'vhurtado', '>?Ne(tjYY', 'ochoa.nil@example.org', 'docente', 'https://via.placeholder.com/640x480.png/0044ee?text=aspernatur', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(24, 'Asier', NULL, 'Díaz', 'Gurule', 'ainara02', '#TI.I@D', 'antonio.salas@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ee33?text=voluptatem', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(25, 'Marina', 'Santiago', 'Gil', 'Millán', 'qduran', '9O[K#^f:#N', 'gerard40@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/004499?text=earum', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(26, 'Valeria', NULL, 'Villalpando', 'Saavedra', 'szarate', '74$<*u2-1\\F', 'wmena@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ff77?text=itaque', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(27, 'Pilar', NULL, 'Calvo', 'Urbina', 'sofia.padron', 'isD#]J+VZ21', 'laia12@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/0044ee?text=similique', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(28, 'Erik', 'Margarita', 'Hidalgo', 'Rolón', 'dpalomino', 'g4:1Be', 'juan91@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/000066?text=magnam', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(29, 'Berta', NULL, 'Vera', 'Madera', 'linares.beatriz', 'N!y_[X!Xm', 'esther53@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/0055ee?text=commodi', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(30, 'Saúl', NULL, 'Clemente', 'Nájera', 'arnau.ojeda', 'l\'xD=Z4!fGx+FEG~Jm', 'sotelo.amparo@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/003388?text=odio', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(31, 'Victoria', NULL, 'Briones', 'Ruíz', 'encarnacion.soliz', 'zty%[1Z7>URN}Y', 'rpedroza@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/005522?text=minima', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(32, 'Lorena', 'Ana Isabel', 'Muñoz', 'Elizondo', 'santos.guillem', 'AcVd|<', 'alvarado.guillem@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/00cc11?text=est', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(33, 'Irene', NULL, 'Delagarza', 'Gallardo', 'zvilla', '/Olx:%=zwkho*', 'sortiz@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/003377?text=ex', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(34, 'Ian', NULL, 'Villalpando', 'Leiva', 'epelayo', ')W}^)-KhvcPY', 'celia88@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/0066bb?text=quis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(35, 'Omar', NULL, 'Noriega', 'Lucero', 'cristina17', 'ZO9;Ki', 'yeray.bustamante@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/0022dd?text=dolor', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(36, 'Adam', NULL, 'Lomeli', 'Varela', 'cbahena', 'Xi(,F!\'poun', 'valentin.alejandro@example.net', 'docente', 'https://via.placeholder.com/640x480.png/003399?text=rem', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(37, 'Eduardo', 'Ian', 'Pons', 'López', 'aaron30', 'A$SJ|_m!d8.', 'fernando64@example.net', 'docente', 'https://via.placeholder.com/640x480.png/00aa44?text=ut', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(38, 'Blanca', NULL, 'Crespo', 'Ulibarri', 'dario19', '7;3du=M[1', 'marco.carretero@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/0000ff?text=quod', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(39, 'Oliver', NULL, 'Casillas', 'Ybarra', 'olivas.mariaangeles', 'T]^e/-00T!cr', 'jordi.carreon@example.org', 'docente', 'https://via.placeholder.com/640x480.png/001133?text=voluptates', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(40, 'Claudia', NULL, 'Ocampo', 'Terán', 'saul93', '%&8F-Fyul', 'yago52@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/008899?text=qui', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(41, 'Arnau', NULL, 'Vega', 'Bermejo', 'alexia28', 'm(sv:F', 'laura.olivarez@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/00dd77?text=autem', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(42, 'Mateo', 'Francisca', 'Arreola', 'Sánchez', 'briones.biel', 'Fco+S7<X0', 'pilar.juan@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/00dd66?text=aperiam', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(43, 'Alicia', NULL, 'Castañeda', 'Lerma', 'garibay.ona', '),\'up!', 'bruno.gonzales@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/006600?text=ab', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(44, 'Yeray', NULL, 'Saldaña', 'Lovato', 'sergio83', 'o%y\"}eK', 'toro.vega@example.com', 'docente', 'https://via.placeholder.com/640x480.png/00aadd?text=maiores', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(45, 'Mateo', NULL, 'Mendoza', 'Atencio', 'duarte.dario', '2P!\\-hyb516SA', 'jsalcedo@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/0000bb?text=laudantium', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(46, 'Manuela', NULL, 'Miramontes', 'Trejo', 'cantu.dario', 'F:{JL$+~Jzrr^Df$2S7', 'nerea89@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/003377?text=excepturi', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(47, 'María Carmen', NULL, 'Botello', 'Sotelo', 'lveliz', 'E.:un_=KMo+`G,Rj', 'yzamudio@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ee11?text=velit', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(48, 'Rosa María', 'Arnau', 'Vergara', 'Iglesias', 'gabriela97', 'Bk_NCqM=Pl[C7.-', 'ldelrio@example.net', 'docente', 'https://via.placeholder.com/640x480.png/005500?text=ducimus', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(49, 'Isaac', NULL, 'Aponte', 'Sánchez', 'fernando59', 'M#77YQu^Y-O:V)hMJ', 'espinoza.juan@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/006666?text=et', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(50, 'Pol', 'Miguel', 'Más', 'Botello', 'navarro.rodrigo', 'Q3%-#vtOri(DbXX8nYjo', 'alberto.magana@example.org', 'docente', 'https://via.placeholder.com/640x480.png/0022ff?text=est', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(51, 'Saúl', 'Arnau', 'Franco', 'Armijo', 'casares.francisca', '?+W9&d$|E<Pm1?yxEX', 'carrion.cristina@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/00bb77?text=velit', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(52, 'Samuel', 'Andrea', 'Olivera', 'Zavala', 'joseantonio.collazo', '>XJS|&[\"x]nd80cD', 'franciscojavier.alfaro@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/009933?text=occaecati', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(53, 'Rafael', NULL, 'Niño', 'Santillán', 'alberto21', 'kAWt%5\'[_weVc(Y', 'ucanales@example.com', 'docente', 'https://via.placeholder.com/640x480.png/0077ff?text=culpa', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(54, 'Jan', NULL, 'Brito', 'Valdivia', 'ramos.ismael', '\"KT=a}cwaeG:^', 'rocio.hernandes@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/004466?text=debitis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(55, 'Nicolás', NULL, 'Córdova', 'González', 'bruno.villegas', '3B!tfMgZ:q;;EK%1fw{n', 'natalia13@example.com', 'docente', 'https://via.placeholder.com/640x480.png/00bb22?text=quam', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(56, 'Nuria', NULL, 'Gómez', 'Collazo', 'ortega.fernando', '&$755uz5s', 'berrios.rafael@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/00ccff?text=aspernatur', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(57, 'Pablo', 'Rocío', 'Chavarría', 'Ceballos', 'isabel.ferrer', ':m!ck39$bAax/QtmK', 'uapodaca@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/004411?text=sed', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(58, 'Elsa', 'Paula', 'Altamirano', 'Alba', 'francisca95', '>}AZQsT[fFm#RC&;\\', 'carolina.gracia@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/006611?text=quod', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(59, 'Miguel Ángel', 'Eduardo', 'Bonilla', 'De la Cruz', 'eperes', '5\'^pSAgf,T(J5$', 'pablo50@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/0011cc?text=voluptate', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(60, 'Josefa', NULL, 'De Jesús', 'Llorente', 'salma31', '+2;`@Ya&Q%', 'valeria79@example.org', 'docente', 'https://via.placeholder.com/640x480.png/0000dd?text=dolorem', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(61, 'Nadia', NULL, 'Barela', 'Sanz', 'qalcantar', 'Mpxr{>;We!TD@', 'olivia.cervantes@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ff22?text=dolores', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(62, 'Cristina', 'Diego', 'Domínguez', 'Malave', 'hernadez.paula', '\'=,&zq%j', 'gastelum.izan@example.net', 'docente', 'https://via.placeholder.com/640x480.png/00bb22?text=facilis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(63, 'Naiara', NULL, 'Chávez', 'Ochoa', 'rafael73', ':Kj,`E(G~CwX', 'ainara65@example.org', 'docente', 'https://via.placeholder.com/640x480.png/007744?text=laborum', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(64, 'Luisa', NULL, 'Mesa', 'Martínez', 'millan.izan', 'cA?Gv*9(4~8<Xd\'?', 'jzepeda@example.org', 'docente', 'https://via.placeholder.com/640x480.png/001177?text=quos', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(65, 'Jaime', NULL, 'Cuenca', 'Fierro', 'aaron.dominguez', 'I.I:]jl/OU$T', 'lfajardo@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/00cc55?text=recusandae', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(66, 'Gael', NULL, 'Andreu', 'Casanova', 'manuela.esquivel', 'xctb`T^%g%6%}*]', 'garrido.angel@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/0033ee?text=est', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(67, 'Pilar', NULL, 'Bermejo', 'Pozo', 'mateo.orellana', 'i17D3Vd;<|S', 'banda.arnau@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/0033dd?text=corrupti', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(68, 'María', NULL, 'Miranda', 'Tirado', 'rael.rosa', '!y\\\'a6yJn>_`lh', 'emilia66@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/0099cc?text=sed', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(69, 'Rosa', NULL, 'Tijerina', 'Briones', 'izquierdo.helena', 'a<4n&@i_,', 'ourbina@example.com', 'docente', 'https://via.placeholder.com/640x480.png/006600?text=rerum', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(70, 'Omar', 'Ainara', 'Zaragoza', 'Villalpando', 'asier.almonte', 'Du*=:>]hy\'{_$FQ', 'cmatos@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/0088dd?text=dignissimos', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(71, 'Manuela', 'Pablo', 'Sosa', 'Varela', 'mariacarmen70', ']T:V`@kbm-.E1L,;;Q+', 'rosario97@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/008888?text=fugiat', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(72, 'Oriol', NULL, 'Caldera', 'Orozco', 'carlota53', 'i7yev2)w`', 'leo.vazquez@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/007777?text=placeat', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(73, 'Luisa', NULL, 'Gallegos', 'Apodaca', 'miguel72', '{Gm|r&)+', 'rdelao@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/00ff11?text=voluptates', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(74, 'Aleix', NULL, 'Centeno', 'Hurtado', 'pichardo.nora', 'bS[+CA`pKX', 'sros@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ee11?text=et', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(75, 'Mario', NULL, 'Almaráz', 'Aguado', 'juanjose75', '$tuEU0\\Ls{b{(k2z1sDh', 'lozuna@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/00bb44?text=eum', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(76, 'Ismael', NULL, 'Chapa', 'Quesada', 'salma.almonte', ',^MbVxH!7', 'olga81@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/005522?text=pariatur', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(77, 'Elena', 'Luis', 'Martín', 'Saldivar', 'adriana11', '%GZ(Pa&', 'aleix78@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ee66?text=reiciendis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(78, 'Pedro', 'Rafael', 'Varela', 'Heredia', 'lorena91', '#G1eeyNm!)\"FiEb{Pq', 'molina.pilar@example.net', 'alumno', 'https://via.placeholder.com/640x480.png/0033ff?text=id', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(79, 'Natalia', NULL, 'Arenas', 'Pineda', 'elsa15', 'v|\"gt/T:X,658rYB', 'mercado.daniela@example.net', 'administrador', 'https://via.placeholder.com/640x480.png/00ffbb?text=quisquam', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(80, 'Raquel', NULL, 'Rascón', 'Sánchez', 'manuel92', 'w^:8?EPYLjF5~=', 'isaac26@example.com', 'docente', 'https://via.placeholder.com/640x480.png/00ccbb?text=quibusdam', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(81, 'Carlota', NULL, 'Ocasio', 'Fierro', 'pbarrientos', 'Q8VgCnQ31Ri,', 'csosa@example.org', 'docente', 'https://via.placeholder.com/640x480.png/0011ff?text=ducimus', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(82, 'Andrea', 'Luna', 'Matías', 'Anguiano', 'angulo.raquel', '&~bjt*Y#0hT^F+Z', 'carolina27@example.net', 'docente', 'https://via.placeholder.com/640x480.png/0022bb?text=aut', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(83, 'Cristian', NULL, 'Hernádez', 'Jimínez', 'rayan76', 'Nt_BUC1qEl(S*.', 'adam.aranda@example.com', 'administrador', 'https://via.placeholder.com/640x480.png/0066cc?text=natus', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(84, 'Verónica', 'Margarita', 'Balderas', 'Covarrubias', 'fernando74', '-Xag^=N$', 'varela.yago@example.net', 'docente', 'https://via.placeholder.com/640x480.png/0055cc?text=sint', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(85, 'Samuel', 'Jaime', 'Segura', 'Estévez', 'alexandra13', '7hy}MF(7H/', 'carmen.tello@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/005588?text=iusto', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(86, 'Margarita', 'Andrés', 'Vásquez', 'Acevedo', 'alicia53', '=ZBh{HZJZ49o-}[<', 'gotero@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/007733?text=sint', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(87, 'Roberto', NULL, 'Valle', 'Riojas', 'ariadna07', 'p#Fe]F;^oRqb2&tv', 'alvaro.gimenez@example.net', 'docente', 'https://via.placeholder.com/640x480.png/009955?text=quia', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(88, 'Luisa', NULL, 'Domenech', 'Bernal', 'sandra.nunez', ']{8?,]k23@ci|(4v', 'delacruz.berta@example.com', 'docente', 'https://via.placeholder.com/640x480.png/002299?text=blanditiis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(89, 'Francisco', 'Mireia', 'Escobedo', 'Barela', 'raul44', 'd3`cyN\\~9pS\"d', 'bbarrera@example.org', 'docente', 'https://via.placeholder.com/640x480.png/008855?text=in', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(90, 'Asier', 'Hugo', 'Loya', 'Contreras', 'vfajardo', 'g\\x!Od', 'tcarmona@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/00ff77?text=cupiditate', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(91, 'José', NULL, 'Santillán', 'Lugo', 'marta.torrez', '&bF6w{fH=NB', 'ignacio80@example.net', 'docente', 'https://via.placeholder.com/640x480.png/001166?text=tempora', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(92, 'María Carmen', 'Manuel', 'Collazo', 'Saldivar', 'joseantonio.murillo', 'n)`W~Bq_zbq', 'luna.ledesma@example.org', 'docente', 'https://via.placeholder.com/640x480.png/006699?text=ut', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(93, 'Oriol', NULL, 'Jurado', 'Vázquez', 'cristian.reina', '2;5|7i', 'ainara89@example.org', 'docente', 'https://via.placeholder.com/640x480.png/00cc66?text=eum', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(94, 'Olga', 'Patricia', 'Marcos', 'Cadena', 'aportillo', 'X/5\"-KzW<L<A[RdK!@', 'nora09@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/00bb33?text=veritatis', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(95, 'Luis', NULL, 'Caro', 'Juan', 'mvila', 'P+6\\M]?S|)[0a1M', 'benito.celia@example.org', 'docente', 'https://via.placeholder.com/640x480.png/009944?text=explicabo', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(96, 'Pol', 'Miguel', 'Domínguez', 'Perales', 'aponte.angel', '&njj3=,lV-oy*f]c', 'marco.miranda@example.com', 'alumno', 'https://via.placeholder.com/640x480.png/0000cc?text=vitae', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(97, 'Adrián', NULL, 'Cisneros', 'Ávila', 'arredondo.valentina', 'DR5U84o@uU<dL^,YvvY', 'villalba.carlota@example.org', 'alumno', 'https://via.placeholder.com/640x480.png/00cc99?text=officiis', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(98, 'Julia', NULL, 'Sedillo', 'Maldonado', 'mendoza.ian', '&Wi>Ym49b6)\\', 'padilla.luis@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/0088ee?text=ad', 0, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(99, 'Lola', NULL, 'Limón', 'Saiz', 'olvera.natalia', 'K7{_>>0~J8.ujU1^}*', 'nerea53@example.net', 'docente', 'https://via.placeholder.com/640x480.png/00dd33?text=quia', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01'),
(100, 'Nadia', NULL, 'Riojas', 'Leiva', 'bzamudio', 'r(oXV^#0,s:0/C+V', 'paola.guzman@example.org', 'administrador', 'https://via.placeholder.com/640x480.png/00ee33?text=animi', 1, '2024-04-21 06:10:01', '2024-04-21 06:10:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_id_usuario_foreign` (`id_Usuario`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignatura_docente_id_asignatura_foreign` (`id_asignatura`),
  ADD KEY `asignatura_docente_id_docente_foreign` (`id_docente`);

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bloque_id_asignatura_foreign` (`id_asignatura`);

--
-- Indices de la tabla `bloque_progresion`
--
ALTER TABLE `bloque_progresion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bloque_progresion_id_bloque_foreign` (`id_Bloque`),
  ADD KEY `bloque_progresion_id_progresion_foreign` (`id_Progresion`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_id_usuario_foreign` (`id_Usuario`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupo_id_asignatura_docente_foreign` (`id_Asignatura_Docente`),
  ADD KEY `grupo_id_periodo_foreign` (`id_Periodo`);

--
-- Indices de la tabla `grupo_alumno`
--
ALTER TABLE `grupo_alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupo_alumno_id_grupo_foreign` (`id_Grupo`),
  ADD KEY `grupo_alumno_id_alumno_foreign` (`id_alumno`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario_asignatura`
--
ALTER TABLE `horario_asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horario_asignatura_id_horario_foreign` (`id_horario`),
  ADD KEY `horario_asignatura_id_asignatura_foreign` (`id_asignatura`);

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
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `progresion`
--
ALTER TABLE `progresion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progresion_id_periodo_foreign` (`id_Periodo`);

--
-- Indices de la tabla `progresion_evaluacion`
--
ALTER TABLE `progresion_evaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progresion_evaluacion_id_progresion_foreign` (`id_Progresion`),
  ADD KEY `progresion_evaluacion_id_evaluacion_foreign` (`id_Evaluacion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `bloque_progresion`
--
ALTER TABLE `bloque_progresion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `grupo_alumno`
--
ALTER TABLE `grupo_alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `horario_asignatura`
--
ALTER TABLE `horario_asignatura`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `progresion`
--
ALTER TABLE `progresion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `progresion_evaluacion`
--
ALTER TABLE `progresion_evaluacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_id_usuario_foreign` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD CONSTRAINT `asignatura_docente_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asignatura_docente_id_docente_foreign` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD CONSTRAINT `bloque_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bloque_progresion`
--
ALTER TABLE `bloque_progresion`
  ADD CONSTRAINT `bloque_progresion_id_bloque_foreign` FOREIGN KEY (`id_Bloque`) REFERENCES `bloque` (`id`),
  ADD CONSTRAINT `bloque_progresion_id_progresion_foreign` FOREIGN KEY (`id_Progresion`) REFERENCES `progresion` (`id`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_id_usuario_foreign` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_id_asignatura_docente_foreign` FOREIGN KEY (`id_Asignatura_Docente`) REFERENCES `asignatura_docente` (`id`),
  ADD CONSTRAINT `grupo_id_periodo_foreign` FOREIGN KEY (`id_Periodo`) REFERENCES `periodo` (`id`);

--
-- Filtros para la tabla `grupo_alumno`
--
ALTER TABLE `grupo_alumno`
  ADD CONSTRAINT `grupo_alumno_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `grupo_alumno_id_grupo_foreign` FOREIGN KEY (`id_Grupo`) REFERENCES `grupo` (`id`);

--
-- Filtros para la tabla `horario_asignatura`
--
ALTER TABLE `horario_asignatura`
  ADD CONSTRAINT `horario_asignatura_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horario_asignatura_id_horario_foreign` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `progresion`
--
ALTER TABLE `progresion`
  ADD CONSTRAINT `progresion_id_periodo_foreign` FOREIGN KEY (`id_Periodo`) REFERENCES `periodo` (`id`);

--
-- Filtros para la tabla `progresion_evaluacion`
--
ALTER TABLE `progresion_evaluacion`
  ADD CONSTRAINT `progresion_evaluacion_id_evaluacion_foreign` FOREIGN KEY (`id_Evaluacion`) REFERENCES `evaluacion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `progresion_evaluacion_id_progresion_foreign` FOREIGN KEY (`id_Progresion`) REFERENCES `progresion` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
