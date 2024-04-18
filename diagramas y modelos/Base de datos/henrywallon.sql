-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2024 a las 22:41:06
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
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `competenciaDesarrollada` varchar(255) NOT NULL,
  `tipoActividad` varchar(255) NOT NULL,
  `tipoEvaluacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`identificador`, `competenciaDesarrollada`, `tipoActividad`, `tipoEvaluacion`, `created_at`, `updated_at`) VALUES
(1, 'Aut qui nam et voluptatem.', 'Cuadro Comparativo', 'Lista de cotejo', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(2, 'Suscipit nihil beatae enim ipsum.', 'Mapa conceptual', 'Rúbrica', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(3, 'Ipsam necessitatibus quod tenetur sunt pariatur est.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(4, 'Quod ab ullam aut dolor similique et sequi.', 'Cuadro Comparativo', 'Lista de cotejo', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(5, 'Distinctio cumque nulla architecto ut et velit necessitatibus.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(6, 'Eum qui laudantium totam dolorum sed magnam expedita.', 'Mapa conceptual', 'Rúbrica', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(7, 'Et distinctio aut ea quia laborum.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(8, 'Pariatur dolores eius qui doloremque ut asperiores amet.', 'Mapa mental', 'Guía de observación', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(9, 'In quae et dicta.', 'Exposición', 'Rúbrica', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(10, 'Quia quasi aliquid voluptate quam debitis fuga aut.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 06:58:02', '2024-04-04 06:58:02'),
(11, 'Vel consequatur doloremque sunt amet impedit officia facere mollitia.', 'Exposición', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(12, 'Laborum hic dolores soluta ab.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(13, 'Qui nisi delectus voluptas enim dolor.', 'Mapa mental', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(14, 'Natus est accusamus distinctio aut voluptatem odio ab.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(15, 'Provident aut mollitia in vitae iusto quod dolore veniam.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(16, 'Sit nulla animi quibusdam cumque quisquam est odio.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(17, 'Aut consequatur quisquam tenetur commodi saepe.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(18, 'Quasi error sit architecto expedita.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(19, 'Dicta natus eaque non ad vitae libero temporibus.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(20, 'Sit a vero dignissimos et.', 'Exposición', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(21, 'Repellat quia et nemo et porro.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(22, 'Dolore eaque repellat fugiat facilis.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(23, 'Sit itaque blanditiis sed enim.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(24, 'In eos tempore laudantium quasi.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(25, 'Et laboriosam voluptas saepe saepe perspiciatis.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(26, 'Deserunt quaerat cupiditate voluptatum sunt.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(27, 'Aut voluptates qui quaerat modi ullam aperiam.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(28, 'Rerum dignissimos sit sunt aut ducimus veniam rerum.', 'Exposición', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(29, 'Id facere iure dolorem voluptates hic ut quia.', 'Cuadro Comparativo', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(30, 'Laudantium possimus quis neque illum rerum praesentium.', 'Mapa mental', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(31, 'Error et nostrum minus quia aperiam dolorum est.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(32, 'Est ut temporibus modi et.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(33, 'Eos ut et eum commodi voluptatum ipsam.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(34, 'Nam consequuntur consequatur expedita sapiente.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(35, 'Et explicabo voluptate accusantium quia dolorem numquam ipsum iure.', 'Exposición', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(36, 'Harum et nobis incidunt aperiam dolorem consequatur quasi.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(37, 'Laudantium vitae voluptas ut dolorum blanditiis omnis.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(38, 'Pariatur incidunt esse commodi tenetur qui at.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(39, 'Est id harum aut voluptate similique.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(40, 'Dicta dolorum in eum aspernatur.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(41, 'Omnis aut quo sunt id optio.', 'Mapa conceptual', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(42, 'Debitis ut veritatis similique ut reiciendis ut voluptatem.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(43, 'Nihil maiores occaecati et veniam cum.', 'Exposición', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(44, 'Dignissimos aperiam et minima nostrum rerum.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(45, 'Qui earum velit ut aliquam ad.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(46, 'Rerum ratione et quaerat.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(47, 'Illo omnis quibusdam sit at nulla.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(48, 'Quibusdam enim a deserunt est.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(49, 'Voluptatibus et qui quia rerum.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(50, 'Eos a ipsum repudiandae in quia voluptas.', 'Examen', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(51, 'Quo esse sequi qui praesentium aperiam nisi.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(52, 'Nihil necessitatibus ad est iusto quis voluptatem quia.', 'Exposición', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(53, 'Fugit in error voluptatem molestiae totam iste eius.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(54, 'Qui eos dolorum rerum ea consequatur.', 'Mapa mental', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(55, 'Laboriosam a quasi voluptatem quam delectus eum autem.', 'Exposición', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(56, 'Quidem dolores aut sit impedit at.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(57, 'A dolores voluptatem rerum iste possimus est.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(58, 'Corrupti ut reiciendis alias et et quam.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(59, 'Iure eaque assumenda voluptatibus totam quaerat cumque.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(60, 'Dolores quas quasi assumenda est nihil.', 'Exposición', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(61, 'Officia tempora error eius.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(62, 'Minus illo est et qui rerum reprehenderit quia consequatur.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(63, 'Ut est voluptas pariatur sed qui dolore.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(64, 'Saepe recusandae non in maiores rem unde iure ab.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(65, 'Distinctio eos fuga numquam possimus.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(66, 'Neque voluptas voluptatem eos beatae.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(67, 'Eaque et voluptatem porro modi ea rerum.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(68, 'Officiis quo aut qui.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(69, 'Repudiandae et impedit in quo et ipsa.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(70, 'Inventore velit in velit repudiandae.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(71, 'Nesciunt dolorem animi quam voluptates provident cupiditate et.', 'Examen', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(72, 'Laborum necessitatibus delectus dolor ipsum et eos praesentium.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(73, 'Qui beatae ut minus ea eligendi et nesciunt sequi.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(74, 'Saepe autem inventore est qui molestiae quo ex.', 'Mapa mental', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(75, 'Omnis dignissimos aut nisi accusantium voluptate dolorem.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(76, 'Iusto et officiis eius voluptas.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(77, 'Id quos neque neque odit.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(78, 'Maxime veritatis iure et in perspiciatis.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(79, 'Iure autem veritatis ut pariatur.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(80, 'Est perferendis neque harum eum est error omnis.', 'Cuadro Sinóptico', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(81, 'In sint reprehenderit velit eos sunt cum dolor.', 'Cuadro Comparativo', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(82, 'Et corporis illum rem magnam iure ex harum.', 'Examen', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(83, 'Sit enim similique rem quis.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(84, 'Cum voluptatem facere natus ut qui cumque.', 'Mapa mental', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(85, 'Ab repellat soluta id itaque maiores.', 'Examen', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(86, 'Aliquid corporis odit et ea qui magnam.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(87, 'Eligendi atque debitis id quia nemo.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(88, 'Ut a et reprehenderit.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(89, 'Nemo quasi autem eum quia quo et porro.', 'Mapa conceptual', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(90, 'Non accusamus laboriosam enim ipsam vel animi cumque.', 'Cuadro Sinóptico', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(91, 'Voluptatem voluptate dolor sunt qui numquam.', 'Cuadro Comparativo', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(92, 'Repellendus et non placeat sunt quasi est doloremque.', 'Cuadro Comparativo', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(93, 'Aliquid excepturi ratione ex hic necessitatibus voluptatem.', 'Exposición', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(94, 'Corrupti harum corporis rerum magnam quo ea.', 'Mapa mental', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(95, 'Unde quis est est.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(96, 'Occaecati modi molestias qui sed delectus rerum nihil occaecati.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(97, 'Tenetur illo non quae nulla blanditiis.', 'Mapa mental', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(98, 'Sequi eum provident est itaque.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(99, 'Dicta expedita quia nemo expedita fugiat.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(100, 'Enim quod omnis voluptas natus nihil rerum.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(101, 'Doloremque enim nihil id doloremque consequuntur quia.', 'Mapa conceptual', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(102, 'Nihil numquam aut veniam dolore.', 'Mapa conceptual', 'Lista de cotejo', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(103, 'Sequi incidunt fugiat molestiae ex et atque possimus beatae.', 'Exposición', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(104, 'Consequuntur rerum sed et qui nihil.', 'Examen', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(105, 'Quo eligendi perferendis aut.', 'Cuadro Comparativo', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(106, 'Est consequuntur mollitia quia excepturi et.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(107, 'Non exercitationem iusto ea ea et.', 'Exposición', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(108, 'Est consequatur laboriosam sequi quo.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(109, 'Eos molestiae culpa vel et.', 'Cuadro Sinóptico', 'Guía de observación', '2024-04-04 07:00:32', '2024-04-04 07:00:32'),
(110, 'Inventore possimus rerum cupiditate omnis.', 'Cuadro Comparativo', 'Rúbrica', '2024-04-04 07:00:32', '2024-04-04 07:00:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_clase`
--

CREATE TABLE `actividad_clase` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Clase` int(10) UNSIGNED NOT NULL,
  `identificador_Actividad_Unidad` int(10) UNSIGNED NOT NULL,
  `horasPlaneadas` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad_clase`
--

INSERT INTO `actividad_clase` (`identificador`, `identificador_Clase`, `identificador_Actividad_Unidad`, `horasPlaneadas`, `calificacion`, `created_at`, `updated_at`) VALUES
(1, 25, 40, 2, 98, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(2, 17, 17, 1, 90, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(3, 52, 64, 1, 88, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(4, 77, 50, 3, 91, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(5, 25, 99, 4, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(6, 2, 99, 4, 87, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(7, 53, 7, 4, 81, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(8, 93, 96, 4, 72, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(9, 9, 11, 2, 98, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(10, 13, 86, 2, 86, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(11, 71, 94, 2, 84, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(12, 21, 20, 4, 87, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(13, 57, 38, 2, 71, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(14, 25, 61, 1, 98, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(15, 43, 97, 3, 77, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(16, 22, 25, 1, 98, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(17, 70, 45, 4, 83, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(18, 60, 82, 3, 76, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(19, 37, 29, 3, 79, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(20, 48, 46, 1, 92, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(21, 96, 33, 2, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(22, 23, 99, 2, 89, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(23, 34, 43, 4, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(24, 49, 56, 3, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(25, 63, 87, 2, 90, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(26, 83, 64, 4, 89, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(27, 25, 64, 4, 87, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(28, 13, 14, 2, 91, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(29, 94, 24, 3, 86, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(30, 51, 61, 1, 94, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(31, 91, 5, 2, 83, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(32, 89, 38, 2, 90, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(33, 84, 14, 3, 76, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(34, 2, 69, 2, 79, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(35, 34, 80, 2, 80, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(36, 78, 81, 3, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(37, 63, 13, 3, 90, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(38, 59, 46, 1, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(39, 3, 44, 1, 81, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(40, 89, 8, 4, 89, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(41, 73, 70, 3, 100, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(42, 36, 39, 4, 99, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(43, 92, 43, 2, 84, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(44, 31, 56, 3, 96, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(45, 20, 88, 4, 77, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(46, 57, 15, 1, 99, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(47, 2, 51, 2, 73, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(48, 96, 99, 1, 85, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(49, 45, 41, 4, 83, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(50, 60, 23, 4, 89, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(51, 82, 10, 3, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(52, 40, 98, 1, 90, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(53, 44, 21, 1, 73, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(54, 65, 38, 3, 80, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(55, 63, 11, 4, 88, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(56, 97, 23, 4, 89, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(57, 93, 34, 1, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(58, 19, 39, 2, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(59, 43, 93, 2, 79, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(60, 75, 44, 2, 79, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(61, 90, 98, 2, 76, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(62, 42, 62, 1, 75, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(63, 53, 16, 1, 77, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(64, 81, 3, 2, 78, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(65, 94, 69, 4, 82, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(66, 97, 74, 3, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(67, 30, 52, 1, 93, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(68, 21, 58, 4, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(69, 53, 78, 1, 100, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(70, 72, 90, 4, 82, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(71, 53, 94, 4, 74, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(72, 61, 27, 1, 81, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(73, 19, 4, 2, 96, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(74, 50, 36, 1, 91, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(75, 10, 1, 1, 72, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(76, 29, 32, 2, 70, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(77, 95, 82, 4, 98, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(78, 8, 22, 1, 78, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(79, 14, 58, 1, 83, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(80, 48, 67, 3, 84, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(81, 39, 94, 2, 100, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(82, 72, 45, 1, 75, '2024-04-04 07:05:25', '2024-04-04 07:05:25'),
(83, 63, 38, 1, 75, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(84, 66, 6, 4, 74, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(85, 33, 47, 4, 75, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(86, 26, 13, 4, 78, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(87, 64, 81, 1, 76, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(88, 13, 55, 4, 92, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(89, 100, 28, 1, 99, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(90, 29, 14, 3, 84, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(91, 68, 73, 2, 96, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(92, 64, 15, 2, 84, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(93, 29, 7, 3, 80, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(94, 59, 32, 1, 83, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(95, 66, 82, 1, 77, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(96, 59, 43, 4, 81, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(97, 70, 3, 1, 90, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(98, 88, 37, 4, 71, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(99, 44, 94, 4, 93, '2024-04-04 07:05:26', '2024-04-04 07:05:26'),
(100, 44, 84, 2, 71, '2024-04-04 07:05:26', '2024-04-04 07:05:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_unidad`
--

CREATE TABLE `actividad_unidad` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Actividad` int(10) UNSIGNED NOT NULL,
  `identificador_Unidad` int(10) UNSIGNED NOT NULL,
  `porcentajeCalificacionUnidad` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad_unidad`
--

INSERT INTO `actividad_unidad` (`identificador`, `identificador_Actividad`, `identificador_Unidad`, `porcentajeCalificacionUnidad`, `created_at`, `updated_at`) VALUES
(1, 48, 49, 68.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(2, 55, 79, 89.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(3, 63, 53, 70.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(4, 93, 62, 99.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(5, 85, 81, 82.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(6, 49, 84, 56.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(7, 2, 15, 90.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(8, 98, 50, 95.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(9, 101, 99, 87.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(10, 39, 69, 97.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(11, 56, 3, 93.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(12, 85, 44, 57.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(13, 17, 84, 82.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(14, 109, 93, 61.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(15, 96, 43, 93.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(16, 60, 14, 54.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(17, 39, 40, 93.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(18, 28, 99, 67.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(19, 73, 33, 86.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(20, 11, 8, 53.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(21, 47, 1, 50.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(22, 87, 10, 56.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(23, 106, 85, 70.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(24, 52, 20, 63.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(25, 98, 44, 57.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(26, 94, 80, 86.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(27, 95, 13, 89.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(28, 95, 7, 58.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(29, 22, 59, 96.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(30, 39, 45, 91.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(31, 86, 76, 85.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(32, 27, 4, 95.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(33, 76, 62, 98.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(34, 13, 71, 90.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(35, 34, 15, 53.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(36, 24, 92, 75.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(37, 84, 55, 98.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(38, 19, 76, 89.00, '2024-04-04 07:04:26', '2024-04-04 07:04:26'),
(39, 40, 75, 95.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(40, 72, 52, 100.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(41, 51, 84, 69.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(42, 54, 36, 56.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(43, 75, 52, 74.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(44, 53, 78, 79.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(45, 49, 31, 88.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(46, 71, 28, 69.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(47, 109, 82, 71.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(48, 88, 28, 81.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(49, 30, 29, 100.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(50, 100, 68, 71.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(51, 45, 81, 98.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(52, 25, 23, 83.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(53, 71, 10, 78.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(54, 12, 74, 65.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(55, 2, 99, 87.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(56, 87, 76, 51.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(57, 1, 17, 63.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(58, 16, 99, 97.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(59, 53, 86, 96.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(60, 1, 90, 96.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(61, 99, 28, 63.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(62, 104, 61, 74.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(63, 102, 37, 87.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(64, 110, 26, 77.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(65, 93, 89, 52.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(66, 97, 14, 56.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(67, 29, 32, 93.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(68, 33, 77, 93.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(69, 110, 14, 71.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(70, 88, 69, 61.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(71, 68, 8, 94.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(72, 110, 75, 97.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(73, 61, 48, 72.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(74, 14, 16, 83.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(75, 55, 44, 73.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(76, 67, 24, 95.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(77, 53, 89, 64.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(78, 34, 9, 85.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(79, 31, 81, 58.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(80, 37, 34, 95.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(81, 77, 2, 91.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(82, 23, 56, 51.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(83, 98, 7, 90.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(84, 38, 25, 69.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(85, 69, 37, 95.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(86, 22, 43, 55.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(87, 88, 72, 50.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(88, 73, 30, 60.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(89, 36, 66, 86.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(90, 15, 87, 69.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(91, 69, 2, 85.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(92, 38, 16, 61.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(93, 16, 68, 94.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(94, 49, 80, 81.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(95, 87, 83, 64.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(96, 24, 3, 82.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(97, 7, 38, 95.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(98, 16, 76, 72.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(99, 48, 3, 68.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27'),
(100, 13, 36, 63.00, '2024-04-04 07:04:27', '2024-04-04 07:04:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `primerNombre` varchar(255) NOT NULL,
  `segundoNombre` varchar(255) DEFAULT NULL,
  `apellidoPaterno` varchar(255) NOT NULL,
  `apellidoMaterno` varchar(255) NOT NULL,
  `semestre` int(11) NOT NULL,
  `promedioGeneral` int(11) NOT NULL,
  `fechaIngreso` datetime NOT NULL,
  `fechaEgreso` datetime NOT NULL,
  `foto` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`identificador`, `primerNombre`, `segundoNombre`, `apellidoPaterno`, `apellidoMaterno`, `semestre`, `promedioGeneral`, `fechaIngreso`, `fechaEgreso`, `foto`, `usuario`, `contrasenia`, `created_at`, `updated_at`) VALUES
(1, 'Oriol', NULL, 'Sánchez', 'García', 4, 82, '2011-05-14 12:17:03', '2018-06-16 07:13:50', 'https://via.placeholder.com/640x480.png/00ff22?text=officia', 'lola.arce', ',RtN?C', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(2, 'Aitana', NULL, 'Maestas', 'Alcala', 1, 87, '2010-12-20 23:46:47', '2011-06-03 12:12:20', 'https://via.placeholder.com/640x480.png/0000bb?text=dicta', 'guillem.pereira', ',cG]6^KjaM*5\\Lp0Up^:', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(3, 'Jorge', NULL, 'Espinal', 'Salas', 3, 17, '2024-03-27 04:51:27', '2025-06-29 20:43:43', 'https://via.placeholder.com/640x480.png/00dd22?text=adipisci', 'pablo59', '$!;0+d[u\'sg4jL)V48|.', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(4, 'Pol', NULL, 'Delao', 'Madrigal', 6, 10, '2011-12-27 08:37:44', '2016-02-15 21:32:05', 'https://via.placeholder.com/640x480.png/00ddaa?text=sit', 'bdavila', ',,|7so2D$}', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(5, 'José Antonio', 'Juan José', 'Ros', 'Leiva', 9, 99, '2022-12-21 01:00:57', '2023-02-08 11:07:06', 'https://via.placeholder.com/640x480.png/009955?text=eum', 'jraya', 'q6(BZk~-i\'w.hi5,5', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(6, 'Elsa', 'María Pilar', 'Font', 'Aragón', 10, 95, '2022-07-20 08:36:53', '2022-10-17 01:30:11', 'https://via.placeholder.com/640x480.png/004466?text=non', 'olivarez.mariadolores', 'jmH-K$Az#)/', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(7, 'Gonzalo', 'Yeray', 'Castañeda', 'Cuellar', 6, 12, '2013-04-14 04:52:12', '2026-06-29 21:10:15', 'https://via.placeholder.com/640x480.png/00ee66?text=ut', 'bzepeda', 'H0QG|q6}0bc\'(*{mv&', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(8, 'Luis', NULL, 'Orosco', 'Duarte', 3, 26, '2019-10-10 04:07:43', '2021-06-05 15:18:13', 'https://via.placeholder.com/640x480.png/00aa22?text=similique', 'aitana.bernal', '@h(3wd', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(9, 'Ignacio', NULL, 'Benito', 'Esteban', 8, 58, '2012-11-28 18:43:41', '2022-05-31 20:00:38', 'https://via.placeholder.com/640x480.png/005511?text=id', 'mreyna', 'h~j*4N(|U', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(10, 'Paula', NULL, 'Feliciano', 'Soto', 6, 57, '2008-01-19 18:35:37', '2010-10-08 06:10:19', 'https://via.placeholder.com/640x480.png/00aa77?text=velit', 'rulloa', '[DTEV|VCMYbSR8h*NNQ', '2024-04-04 06:59:12', '2024-04-04 06:59:12'),
(11, 'Vega', NULL, 'Cuenca', 'Redondo', 1, 69, '2009-06-22 15:30:14', '2013-01-08 04:36:37', 'https://via.placeholder.com/640x480.png/0066cc?text=necessitatibus', 'maestas.mateo', 'KPy#Z,bjk-a]%', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(12, 'Luna', NULL, 'Alcaráz', 'Urrutia', 7, 83, '2013-02-28 02:05:54', '2024-10-02 03:52:14', 'https://via.placeholder.com/640x480.png/0011ee?text=iure', 'juana.redondo', '4lla*0U/*PkZo', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(13, 'Oriol', NULL, 'Peña', 'Serrato', 4, 3, '2023-08-17 16:34:48', '2024-08-14 02:49:28', 'https://via.placeholder.com/640x480.png/005588?text=ex', 'lazaro.ona', 'n4A\\zmCFIeEy3+', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(14, 'Natalia', NULL, 'Alcala', 'Vallejo', 8, 37, '2010-11-30 19:14:32', '2026-06-14 11:04:15', 'https://via.placeholder.com/640x480.png/00aaff?text=fugiat', 'cervantes.gonzalo', 'wG>nUa}9XA', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(15, 'Guillermo', NULL, 'Lucio', 'Ruelas', 9, 61, '2021-12-15 18:46:57', '2022-03-07 06:56:46', 'https://via.placeholder.com/640x480.png/007777?text=omnis', 'alba60', '5dW?\\UV`4(', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(16, 'Fátima', 'Alberto', 'Benavides', 'Méndez', 7, 44, '2007-11-01 13:04:52', '2017-08-29 19:53:32', 'https://via.placeholder.com/640x480.png/002255?text=dolores', 'aitana.soler', 'pgfN?/', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(17, 'Marta', 'Guillermo', 'Luevano', 'Pacheco', 3, 45, '2012-04-18 19:58:02', '2022-11-04 12:33:54', 'https://via.placeholder.com/640x480.png/002277?text=libero', 'veronica.medina', 'Z2!7qkEgg~gEa*?Wb', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(18, 'Alejandra', NULL, 'Costa', 'Beltrán', 4, 19, '2023-09-16 04:16:59', '2026-08-20 19:02:52', 'https://via.placeholder.com/640x480.png/0011aa?text=repellat', 'kpagan', 'KYzGPHr5T', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(19, 'Rosario', NULL, 'Pérez', 'Sedillo', 6, 70, '2017-08-16 07:15:10', '2020-09-28 07:39:26', 'https://via.placeholder.com/640x480.png/0066bb?text=eligendi', 'qvera', '<b<Sb7musb8^MfYx-Yn-', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(20, 'Erik', 'Guillem', 'Ferrer', 'Macías', 7, 80, '2013-12-01 06:07:40', '2026-10-16 14:18:00', 'https://via.placeholder.com/640x480.png/008811?text=necessitatibus', 'uescudero', '1c9_-||:a', '2024-04-04 06:59:22', '2024-04-04 06:59:22'),
(21, 'Daniel', 'María Carmen', 'Luján', 'Clemente', 10, 70, '2013-12-27 19:58:15', '2015-10-09 13:55:21', 'https://via.placeholder.com/640x480.png/00ff88?text=cum', 'nriojas', 'pHt<0>FcnegM1PD<\\', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(22, 'Izan', 'Luis', 'Apodaca', 'Ávalos', 12, 6, '2021-11-21 21:14:23', '2023-04-30 11:31:12', 'https://via.placeholder.com/640x480.png/009922?text=consequuntur', 'jose.ruiz', 'u)&8r)%j$', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(23, 'Ana', 'Vega', 'Reina', 'Cisneros', 11, 61, '2005-03-02 07:44:18', '2014-08-27 18:49:43', 'https://via.placeholder.com/640x480.png/006699?text=libero', 'elazaro', '*u*Zf]4}X4p7}$z#5', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(24, 'Sofía', 'Silvia', 'Jurado', 'Ros', 10, 10, '2008-03-05 20:25:32', '2019-06-25 23:57:49', 'https://via.placeholder.com/640x480.png/00dd88?text=in', 'saldana.alejandro', 'gV(fq!', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(25, 'Enrique', NULL, 'Atencio', 'Soliz', 8, 80, '2023-11-14 16:36:24', '2026-04-19 08:18:13', 'https://via.placeholder.com/640x480.png/0077ff?text=amet', 'mares.asier', 's{?_j]', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(26, 'Yago', 'Helena', 'Aguado', 'Riojas', 8, 56, '2010-10-09 12:10:22', '2020-05-21 05:32:38', 'https://via.placeholder.com/640x480.png/0000dd?text=molestiae', 'ocampo.francisca', 'w+);N}fP-w)8Zfw/', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(27, 'Rosa María', NULL, 'Téllez', 'Armenta', 8, 81, '2014-06-29 17:55:23', '2020-06-19 14:19:22', 'https://via.placeholder.com/640x480.png/00ccaa?text=repudiandae', 'pau36', 'uZk*h5H;z>V?UVG', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(28, 'Lucas', 'Josefa', 'Ferrer', 'Díaz', 7, 71, '2016-08-09 05:33:25', '2017-03-01 20:20:01', 'https://via.placeholder.com/640x480.png/00cc55?text=voluptatem', 'ocorral', '@\"\'B{ok!)', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(29, 'Oliver', NULL, 'Quintanilla', 'Valentín', 9, 11, '2017-09-01 09:32:07', '2024-03-05 02:08:52', 'https://via.placeholder.com/640x480.png/009999?text=quasi', 'eduardo.curiel', '^vTmm{', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(30, 'Alberto', 'José Manuel', 'Rosas', 'Arguello', 7, 91, '2024-02-21 08:36:16', '2025-01-19 07:15:26', 'https://via.placeholder.com/640x480.png/006666?text=doloremque', 'vsaucedo', 'Z<A<wv(4O,)5rU/M', '2024-04-04 06:59:23', '2024-04-04 06:59:23'),
(31, 'Jaime', NULL, 'Ramos', 'Robles', 3, 46, '2021-10-08 21:16:28', '2023-01-17 15:27:33', 'https://via.placeholder.com/640x480.png/00dd22?text=aut', 'ybonilla', '4O5RM\"\"p#vm|XN:', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(32, 'Mar', 'Claudia', 'Cervantes', 'Delao', 4, 95, '2013-03-20 08:29:07', '2023-06-23 17:32:09', 'https://via.placeholder.com/640x480.png/005599?text=at', 'villarreal.saul', 'bHd[XFk^~&', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(33, 'Ainara', 'Saúl', 'Andrés', 'Viera', 7, 51, '2016-03-12 17:39:00', '2023-01-25 15:51:54', 'https://via.placeholder.com/640x480.png/004455?text=rem', 'barajas.hugo', '|AygG$^', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(34, 'Vera', 'Martina', 'Iglesias', 'Blázquez', 11, 48, '2023-02-15 13:34:16', '2024-09-02 21:30:56', 'https://via.placeholder.com/640x480.png/007733?text=beatae', 'fcasanova', 'yk^n[6Q0ZO-Bk{|F)0)', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(35, 'Naiara', 'Cristian', 'Casas', 'Ballesteros', 9, 9, '2004-05-22 14:52:38', '2019-01-15 15:54:58', 'https://via.placeholder.com/640x480.png/00cc22?text=asperiores', 'malave.claudia', ';(|[I]tmLD?;k', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(36, 'Pedro', NULL, 'Armas', 'Rael', 9, 18, '2004-10-19 11:06:11', '2005-04-17 05:39:10', 'https://via.placeholder.com/640x480.png/00dddd?text=quia', 'fmontemayor', '(zgt?E\"2Qp:&5', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(37, 'Elena', NULL, 'Polo', 'Delafuente', 10, 88, '2022-02-22 21:42:50', '2023-07-11 23:35:40', 'https://via.placeholder.com/640x480.png/009999?text=sit', 'alberto67', 'Lzc+;}!}gA!`', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(38, 'Guillermo', NULL, 'Maestas', 'Santiago', 9, 10, '2016-07-21 00:56:52', '2025-04-27 09:59:00', 'https://via.placeholder.com/640x480.png/00ff33?text=nemo', 'pedro.leon', 'A$X4+dR[kn+lPx&z>S', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(39, 'Martín', NULL, 'Treviño', 'Garay', 12, 50, '2013-02-13 16:25:28', '2018-05-06 03:23:28', 'https://via.placeholder.com/640x480.png/004488?text=aut', 'morta', 'Yt`Nqze^I{mOw?b\\', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(40, 'Dario', NULL, 'Pichardo', 'Colunga', 10, 0, '2021-12-02 07:01:50', '2023-06-01 19:20:50', 'https://via.placeholder.com/640x480.png/0044cc?text=aut', 'valentina74', 'VMt1gd2KAf_xW@e', '2024-04-04 06:59:24', '2024-04-04 06:59:24'),
(41, 'Héctor', NULL, 'Lebrón', 'Valle', 7, 53, '2020-06-16 21:41:29', '2024-02-07 17:50:23', 'https://via.placeholder.com/640x480.png/003333?text=vero', 'diez.guillermo', 'NJz;UU', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(42, 'Juana', 'Saúl', 'Madera', 'Arce', 3, 15, '2008-04-10 11:52:27', '2019-04-07 15:23:33', 'https://via.placeholder.com/640x480.png/00bb88?text=dolores', 'quintana.pilar', 'yQJ7\'_*E!f6', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(43, 'Yeray', NULL, 'Viera', 'Hernándes', 3, 57, '2015-11-16 03:47:05', '2018-03-08 21:01:41', 'https://via.placeholder.com/640x480.png/0077bb?text=esse', 'ona.limon', '.EkU`*Xd<iBG_N~\"I', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(44, 'Ismael', NULL, 'Zayas', 'Paredes', 11, 24, '2020-08-10 08:06:34', '2025-08-15 08:52:15', 'https://via.placeholder.com/640x480.png/00cccc?text=at', 'margarita61', 'wU6uZaX<@6&', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(45, 'Lucía', 'Saúl', 'Quiroz', 'Lorente', 7, 2, '2014-12-27 03:09:22', '2016-04-03 16:42:19', 'https://via.placeholder.com/640x480.png/0033aa?text=sed', 'garcia.lidia', 'P/F!\"}[>fP$7v8_m.5v(', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(46, 'Gonzalo', 'Mar', 'Escalante', 'Plaza', 1, 19, '2022-09-21 02:03:03', '2025-06-12 19:06:34', 'https://via.placeholder.com/640x480.png/00ee33?text=eligendi', 'lucio.noa', '=i1SmMRre6b\\jp', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(47, 'Esther', NULL, 'Montaño', 'Lucio', 11, 85, '2005-11-04 14:36:13', '2022-11-15 17:12:23', 'https://via.placeholder.com/640x480.png/000088?text=ullam', 'parra.juan', 'm7BM*4PtK,f,\"', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(48, 'Valentina', 'Nicolás', 'Saavedra', 'Nazario', 8, 85, '2004-10-16 21:26:26', '2017-05-03 21:45:05', 'https://via.placeholder.com/640x480.png/001177?text=cumque', 'valeria12', ']_t!:2&`$9JtTY^m\'Gmk', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(49, 'Andrea', 'Gabriel', 'Casares', 'Barragán', 1, 74, '2015-04-02 21:34:31', '2023-01-31 14:17:32', 'https://via.placeholder.com/640x480.png/001111?text=architecto', 'briones.olga', 'B.cEKQnX=V.', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(50, 'Joel', NULL, 'Godoy', 'Sánchez', 10, 17, '2021-12-24 16:01:11', '2024-08-14 15:14:08', 'https://via.placeholder.com/640x480.png/00dddd?text=dolor', 'cedillo.hugo', ';B\"}j8o45', '2024-04-04 06:59:25', '2024-04-04 06:59:25'),
(51, 'Valeria', 'Álvaro', 'Costa', 'Rendón', 10, 5, '2020-01-10 17:41:56', '2020-07-13 12:53:12', 'https://via.placeholder.com/640x480.png/00dd44?text=molestiae', 'atencio.manuela', '#9j)cOzw\'xpy.eiz{M\"', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(52, 'Iván', NULL, 'Borrego', 'Vanegas', 11, 51, '2022-02-18 17:17:17', '2024-09-14 10:29:18', 'https://via.placeholder.com/640x480.png/00dd22?text=ex', 'barraza.marco', 'S,\"x_r!Xvql', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(53, 'Luisa', 'Lucía', 'Valdez', 'Valenzuela', 5, 99, '2022-10-05 09:30:42', '2026-07-01 14:22:50', 'https://via.placeholder.com/640x480.png/001155?text=inventore', 'rosa.ocasio', 'ZiEC*_@t', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(54, 'Mireia', NULL, 'Ulibarri', 'Camacho', 8, 29, '2019-10-21 19:53:47', '2022-05-17 10:51:10', 'https://via.placeholder.com/640x480.png/008833?text=in', 'juanjose82', '~M?B:\"}h%i.', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(55, 'Naiara', 'Carolina', 'Heredia', 'Centeno', 7, 13, '2008-07-05 22:21:07', '2013-05-21 22:16:37', 'https://via.placeholder.com/640x480.png/001188?text=labore', 'carolina26', '6?e9NrFT)tg7YZ@EF', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(56, 'Sonia', 'Rocío', 'Cisneros', 'Frías', 6, 77, '2011-02-28 08:50:40', '2019-07-30 18:35:54', 'https://via.placeholder.com/640x480.png/00bbbb?text=illum', 'orios', '>tL|lx@uX\\l', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(57, 'Verónica', NULL, 'Vallejo', 'Bautista', 5, 44, '2014-04-30 19:33:43', '2018-10-09 21:05:04', 'https://via.placeholder.com/640x480.png/001133?text=autem', 'malak.muro', '.GF<Yqp<B1}6O\'-%5uOD', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(58, 'Dario', 'Bruno', 'Cedillo', 'Arenas', 7, 26, '2007-03-26 06:18:38', '2022-06-06 14:00:59', 'https://via.placeholder.com/640x480.png/0022ff?text=aperiam', 'encarnacion.trejo', 'fpO0<A(Jif1Hsj1?-<3', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(59, 'Adrián', NULL, 'Vera', 'Monroy', 9, 79, '2008-09-15 15:33:52', '2026-09-03 09:33:36', 'https://via.placeholder.com/640x480.png/005588?text=unde', 'jose.segura', 'w46~)u0oAKt', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(60, 'Nicolás', 'Andrés', 'Saldivar', 'Valentín', 9, 24, '2005-06-08 06:23:45', '2016-08-10 17:35:00', 'https://via.placeholder.com/640x480.png/007711?text=sed', 'nicolas89', '7^/!>~<FHG76\"!', '2024-04-04 06:59:26', '2024-04-04 06:59:26'),
(61, 'Iker', NULL, 'Zamudio', 'Sotelo', 2, 25, '2014-10-14 14:30:27', '2024-10-29 23:27:19', 'https://via.placeholder.com/640x480.png/004444?text=consectetur', 'marina.gaytan', '[>xQA|d6', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(62, 'Jordi', 'Gabriel', 'Alemán', 'Hernándes', 2, 74, '2022-12-06 07:41:17', '2024-10-12 01:12:32', 'https://via.placeholder.com/640x480.png/006644?text=dolor', 'pporras', '?Qj-&PGg~,V{LnpQ9R', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(63, 'Jordi', 'Aina', 'Caro', 'Mateos', 9, 11, '2005-08-09 13:53:30', '2015-05-24 00:08:28', 'https://via.placeholder.com/640x480.png/001122?text=et', 'sofia.luque', 'WP34GX93W{|VtUG', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(64, 'Leo', NULL, 'Esquivel', 'Baeza', 12, 52, '2016-09-23 04:28:31', '2021-10-16 01:19:28', 'https://via.placeholder.com/640x480.png/00bbcc?text=vero', 'ntirado', 'rn)Xf*>CzNVT*kJj', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(65, 'Abril', 'Lucas', 'Venegas', 'Valero', 12, 54, '2018-09-06 07:42:09', '2019-05-18 17:02:55', 'https://via.placeholder.com/640x480.png/009911?text=nihil', 'ona.nino', '{a3#zX*fGmC&5|{/bj6C', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(66, 'Natalia', NULL, 'Flórez', 'Gimeno', 9, 62, '2018-05-14 13:20:27', '2021-09-28 00:58:04', 'https://via.placeholder.com/640x480.png/00eebb?text=minima', 'mireia28', 'g2G@2SVc.`n8P&An=', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(67, 'Rubén', NULL, 'Cepeda', 'Valladares', 12, 57, '2024-03-07 09:17:52', '2024-12-30 23:34:40', 'https://via.placeholder.com/640x480.png/0022bb?text=facere', 'eric24', 'b9Oc]eq6Ru`GufV', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(68, 'Valentina', 'Laura', 'Ibáñez', 'Lerma', 12, 95, '2005-07-20 10:03:54', '2015-02-07 22:36:13', 'https://via.placeholder.com/640x480.png/00eeaa?text=vero', 'asier20', 'OwhjEK', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(69, 'Adrián', NULL, 'Calero', 'Iglesias', 11, 72, '2014-04-10 19:03:33', '2022-07-23 01:55:55', 'https://via.placeholder.com/640x480.png/00ee11?text=quo', 'alberto.valdez', '&+mWL6y%dpFs3%:kr', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(70, 'Carlos', NULL, 'Olivárez', 'Nieto', 10, 18, '2023-07-22 21:25:06', '2027-03-17 03:30:41', 'https://via.placeholder.com/640x480.png/0099cc?text=nobis', 'urocha', '}9jbJi57#)$Zj', '2024-04-04 06:59:27', '2024-04-04 06:59:27'),
(71, 'Francisco Javier', NULL, 'Coronado', 'Urías', 10, 88, '2004-06-08 15:49:33', '2007-05-10 16:23:59', 'https://via.placeholder.com/640x480.png/008866?text=animi', 'vtoledo', 'tY]SZ}\\F60f30z', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(72, 'Gael', NULL, 'Verduzco', 'Cano', 2, 26, '2013-05-12 18:15:35', '2023-07-12 05:57:57', 'https://via.placeholder.com/640x480.png/007766?text=fuga', 'farias.diana', 'F?JW^aoy0=?m', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(73, 'Francisco Javier', NULL, 'Rosas', 'Nava', 3, 29, '2020-07-22 14:29:26', '2027-02-01 22:19:31', 'https://via.placeholder.com/640x480.png/003355?text=explicabo', 'bpuga', '\"p|m}+\\J@cv,[\'~', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(74, 'Zoe', 'Francisca', 'Franco', 'Araña', 8, 38, '2020-10-27 17:09:11', '2021-01-25 02:18:39', 'https://via.placeholder.com/640x480.png/003366?text=perferendis', 'cbaca', 'E|nBU~Ncyl:9:k377Q', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(75, 'Vera', NULL, 'Nájera', 'Esquibel', 9, 50, '2012-01-09 09:09:04', '2016-07-26 15:26:33', 'https://via.placeholder.com/640x480.png/006633?text=incidunt', 'fatima57', 'B=qG6p^/X\':ML~~Mz', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(76, 'Adam', NULL, 'Zepeda', 'Martín', 1, 13, '2021-10-06 06:38:00', '2025-12-30 11:40:45', 'https://via.placeholder.com/640x480.png/00dd77?text=et', 'pedro.solano', 'ESwO6n$~Pe;U..#7_<[>', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(77, 'Víctor', 'Manuel', 'Altamirano', 'Robledo', 11, 88, '2007-10-01 22:56:03', '2018-05-11 07:41:26', 'https://via.placeholder.com/640x480.png/009977?text=facilis', 'conde.mateo', 'fV3LusZ3Fqiv%@T', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(78, 'Mario', 'Óscar', 'Echevarría', 'Olivera', 4, 35, '2015-11-09 11:39:33', '2021-02-16 12:23:57', 'https://via.placeholder.com/640x480.png/00aa77?text=nostrum', 'rayan.olmos', 'Lh2rl|rno%%6', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(79, 'Elena', 'Yeray', 'Córdova', 'Mateos', 8, 41, '2006-09-14 08:34:46', '2020-05-25 01:03:03', 'https://via.placeholder.com/640x480.png/006644?text=ipsum', 'miriam.canales', '~u70A(6&w|4;&`MP?*P', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(80, 'Ainhoa', 'Alexandra', 'Mateo', 'Gallardo', 10, 44, '2005-04-28 13:32:29', '2008-11-23 11:11:42', 'https://via.placeholder.com/640x480.png/004455?text=porro', 'hgarica', 'f^iy0X\\[)[\']D', '2024-04-04 06:59:28', '2024-04-04 06:59:28'),
(81, 'Adriana', 'Alex', 'Gastélum', 'Alemán', 11, 11, '2006-04-18 00:29:11', '2020-07-30 22:11:55', 'https://via.placeholder.com/640x480.png/00eeaa?text=minus', 'wrosa', '&,lLJ\'ZnL!\"\'8o2', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(82, 'Joel', NULL, 'Bermúdez', 'Aguayo', 6, 100, '2011-10-05 23:11:22', '2018-01-22 16:43:46', 'https://via.placeholder.com/640x480.png/00dd99?text=sunt', 'josemanuel.martin', 'nJQG}Z9c1', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(83, 'Jan', 'Úrsula', 'Zayas', 'Ibáñez', 1, 41, '2018-01-10 21:01:55', '2023-09-27 16:13:59', 'https://via.placeholder.com/640x480.png/0044ff?text=hic', 'laia45', 'SC`R1K', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(84, 'Hugo', NULL, 'Grijalva', 'Ros', 9, 60, '2007-03-04 15:07:02', '2010-07-17 23:55:56', 'https://via.placeholder.com/640x480.png/00ffdd?text=dolores', 'ibanez.candela', '-yD};HW\';([a*', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(85, 'Daniel', NULL, 'Peláez', 'Riojas', 12, 51, '2017-03-06 21:52:04', '2018-09-12 19:08:04', 'https://via.placeholder.com/640x480.png/001133?text=autem', 'celia.barela', '{Zr1Cce9a', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(86, 'Olga', 'Blanca', 'Esteban', 'Guardado', 8, 92, '2011-03-30 18:47:23', '2019-01-19 05:05:29', 'https://via.placeholder.com/640x480.png/0077bb?text=recusandae', 'ocastro', '8h_!;=ld:Kq80U', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(87, 'Elena', NULL, 'Vélez', 'Aguilera', 11, 63, '2006-02-13 14:52:17', '2007-07-14 17:34:41', 'https://via.placeholder.com/640x480.png/00ff88?text=porro', 'smonroy', '}]i.Oh?n)K*l:dOiL&`n', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(88, 'Miguel', NULL, 'Flores', 'Sisneros', 4, 52, '2012-10-06 10:45:16', '2024-12-12 13:16:40', 'https://via.placeholder.com/640x480.png/00ccee?text=molestias', 'valentina.magana', 'dDIbm9h@ndOo|', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(89, 'Dario', 'Aina', 'Arriaga', 'Salazar', 11, 89, '2018-03-21 07:46:07', '2025-06-13 06:43:05', 'https://via.placeholder.com/640x480.png/0022ee?text=est', 'zquintanilla', '1\\kK$C<VL@(~$', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(90, 'Guillermo', 'Cristina', 'Matos', 'Polo', 6, 21, '2017-09-26 18:47:22', '2026-06-30 04:23:44', 'https://via.placeholder.com/640x480.png/009988?text=molestiae', 'hector.rosales', 'Qu/e.V!', '2024-04-04 06:59:29', '2024-04-04 06:59:29'),
(91, 'Blanca', 'Nayara', 'Llorente', 'Botello', 10, 5, '2004-12-27 08:09:55', '2021-11-24 17:54:02', 'https://via.placeholder.com/640x480.png/000022?text=omnis', 'rocha.inmaculada', 'UpMd7a]Rr\\', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(92, 'Joel', 'Ariadna', 'Chacón', 'Romo', 11, 81, '2018-08-14 10:17:59', '2027-03-16 12:15:39', 'https://via.placeholder.com/640x480.png/0044ff?text=iste', 'vargas.pedro', 'w)2e30!>', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(93, 'Francisco', 'Álvaro', 'Gamboa', 'Palomino', 6, 88, '2023-06-08 15:35:06', '2025-05-31 00:19:11', 'https://via.placeholder.com/640x480.png/00dd22?text=quod', 'cristian.ruiz', 'Xv|ao(7(q%Jc`fSFDYP', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(94, 'Unai', NULL, 'De Anda', 'Ruíz', 1, 32, '2006-06-13 01:50:03', '2012-04-09 19:25:31', 'https://via.placeholder.com/640x480.png/00ccaa?text=facere', 'sanchez.lola', ';^6Q/x', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(95, 'Jon', NULL, 'Piñeiro', 'Niño', 7, 8, '2010-01-06 12:28:45', '2022-07-15 01:07:09', 'https://via.placeholder.com/640x480.png/000011?text=quidem', 'diez.angel', '*}yLL7z', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(96, 'Eduardo', 'Encarnación', 'Velásquez', 'Maya', 1, 62, '2020-05-14 09:05:39', '2026-11-05 20:55:17', 'https://via.placeholder.com/640x480.png/00ccbb?text=sint', 'inmaculada.lujan', 'L_MHRA,yv', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(97, 'Martín', 'Eric', 'Valdivia', 'Delrío', 3, 45, '2013-05-05 23:01:42', '2026-09-16 21:14:57', 'https://via.placeholder.com/640x480.png/0033ff?text=cumque', 'oriol.quiroz', ':TloD7P', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(98, 'Noa', 'Jordi', 'Saucedo', 'Razo', 5, 43, '2019-06-26 14:28:54', '2020-05-27 04:36:19', 'https://via.placeholder.com/640x480.png/000077?text=vero', 'hidalgo.lucas', 'p@}zBfacwo96\'[~C$`]', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(99, 'Rayan', NULL, 'Espino', 'Gaytán', 5, 19, '2021-12-11 20:53:45', '2026-07-22 06:12:38', 'https://via.placeholder.com/640x480.png/0022ee?text=pariatur', 'gaytan.valentina', 'nJDO)JMq9+3/#N+', '2024-04-04 06:59:30', '2024-04-04 06:59:30'),
(100, 'Eva', 'Unai', 'Moreno', 'Espinosa', 11, 24, '2009-01-10 18:59:32', '2013-02-14 13:13:30', 'https://via.placeholder.com/640x480.png/007722?text=dolores', 'iker87', ']R9g1tXt)G9)Zc.YXt_u', '2024-04-04 06:59:30', '2024-04-04 06:59:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_materia_docente`
--

CREATE TABLE `alumno_materia_docente` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Alumno` int(10) UNSIGNED NOT NULL,
  `identificador_Materia_Docente` int(10) UNSIGNED NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  `calificacion` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_materia_docente`
--

INSERT INTO `alumno_materia_docente` (`identificador`, `identificador_Alumno`, `identificador_Materia_Docente`, `fechaInicio`, `fechaFin`, `calificacion`, `semestre`, `created_at`, `updated_at`) VALUES
(1, 74, 34, '2017-09-13 04:58:16', '2022-09-22 09:54:52', 86, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(2, 7, 51, '2015-08-15 05:38:27', '2026-02-23 22:32:22', 85, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(3, 58, 97, '2013-10-16 02:44:32', '2019-04-01 06:17:55', 91, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(4, 11, 66, '2008-03-29 22:18:04', '2011-07-18 09:24:04', 81, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(5, 7, 65, '2018-06-09 11:12:07', '2024-03-14 04:14:04', 83, 8, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(6, 89, 42, '2019-09-13 16:00:55', '2020-12-19 08:03:44', 98, 11, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(7, 3, 3, '2005-03-11 14:28:36', '2024-05-04 10:46:40', 88, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(8, 58, 51, '2024-01-20 04:25:54', '2026-05-12 06:05:21', 98, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(9, 4, 47, '2020-02-26 03:31:23', '2024-10-20 14:40:04', 81, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(10, 36, 23, '2007-12-20 04:22:23', '2020-01-28 06:12:29', 100, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(11, 23, 84, '2011-07-13 02:14:46', '2018-01-28 06:47:53', 84, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(12, 37, 7, '2007-01-04 11:03:43', '2024-02-07 15:53:07', 92, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(13, 82, 33, '2011-12-05 13:20:53', '2021-11-20 18:15:06', 90, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(14, 52, 19, '2010-03-04 00:48:44', '2026-09-17 09:39:29', 83, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(15, 45, 83, '2019-01-30 06:51:12', '2025-10-04 19:00:57', 92, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(16, 41, 90, '2005-03-22 23:33:32', '2011-03-21 13:04:04', 84, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(17, 37, 54, '2015-07-24 21:10:15', '2021-07-30 09:38:04', 95, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(18, 63, 63, '2015-05-29 22:18:59', '2017-06-05 21:20:01', 80, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(19, 45, 45, '2009-05-11 19:59:43', '2016-01-30 20:20:54', 80, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(20, 41, 71, '2017-04-11 07:37:28', '2024-08-13 11:00:11', 90, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(21, 3, 98, '2008-08-29 21:54:26', '2010-05-23 04:13:06', 93, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(22, 19, 39, '2021-02-14 18:52:22', '2022-09-30 20:59:08', 83, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(23, 71, 64, '2015-01-06 09:16:32', '2019-12-11 17:16:12', 92, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(24, 48, 40, '2022-07-06 06:25:15', '2025-07-07 17:41:15', 97, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(25, 1, 64, '2023-05-29 14:46:44', '2026-03-11 22:10:40', 87, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(26, 90, 28, '2012-02-20 07:37:44', '2020-06-02 21:57:48', 93, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(27, 44, 1, '2012-10-28 14:57:31', '2020-08-21 01:06:12', 88, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(28, 36, 43, '2015-05-09 04:00:35', '2020-07-23 23:11:44', 91, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(29, 96, 3, '2009-12-12 09:11:26', '2013-04-09 13:26:50', 86, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(30, 18, 91, '2013-07-07 12:56:46', '2014-02-12 22:04:04', 82, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(31, 41, 16, '2013-10-28 06:30:09', '2021-04-28 16:25:20', 92, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(32, 33, 38, '2009-06-23 10:12:33', '2015-10-20 11:36:20', 91, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(33, 100, 73, '2021-05-28 17:12:52', '2022-01-23 22:50:01', 88, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(34, 34, 93, '2009-08-28 10:30:16', '2023-07-15 01:32:59', 99, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(35, 99, 4, '2016-07-17 03:27:01', '2019-02-10 02:22:32', 96, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(36, 73, 63, '2006-03-08 04:30:10', '2024-07-03 19:49:26', 83, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(37, 35, 9, '2005-06-09 21:23:33', '2014-06-24 09:41:23', 89, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(38, 6, 19, '2019-04-21 07:00:52', '2020-07-17 08:32:20', 96, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(39, 96, 28, '2010-07-05 00:52:10', '2015-04-09 09:36:25', 95, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(40, 93, 15, '2016-08-12 12:42:18', '2027-03-04 09:24:27', 82, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(41, 33, 10, '2010-11-20 02:49:11', '2011-06-06 06:49:33', 89, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(42, 35, 46, '2011-08-14 21:19:50', '2023-12-22 19:04:46', 89, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(43, 62, 96, '2018-08-20 18:08:14', '2021-01-09 19:58:41', 98, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(44, 69, 93, '2020-03-29 23:27:58', '2025-05-01 01:20:37', 94, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(45, 92, 57, '2021-02-04 05:55:08', '2025-03-29 06:32:39', 87, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(46, 90, 17, '2018-01-10 07:03:11', '2021-12-19 23:02:00', 91, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(47, 34, 68, '2004-09-19 16:37:14', '2005-03-21 13:01:38', 96, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(48, 23, 44, '2012-10-16 05:37:11', '2014-12-04 06:26:07', 83, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(49, 74, 70, '2008-11-23 13:06:14', '2019-08-26 09:31:53', 95, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(50, 43, 29, '2005-06-08 19:03:35', '2026-06-02 10:34:08', 90, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(51, 34, 47, '2012-08-10 02:26:37', '2026-08-30 11:00:26', 97, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(52, 95, 95, '2007-01-25 04:44:57', '2018-04-13 16:05:07', 100, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(53, 62, 3, '2004-05-25 17:39:56', '2018-01-27 20:35:53', 88, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(54, 97, 35, '2013-10-28 12:00:10', '2014-11-11 03:38:02', 81, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(55, 42, 110, '2011-12-07 13:43:59', '2019-03-29 12:28:14', 97, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(56, 51, 31, '2022-04-24 13:43:47', '2026-04-07 21:13:34', 100, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(57, 97, 32, '2008-05-15 20:00:58', '2010-05-06 23:15:03', 90, 8, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(58, 17, 19, '2018-12-13 22:34:18', '2019-12-10 07:50:55', 95, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(59, 27, 102, '2020-02-28 20:48:06', '2022-05-25 19:43:23', 94, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(60, 78, 87, '2023-04-08 19:02:27', '2024-08-10 15:48:56', 99, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(61, 16, 103, '2018-05-16 21:56:52', '2022-05-20 09:26:25', 96, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(62, 11, 44, '2014-10-19 06:57:24', '2019-06-16 11:05:00', 99, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(63, 11, 103, '2012-12-19 03:01:19', '2013-10-19 16:58:43', 93, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(64, 66, 74, '2010-09-28 19:15:56', '2022-09-12 13:09:28', 82, 11, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(65, 37, 43, '2019-05-06 04:48:06', '2023-07-14 11:10:04', 87, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(66, 10, 83, '2012-02-14 18:03:43', '2020-08-05 13:58:40', 84, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(67, 42, 108, '2005-04-01 14:10:21', '2008-12-04 18:35:47', 95, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(68, 36, 98, '2019-06-13 11:36:57', '2021-06-26 15:30:20', 99, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(69, 58, 13, '2011-08-03 12:38:09', '2011-12-10 08:37:31', 80, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(70, 34, 67, '2014-09-17 02:47:46', '2015-04-15 14:48:41', 82, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(71, 76, 79, '2014-11-23 14:04:39', '2022-08-27 05:57:47', 83, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(72, 88, 41, '2016-08-17 17:08:09', '2021-07-08 23:29:37', 89, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(73, 40, 43, '2006-02-16 14:55:41', '2013-12-13 23:27:14', 94, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(74, 42, 70, '2014-09-02 21:26:38', '2017-05-19 20:06:14', 84, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(75, 42, 91, '2015-01-23 14:26:06', '2019-11-23 13:20:04', 94, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(76, 85, 106, '2022-10-26 08:04:50', '2024-12-11 09:40:38', 80, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(77, 70, 93, '2014-03-03 21:42:29', '2026-12-04 13:18:32', 85, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(78, 56, 67, '2015-06-26 16:53:04', '2027-01-15 04:49:34', 82, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(79, 22, 53, '2007-11-22 01:27:18', '2020-09-10 06:59:24', 98, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(80, 88, 51, '2018-03-13 07:35:21', '2026-05-24 22:23:14', 83, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(81, 56, 78, '2006-06-22 11:19:45', '2010-12-19 20:51:55', 88, 5, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(82, 9, 47, '2010-08-18 18:41:43', '2026-07-09 08:29:13', 85, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(83, 29, 87, '2005-10-05 09:38:56', '2010-03-11 16:54:37', 99, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(84, 88, 57, '2013-08-27 19:45:19', '2020-06-09 12:04:38', 100, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(85, 69, 34, '2016-03-19 14:14:25', '2026-11-05 01:38:47', 81, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(86, 91, 51, '2015-08-07 03:34:12', '2018-10-28 07:19:34', 91, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(87, 8, 18, '2023-02-11 15:38:23', '2025-11-01 11:57:07', 100, 1, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(88, 9, 16, '2007-07-05 10:58:27', '2026-11-26 19:02:25', 87, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(89, 78, 52, '2006-10-23 23:57:31', '2009-07-15 21:58:59', 98, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(90, 65, 47, '2021-05-20 16:39:00', '2025-07-17 10:33:23', 89, 3, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(91, 28, 89, '2007-01-11 02:57:21', '2022-02-28 16:14:55', 94, 8, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(92, 83, 26, '2007-01-31 01:19:06', '2020-08-10 17:49:12', 86, 6, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(93, 46, 6, '2017-06-17 11:56:39', '2026-01-04 18:43:28', 87, 8, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(94, 100, 87, '2017-09-27 19:30:59', '2025-05-31 01:08:15', 81, 9, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(95, 56, 82, '2011-10-02 03:54:50', '2015-10-01 19:33:20', 99, 10, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(96, 4, 92, '2016-02-26 11:50:46', '2025-05-09 16:53:48', 88, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(97, 85, 2, '2009-07-03 05:58:04', '2012-11-12 15:14:39', 93, 12, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(98, 95, 29, '2011-04-27 21:41:18', '2021-01-04 00:07:41', 97, 7, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(99, 13, 44, '2008-08-26 17:29:11', '2019-02-16 05:58:52', 81, 2, '2024-04-04 07:04:05', '2024-04-04 07:04:05'),
(100, 22, 79, '2014-10-23 19:38:43', '2015-04-29 11:27:39', 94, 4, '2024-04-04 07:04:05', '2024-04-04 07:04:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Alumno_Materia_Docente` int(10) UNSIGNED NOT NULL,
  `identificador_Tema` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `asistenciaAlumno` tinyint(1) NOT NULL,
  `asistenciaDocente` tinyint(1) NOT NULL,
  `estatus` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`identificador`, `identificador_Alumno_Materia_Docente`, `identificador_Tema`, `fecha`, `asistenciaAlumno`, `asistenciaDocente`, `estatus`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 90, 83, '2013-11-05 08:49:33', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(2, 65, 7, '2014-03-29 11:28:51', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(3, 34, 24, '2010-03-15 16:51:42', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(4, 64, 94, '2016-10-04 19:10:07', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(5, 61, 1, '2013-06-17 23:58:39', 0, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(6, 8, 35, '2012-02-26 16:26:16', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(7, 52, 69, '2023-09-06 16:47:18', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(8, 42, 43, '2005-10-15 09:16:28', 0, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(9, 12, 70, '2012-12-26 06:25:29', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(10, 88, 6, '2016-07-09 16:54:10', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(11, 59, 73, '2012-03-20 03:49:02', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(12, 43, 5, '2009-08-14 13:08:36', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(13, 47, 43, '2023-02-09 11:03:05', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(14, 1, 42, '2018-09-15 08:44:03', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(15, 24, 25, '2008-11-10 22:08:44', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(16, 77, 76, '2005-12-31 13:13:17', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(17, 42, 81, '2005-12-25 18:01:48', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(18, 100, 90, '2007-04-12 08:30:06', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(19, 17, 51, '2015-05-18 19:11:25', 1, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(20, 65, 54, '2019-03-17 02:56:53', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(21, 56, 34, '2011-06-13 18:07:16', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(22, 23, 74, '2004-06-18 14:15:57', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(23, 72, 47, '2017-07-24 15:09:39', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(24, 41, 26, '2007-07-08 09:03:01', 0, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(25, 9, 90, '2009-02-16 00:28:56', 1, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(26, 30, 83, '2017-06-13 07:36:30', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(27, 90, 90, '2005-03-18 04:56:38', 1, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(28, 87, 70, '2008-12-03 18:37:11', 0, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(29, 81, 11, '2021-04-22 06:49:42', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(30, 91, 20, '2011-04-04 04:55:33', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(31, 54, 42, '2005-12-30 13:43:15', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(32, 86, 3, '2016-05-13 19:48:26', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(33, 26, 100, '2007-11-19 08:42:19', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(34, 5, 44, '2008-07-23 00:00:43', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(35, 13, 99, '2013-11-07 16:24:55', 1, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(36, 76, 66, '2010-12-14 23:54:01', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(37, 84, 72, '2013-06-12 11:48:49', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(38, 6, 18, '2010-10-06 10:46:03', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(39, 43, 51, '2023-12-30 07:27:28', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(40, 93, 82, '2020-06-04 06:23:16', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(41, 24, 54, '2004-06-05 14:28:12', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(42, 18, 14, '2007-03-06 12:38:19', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(43, 82, 61, '2019-12-10 07:22:56', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(44, 88, 43, '2012-02-23 19:27:40', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(45, 40, 30, '2019-07-08 01:37:49', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(46, 48, 20, '2012-10-20 12:54:52', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(47, 85, 13, '2008-06-01 05:48:33', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(48, 35, 1, '2023-08-21 22:38:20', 0, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(49, 2, 24, '2015-10-07 17:49:12', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(50, 22, 99, '2011-04-29 02:16:18', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(51, 28, 52, '2019-11-16 22:24:01', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(52, 20, 31, '2010-04-08 08:10:00', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(53, 25, 6, '2022-11-13 18:26:17', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(54, 42, 8, '2009-06-29 18:41:40', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(55, 97, 87, '2009-12-13 01:12:21', 0, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(56, 35, 36, '2009-05-20 17:36:38', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(57, 47, 11, '2024-02-15 22:53:24', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(58, 67, 64, '2008-12-09 13:25:41', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(59, 36, 95, '2007-01-25 15:12:43', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(60, 62, 32, '2018-02-03 09:39:28', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(61, 76, 79, '2008-03-27 09:49:37', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(62, 43, 64, '2009-04-14 15:00:51', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(63, 88, 34, '2011-08-04 12:59:59', 1, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(64, 56, 6, '2005-05-31 01:46:57', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(65, 57, 38, '2010-11-15 01:33:58', 0, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(66, 12, 97, '2006-08-26 18:12:41', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(67, 18, 37, '2015-11-26 17:03:01', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(68, 69, 54, '2023-06-05 21:48:46', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(69, 32, 40, '2016-07-08 02:57:07', 1, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(70, 19, 49, '2004-12-23 17:53:30', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(71, 64, 16, '2006-02-05 04:34:28', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(72, 50, 97, '2018-12-28 07:14:42', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(73, 7, 1, '2018-12-10 21:31:13', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(74, 96, 52, '2015-04-30 15:45:28', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(75, 6, 67, '2008-06-24 13:50:10', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(76, 65, 22, '2022-04-26 07:31:27', 0, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(77, 98, 77, '2015-09-04 02:53:37', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(78, 23, 45, '2022-10-13 09:17:51', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(79, 22, 81, '2020-12-22 07:06:29', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(80, 52, 36, '2023-08-23 08:55:13', 0, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(81, 75, 51, '2011-05-20 23:07:24', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(82, 35, 88, '2023-12-25 04:05:49', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(83, 98, 82, '2007-03-08 10:36:46', 1, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(84, 50, 19, '2011-02-07 11:40:00', 0, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(85, 84, 97, '2013-03-11 17:18:02', 1, 1, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(86, 65, 15, '2008-02-03 17:24:47', 0, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(87, 58, 29, '2018-10-15 08:49:39', 0, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(88, 57, 20, '2007-08-05 13:48:10', 1, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(89, 71, 6, '2016-03-22 15:29:17', 1, 0, 'En proceso', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(90, 35, 75, '2005-04-25 06:58:47', 0, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(91, 39, 82, '2010-07-03 18:24:47', 0, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(92, 43, 39, '2016-10-18 18:18:25', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(93, 40, 13, '2019-07-10 03:44:31', 0, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(94, 46, 95, '2021-07-11 17:21:10', 1, 1, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(95, 95, 26, '2015-04-26 04:22:59', 1, 1, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(96, 97, 90, '2013-08-08 01:05:08', 0, 1, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(97, 24, 11, '2016-02-12 13:58:21', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(98, 13, 65, '2013-07-23 07:28:31', 0, 0, 'Realizada', '', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(99, 22, 42, '2016-05-01 19:31:34', 0, 0, 'Cancelada', 'Debido a causas mayores, la clase no se llevó a cabo', '2024-04-04 07:05:19', '2024-04-04 07:05:19'),
(100, 87, 61, '2007-09-24 09:06:17', 1, 0, 'Pospuesta', 'La clase se realizará una hora después de lo previsto', '2024-04-04 07:05:19', '2024-04-04 07:05:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `primerNombre` varchar(255) NOT NULL,
  `segundoNombre` varchar(255) DEFAULT NULL,
  `apellidoPaterno` varchar(255) NOT NULL,
  `apellidoMaterno` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`identificador`, `primerNombre`, `segundoNombre`, `apellidoPaterno`, `apellidoMaterno`, `foto`, `usuario`, `contrasenia`, `created_at`, `updated_at`) VALUES
(1, 'Lola', 'Erik', 'Miranda', 'Aparicio', 'https://via.placeholder.com/640x480.png/00aaee?text=nemo', 'tcosta', 'Sq+5xvR>QetOIg{j-K', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(2, 'Valentina', 'Ángeles', 'Camarillo', 'Rico', 'https://via.placeholder.com/640x480.png/00cc11?text=commodi', 'gbriseno', 'c-Z!f&N[hC4Jym47', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(3, 'Martina', 'Martín', 'Mendoza', 'Villegas', 'https://via.placeholder.com/640x480.png/008855?text=quos', 'sanz.patricia', 'l,lz[?', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(4, 'Víctor', NULL, 'Urías', 'Casárez', 'https://via.placeholder.com/640x480.png/00aabb?text=accusantium', 'cuenca.emilia', '\"(i9Es', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(5, 'Bruno', 'Daniel', 'Galán', 'Olivera', 'https://via.placeholder.com/640x480.png/00dd33?text=ut', 'iserrato', 'o.yNFZ', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(6, 'Oriol', NULL, 'Olivárez', 'Alcala', 'https://img.freepik.com/foto-gratis/feliz-joven-empresario-gafas-sosteniendo-libro-aislado-sobre-fondo-blanco_141793-63613.jpg', 'melendez.sofia', 'k\'cX%X*pBDh<', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(7, 'José Antonio', NULL, 'Rubio', 'Haro', 'https://via.placeholder.com/640x480.png/00ee99?text=quia', 'tvelasquez', '8K?`uL', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(8, 'Sara', NULL, 'Báez', 'Cortés', 'https://via.placeholder.com/640x480.png/009988?text=aliquam', 'jiminez.josemanuel', '45T`XHH+*', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(9, 'Raúl', 'Daniela', 'Luevano', 'Pagan', 'https://via.placeholder.com/640x480.png/007711?text=quis', 'solvera', 'zlSs>d$T', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(10, 'Francisco', NULL, 'Gallardo', 'Alonzo', 'https://via.placeholder.com/640x480.png/0000ff?text=perferendis', 'marco.alex', 'Y5dR*W-HydTAV-:Dh3', '2024-04-03 09:08:51', '2024-04-03 09:08:51'),
(11, 'Abril', NULL, 'Casado', 'Polanco', 'https://via.placeholder.com/640x480.png/005555?text=temporibus', 'guillermo61', 'T\\ETrOXk9KbA{&DP[W', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(12, 'Iván', 'Sara', 'Martín', 'Miramontes', 'https://via.placeholder.com/640x480.png/0011ee?text=qui', 'parroyo', '_KOH&\"V/]iJVGGMPE', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(13, 'Álvaro', 'Jan', 'Berríos', 'Sotelo', 'https://via.placeholder.com/640x480.png/00dd22?text=dolor', 'whernandes', 'f%B\"K/j~g32kTs}(yFeU', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(14, 'Paola', 'José', 'Concepción', 'Arellano', 'https://via.placeholder.com/640x480.png/005588?text=tenetur', 'fernandez.jon', 'd8Dt8{_9)h_\\Lr{W', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(15, 'Vera', NULL, 'Aranda', 'Linares', 'https://via.placeholder.com/640x480.png/00ffff?text=corrupti', 'angel44', 'h\'i{bI!H$%', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(16, 'Lucas', 'Olga', 'Marcos', 'Lucas', 'https://via.placeholder.com/640x480.png/00cc33?text=consequatur', 'dteran', 'wH8vr:E6lwWf^\\Ti', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(17, 'Gonzalo', 'Iván', 'Casas', 'Urrutia', 'https://via.placeholder.com/640x480.png/00aa77?text=consequatur', 'lerma.miriam', ']KNyS0pYiQ~c', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(18, 'Ian', NULL, 'Limón', 'Jaime', 'https://via.placeholder.com/640x480.png/009933?text=voluptas', 'oescobar', '>5{+wr', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(19, 'Naiara', NULL, 'Henríquez', 'Villalpando', 'https://via.placeholder.com/640x480.png/0088bb?text=dolorem', 'alejandro.griego', 'o7H,$Q0`b*;P', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(20, 'Aleix', 'Aurora', 'Mares', 'Ruíz', 'https://via.placeholder.com/640x480.png/003355?text=quas', 'ander.villalpando', 'a|iOuv6*0', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(21, 'Silvia', 'Nora', 'Naranjo', 'Vila', 'https://via.placeholder.com/640x480.png/00cc11?text=est', 'josemanuel.meza', 'xSdUt(J\")o!U_\"7Nx', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(22, 'Izan', NULL, 'Tórrez', 'Arias', 'https://via.placeholder.com/640x480.png/00ddbb?text=dolor', 'verduzco.aitana', 'NJ3.h(Q_L!.pTDn(hTa', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(23, 'Marta', NULL, 'Salcido', 'Alva', 'https://via.placeholder.com/640x480.png/00ffcc?text=ducimus', 'leiva.victoria', 'Rt@t^aq~bn!/<-PpYW', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(24, 'Unai', 'Gloria', 'Barraza', 'Pons', 'https://via.placeholder.com/640x480.png/0055ff?text=aut', 'patricia63', 'lVL{VlnobbxVtdJ', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(25, 'Eva', NULL, 'Abrego', 'Carrillo', 'https://via.placeholder.com/640x480.png/0055aa?text=molestiae', 'srojas', '2Ge*V3Pacp5y8/', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(26, 'Luis', 'Natalia', 'Rodríguez', 'Martínez', 'https://via.placeholder.com/640x480.png/0077aa?text=id', 'cristian24', '7v?)i.\",n\\7*!%V~]2?r', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(27, 'Javier', 'Lara', 'Maya', 'Jasso', 'https://via.placeholder.com/640x480.png/00ee22?text=et', 'salinas.alex', '{u*@HU@3?Bq0dra;X', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(28, 'Vera', NULL, 'Lucero', 'Galindo', 'https://via.placeholder.com/640x480.png/004422?text=est', 'cvergara', 'ly&\'fH)E^EIi7~', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(29, 'Vera', NULL, 'Espinosa', 'Betancourt', 'https://via.placeholder.com/640x480.png/002244?text=dolores', 'brito.nicolas', '1kbq,o9?C{C\\nz^', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(30, 'Paola', NULL, 'Pulido', 'Aguado', 'https://via.placeholder.com/640x480.png/005522?text=impedit', 'celia37', 'dMS%EPR[EIf', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(31, 'Mateo', NULL, 'Lucas', 'Parra', 'https://via.placeholder.com/640x480.png/0055bb?text=odio', 'beatriz.alva', '0DF>2Y}y#/2jt', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(32, 'Isaac', 'Yago', 'Olivera', 'Bustamante', 'https://via.placeholder.com/640x480.png/00bb66?text=delectus', 'yaiza28', '4U)0|o@]*Pw', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(33, 'Olga', NULL, 'Llamas', 'Briones', 'https://via.placeholder.com/640x480.png/002277?text=aspernatur', 'bruno.carmona', 'vU:ZEWP,Yi/', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(34, 'Fátima', 'Mireia', 'Briseño', 'Guajardo', 'https://via.placeholder.com/640x480.png/00cc77?text=dolorem', 'sexposito', 'HmU%&G|,5j<RQ&PJ*', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(35, 'Marc', NULL, 'Santamaría', 'Frías', 'https://via.placeholder.com/640x480.png/003388?text=quibusdam', 'fatima61', 'DDt8;)Du1t\\w:_Bg/\\SX', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(36, 'Rocío', NULL, 'Delvalle', 'Vélez', 'https://via.placeholder.com/640x480.png/0055ee?text=repellendus', 'martos.eva', 'Rk(1$FUi!0u5r)R16', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(37, 'Lara', NULL, 'Mares', 'Mateo', 'https://via.placeholder.com/640x480.png/00cc88?text=ullam', 'anton.oriol', '/JOI>oMf\'=2[va', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(38, 'Jaime', 'Ona', 'Serrato', 'Blasco', 'https://via.placeholder.com/640x480.png/0099aa?text=doloremque', 'mmadera', 'V?5Hl!P_kv\'*2', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(39, 'Joel', 'Roberto', 'Beltrán', 'Trujillo', 'https://via.placeholder.com/640x480.png/005588?text=autem', 'aviles.ines', 'ElY*!-~m?i>|-', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(40, 'Inés', 'Jan', 'Márquez', 'Alcala', 'https://via.placeholder.com/640x480.png/005544?text=molestiae', 'colon.diego', 'c*Vlwb>QC', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(41, 'Malak', 'Rosario', 'Vázquez', 'Muro', 'https://via.placeholder.com/640x480.png/0055aa?text=voluptas', 'rosario.meraz', 'zUD;2Yj', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(42, 'Beatriz', NULL, 'Sandoval', 'Mireles', 'https://via.placeholder.com/640x480.png/0088ff?text=inventore', 'raquel.flores', 'RU0lUL', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(43, 'Manuela', 'Aaron', 'Pozo', 'Valdés', 'https://via.placeholder.com/640x480.png/0022bb?text=neque', 'ana.chavez', '2qIo\"ed', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(44, 'Celia', NULL, 'Loya', 'Carmona', 'https://via.placeholder.com/640x480.png/007722?text=quo', 'rodrigo.ian', '0?msLHey', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(45, 'Aurora', NULL, 'Carvajal', 'Rojo', 'https://via.placeholder.com/640x480.png/007700?text=ut', 'hpatino', 'D`2bg+.p3B|)om_;s?C', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(46, 'Isaac', 'Rayan', 'Cortez', 'Palomo', 'https://via.placeholder.com/640x480.png/0077bb?text=quia', 'valeria64', 'n\\jvU0Ya{?3(hN', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(47, 'Álvaro', NULL, 'Blasco', 'Meza', 'https://via.placeholder.com/640x480.png/00ff00?text=laudantium', 'yabrego', 'QXw)v9uH', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(48, 'Víctor', NULL, 'Lemus', 'Mares', 'https://via.placeholder.com/640x480.png/00ff22?text=nulla', 'wornelas', 'lh`\"[pc20`0F[|`\"z', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(49, 'Julia', 'Patricia', 'Gálvez', 'Anaya', 'https://via.placeholder.com/640x480.png/00ee11?text=dicta', 'alexia74', 'bsE/v#..RV!2F&5', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(50, 'Joel', NULL, 'Esteban', 'Barela', 'https://via.placeholder.com/640x480.png/005577?text=provident', 'raul82', '~yVua`0hci(-qtlhVZl', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(51, 'Asier', NULL, 'Carbonell', 'Macías', 'https://via.placeholder.com/640x480.png/00ee77?text=sunt', 'samuel.ruiz', 'B!EXH|<', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(52, 'Lola', 'Ander', 'Barreto', 'Pantoja', 'https://via.placeholder.com/640x480.png/00cc88?text=dolorem', 'pmatias', 'yS/?}\"', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(53, 'Lucas', NULL, 'Lovato', 'Parra', 'https://via.placeholder.com/640x480.png/00ffaa?text=nobis', 'asier51', 'HvY*Rhn:)t(Ss.$f', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(54, 'Eduardo', NULL, 'Lucio', 'Alejandro', 'https://via.placeholder.com/640x480.png/0055ee?text=eos', 'wacevedo', ':%<>:~Ca?^1>i`', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(55, 'Luis', 'Berta', 'Solorio', 'Piñeiro', 'https://via.placeholder.com/640x480.png/00ee11?text=fuga', 'salgado.eric', '4/@-gwHEYbZ', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(56, 'Luisa', NULL, 'Montañez', 'Limón', 'https://via.placeholder.com/640x480.png/000011?text=ab', 'aescamilla', 'Q+NChT{HO', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(57, 'Joel', NULL, 'Vega', 'Colón', 'https://via.placeholder.com/640x480.png/00bbaa?text=impedit', 'dledesma', '&9l,Y$t\"U/qF`h3', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(58, 'Manuel', NULL, 'Salcido', 'Silva', 'https://via.placeholder.com/640x480.png/0088dd?text=et', 'yago48', '`A8<S3$yu6\"A(Z}$&SW', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(59, 'Natalia', 'Miriam', 'Alva', 'Cortez', 'https://via.placeholder.com/640x480.png/005522?text=enim', 'jaime.bravo', '+ZTo@U8/P1\'4}+@', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(60, 'Rocío', NULL, 'Bermúdez', 'Esparza', 'https://via.placeholder.com/640x480.png/00bb77?text=possimus', 'userna', '+C%bRu[FmA(M8J', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(61, 'Eva', 'Manuel', 'Almanza', 'Ocasio', 'https://via.placeholder.com/640x480.png/00cc22?text=consectetur', 'rosa14', '#6)\"Anc', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(62, 'Diego', 'Martina', 'Marcos', 'Monroy', 'https://via.placeholder.com/640x480.png/004444?text=et', 'isaac02', 'NL=o^+\\u>e>LcI|,7Hwn', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(63, 'Pedro', NULL, 'Barraza', 'Cerda', 'https://via.placeholder.com/640x480.png/00ccbb?text=ea', 'dario59', '4f\\R9X', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(64, 'Gabriel', NULL, 'Reséndez', 'Valverde', 'https://via.placeholder.com/640x480.png/002211?text=fuga', 'paula22', 'm05;XlB%8{\'6', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(65, 'Iker', NULL, 'Sola', 'Verdugo', 'https://via.placeholder.com/640x480.png/00dd33?text=maxime', 'rafael64', 'f$+^@<', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(66, 'Laia', 'Iván', 'Deleón', 'Fuentes', 'https://via.placeholder.com/640x480.png/0077cc?text=eaque', 'valarcon', ';3~oI\\h5rt0n9>#ZH', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(67, 'Hugo', 'Cristina', 'Gastélum', 'Villaseñor', 'https://via.placeholder.com/640x480.png/006633?text=est', 'cristina17', 'BE,ck>*AX2Ifow', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(68, 'Miriam', 'Marina', 'Orosco', 'Muñiz', 'https://via.placeholder.com/640x480.png/00ccaa?text=tempore', 'rrivero', 'N)=:\\)97$rtnu', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(69, 'Isaac', NULL, 'Puig', 'Santana', 'https://via.placeholder.com/640x480.png/0099ee?text=autem', 'yago37', '3|sB-Fkr&', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(70, 'Pol', 'Noa', 'Rincón', 'Sáenz', 'https://via.placeholder.com/640x480.png/00bb99?text=beatae', 'agallardo', '8)sn.`Tj\"@*(V', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(71, 'Andrés', NULL, 'Ayala', 'Lemus', 'https://via.placeholder.com/640x480.png/009988?text=vel', 'delafuente.veronica', 'Bk6Mzic@hL*i9eacU.U7', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(72, 'África', 'Yeray', 'Guardado', 'Ureña', 'https://via.placeholder.com/640x480.png/0066cc?text=animi', 'jorge08', ',L+NH~8', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(73, 'Gabriela', 'Elsa', 'Pabón', 'Escudero', 'https://via.placeholder.com/640x480.png/0044ff?text=qui', 'aroybal', ';Tvu2)hX&MK~|5(', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(74, 'Jorge', 'Alicia', 'Padilla', 'Perales', 'https://via.placeholder.com/640x480.png/008833?text=vero', 'garrido.juana', 'MNI*D,$$|>I', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(75, 'Ander', 'Santiago', 'Matos', 'Corral', 'https://via.placeholder.com/640x480.png/007733?text=qui', 'rico.paola', 'wQ4$;(b%hL', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(76, 'Arnau', 'Alma', 'Bonilla', 'Cepeda', 'https://via.placeholder.com/640x480.png/007777?text=qui', 'solano.ignacio', 'NPx,M-', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(77, 'Naiara', 'Alex', 'Marco', 'Villagómez', 'https://via.placeholder.com/640x480.png/0044ee?text=corrupti', 'vcastillo', '(3a$.]yf;-)cno', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(78, 'Aurora', 'Daniel', 'Calvo', 'Olivárez', 'https://via.placeholder.com/640x480.png/006688?text=repellat', 'farmas', ',K^64\\=\\1', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(79, 'Antonio', NULL, 'Jimínez', 'Collado', 'https://via.placeholder.com/640x480.png/003377?text=aut', 'pulido.mariapilar', 'Nh}zpSd[', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(80, 'Rocío', NULL, 'Pascual', 'Partida', 'https://via.placeholder.com/640x480.png/0066cc?text=excepturi', 'jmercado', ';0TS&BE', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(81, 'Javier', NULL, 'Badillo', 'Armenta', 'https://via.placeholder.com/640x480.png/00dd55?text=consequatur', 'rcaro', 'GRH{!$\\8TJG8mi)i', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(82, 'Nahia', 'Luis', 'Carrasquillo', 'Rascón', 'https://via.placeholder.com/640x480.png/00bb66?text=omnis', 'mariadolores.irizarry', 'p28Js.:b\'E7\\#mU&+}', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(83, 'Emilia', 'César', 'Juan', 'Bravo', 'https://via.placeholder.com/640x480.png/0099aa?text=quae', 'gael39', ',Isp28QX@>U0\'', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(84, 'Lorena', NULL, 'Leiva', 'Olivera', 'https://via.placeholder.com/640x480.png/007788?text=est', 'aitana.delgadillo', '`$]7@rzZ`c{-eC', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(85, 'Pilar', NULL, 'Delvalle', 'Alfonso', 'https://via.placeholder.com/640x480.png/000011?text=eum', 'manuela.nieves', 'gc)$rrxH^En}TWQ)z9', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(86, 'Candela', NULL, 'Oliver', 'Zayas', 'https://via.placeholder.com/640x480.png/008811?text=totam', 'ignacio.oquendo', 'd\\Ssbwq1=', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(87, 'Cristina', 'Valentina', 'Oliva', 'Salvador', 'https://via.placeholder.com/640x480.png/004499?text=pariatur', 'aleix.godinez', 'j@}=Ub\\', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(88, 'Raúl', 'Iker', 'Méndez', 'Casanova', 'https://via.placeholder.com/640x480.png/009955?text=unde', 'bcolon', 'Ym\'R>8', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(89, 'Sandra', NULL, 'Tello', 'Esquibel', 'https://via.placeholder.com/640x480.png/00aa77?text=dicta', 'truelas', '|:62Fn[=N$lXXAdi5p#', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(90, 'José Manuel', NULL, 'Alonzo', 'Sola', 'https://via.placeholder.com/640x480.png/001122?text=accusamus', 'delrio.salma', 'j,>rV:g0bw/Q)<', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(91, 'Yolanda', 'Amparo', 'Salvador', 'Arevalo', 'https://via.placeholder.com/640x480.png/00eecc?text=voluptatibus', 'nvillareal', '6h;\"K*fSsF$', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(92, 'Aleix', NULL, 'Vidal', 'Sánchez', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptas', 'arnau.caro', ':w]8^S(v):TA5OE1+', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(93, 'Alexia', 'Emilia', 'Nieves', 'Valadez', 'https://via.placeholder.com/640x480.png/00aa88?text=quo', 'rosa.lara', '2T^[[gW`y2k', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(94, 'Sandra', 'Nicolás', 'Guajardo', 'Caldera', 'https://via.placeholder.com/640x480.png/0077ee?text=eos', 'miguelangel15', 'iqi6Qz4IZ)PeO^', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(95, 'Guillermo', 'Jordi', 'Rosa', 'Amaya', 'https://via.placeholder.com/640x480.png/00aabb?text=deserunt', 'miriam.castellanos', 'P8ntTrD', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(96, 'Yolanda', NULL, 'Monroy', 'Domínguez', 'https://via.placeholder.com/640x480.png/00dd99?text=suscipit', 'guillermo.quinones', '%VOFUZ=@zg>[', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(97, 'Ignacio', NULL, 'Cárdenas', 'Terán', 'https://via.placeholder.com/640x480.png/007700?text=est', 'cuenca.biel', '2yT}|LSb$`', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(98, 'Malak', 'Manuela', 'Apodaca', 'Peralta', 'https://via.placeholder.com/640x480.png/004422?text=natus', 'guillermo.alanis', 'm19OB>y', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(99, 'Alberto', NULL, 'Negrete', 'Melgar', 'https://via.placeholder.com/640x480.png/0088aa?text=et', 'yago54', 'ZZS!TAccp&#/&<@Nd', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(100, 'Manuel', NULL, 'Ocasio', 'Roybal', 'https://via.placeholder.com/640x480.png/006644?text=dolorem', 'karmas', 'Vz\"m]{qg.}8|', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(101, 'Nicolás', NULL, 'Madera', 'Saiz', 'https://via.placeholder.com/640x480.png/00bbaa?text=est', 'mariadolores.luevano', 'm[th1tCid', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(102, 'Raquel', 'Valeria', 'Brito', 'Soto', 'https://via.placeholder.com/640x480.png/002299?text=blanditiis', 'frias.luis', '9~#jSOl+', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(103, 'Alicia', NULL, 'Vigil', 'Arribas', 'https://via.placeholder.com/640x480.png/002222?text=in', 'oporras', 'f=yt_]JHab', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(104, 'Aaron', NULL, 'Almanza', 'Dueñas', 'https://via.placeholder.com/640x480.png/006699?text=culpa', 'dlorenzo', 'o%=u+5#;m}@l%-', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(105, 'Miguel Ángel', NULL, 'Espinoza', 'Tello', 'https://via.placeholder.com/640x480.png/00dd66?text=atque', 'santiago.gonzalez', 'xbhmTBEtC|XA/E,e%)', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(106, 'Carla', NULL, 'Pons', 'Lemus', 'https://via.placeholder.com/640x480.png/00aa44?text=cupiditate', 'trujillo.irene', '_-eB7`#Q,.}', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(107, 'Saúl', NULL, 'Alanis', 'Godoy', 'https://via.placeholder.com/640x480.png/00eedd?text=sunt', 'duarte.oriol', '!zMS\"&?NJ]q~', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(108, 'Ian', NULL, 'Lucas', 'Sanz', 'https://via.placeholder.com/640x480.png/0033cc?text=quia', 'antonia85', 'k0H]8a<Ear', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(109, 'Yolanda', NULL, 'Coronado', 'Carrero', 'https://via.placeholder.com/640x480.png/00bb33?text=minus', 'zmedina', '\'h_^;Z-fX^em0q', '2024-04-04 07:01:09', '2024-04-04 07:01:09'),
(110, 'Álvaro', 'María Ángeles', 'Cervantes', 'Lozada', 'https://via.placeholder.com/640x480.png/00dd99?text=voluptas', 'malonso', 'xK)vMy[HA}nMIYeyv', '2024-04-04 07:01:09', '2024-04-04 07:01:09');

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
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `dia` varchar(255) NOT NULL,
  `horaInicio` varchar(255) NOT NULL,
  `horaFin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`identificador`, `dia`, `horaInicio`, `horaFin`, `created_at`, `updated_at`) VALUES
(1, 'Jueves', '08:40', '09:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(2, 'Viernes', '11:33', '12:37', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(3, 'Jueves', '09:05', '12:28', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(4, 'Viernes', '10:03', '10:50', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(5, 'Miércoles', '12:50', '12:56', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(6, 'Lunes', '09:22', '11:31', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(7, 'Viernes', '10:41', '11:31', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(8, 'Jueves', '09:04', '12:23', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(9, 'Miércoles', '11:36', '11:39', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(10, 'Martes', '09:38', '12:27', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(11, 'Viernes', '08:27', '12:54', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(12, 'Jueves', '10:28', '12:11', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(13, 'Jueves', '10:11', '11:06', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(14, 'Viernes', '08:29', '12:16', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(15, 'Martes', '12:45', '12:54', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(16, 'Lunes', '09:16', '12:21', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(17, 'Jueves', '11:24', '11:49', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(18, 'Miércoles', '12:57', '12:57', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(19, 'Jueves', '12:11', '12:33', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(20, 'Miércoles', '12:46', '12:51', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(21, 'Lunes', '10:16', '12:11', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(22, 'Viernes', '12:23', '12:30', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(23, 'Viernes', '08:58', '12:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(24, 'Miércoles', '11:24', '11:29', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(25, 'Martes', '10:05', '12:19', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(26, 'Lunes', '12:55', '12:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(27, 'Miércoles', '08:41', '09:09', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(28, 'Viernes', '11:16', '11:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(29, 'Miércoles', '11:10', '12:39', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(30, 'Jueves', '12:08', '12:34', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(31, 'Jueves', '12:50', '12:56', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(32, 'Miércoles', '09:04', '11:54', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(33, 'Miércoles', '08:21', '12:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(34, 'Martes', '10:08', '12:47', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(35, 'Lunes', '12:05', '12:22', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(36, 'Martes', '11:08', '11:24', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(37, 'Miércoles', '08:50', '10:58', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(38, 'Miércoles', '09:16', '12:40', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(39, 'Miércoles', '09:29', '09:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(40, 'Martes', '12:37', '12:56', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(41, 'Lunes', '09:00', '11:44', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(42, 'Miércoles', '10:37', '10:38', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(43, 'Jueves', '12:43', '12:49', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(44, 'Jueves', '11:24', '12:26', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(45, 'Viernes', '09:03', '11:00', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(46, 'Viernes', '09:56', '12:52', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(47, 'Lunes', '08:12', '09:19', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(48, 'Miércoles', '08:39', '12:27', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(49, 'Martes', '12:54', '12:57', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(50, 'Martes', '11:05', '12:42', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(51, 'Miércoles', '10:36', '12:58', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(52, 'Martes', '11:24', '12:29', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(53, 'Miércoles', '10:59', '12:04', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(54, 'Jueves', '09:35', '12:58', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(55, 'Jueves', '12:24', '12:36', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(56, 'Miércoles', '10:39', '12:10', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(57, 'Viernes', '11:01', '12:23', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(58, 'Viernes', '12:35', '12:47', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(59, 'Viernes', '11:30', '12:38', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(60, 'Martes', '09:06', '12:12', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(61, 'Viernes', '09:41', '12:25', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(62, 'Jueves', '11:51', '12:16', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(63, 'Miércoles', '10:24', '10:25', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(64, 'Martes', '12:48', '12:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(65, 'Lunes', '08:34', '10:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(66, 'Miércoles', '10:30', '12:20', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(67, 'Jueves', '11:01', '12:52', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(68, 'Martes', '12:34', '12:59', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(69, 'Lunes', '11:49', '12:10', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(70, 'Viernes', '12:53', '12:59', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(71, 'Viernes', '12:25', '12:43', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(72, 'Lunes', '09:35', '12:04', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(73, 'Jueves', '09:35', '10:55', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(74, 'Jueves', '09:23', '10:41', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(75, 'Jueves', '08:38', '11:52', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(76, 'Lunes', '11:18', '12:56', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(77, 'Lunes', '11:18', '11:20', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(78, 'Miércoles', '11:04', '12:54', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(79, 'Jueves', '12:49', '12:59', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(80, 'Martes', '11:08', '12:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(81, 'Viernes', '10:40', '11:11', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(82, 'Jueves', '08:38', '12:24', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(83, 'Lunes', '08:14', '11:03', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(84, 'Jueves', '10:40', '11:08', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(85, 'Martes', '12:55', '12:57', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(86, 'Viernes', '12:41', '12:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(87, 'Lunes', '10:02', '12:52', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(88, 'Jueves', '08:55', '12:06', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(89, 'Lunes', '12:44', '12:49', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(90, 'Martes', '09:07', '12:58', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(91, 'Lunes', '09:51', '12:39', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(92, 'Viernes', '08:15', '09:52', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(93, 'Martes', '10:34', '11:09', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(94, 'Martes', '09:32', '12:53', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(95, 'Lunes', '10:49', '11:45', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(96, 'Viernes', '08:17', '09:36', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(97, 'Jueves', '09:17', '12:07', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(98, 'Jueves', '10:34', '11:44', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(99, 'Martes', '12:58', '12:58', '2024-04-04 07:03:08', '2024-04-04 07:03:08'),
(100, 'Jueves', '11:06', '11:49', '2024-04-04 07:03:08', '2024-04-04 07:03:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_materia`
--

CREATE TABLE `horario_materia` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Horario` int(10) UNSIGNED NOT NULL,
  `identificador_Materia` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario_materia`
--

INSERT INTO `horario_materia` (`identificador`, `identificador_Horario`, `identificador_Materia`, `created_at`, `updated_at`) VALUES
(1, 82, 68, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(2, 42, 30, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(3, 91, 78, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(4, 93, 52, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(5, 81, 27, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(6, 4, 66, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(7, 90, 102, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(8, 53, 79, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(9, 98, 71, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(10, 13, 92, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(11, 46, 101, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(12, 18, 91, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(13, 49, 71, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(14, 85, 25, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(15, 34, 105, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(16, 50, 69, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(17, 10, 108, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(18, 52, 98, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(19, 68, 98, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(20, 70, 61, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(21, 30, 11, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(22, 53, 101, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(23, 33, 25, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(24, 31, 54, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(25, 18, 76, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(26, 51, 34, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(27, 6, 49, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(28, 95, 66, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(29, 93, 22, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(30, 30, 3, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(31, 10, 22, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(32, 44, 31, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(33, 80, 81, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(34, 17, 7, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(35, 2, 60, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(36, 18, 97, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(37, 95, 96, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(38, 4, 94, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(39, 35, 100, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(40, 95, 103, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(41, 50, 76, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(42, 15, 110, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(43, 51, 6, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(44, 68, 46, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(45, 52, 66, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(46, 6, 4, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(47, 49, 34, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(48, 74, 18, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(49, 54, 7, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(50, 94, 71, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(51, 67, 3, '2024-04-04 07:03:25', '2024-04-04 07:03:25'),
(52, 65, 67, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(53, 36, 105, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(54, 100, 3, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(55, 48, 17, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(56, 10, 4, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(57, 50, 28, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(58, 38, 108, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(59, 88, 13, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(60, 54, 77, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(61, 68, 107, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(62, 7, 11, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(63, 2, 85, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(64, 82, 10, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(65, 51, 63, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(66, 43, 18, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(67, 48, 63, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(68, 23, 99, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(69, 78, 106, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(70, 87, 35, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(71, 63, 29, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(72, 49, 110, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(73, 6, 52, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(74, 66, 55, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(75, 100, 23, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(76, 30, 21, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(77, 39, 16, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(78, 66, 75, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(79, 12, 90, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(80, 45, 88, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(81, 37, 21, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(82, 14, 19, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(83, 21, 105, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(84, 82, 37, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(85, 45, 104, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(86, 54, 82, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(87, 91, 27, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(88, 38, 18, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(89, 79, 25, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(90, 37, 57, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(91, 13, 74, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(92, 84, 93, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(93, 35, 69, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(94, 70, 64, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(95, 50, 26, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(96, 93, 95, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(97, 75, 80, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(98, 18, 92, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(99, 55, 38, '2024-04-04 07:03:26', '2024-04-04 07:03:26'),
(100, 9, 65, '2024-04-04 07:03:26', '2024-04-04 07:03:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `objetivo` varchar(255) NOT NULL,
  `intencionDidactica` varchar(255) NOT NULL,
  `creditos` int(11) NOT NULL,
  `horasPracticas` int(11) NOT NULL,
  `horasTeoricas` int(11) NOT NULL,
  `calificacionAprobatoria` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`identificador`, `nombre`, `objetivo`, `intencionDidactica`, `creditos`, `horasPracticas`, `horasTeoricas`, `calificacionAprobatoria`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatibus expedita officia sunt.', 'Praesentium deleniti maxime odit quos quia. Pariatur quos facere odit eius natus delectus voluptatem. Distinctio perferendis dignissimos dolores dolore voluptas laudantium suscipit.', 'Enim corrupti nisi sapiente repellendus similique dignissimos. Maxime voluptatem nobis dicta assumenda. Voluptas quisquam ex aperiam aut.', 5, 5, 0, 94, 'https://via.placeholder.com/640x480.png/0011cc?text=vitae', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(2, 'Neque architecto eos.', 'Officia dignissimos eveniet quo quibusdam eum eveniet. Rerum vero voluptas ut at earum et commodi mollitia. Est et et quo sed. Deleniti totam et dolores.', 'Quos impedit neque quod veritatis consequuntur nam aperiam alias. Ab earum ut amet ad asperiores. Ratione minima iure vitae optio sunt.', 7, 4, 3, 88, 'https://via.placeholder.com/640x480.png/007733?text=laudantium', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(3, 'Programación Orientada a Objetos', 'Reiciendis sunt beatae iure ut aut vero expedita fugit. Optio ullam enim asperiores molestiae illum sequi. Et eum rerum tempore aperiam ut.', 'Quo alias et dolor quos ad. Fuga sit reprehenderit aliquid sed nesciunt quasi dolores. Optio voluptate qui inventore iure nulla. Ad et est soluta aut alias suscipit.', 10, 2, 8, 87, 'https://miro.medium.com/v2/resize:fit:300/1*2QTNUKQl2YFaXGq-l6i4nA.jpeg', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(4, 'Voluptatem rerum explicabo.', 'Perspiciatis delectus dolore eligendi eos repudiandae ipsum. Et quos molestiae fuga quis.', 'Est illo doloremque cupiditate vel et. Reprehenderit consequatur temporibus maxime magnam non qui. Totam quae suscipit quo et asperiores.', 10, 7, 3, 90, 'https://via.placeholder.com/640x480.png/00eeee?text=illo', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(5, 'Veritatis quis molestias.', 'Rerum maxime id fugiat consequatur error debitis harum iste. Earum vero est ab voluptates fugiat adipisci doloribus. Praesentium eum et sint sit aut.', 'Aut explicabo quis iste repellendus. Aut ab impedit voluptate et qui molestiae perferendis. Et distinctio quia quia necessitatibus.', 7, 6, 1, 92, 'https://via.placeholder.com/640x480.png/005588?text=occaecati', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(6, 'Dolores aut voluptas voluptatum.', 'Autem et sed perferendis quibusdam eos. Id omnis saepe dolorem recusandae maiores. Tempore harum eaque inventore atque in. Non tempora eius et.', 'Voluptatem beatae sit autem provident omnis est. Id laudantium voluptatibus consequatur sed molestiae quaerat quidem. Doloribus incidunt in vitae velit dolorem possimus possimus.', 6, 4, 2, 92, 'https://via.placeholder.com/640x480.png/00bb99?text=totam', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(7, 'Sequi quia est.', 'Tempora beatae est dolorem sit cumque. Praesentium consequatur sunt qui ad quia. Et quaerat iure qui consequuntur. Occaecati incidunt inventore sit accusantium tempore commodi accusamus.', 'Consequatur sint officia consequuntur vel. Tempore quasi hic nemo hic. Nihil molestias quia dolorum et dolor. Modi veritatis veritatis odio id veniam soluta.', 8, 0, 8, 86, 'https://via.placeholder.com/640x480.png/00ff44?text=consequuntur', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(8, 'Ex et voluptates.', 'Rerum odit fugiat sit quibusdam vel est et dolor. Temporibus eaque voluptatem qui doloremque accusantium officiis aperiam. Beatae omnis sint sunt.', 'Ea at qui quia delectus incidunt perspiciatis. Voluptatem quod architecto tempore enim molestiae et. Quo sunt quis perspiciatis vel aperiam eaque recusandae ipsa.', 9, 5, 4, 89, 'https://via.placeholder.com/640x480.png/0033aa?text=dolorem', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(9, 'Sed quia officia.', 'Voluptas quia eum sed voluptatibus accusantium ut dignissimos. Facilis est sint et omnis sit cum officia. Iusto dolorem error voluptatem et. Dolorem aliquam accusamus sunt voluptatem voluptatem.', 'Eum fugiat ipsam nulla dolor. Tempore est id earum nihil velit quos nemo repellendus.', 6, 6, 0, 95, 'https://via.placeholder.com/640x480.png/000088?text=omnis', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(10, 'Nulla repellat consequuntur.', 'Illo non libero delectus vel modi odio. Error sit et et corrupti minus repudiandae. Quo vitae quod eius sit odio fugit provident. Voluptatem temporibus esse deleniti non enim voluptatum.', 'Qui sunt laboriosam excepturi rerum molestiae qui et at. Quam ut nulla aut quia eligendi fugit dolorem. Officia est et consequatur earum dolorem non at eligendi.', 5, 3, 2, 82, 'https://via.placeholder.com/640x480.png/00dd33?text=qui', '2024-04-03 09:09:06', '2024-04-03 09:09:06'),
(11, 'Est autem itaque asperiores.', 'Ullam debitis eveniet eos. Dolorum dolores autem id repellat in enim explicabo. Odio ratione doloremque dolorum rerum omnis perferendis cupiditate et. Nihil dolore facere id nam.', 'Odio non aut sequi est. Nulla error eum beatae aliquid suscipit odio. Illo aut ducimus voluptates quia voluptas voluptatibus. Nobis illum eum quod.', 8, 6, 2, 87, 'https://via.placeholder.com/640x480.png/0088aa?text=necessitatibus', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(12, 'Quis quis eos.', 'Modi magnam quia sed cum. Ea perspiciatis facilis dolorem et et. Laudantium doloribus eius sed et id unde nemo. Repellat mollitia occaecati unde aut.', 'Est veritatis vel blanditiis harum. In voluptatem tenetur est excepturi sequi reiciendis ut. Aliquid quo voluptas vitae veritatis accusamus recusandae dolor. Perspiciatis qui commodi qui vero.', 6, 3, 3, 80, 'https://via.placeholder.com/640x480.png/00ddcc?text=autem', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(13, 'Laboriosam incidunt nobis odit.', 'Rem possimus magni suscipit sunt. Tempore at dicta veritatis nobis placeat. Amet in id sit saepe voluptas molestiae corrupti ullam.', 'Ipsum culpa nobis consectetur et vitae voluptates. Rerum vel voluptatem et nisi. Adipisci quia perspiciatis veritatis sed. Inventore ratione aspernatur qui quod doloremque.', 5, 2, 3, 89, 'https://via.placeholder.com/640x480.png/00cc99?text=architecto', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(14, 'Rerum neque iusto voluptatem debitis.', 'Excepturi magnam voluptatibus harum dolores. Tempora voluptatibus aliquid deleniti voluptas. Illum quo sit quae molestiae. Et est consequuntur qui excepturi.', 'Eum et maxime magnam error quasi omnis quia. Laboriosam voluptate dignissimos sed cupiditate. Optio rem iusto et consequatur.', 5, 2, 3, 98, 'https://via.placeholder.com/640x480.png/0099bb?text=omnis', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(15, 'Labore commodi quo.', 'Ipsam alias saepe modi doloribus. Non alias laudantium alias unde. Qui similique molestias ipsam quidem.', 'Aut qui nemo fuga nulla aut qui numquam. Laudantium aliquam est asperiores inventore culpa. Rerum quas commodi recusandae expedita.', 7, 3, 4, 81, 'https://via.placeholder.com/640x480.png/0055bb?text=occaecati', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(16, 'Laudantium rem sunt cumque.', 'Consequatur saepe ut est distinctio vel. Est vel fugit et autem. Dolorem et non quia minima exercitationem assumenda saepe. Minima ut voluptatem voluptatum ea.', 'Aspernatur laboriosam saepe quis odit iste eligendi molestiae. Et est accusamus ratione explicabo voluptatem qui.', 7, 0, 7, 84, 'https://via.placeholder.com/640x480.png/005544?text=consequuntur', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(17, 'Corrupti aut architecto.', 'Delectus recusandae odio nam mollitia est. Sapiente eligendi quisquam et id nostrum unde. Voluptas sint debitis nemo qui asperiores et. Perspiciatis et sit at quam atque praesentium architecto sunt.', 'Voluptate sapiente eligendi debitis optio dicta officiis ut. Laudantium ipsum sit non veritatis est. Culpa laudantium aperiam aut doloremque ut et. Optio ratione sed laborum eum sed ipsam.', 4, 1, 3, 95, 'https://via.placeholder.com/640x480.png/00eeaa?text=dicta', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(18, 'Tempora facilis aut.', 'Cumque et veniam est fugiat. Illo rerum vel pariatur debitis. Molestiae sequi et sit provident quidem facilis et dolorem. Adipisci occaecati sapiente totam aliquam.', 'Nisi veritatis molestiae odit. Repellendus nam illo sint ut. Exercitationem magnam possimus recusandae soluta nostrum veniam. Tempora ducimus rerum rerum qui cum dolorem omnis.', 9, 2, 7, 99, 'https://via.placeholder.com/640x480.png/00bbee?text=est', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(19, 'Omnis rerum veritatis quibusdam.', 'Deleniti suscipit ad et vitae hic asperiores. Eum rerum repellat eius amet. Molestiae rerum blanditiis voluptates fugiat veniam quidem optio.', 'Est quis aspernatur et voluptas exercitationem nihil iure officiis. Neque voluptatem tenetur et molestiae aspernatur. Nobis cumque molestiae est illum ut temporibus. Reiciendis omnis sit a incidunt.', 7, 6, 1, 88, 'https://via.placeholder.com/640x480.png/0044ee?text=eum', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(20, 'Veritatis in et est.', 'Impedit rerum aut debitis fugiat sed. Rem ut quas ea nostrum aliquam odio. Aperiam consectetur repudiandae repudiandae est aut beatae. Eligendi magni delectus adipisci nostrum reprehenderit.', 'Modi modi quidem perspiciatis repellendus doloremque rerum velit. Tempore repudiandae velit ullam numquam adipisci quisquam reprehenderit. Laborum sed et nisi et assumenda et.', 6, 4, 2, 97, 'https://via.placeholder.com/640x480.png/007744?text=est', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(21, 'Corporis praesentium laudantium.', 'Consequuntur perspiciatis aut reprehenderit beatae similique adipisci eum ea. Quasi nesciunt eum delectus omnis inventore eaque totam.', 'Ea nisi sequi delectus voluptas ad ut. Officia a non iure quia laboriosam laborum. Sint odio occaecati voluptas nisi quaerat ut repellendus.', 8, 8, 0, 91, 'https://via.placeholder.com/640x480.png/00cc77?text=dolorum', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(22, 'Similique illum.', 'Nemo enim optio qui minima sequi perferendis sunt dolorum. Qui sint praesentium praesentium mollitia incidunt inventore enim itaque. Pariatur unde quisquam fuga.', 'Veritatis perspiciatis ut adipisci rerum quia odit. Veritatis harum ratione sunt id. Maxime quos placeat eius id eum et magni voluptas. Eaque ea soluta doloremque et.', 9, 9, 0, 96, 'https://via.placeholder.com/640x480.png/006622?text=ea', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(23, 'Culpa vero maxime sint.', 'Odio assumenda officia repudiandae omnis sint tenetur temporibus. Perspiciatis maxime veritatis sed minima ipsum quis. Ipsa nemo deleniti et officiis doloremque non.', 'Et sed sit adipisci assumenda est in. Sapiente deserunt maxime mollitia illum non nihil quo alias. Dolor earum sint voluptatem ipsum. Iste saepe cupiditate consequatur.', 10, 8, 2, 97, 'https://via.placeholder.com/640x480.png/0055ee?text=et', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(24, 'Alias atque laborum.', 'Libero quos dignissimos molestiae. Quasi debitis enim ut architecto. Qui omnis qui ab sint. Quaerat qui nemo illum aperiam temporibus velit quas.', 'Blanditiis sapiente iste temporibus ducimus. Repellendus molestiae deserunt quia corporis laborum. Optio deleniti et inventore occaecati voluptates consequatur ex. Ipsum rerum quae modi amet.', 4, 3, 1, 94, 'https://via.placeholder.com/640x480.png/0077ff?text=vel', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(25, 'Sed aspernatur.', 'Omnis voluptatem veniam ratione consequatur. Enim ea et ut. Enim provident eum sunt. Quam natus magni ex consequatur eveniet.', 'Voluptas ex odio fuga provident. Enim excepturi quidem est. Laudantium molestias quia excepturi rerum soluta iusto. Ut debitis reiciendis nobis repellat rerum velit.', 6, 4, 2, 88, 'https://via.placeholder.com/640x480.png/004433?text=sit', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(26, 'Est deleniti et eius fugiat.', 'Impedit expedita accusamus quibusdam facilis. Officiis deserunt id quia deserunt in minima laborum. Velit autem assumenda assumenda sunt nostrum sed aut officiis.', 'Rem tempore perferendis qui ratione quisquam. Quia ipsam doloribus molestiae quisquam id ut dolor. Voluptatem quo suscipit voluptatem a.', 4, 1, 3, 93, 'https://via.placeholder.com/640x480.png/002266?text=vitae', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(27, 'Eveniet aliquam et.', 'Ipsa aut aperiam neque rem nihil et similique. Ipsum eius voluptas et molestiae unde rem. Ab quasi adipisci quos veritatis corrupti.', 'Dicta recusandae odio necessitatibus voluptatem beatae. Pariatur pariatur sit in unde harum. Culpa soluta libero vel rerum atque culpa. Quibusdam dignissimos modi laudantium laborum nobis.', 5, 5, 0, 95, 'https://via.placeholder.com/640x480.png/0088ff?text=molestiae', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(28, 'Quo est fuga sit.', 'Et cumque quis aut est consectetur. Rerum et hic sunt tenetur consequuntur amet. Doloremque qui harum fuga harum. Non exercitationem eligendi perferendis aut.', 'Magni aut aut ex corporis tempore molestias. Ipsum dignissimos quis et qui rem dolore ducimus. Accusamus aperiam velit aut maiores voluptas.', 5, 1, 4, 86, 'https://via.placeholder.com/640x480.png/003311?text=officiis', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(29, 'Dolorem praesentium possimus.', 'Eos ut dolorum error. Dolorem vitae sapiente beatae est sint omnis asperiores. Qui quia quis et consectetur aut sit odit. Libero ut quibusdam mollitia cumque rerum.', 'Et laborum maiores accusamus et minima. Rerum deserunt aut dolorem perspiciatis et omnis. Sunt eius quas perspiciatis illo. Officia porro sed earum dolor.', 5, 2, 3, 82, 'https://via.placeholder.com/640x480.png/002211?text=nulla', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(30, 'Unde natus atque.', 'Rerum ut quia minus illum magni accusamus cum laboriosam. Vel qui mollitia tempore. Quas accusantium quasi consequatur omnis porro. Iure odio est nesciunt quia tenetur perferendis esse.', 'Et qui fuga qui ullam. Quam rerum consequatur ipsum expedita repudiandae. Et et quasi aliquam.', 4, 4, 0, 83, 'https://via.placeholder.com/640x480.png/003388?text=esse', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(31, 'Esse et quis consequuntur atque.', 'Inventore vel non corporis incidunt. Optio aut excepturi voluptate sed et. Consequatur dolore qui et odit reprehenderit.', 'Qui dicta rerum minima dignissimos. Id id sit neque voluptas officia molestiae eligendi quibusdam. Nihil sequi ipsa rerum tempora in. Occaecati qui dolore ut consequatur.', 8, 7, 1, 96, 'https://via.placeholder.com/640x480.png/00dd11?text=deserunt', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(32, 'Repellendus in quisquam aut.', 'Aliquid quia vero pariatur voluptas sed earum perspiciatis. Nemo nemo porro quo sit quam doloribus aut et. Cupiditate quia sit quidem autem odio.', 'Labore blanditiis animi possimus neque sequi delectus. Saepe vitae et non atque. Et soluta neque aut autem. Iste earum quam laboriosam.', 8, 4, 4, 83, 'https://via.placeholder.com/640x480.png/00aa00?text=sed', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(33, 'Ut repellat id.', 'Suscipit harum totam veniam enim odit. Non dolor aliquam tempora omnis. Officia eius ea pariatur aliquid vero.', 'Eum ab aut vel sunt illum magnam. Illum eos cupiditate enim cupiditate id iste nisi. Aliquam blanditiis perferendis veniam facilis sunt eius.', 5, 2, 3, 99, 'https://via.placeholder.com/640x480.png/00dd88?text=error', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(34, 'Neque accusantium quasi.', 'Culpa modi et nisi minima recusandae optio iure nostrum. Et harum harum magnam nisi iusto. Accusamus et qui voluptatem ea. Qui quo quisquam doloremque id officia sit nisi.', 'Quis et voluptatem quia eos dignissimos. Quaerat laboriosam magni incidunt delectus minus quae suscipit. Sit repellat sequi ullam voluptate et est. Harum temporibus ex nam tempora est architecto in.', 4, 2, 2, 82, 'https://via.placeholder.com/640x480.png/002266?text=non', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(35, 'Architecto excepturi repellendus totam voluptatem.', 'Illo incidunt et est. Sit nisi sunt blanditiis sunt mollitia recusandae. Perferendis sit impedit a ex omnis. Quo eaque libero perspiciatis vel ducimus rerum aut.', 'Velit ea minus sed voluptates autem. Omnis alias quia nostrum sint consequatur sed. Et assumenda magnam non excepturi tempora qui aut.', 9, 8, 1, 80, 'https://via.placeholder.com/640x480.png/008888?text=quas', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(36, 'Esse doloremque placeat.', 'Repudiandae dolor sint odio ea dolores. Eius odio et est reiciendis et quisquam quis maiores. Qui perspiciatis molestiae in est aut sequi. Consequatur sit id sit fuga.', 'Quidem ratione quaerat ipsa dolores sit esse. Ea voluptate sunt sint dolores esse. Dolore odit hic sit odio magnam.', 5, 5, 0, 86, 'https://via.placeholder.com/640x480.png/00bbff?text=aliquam', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(37, 'Tenetur placeat error inventore illum.', 'Rem minus eaque veniam eveniet est qui qui architecto. Vel quas maxime aut nam praesentium quia. Dolores in quis libero necessitatibus porro.', 'Rerum dolores similique tempora reprehenderit qui. Harum nobis autem quis facilis nulla dolor. Est quia porro consequatur aut et. Omnis quasi debitis earum quo.', 5, 4, 1, 95, 'https://via.placeholder.com/640x480.png/005522?text=dolores', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(38, 'Dolorum et et magni quasi.', 'Atque nam voluptates ut quos. Nam voluptatem ex modi accusamus. Deleniti omnis reprehenderit impedit maxime ea sunt eum. Aliquid veniam quis similique quo.', 'Facere perferendis odit eum non illo voluptas voluptas. Omnis qui magnam unde provident quis et debitis.', 10, 0, 10, 86, 'https://via.placeholder.com/640x480.png/0099ff?text=accusamus', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(39, 'Dolor consequuntur eaque nam.', 'Sint ipsam sunt a temporibus aperiam. Facilis libero dolores cumque inventore odit veniam ut et. Maiores aut autem deserunt voluptatibus provident. Quam et debitis vel.', 'Id ipsum explicabo sit voluptas. Sint ut molestiae aut odio. Qui est asperiores deleniti laudantium vel repellat. Voluptate in illo error ipsum aperiam laborum.', 9, 4, 5, 86, 'https://via.placeholder.com/640x480.png/00aadd?text=architecto', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(40, 'Consequatur fugiat natus.', 'Aut aperiam explicabo rerum. Perspiciatis architecto et saepe aut sint vero. Occaecati cupiditate rerum est sed distinctio assumenda molestiae.', 'Neque aut id eveniet sed ut. Voluptatem numquam nulla itaque est. Sint consequuntur rerum possimus omnis.', 9, 5, 4, 92, 'https://via.placeholder.com/640x480.png/00ddaa?text=ea', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(41, 'Sit esse adipisci.', 'Natus alias perspiciatis deserunt voluptatibus. Porro et alias voluptate odio. Molestias vel odit facere dolorem ratione.', 'Ipsam ut officiis odit cupiditate. Enim laboriosam temporibus libero quisquam. Earum nihil amet officia magni. Voluptas quo enim impedit autem itaque et.', 5, 3, 2, 84, 'https://via.placeholder.com/640x480.png/0033dd?text=corrupti', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(42, 'Sed aliquam sed.', 'Omnis sit repellendus sequi. Architecto sed sunt quis sit voluptatem officiis. Sequi quasi inventore et possimus eaque rerum est in. Voluptatem unde corrupti aut eum eveniet.', 'Maxime eaque rem consequuntur quaerat est ullam ut nostrum. Error beatae animi perferendis provident. Sed ex perspiciatis fugit tempore eveniet sit impedit quia.', 9, 4, 5, 81, 'https://via.placeholder.com/640x480.png/003311?text=non', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(43, 'At perspiciatis est.', 'Aliquid natus illum iusto aperiam eveniet facere. Et at eum velit et. In tempore nihil et minima explicabo aliquam.', 'Repellat suscipit similique quam commodi in. Minus veniam eveniet id soluta eius dolorum. Autem voluptas ipsum laudantium expedita.', 5, 5, 0, 85, 'https://via.placeholder.com/640x480.png/005522?text=nesciunt', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(44, 'Amet et inventore.', 'Voluptatem praesentium est eius harum cum. Possimus eveniet ipsam quam eius magni nam. Ex saepe molestias possimus quis quod. Culpa illum eius odit blanditiis quam.', 'Consequatur minima est eaque possimus repellendus. Mollitia fugiat qui quidem. Commodi quis labore qui soluta natus aut. Culpa necessitatibus mollitia non fuga qui. Odit sint cum voluptate et.', 4, 4, 0, 97, 'https://via.placeholder.com/640x480.png/00ff77?text=consequuntur', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(45, 'Cum facere consequuntur nostrum.', 'Ipsa tempora numquam quo illum quos ea autem. Non animi rerum aspernatur facilis iste. Temporibus voluptatem qui aut animi unde.', 'Vel sapiente ducimus est aliquid ex placeat. Architecto ut ipsum consectetur aut nihil ut. Recusandae velit et amet ratione placeat ut unde. Non assumenda aut ad voluptatem suscipit explicabo nam.', 8, 5, 3, 90, 'https://via.placeholder.com/640x480.png/003344?text=inventore', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(46, 'Odio praesentium dolor officia.', 'Debitis quasi est consectetur animi eligendi. Saepe quod blanditiis rerum mollitia vel magni et. Rem reprehenderit debitis voluptates aperiam dicta ex est et.', 'Veniam praesentium molestiae ex enim. Est iste molestiae id et. Sit quo eos quia soluta quas consequuntur.', 10, 6, 4, 82, 'https://via.placeholder.com/640x480.png/00ff22?text=ad', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(47, 'Minima ut sit.', 'Ut enim eius ratione tempora. Blanditiis voluptas voluptatem eaque harum quasi qui excepturi. Consequuntur in possimus soluta mollitia.', 'Odio repellat tempore iure repellat. Perferendis quisquam quo saepe totam ex voluptatibus nisi. Aut ad exercitationem modi consectetur culpa assumenda.', 5, 1, 4, 98, 'https://via.placeholder.com/640x480.png/00cc88?text=est', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(48, 'Sed aut qui.', 'Veniam nisi architecto dolores est nostrum id suscipit et. In vel omnis nesciunt odit. Impedit at alias ullam consequuntur ipsam dicta.', 'Est voluptas sint delectus nisi. Exercitationem dolorum omnis nostrum et. Excepturi reiciendis non aut dolorum laboriosam.', 4, 1, 3, 96, 'https://via.placeholder.com/640x480.png/000000?text=eligendi', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(49, 'Quas aut.', 'Pariatur officiis hic consequatur enim eos. Qui ex facere atque quidem. Quisquam qui blanditiis nihil. Eum eum adipisci sit qui qui molestias voluptatem.', 'Est nemo unde velit. Cumque voluptates esse impedit voluptas. Et et dolores repellat labore. Molestiae cumque velit ducimus suscipit.', 5, 2, 3, 93, 'https://via.placeholder.com/640x480.png/00ff33?text=quo', '2024-04-04 07:01:34', '2024-04-04 07:01:34'),
(50, 'Sint esse.', 'Laudantium ut eum inventore beatae iusto qui. Consequatur quisquam quibusdam velit et eaque. Reiciendis similique illum dolore ut omnis culpa expedita.', 'Et maiores unde aut. Quae est hic reprehenderit qui qui non. Qui ut vero asperiores perferendis. Fugiat eum error sit neque voluptates officiis.', 6, 5, 1, 86, 'https://via.placeholder.com/640x480.png/0066ff?text=placeat', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(51, 'Fugit suscipit.', 'Et qui sit vel culpa tenetur quas. Facere aliquam repudiandae animi et ut in autem. Fugiat enim ab eius dolorum.', 'Eius qui consequuntur sit porro tempore dolore dolorum. Eum ducimus voluptates voluptate in et. Quisquam voluptas ipsa minima autem. Praesentium nulla quo illum vel fuga.', 6, 0, 6, 89, 'https://via.placeholder.com/640x480.png/0011dd?text=similique', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(52, 'Est labore commodi.', 'Deserunt tempora est tempora numquam ad sed aspernatur. Est quis harum voluptatem voluptate. Facilis qui dolores nesciunt incidunt nostrum in.', 'Excepturi et quis deleniti aspernatur consequatur laudantium. Ut ut laudantium totam sunt sit velit ea. Labore laudantium atque autem. Dolorem ducimus est ratione ut.', 6, 5, 1, 83, 'https://via.placeholder.com/640x480.png/0022aa?text=placeat', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(53, 'Sint soluta debitis quo.', 'Rem omnis dolores ad earum id repellendus et vel. Sapiente deleniti libero optio ipsum velit veniam. Quos nemo quos quas ratione in architecto exercitationem. Non exercitationem in dolorem deleniti.', 'Ea occaecati omnis consequatur voluptatem voluptatem. Cum vitae rem cumque dolorem. Sapiente odit recusandae quidem officiis rerum quisquam vel sit.', 9, 0, 9, 100, 'https://via.placeholder.com/640x480.png/0066aa?text=amet', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(54, 'Et placeat amet.', 'Magnam praesentium repellat esse corrupti vel omnis repellat. Est sint incidunt ullam et. Tempore hic qui occaecati assumenda aliquam similique possimus.', 'Dolorem odit odio totam sunt et laboriosam. Magni voluptatem accusamus sunt cum aliquam. Id quaerat ipsum tempora est voluptatum. Consequatur sunt minus minima et ducimus molestiae odio ullam.', 10, 10, 0, 81, 'https://via.placeholder.com/640x480.png/007711?text=atque', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(55, 'Magnam facere voluptas fugit.', 'Ex sed autem est aut. Asperiores repellat architecto adipisci ut. Eum omnis odio iusto et. Est ea magnam aspernatur quis sunt.', 'Voluptatem quis aut fugiat blanditiis. Qui et sit distinctio similique error. Velit nobis magnam ex omnis. Rerum unde aspernatur excepturi.', 9, 4, 5, 84, 'https://via.placeholder.com/640x480.png/008811?text=reiciendis', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(56, 'Architecto ut amet aut.', 'Natus alias ut repellat illum sunt. Possimus illum quod fugiat accusantium quo provident maxime.', 'Ratione fugit perferendis quaerat qui. Sit molestiae ab tenetur repellendus praesentium voluptatum. Similique maiores temporibus eum eos. At nulla fuga est quos laboriosam.', 7, 3, 4, 82, 'https://via.placeholder.com/640x480.png/00ee88?text=consequuntur', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(57, 'Totam quo et.', 'Repellendus soluta sunt eum quia rerum nam ut. Error ut at sed. Vel sapiente qui provident et corporis est et. Sit esse illum corporis maxime.', 'Eos sed dolor enim qui aliquam necessitatibus. Ut omnis autem sed autem suscipit explicabo. Et vel nam et veniam magni sunt atque. Voluptatum repellat id neque consectetur nostrum occaecati.', 7, 2, 5, 88, 'https://via.placeholder.com/640x480.png/006611?text=eius', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(58, 'Molestiae repellat fuga incidunt.', 'Maiores voluptas dolor quaerat nisi dolores dolor sed ut. Quos nobis magni nobis. Autem quidem aliquid laudantium labore ut maxime. Et expedita ab consequuntur voluptas temporibus.', 'Ea accusamus unde aspernatur eaque beatae id. Inventore nulla sed vitae eveniet est officiis officia. Corrupti neque aut rerum veniam et.', 7, 0, 7, 98, 'https://via.placeholder.com/640x480.png/00bbbb?text=temporibus', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(59, 'Placeat velit.', 'Adipisci eum ducimus alias voluptates possimus quo. Ut nesciunt laborum possimus est est. Officia fuga deleniti sit et similique. Ea neque sint mollitia neque non deleniti molestiae.', 'Consectetur porro cumque sint. A rem similique qui praesentium. Quasi rerum natus eius est alias cupiditate soluta delectus. Est tempora qui incidunt unde placeat.', 7, 3, 4, 84, 'https://via.placeholder.com/640x480.png/004455?text=recusandae', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(60, 'Voluptates est placeat id.', 'Et voluptatibus at accusantium unde illum et. Aut nam ab aut id iure. Dolorum vel et voluptas. Ut facilis corporis qui explicabo veritatis consequuntur cupiditate id.', 'Vitae et iure omnis. Quia veritatis sed velit veritatis nulla. Rerum et dolor quo eaque voluptatem et sed. Adipisci sed autem nesciunt.', 5, 4, 1, 85, 'https://via.placeholder.com/640x480.png/0077ee?text=aut', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(61, 'Ipsa excepturi id sapiente.', 'Debitis eos iste sit nulla non. Delectus aut et ratione dolorem. Dolorem rerum id beatae eum veniam doloremque in aut.', 'Quisquam sequi ut voluptatem alias. Dolorum facilis dolore aliquam magni. Assumenda id est iste. Nemo qui minima veniam.', 10, 10, 0, 88, 'https://via.placeholder.com/640x480.png/0011dd?text=veritatis', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(62, 'Rerum mollitia enim quibusdam.', 'Et qui libero a omnis exercitationem nihil omnis. Dolorem rerum facilis blanditiis. Recusandae aperiam quisquam numquam et et tempore. Enim unde perspiciatis ut beatae voluptatem.', 'Voluptatem rem eveniet explicabo impedit ut. Nesciunt sint sed ipsam. Reprehenderit voluptatem placeat recusandae dolores tenetur. Totam veniam nihil explicabo provident accusantium.', 4, 1, 3, 93, 'https://via.placeholder.com/640x480.png/00cc88?text=aut', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(63, 'Reiciendis molestiae et.', 'Vitae nostrum qui consequuntur nemo aut quo natus. Facilis adipisci et ea eligendi sequi voluptas eos. Consequuntur ut cupiditate tenetur.', 'Asperiores magni consequuntur illo aut. Modi ut doloribus omnis rerum. Et dolor veritatis maiores cupiditate aliquid assumenda sed. Aut non pariatur sint eligendi temporibus quis.', 5, 2, 3, 89, 'https://via.placeholder.com/640x480.png/0088dd?text=sit', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(64, 'Doloremque dolor reiciendis.', 'Non aut eos omnis aut aliquam. Illo animi voluptates consequatur in deserunt facilis et. Veritatis dolores adipisci dolores veritatis. Ut voluptatibus deserunt dolor aliquid quia.', 'Modi consequatur sed odio sit. Sit illum eos rerum ullam quasi voluptas aut repellendus. Et dignissimos et repellat eos quis.', 4, 3, 1, 96, 'https://via.placeholder.com/640x480.png/00bb66?text=explicabo', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(65, 'Eius iure totam quidem doloremque.', 'Officiis doloremque aperiam numquam consequatur. Dolor quis natus quia at quisquam. Et culpa quidem aliquam rem nesciunt.', 'Quasi pariatur ipsam ducimus. Eveniet aut dolor optio sit molestias illum quam.', 5, 5, 0, 97, 'https://via.placeholder.com/640x480.png/004499?text=et', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(66, 'Doloremque et quisquam.', 'Fugiat voluptas inventore adipisci necessitatibus sit. Et deleniti inventore illum et.', 'Autem ut facilis adipisci totam. Incidunt saepe suscipit maiores et consectetur aperiam possimus. Dolor ratione qui quidem.', 7, 3, 4, 92, 'https://via.placeholder.com/640x480.png/0066ff?text=qui', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(67, 'Doloribus non cumque animi.', 'Repudiandae maxime provident enim earum voluptates quis. Dicta ducimus velit facilis ullam ipsa beatae veritatis.', 'Quasi est ex non excepturi officiis ullam. Dolorum et unde nisi quia assumenda eveniet. Corporis velit quo ipsum. Rem harum quibusdam est qui.', 10, 1, 9, 80, 'https://via.placeholder.com/640x480.png/00cc44?text=illum', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(68, 'Officia consectetur error.', 'Dicta pariatur modi debitis et pariatur tempora nihil aliquid. Et exercitationem veniam dolores voluptatem labore. Et maxime incidunt asperiores odit adipisci et omnis officia.', 'Quis eligendi ex est laudantium aut earum voluptatem. Quae ad eius omnis cupiditate non non in. Enim et id excepturi eaque est repellendus dolorem ex. Quo voluptatem nesciunt quia in magni.', 6, 0, 6, 89, 'https://via.placeholder.com/640x480.png/0033ee?text=ea', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(69, 'Exercitationem in nisi.', 'Incidunt voluptates ullam sed aut maxime veniam. Pariatur consequatur est doloribus qui ut excepturi repellendus fugit. Debitis quia magni aliquam aut in.', 'Ut vel voluptas error ipsum nobis recusandae. Ipsa vel quod cumque autem. Laudantium occaecati quasi non et nam ut. Porro animi magnam harum delectus.', 7, 1, 6, 81, 'https://via.placeholder.com/640x480.png/0055aa?text=et', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(70, 'Consequuntur voluptates non.', 'Nemo voluptas atque neque iusto libero aut. Reprehenderit ullam aut nobis voluptas. A odio odio aliquid.', 'Reprehenderit tenetur ut nostrum dolores facere. Eum tempora consequuntur molestias omnis. Asperiores eum alias laborum labore sunt.', 5, 3, 2, 94, 'https://via.placeholder.com/640x480.png/00aacc?text=id', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(71, 'Nulla sit error autem.', 'Tenetur rerum excepturi veniam voluptas. Id est eum optio laudantium veritatis cupiditate. Ut omnis atque sed beatae nam ex sapiente aperiam.', 'Ipsum earum aut qui sint ut. Qui nostrum doloribus minus id consectetur inventore dolore. Suscipit fuga adipisci nemo sequi ut doloribus. Et eveniet dolorum dolore.', 4, 1, 3, 81, 'https://via.placeholder.com/640x480.png/0022cc?text=deleniti', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(72, 'Ut et repellat porro.', 'Est distinctio nam explicabo quos. Repellendus molestias libero totam voluptatem accusamus pariatur corrupti magnam. Voluptas hic sunt ipsa ab.', 'Nulla est laboriosam accusamus quis quidem sit deserunt adipisci. Consequatur omnis dolor qui quis. Minus vel dignissimos et deleniti. Quidem consequuntur aspernatur non voluptatem.', 5, 2, 3, 90, 'https://via.placeholder.com/640x480.png/00bbbb?text=qui', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(73, 'Quisquam aliquam.', 'Harum similique nostrum temporibus sunt. Dolorum nulla illum optio numquam quis. Libero est qui harum doloribus qui sit.', 'Voluptatibus quia libero quae hic. Cum repellat ut rerum qui cumque magni excepturi deleniti. Nesciunt accusamus non occaecati possimus temporibus.', 5, 4, 1, 88, 'https://via.placeholder.com/640x480.png/00ddff?text=ea', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(74, 'Nam eveniet ipsa.', 'Cumque unde cupiditate laudantium voluptas impedit culpa. Culpa earum non sunt ipsa. Voluptatem dolores iusto maxime quo. Aut omnis nesciunt vel dicta et omnis.', 'Laborum ipsa vero modi iste commodi. Vitae architecto et eaque natus. Reiciendis tenetur totam ut hic necessitatibus laboriosam.', 9, 3, 6, 95, 'https://via.placeholder.com/640x480.png/003344?text=deleniti', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(75, 'Ut veritatis officia.', 'Eius eum delectus pariatur eum. Et architecto tempora et sunt iste consequuntur. Fugit at doloribus cupiditate cum sint fugit. Adipisci ut commodi nesciunt.', 'Asperiores dolor non repellat nam eum. Ut explicabo fugit sit quae quasi.', 4, 1, 3, 85, 'https://via.placeholder.com/640x480.png/001199?text=eius', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(76, 'Repudiandae sed nesciunt iste.', 'Est ipsa cumque unde aut deserunt ipsam. Omnis aliquid eius explicabo suscipit.', 'Quo adipisci vel id facilis occaecati eaque reprehenderit. Doloribus recusandae rerum vel voluptas voluptas delectus. Et distinctio numquam sint quaerat vel qui. Ut est fugit nulla odit.', 10, 0, 10, 97, 'https://via.placeholder.com/640x480.png/006633?text=ut', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(77, 'Ullam aut ut a.', 'Nihil rerum ab molestiae tenetur aut. Hic dolore velit culpa. Accusantium expedita totam omnis voluptas aperiam doloremque natus.', 'Quam tempora ut molestiae voluptatum. Animi soluta unde eos voluptatem aspernatur neque molestiae. Officia culpa quis impedit.', 7, 3, 4, 83, 'https://via.placeholder.com/640x480.png/000022?text=voluptas', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(78, 'Soluta eveniet.', 'Quisquam quas soluta non laborum. Voluptas aliquid doloremque ratione mollitia. Qui est quos laudantium aperiam. Ducimus voluptas libero consequatur aspernatur.', 'Repudiandae officiis ut beatae dolor accusantium est tempora. Quo officiis dignissimos omnis consequuntur. Dolorum eius ducimus nihil quasi voluptate. Tempore dolore et minima incidunt autem.', 10, 3, 7, 96, 'https://via.placeholder.com/640x480.png/003399?text=harum', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(79, 'Totam molestias enim.', 'Deserunt ipsam voluptas placeat et optio officia. Asperiores soluta incidunt maiores voluptate. Reprehenderit id magni ut nihil. Cumque rerum provident est ut porro minima.', 'Accusamus magnam architecto omnis et nisi eum. Dolor et et velit possimus. Labore eligendi debitis dolores et et aliquam fugiat. Amet qui et porro.', 9, 7, 2, 95, 'https://via.placeholder.com/640x480.png/007766?text=quam', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(80, 'Explicabo omnis nemo.', 'Et eaque molestias doloremque ratione minus sed. Est omnis labore ut cupiditate id. Iusto voluptas cumque cum est. Impedit distinctio qui quae quo et.', 'Et omnis numquam ipsam ipsa qui velit. Minus sint corrupti eaque ipsam perspiciatis. Minima corrupti nesciunt nulla impedit qui omnis. Sunt est earum architecto est.', 5, 3, 2, 97, 'https://via.placeholder.com/640x480.png/00ee00?text=fuga', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(81, 'Placeat asperiores ullam.', 'Accusamus quo rerum quisquam cum quibusdam odio. Non molestiae autem unde natus dicta.', 'Maiores rerum nam magnam quibusdam. Illum est quia quidem iusto aspernatur necessitatibus. Est consequuntur iure ratione quis.', 10, 5, 5, 95, 'https://via.placeholder.com/640x480.png/005544?text=nulla', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(82, 'Distinctio placeat ullam.', 'Est vel soluta sunt aliquam dolorem. Omnis omnis voluptatem cumque quam explicabo dolor. Laboriosam iste quis veritatis maiores sunt aliquid minima et.', 'Nihil ex dolorum in veniam. Aliquam illo vel aliquid et. Sed consectetur ullam fuga cumque pariatur neque. Reprehenderit asperiores velit laboriosam.', 5, 4, 1, 82, 'https://via.placeholder.com/640x480.png/0099dd?text=ipsum', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(83, 'Corrupti voluptate fugit amet.', 'Consequatur reiciendis et enim perferendis beatae. Eos velit nemo et nobis voluptates quo. Consectetur sit ut voluptatem officiis nam. Sequi minus reprehenderit et ut vel tenetur vel autem.', 'Eius libero occaecati nobis aliquam. Blanditiis quia quasi quia velit similique sapiente ea sequi. Dolore exercitationem qui harum quisquam facere.', 4, 0, 4, 99, 'https://via.placeholder.com/640x480.png/0011dd?text=dolores', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(84, 'Et quia animi.', 'Molestiae nostrum error quas a. Et quia possimus tempora doloremque cum ut esse. Alias est rerum voluptas expedita voluptatibus. Velit et est perspiciatis explicabo.', 'Temporibus architecto vero officia impedit ipsa. Eligendi libero eligendi corporis. Est voluptatem autem qui deleniti aut.', 5, 1, 4, 86, 'https://via.placeholder.com/640x480.png/0077bb?text=delectus', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(85, 'Omnis atque aspernatur.', 'Optio voluptatum nisi tempore ut. Dolorum voluptas iusto cupiditate error. Vitae aut et ex et aut consequuntur inventore. Nemo quidem commodi beatae odio nemo.', 'Enim omnis blanditiis quo doloremque voluptatem ut. Aut eveniet eaque aspernatur voluptatem dicta. Rerum facere ipsam qui rerum.', 7, 0, 7, 86, 'https://via.placeholder.com/640x480.png/0022ee?text=quia', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(86, 'Accusamus officia nostrum.', 'Autem doloremque quaerat nam. Aut ut eum natus nobis sequi rerum officiis. Est dolor qui soluta suscipit non labore.', 'Necessitatibus aut quia in. Est quibusdam explicabo nam dolore autem doloribus. Explicabo perferendis occaecati ut dignissimos quo. Nisi officiis sequi consequuntur omnis adipisci rerum.', 9, 9, 0, 94, 'https://via.placeholder.com/640x480.png/0022cc?text=omnis', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(87, 'Est nulla accusamus inventore.', 'Autem quo voluptas voluptatem blanditiis ipsum. Rerum aut iure ut. Possimus accusamus sit eos et qui.', 'Aliquid officiis perspiciatis nisi eius. Quasi impedit officia eos. Repudiandae veniam dolor perspiciatis voluptatem et officia.', 10, 6, 4, 89, 'https://via.placeholder.com/640x480.png/001133?text=facere', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(88, 'Enim ut.', 'Placeat omnis quia dolores quis occaecati pariatur. Quis ab non odit. Voluptatem sint dolores dolores soluta numquam aut. Laborum excepturi odit dicta ullam sunt nihil nisi.', 'Inventore rerum error magni ullam alias esse earum. Minus perferendis reprehenderit sint eos dolor laborum voluptas aspernatur. Quod quis recusandae vitae debitis.', 8, 5, 3, 95, 'https://via.placeholder.com/640x480.png/0011ff?text=non', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(89, 'Dolorem quod eaque.', 'Amet molestiae autem voluptatem debitis omnis doloribus repellendus. Illo laudantium quasi non et alias et ea consequatur. Commodi quia animi sed in distinctio impedit.', 'Iure quis consequatur culpa ipsam incidunt optio. Est iure quia voluptatem nihil quo. Dolores omnis architecto consectetur id fugiat. Recusandae eaque itaque sunt veritatis voluptatem iure.', 8, 3, 5, 93, 'https://via.placeholder.com/640x480.png/008822?text=voluptatem', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(90, 'Eius nesciunt non.', 'Dolorem fugiat iste amet. Enim vel laboriosam deleniti totam minus quia animi voluptates. Hic exercitationem explicabo consequuntur voluptas.', 'Impedit quidem numquam illo qui. Quia recusandae magnam voluptatibus ut libero earum in sunt. Hic numquam commodi eligendi amet est non molestiae.', 7, 4, 3, 83, 'https://via.placeholder.com/640x480.png/003300?text=eos', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(91, 'Aut nemo asperiores.', 'Est ea facilis quo fugiat necessitatibus dicta minima. Qui illum eos est ullam vitae expedita. Ut excepturi nemo amet quasi doloremque sit nemo. In sit optio quia cum magnam dolor repudiandae.', 'Eius modi provident at iusto numquam enim neque. Aspernatur qui voluptas enim voluptate molestiae inventore est. Vel unde voluptas est veniam porro. Similique similique minima iusto accusantium iure.', 4, 0, 4, 98, 'https://via.placeholder.com/640x480.png/00cc44?text=molestiae', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(92, 'Neque qui exercitationem.', 'Asperiores quo enim dignissimos ad quo facilis. Ut ipsam qui natus consequatur magni neque excepturi. Et veniam sed ipsa nihil.', 'Labore aut sit quia at. Placeat quae laudantium explicabo ut aut maiores quis. Impedit velit sunt quisquam hic pariatur esse adipisci. A et debitis tempora ipsam odio rerum consequuntur.', 4, 3, 1, 89, 'https://via.placeholder.com/640x480.png/000066?text=magnam', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(93, 'Ut possimus.', 'Laudantium id dolores molestiae ducimus ut omnis. At consequatur eum veniam sunt est velit. Aliquid qui eligendi sint voluptatem aut sapiente sint.', 'Quas vel et omnis dolorem. Autem et voluptatem quod sunt. Ut maiores aperiam nobis fuga similique. Non et culpa et dicta numquam distinctio sed.', 5, 2, 3, 97, 'https://via.placeholder.com/640x480.png/00ddaa?text=repellat', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(94, 'Dolorem et eum.', 'Cupiditate nesciunt culpa quidem a. Sed delectus qui omnis odio asperiores voluptas ab. Et sit et eius nulla ipsa nemo repellat.', 'Aspernatur ratione laudantium culpa veritatis qui non vel. Deserunt voluptatum accusamus aperiam aut nobis rerum. Ut quis necessitatibus et id dolor voluptatum molestiae similique.', 6, 4, 2, 81, 'https://via.placeholder.com/640x480.png/00ee77?text=fuga', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(95, 'Suscipit quisquam hic est.', 'Quia omnis quia dignissimos odit iusto nostrum voluptatem. Perspiciatis voluptas nam repudiandae consequatur. Quidem ut ea id dolor est quis. At qui molestias corrupti rerum.', 'Vel nulla assumenda est id. In qui dolorum sequi quia. Iusto tempora quisquam possimus perspiciatis. Unde velit quos illo itaque vero facere quia a.', 7, 5, 2, 81, 'https://via.placeholder.com/640x480.png/008844?text=autem', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(96, 'Eaque perspiciatis ut illo.', 'Eveniet ut voluptatibus qui dolorem dolores unde. Sit recusandae nihil necessitatibus accusantium consequatur. Ut voluptates libero quisquam et.', 'Impedit explicabo possimus ut rerum aperiam enim totam iste. Delectus odio consequuntur voluptas nihil perspiciatis officia. Ipsa et officia officia vitae.', 8, 6, 2, 83, 'https://via.placeholder.com/640x480.png/00ff66?text=aut', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(97, 'Accusamus ut quod.', 'Qui consequuntur incidunt deleniti. Velit voluptatem ex laudantium. Omnis officiis ut qui voluptas eius. Eos aut numquam optio.', 'Suscipit exercitationem deleniti quia. Ipsam ducimus perferendis velit est dolores. Voluptas laborum itaque consectetur ex. Quis ut culpa occaecati architecto et. Fugiat vel expedita vel autem.', 7, 6, 1, 100, 'https://via.placeholder.com/640x480.png/0077aa?text=accusantium', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(98, 'Ut at quidem.', 'Eos et sapiente dignissimos. Sunt praesentium necessitatibus qui nam dolorum. Animi modi eum modi qui velit. Et alias et itaque aliquam.', 'Occaecati animi quia cumque eos sapiente voluptatem modi. In aut reiciendis voluptas ut est. Perspiciatis voluptatem eveniet pariatur laudantium harum praesentium.', 5, 1, 4, 96, 'https://via.placeholder.com/640x480.png/001133?text=quis', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(99, 'Quis sed beatae amet.', 'Velit ut officiis non accusamus alias autem dicta. Ipsam ratione rerum quia maxime error. Sed animi dignissimos dolores perspiciatis tempore natus.', 'Provident non illum quod dolores debitis non. Placeat quia repellat modi esse. Natus quia ipsum doloribus exercitationem hic ipsa nobis.', 8, 6, 2, 94, 'https://via.placeholder.com/640x480.png/00eecc?text=ab', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(100, 'In animi culpa optio.', 'In sunt aperiam vel maiores aspernatur. Et sed et necessitatibus autem earum cumque. Velit blanditiis enim atque.', 'Omnis autem sed repellat praesentium. Assumenda omnis non quod error eum. Omnis fuga est sint omnis maiores. Labore quia odit nobis incidunt.', 9, 8, 1, 93, 'https://via.placeholder.com/640x480.png/000088?text=eum', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(101, 'Nihil eum vero.', 'Aliquid dolorem illum qui est tempore non. Distinctio necessitatibus accusamus omnis et commodi. Quos non quasi qui nemo rerum sequi beatae eaque.', 'Harum inventore explicabo ea. Eaque id delectus aut ipsa est et asperiores. Quam ut minima id quam incidunt. Iure animi asperiores et velit voluptatem aut.', 9, 5, 4, 86, 'https://via.placeholder.com/640x480.png/000022?text=expedita', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(102, 'Consequuntur et aperiam.', 'Ipsa sed iste ea et quia recusandae labore. Perspiciatis minima qui corporis laborum aut. Nobis voluptatem molestiae dolor debitis illo. Velit maiores et deleniti et eum ut quis.', 'Totam vel ut adipisci est commodi ut. Possimus illo in neque sit. Quasi eligendi excepturi ut et autem a voluptate labore.', 6, 5, 1, 87, 'https://via.placeholder.com/640x480.png/00ee22?text=voluptates', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(103, 'Ea sint doloribus eaque.', 'Maiores et ea quis. Enim nulla commodi sint aperiam.', 'Quidem maxime in qui et aut nisi. Error corporis placeat optio quis qui excepturi. Corrupti ut eos quam.', 8, 6, 2, 95, 'https://via.placeholder.com/640x480.png/007744?text=rerum', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(104, 'Et dolores eos.', 'Aperiam sequi labore delectus culpa exercitationem necessitatibus dicta. Et accusantium sunt culpa doloribus expedita voluptate tempora. Non ut qui accusamus earum.', 'Porro voluptatem doloribus consequatur incidunt. Qui consequuntur quisquam eaque fugiat cumque.', 10, 7, 3, 95, 'https://via.placeholder.com/640x480.png/00ffaa?text=distinctio', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(105, 'Quia eaque eum.', 'Odit quia libero velit non provident. Non placeat enim est quas eum numquam eos velit. Ipsum sint magni qui ex molestiae repellendus.', 'Aut omnis necessitatibus et nostrum. Voluptatum dolorem doloribus beatae optio temporibus. Quia officia magnam dignissimos voluptatem et. Voluptas possimus et omnis aliquid laborum hic blanditiis.', 10, 4, 6, 91, 'https://via.placeholder.com/640x480.png/0022aa?text=et', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(106, 'Ea deleniti nihil.', 'Officia laudantium adipisci omnis et sapiente sunt ut repellat. Occaecati natus laudantium a iste et. Non quas optio quod tenetur optio alias incidunt. Rerum porro quis nihil suscipit est ipsam rem.', 'Est et eum quis qui eum non placeat. Vel autem dolores fuga at distinctio voluptates cum temporibus. Quis nisi accusantium porro inventore.', 4, 1, 3, 80, 'https://via.placeholder.com/640x480.png/00aa99?text=quos', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(107, 'Et dolores sapiente.', 'Officiis ducimus odit sint et et et voluptatem sunt. Est perferendis officia amet eum minima. Quas iusto quod praesentium quam odit voluptas.', 'Rerum voluptatibus qui consequatur. Eius quia ducimus laudantium neque enim. Sed voluptatibus est odit sunt. Minima ut et id ea ducimus ea quasi. Sit est dignissimos fugiat.', 5, 0, 5, 91, 'https://via.placeholder.com/640x480.png/003300?text=enim', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(108, 'Corporis possimus placeat.', 'Consequatur voluptas consequatur voluptatem minima illo asperiores. A fugiat ut maxime animi assumenda adipisci.', 'Ex saepe ipsam deleniti aperiam esse omnis ad consequuntur. Consequuntur quidem quis repellendus placeat. Inventore aperiam est dolorum nobis. Et architecto mollitia nam architecto.', 8, 5, 3, 95, 'https://via.placeholder.com/640x480.png/0011aa?text=saepe', '2024-04-04 07:01:35', '2024-04-04 07:01:35');
INSERT INTO `materia` (`identificador`, `nombre`, `objetivo`, `intencionDidactica`, `creditos`, `horasPracticas`, `horasTeoricas`, `calificacionAprobatoria`, `imagen`, `created_at`, `updated_at`) VALUES
(109, 'Alias quod accusamus autem.', 'Qui sint et ut quasi voluptatem. Aut non non sunt. Libero aspernatur aspernatur et itaque.', 'Dignissimos ea voluptatem voluptate corrupti hic enim. Ipsum doloribus ipsum et aut voluptatem repellendus. Quod eius inventore sit sint est ipsa.', 4, 2, 2, 96, 'https://via.placeholder.com/640x480.png/00aabb?text=in', '2024-04-04 07:01:35', '2024-04-04 07:01:35'),
(110, 'Voluptatum enim libero incidunt.', 'Praesentium vitae ipsam non non repellendus. Delectus officia rerum qui nobis. Aliquid optio sapiente accusantium omnis. Dignissimos deserunt facilis cum adipisci ipsa.', 'Et ab blanditiis vero recusandae ut autem sit. Placeat blanditiis perferendis voluptatem. Et iure quibusdam maiores illum deserunt.', 6, 1, 5, 81, 'https://via.placeholder.com/640x480.png/00ee66?text=possimus', '2024-04-04 07:01:35', '2024-04-04 07:01:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_docente`
--

CREATE TABLE `materia_docente` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Materia` int(10) UNSIGNED NOT NULL,
  `identificador_Docente` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia_docente`
--

INSERT INTO `materia_docente` (`identificador`, `identificador_Materia`, `identificador_Docente`, `created_at`, `updated_at`) VALUES
(1, 7, 3, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(2, 10, 1, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(3, 5, 8, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(4, 3, 6, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(5, 9, 2, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(6, 9, 10, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(7, 10, 4, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(8, 7, 4, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(9, 8, 9, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(10, 10, 5, '2024-04-03 09:09:12', '2024-04-03 09:09:12'),
(11, 6, 71, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(12, 38, 24, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(13, 57, 10, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(14, 55, 100, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(15, 55, 68, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(16, 43, 95, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(17, 95, 59, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(18, 14, 54, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(19, 23, 32, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(20, 88, 16, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(21, 45, 98, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(22, 18, 32, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(23, 103, 66, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(24, 13, 24, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(25, 28, 100, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(26, 64, 110, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(27, 110, 26, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(28, 48, 107, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(29, 38, 72, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(30, 22, 96, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(31, 109, 4, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(32, 27, 7, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(33, 41, 1, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(34, 44, 95, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(35, 71, 99, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(36, 77, 2, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(37, 75, 24, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(38, 30, 106, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(39, 109, 70, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(40, 32, 9, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(41, 62, 42, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(42, 78, 45, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(43, 1, 55, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(44, 45, 19, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(45, 22, 95, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(46, 104, 53, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(47, 75, 87, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(48, 83, 109, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(49, 6, 11, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(50, 26, 105, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(51, 86, 16, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(52, 63, 10, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(53, 29, 26, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(54, 13, 103, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(55, 77, 82, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(56, 42, 81, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(57, 85, 105, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(58, 68, 106, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(59, 103, 54, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(60, 56, 37, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(61, 28, 107, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(62, 38, 53, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(63, 96, 16, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(64, 90, 13, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(65, 72, 89, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(66, 97, 58, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(67, 38, 76, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(68, 104, 70, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(69, 90, 28, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(70, 27, 35, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(71, 59, 17, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(72, 61, 19, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(73, 24, 4, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(74, 26, 9, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(75, 83, 8, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(76, 65, 78, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(77, 61, 43, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(78, 74, 59, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(79, 77, 11, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(80, 2, 21, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(81, 101, 54, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(82, 106, 71, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(83, 67, 63, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(84, 74, 40, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(85, 94, 13, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(86, 92, 9, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(87, 84, 41, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(88, 18, 84, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(89, 47, 18, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(90, 47, 55, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(91, 103, 75, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(92, 46, 13, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(93, 105, 61, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(94, 6, 18, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(95, 61, 10, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(96, 42, 58, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(97, 95, 16, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(98, 20, 17, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(99, 72, 46, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(100, 77, 46, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(101, 55, 55, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(102, 72, 36, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(103, 77, 73, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(104, 15, 49, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(105, 43, 22, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(106, 6, 33, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(107, 17, 89, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(108, 58, 78, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(109, 13, 22, '2024-04-04 07:02:54', '2024-04-04 07:02:54'),
(110, 10, 10, '2024-04-04 07:02:54', '2024-04-04 07:02:54');

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2024_04_02_005742_create_materia_table', 1),
(24, '2024_04_02_045013_create_horario_table', 1),
(25, '2024_04_02_051305_create_horario_materia_table', 1),
(26, '2024_04_02_184022_create_actividad_table', 1),
(27, '2024_04_02_185239_create_unidad_table', 1),
(28, '2024_04_02_193353_create_actividad_unidad_table', 1),
(29, '2024_04_02_195325_create_tema_table', 1),
(30, '2024_04_02_202856_create_alumno_table', 1),
(31, '2024_04_02_203844_create_docente_table', 1),
(32, '2024_04_02_204400_create_materia_docente_table', 1),
(33, '2024_04_02_205210_create_alumno_materia_docente_table', 1),
(34, '2024_04_02_210844_create_clase_table', 1),
(35, '2024_04_02_211304_create_actividad_clase_table', 1),
(36, '2024_04_14_172312_create_usuario_table', 2),
(37, '2024_04_14_173139_create_usuario_docente_table', 3),
(38, '2024_04_14_173821_create_usuario_alumno_table', 4);

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
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Unidad` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `horasDuracion` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`identificador`, `identificador_Unidad`, `titulo`, `subtitulo`, `horasDuracion`, `created_at`, `updated_at`) VALUES
(1, 3, 'Velit fuga tempora nam pariatur velit eum molestiae voluptas.', 'Tempora quisquam beatae et eum dolor.', 1.35, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(2, 6, 'Consequuntur laborum debitis omnis rerum nemo.', 'Et libero sunt unde in.', 1.50, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(3, 5, 'Numquam et aliquid voluptatem earum aliquid voluptatem.', 'Quod at aut dignissimos.', 0.04, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(4, 9, 'Rerum amet possimus et aut ducimus rerum eum.', 'Nesciunt tempora eum rerum a quam aut.', 1.39, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(5, 4, 'Soluta esse et totam unde ut ducimus.', 'Aliquid esse rerum voluptatum recusandae eaque earum natus.', 1.76, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(6, 2, 'Corrupti quidem nisi soluta sit consequatur nostrum.', 'Necessitatibus culpa architecto esse voluptas.', 0.99, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(7, 9, 'Laudantium pariatur dolor cupiditate quibusdam.', 'Voluptas ab fuga repellat inventore.', 0.01, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(8, 2, 'Rem et saepe dolor et.', 'Est reiciendis culpa corrupti nam.', 0.97, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(9, 6, 'Temporibus mollitia culpa iusto vitae.', 'Accusamus ut est quam.', 1.61, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(10, 3, 'Culpa ut eligendi doloribus delectus culpa ipsam non sequi.', 'Exercitationem quod sed porro.', 1.25, '2024-04-03 09:10:27', '2024-04-03 09:10:27'),
(11, 1, 'Perspiciatis aut ipsam optio nam debitis.', 'Reprehenderit minus neque laudantium mollitia.', 0.74, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(12, 9, 'Soluta inventore fugit qui veniam vel autem aperiam beatae.', 'Numquam quia quis aut incidunt.', 0.21, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(13, 9, 'Esse quis placeat error consequatur libero amet officia vero.', 'Quia vel voluptatem ab eveniet ducimus enim omnis.', 0.73, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(14, 1, 'Dignissimos id inventore consequatur doloribus tenetur omnis dicta libero.', 'Est esse nostrum sint eum.', 1.00, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(15, 5, 'Maiores hic fuga laborum autem sit veniam.', 'Dicta ut sit et repellendus ut at nostrum.', 1.44, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(16, 9, 'Ad doloribus labore labore.', 'Autem animi omnis similique laudantium aut fuga.', 0.13, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(17, 4, 'Nostrum quasi odio laboriosam aut cupiditate porro.', 'Rerum maiores et qui.', 2.00, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(18, 10, 'Cumque ducimus enim aut architecto.', 'Saepe sed eos qui delectus qui culpa.', 0.45, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(19, 4, 'Ipsam quia ab omnis sit quaerat corporis.', 'Nemo sunt quas dolor.', 1.57, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(20, 3, 'Voluptatem exercitationem saepe voluptatum maxime rem non.', 'Enim nulla totam nemo eos ratione qui repellendus.', 1.75, '2024-04-03 09:10:55', '2024-04-03 09:10:55'),
(21, 4, 'Suscipit reiciendis odit officia necessitatibus similique blanditiis.', 'Ullam molestiae amet dignissimos corporis autem voluptatem.', 0.19, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(22, 9, 'Delectus quidem eum voluptatibus harum fugiat.', 'Quo commodi expedita corporis ea minus molestiae.', 1.67, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(23, 9, 'Repellendus laborum velit earum laborum.', 'Eaque impedit inventore commodi deserunt minima eum.', 0.58, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(24, 4, 'Eveniet placeat eius necessitatibus dolorum aspernatur ut soluta.', 'Officiis et ratione laborum est.', 0.11, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(25, 2, 'Odit dolor et quis dolores animi.', 'Minus dignissimos ratione perferendis voluptatem fugit ut quis.', 0.37, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(26, 3, 'Nemo aliquam nihil a rerum eum eum.', 'A dolor error quo modi magni molestias quos omnis.', 0.03, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(27, 1, 'Sint impedit consequatur minus.', 'Eligendi numquam consequatur optio adipisci.', 0.05, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(28, 10, 'Illo officia voluptatibus dolor nam est.', 'Rem dolores cum omnis quia dicta deserunt illum.', 0.93, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(29, 8, 'Fuga ad iure eligendi aut dicta nesciunt illum.', 'Cum ut voluptates maiores dignissimos.', 1.51, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(30, 3, 'Qui et quaerat nam odio harum ipsa eligendi.', 'Vel saepe porro veritatis aut quia.', 1.01, '2024-04-03 09:10:56', '2024-04-03 09:10:56'),
(31, 15, 'Porro libero et dolorem molestiae molestiae.', 'Consequatur odio sed aut molestias eos sed.', 0.44, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(32, 14, 'Exercitationem aspernatur dolores enim sit aut.', 'Iusto dolores deserunt modi deserunt et in laudantium.', 0.19, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(33, 6, 'Ullam quia deleniti quod occaecati.', 'Ullam quibusdam aliquam voluptatibus itaque soluta veniam harum.', 0.33, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(34, 7, 'Minus eveniet fuga voluptas temporibus quo nihil molestias.', 'Ipsum nulla id autem delectus corrupti.', 1.58, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(35, 8, 'Culpa velit animi sunt architecto.', 'Illo vero qui asperiores possimus quis.', 0.05, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(36, 12, 'Minus nam ea nihil temporibus laboriosam blanditiis.', 'At qui harum enim nostrum exercitationem.', 1.91, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(37, 16, 'Rerum vel ut eius cum sit velit molestias.', 'Est ab aut aliquam eum aut id.', 1.63, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(38, 15, 'Qui qui laborum ullam occaecati.', 'Distinctio debitis perspiciatis occaecati voluptatem quo facilis perferendis debitis.', 1.11, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(39, 26, 'Ex sed qui a quaerat sunt eaque sunt.', 'Qui veritatis eius soluta qui voluptatem.', 0.21, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(40, 3, 'Consequatur iusto ullam unde praesentium sunt ea quia.', 'Est distinctio et voluptatum pariatur non impedit.', 0.21, '2024-04-03 09:11:10', '2024-04-03 09:11:10'),
(41, 14, 'Qui ut est veritatis voluptas maxime odio.', 'Qui in maxime nulla odio distinctio sed.', 0.05, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(42, 67, 'Eos non ipsum ut iusto.', 'Cum ea quisquam amet harum voluptatem qui expedita.', 0.68, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(43, 100, 'Voluptatem natus tempore officia et.', 'Maiores mollitia quidem magni adipisci consequatur repellendus est.', 0.32, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(44, 91, 'Officiis ea aliquid odio ut nisi perferendis.', 'Animi aut pariatur recusandae dolores labore autem.', 0.52, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(45, 82, 'Eaque mollitia ut id sunt accusantium voluptatem.', 'Sint voluptatum odio est voluptas.', 0.36, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(46, 48, 'Non minus commodi quasi optio.', 'Ab fuga expedita est enim illum dolorem rerum laborum.', 0.27, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(47, 13, 'Tempore corrupti commodi natus dolores.', 'At et nobis et quos et temporibus tempore.', 0.30, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(48, 67, 'Blanditiis eligendi et id rerum.', 'Et accusamus consectetur ut molestiae in sit sequi enim.', 1.99, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(49, 95, 'Voluptate nihil sunt ab veritatis harum nisi sequi.', 'Qui est qui dolor et.', 1.65, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(50, 21, 'Sed sed qui ad ut dolores voluptas.', 'Molestiae recusandae asperiores repellat adipisci odio omnis culpa.', 1.12, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(51, 21, 'In consequatur ad esse quae aut est.', 'Ut aut nesciunt dolore molestiae at rerum deserunt dignissimos.', 1.42, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(52, 99, 'Pariatur eveniet fugiat dignissimos.', 'Accusantium velit unde qui sed earum cumque.', 1.63, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(53, 28, 'Id ut qui consequatur molestiae cumque eligendi.', 'Dolorem ipsum soluta ut explicabo tenetur ab.', 1.79, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(54, 13, 'Suscipit quasi non magnam eos dolores.', 'At quam nobis deleniti voluptatem dolor corrupti ea.', 1.36, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(55, 17, 'Error sunt dolores rerum quidem architecto quia accusantium illum.', 'Eius sit odit non perferendis.', 1.15, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(56, 47, 'Magni magnam eos officia est.', 'Quidem in omnis earum doloribus.', 0.57, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(57, 17, 'Voluptatem aliquam quod ut officiis id excepturi molestias.', 'Tempora sit eos magnam consequuntur tenetur illum cum.', 0.66, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(58, 88, 'Laudantium impedit pariatur neque fugit ut.', 'Nulla aut veniam corrupti eos id dolores ut.', 1.92, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(59, 89, 'Soluta et consectetur est ipsa quisquam.', 'Consectetur natus et aut rem dolores voluptas beatae ut.', 1.00, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(60, 46, 'Corporis nihil magnam qui dignissimos minima minima maxime.', 'Quos laborum voluptatem eos tempore.', 0.17, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(61, 55, 'Sed laborum aspernatur quis officiis accusamus nihil perferendis.', 'Molestiae id ab consequatur harum similique nemo.', 1.73, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(62, 8, 'Ea consequatur magni temporibus ex autem illum officiis.', 'Non quisquam quia vero voluptatem et veniam.', 1.42, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(63, 85, 'Ut modi qui reiciendis consequatur.', 'Incidunt quas et totam quis voluptas molestiae.', 0.16, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(64, 64, 'Iusto velit voluptates incidunt rerum iure soluta.', 'Ut perferendis vero et aliquam dolorem amet et cumque.', 0.07, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(65, 21, 'In repudiandae iure facilis autem veritatis.', 'Est quibusdam rerum ut exercitationem libero aperiam est.', 1.41, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(66, 13, 'Non atque quo similique est et omnis dolor.', 'Aperiam ipsa itaque soluta aspernatur et eveniet quos.', 1.91, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(67, 89, 'Aspernatur id et dicta molestiae qui ab.', 'Aut sit consequatur minima rerum qui dolorum distinctio.', 0.29, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(68, 90, 'Eveniet blanditiis aspernatur consequatur explicabo.', 'Quasi iusto rerum veritatis consequatur sit alias.', 0.09, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(69, 79, 'Voluptas sit reiciendis nobis.', 'Tenetur illum qui ullam illum quia.', 0.74, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(70, 85, 'Omnis voluptatum enim mollitia sunt.', 'Voluptates quos molestiae dolor sapiente accusamus ut quos.', 0.81, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(71, 48, 'Possimus vel odio et quidem minima quaerat.', 'Alias quasi eos mollitia qui eveniet debitis placeat.', 0.72, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(72, 41, 'Consectetur consequuntur laboriosam non quidem non adipisci.', 'Eos dolores sunt veritatis deserunt et optio.', 1.59, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(73, 80, 'Dolorem est voluptatem saepe assumenda voluptate.', 'Fugit ut officiis qui ducimus magnam sequi.', 1.80, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(74, 51, 'Natus accusamus nostrum ipsum.', 'Omnis et quia rerum ea aliquam quae.', 1.61, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(75, 21, 'Quos culpa soluta corporis consequatur eveniet sint ducimus corrupti.', 'Perferendis inventore dolor cum.', 1.78, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(76, 65, 'Cum et et consectetur.', 'Sint voluptatibus ullam quibusdam est.', 1.05, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(77, 3, 'Fugiat optio error dolorem quia.', 'Id veniam velit itaque molestias.', 1.31, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(78, 57, 'Facere dolor nobis est sit perferendis.', 'Ea sed consequuntur consequatur libero sequi et.', 0.47, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(79, 21, 'Labore occaecati consequatur laudantium quos labore soluta.', 'Doloribus porro laboriosam quibusdam et veniam aut voluptatem.', 0.88, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(80, 60, 'Aut commodi vel temporibus beatae provident illo voluptas.', 'Fugit velit consectetur amet rerum.', 1.84, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(81, 66, 'Hic nihil consequatur dolor recusandae et pariatur.', 'Similique omnis quibusdam ab qui deleniti et ut temporibus.', 0.97, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(82, 36, 'Numquam officia ut dolorem aliquam.', 'Voluptatibus repellendus officiis aliquam vero aut.', 0.61, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(83, 94, 'Nulla cumque quia modi sint est adipisci.', 'Aut in voluptatum recusandae tempora qui voluptatem qui.', 1.37, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(84, 83, 'Placeat assumenda consequatur voluptatem dignissimos atque corporis qui.', 'Voluptate reiciendis voluptatem ut sit assumenda aperiam.', 0.69, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(85, 98, 'Reiciendis omnis aperiam rem iusto tempore sapiente officiis autem.', 'Et id non vero voluptatem qui.', 1.78, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(86, 74, 'Id sit ducimus cum earum est iure.', 'Ea amet labore enim voluptas voluptatem.', 1.17, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(87, 22, 'Excepturi odio dolores unde corporis fuga velit.', 'Veritatis hic culpa eaque ex labore sint.', 0.94, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(88, 27, 'Explicabo vel qui porro minima.', 'Odit quisquam quia esse at.', 1.27, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(89, 82, 'Voluptatum minus et impedit totam excepturi quaerat maiores nobis.', 'Repudiandae tenetur omnis rem non facere optio accusamus tempora.', 1.89, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(90, 1, 'Molestiae nisi odio fuga quidem et consectetur est sint.', 'Aliquam earum omnis hic blanditiis sunt qui.', 1.41, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(91, 20, 'Maxime ut et et voluptate magnam ipsum.', 'Voluptas est est cumque autem.', 0.59, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(92, 94, 'Delectus numquam repellendus necessitatibus velit quis ipsum.', 'Soluta ea nisi error ipsam asperiores cupiditate porro.', 1.81, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(93, 47, 'Harum consequuntur dolorum nihil impedit id.', 'Voluptas id earum blanditiis dolorem.', 1.40, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(94, 24, 'Molestiae sed aut quis porro eveniet veniam.', 'Neque illo est dolorem iure et quidem aut.', 1.81, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(95, 29, 'In nihil necessitatibus maxime sunt voluptas similique.', 'Et et quae qui modi qui voluptas.', 0.94, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(96, 89, 'Saepe soluta voluptatem quisquam et aut eaque sequi.', 'Quia unde qui eligendi enim.', 0.69, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(97, 7, 'Perspiciatis praesentium dolores vitae.', 'Assumenda quisquam velit totam possimus.', 1.77, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(98, 78, 'Doloremque a laborum repellat qui quaerat.', 'Ut unde ut et sunt quas tempore.', 1.85, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(99, 74, 'Voluptates aut ex omnis eaque.', 'Voluptas dolores in voluptatem fuga dignissimos.', 1.18, '2024-04-04 07:02:29', '2024-04-04 07:02:29'),
(100, 9, 'Rem doloremque beatae animi debitis quis voluptatum aut.', 'Et sint suscipit aut quo labore.', 1.94, '2024-04-04 07:02:29', '2024-04-04 07:02:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Materia` int(10) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `competencia` varchar(255) NOT NULL,
  `calificacionMaxima` int(11) NOT NULL,
  `calificacionMinima` int(11) NOT NULL,
  `porcentajeCalificacionFinal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`identificador`, `identificador_Materia`, `numero`, `competencia`, `calificacionMaxima`, `calificacionMinima`, `porcentajeCalificacionFinal`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Ducimus omnis nam et qui. Sed doloribus ut dolorem qui nobis laudantium. Ea voluptatem minus molestiae placeat quaerat ut facilis aliquid.', 29, 23, 30, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(2, 3, 2, 'Et enim eaque at voluptatum amet aliquam. Distinctio odit culpa consequatur voluptas aperiam qui. Ad velit cum consectetur et adipisci qui. Tenetur expedita non rem necessitatibus saepe.', 16, 13, 20, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(3, 6, 5, 'Labore ducimus velit fugiat voluptatibus amet. Voluptas deleniti sunt quis cumque animi fuga. Explicabo error voluptates ipsa architecto culpa voluptas perferendis.', 25, 20, 44, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(4, 6, 2, 'Laborum quod quas sunt dolores earum voluptate. Pariatur omnis et id aut in deleniti. Debitis aliquid ut laborum aperiam. Sunt ut maiores nesciunt excepturi expedita.', 15, 12, 45, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(5, 9, 1, 'In veritatis eum odio exercitationem. Sequi maxime vero maxime ullam ea. Voluptas dignissimos minima maxime nulla velit enim. Quia neque autem dolores nulla nulla repellat.', 12, 10, 21, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(6, 4, 4, 'Maxime qui amet ut nostrum est dolore consequuntur. Minus corporis totam consectetur id.', 13, 10, 43, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(7, 8, 4, 'Officiis ipsa molestiae quis accusamus sit sapiente sapiente officia. Qui non natus ea enim. Id et cupiditate quidem est quam et.', 22, 18, 49, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(8, 1, 2, 'Architecto architecto quae commodi nihil odit. Sed voluptatem dignissimos sed aperiam adipisci. Illum eaque architecto sit sit est. Quia odit dolor molestiae culpa consequuntur.', 27, 22, 22, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(9, 4, 5, 'Iusto porro debitis provident est nesciunt. Est impedit nemo aspernatur est laboriosam optio ducimus. Praesentium distinctio ullam eos et.', 11, 9, 32, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(10, 6, 3, 'Architecto veniam maxime molestias ab itaque. Nihil perspiciatis eum molestiae reprehenderit. Non reiciendis delectus aliquam dolorem officiis odio voluptatem.', 12, 10, 28, '2024-04-03 09:10:21', '2024-04-03 09:10:21'),
(11, 4, 4, 'Consequatur ut ut laboriosam blanditiis sunt atque quae. Quas nesciunt fuga incidunt. Velit consectetur distinctio ea.', 29, 23, 21, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(12, 4, 1, 'Temporibus molestiae ipsam sed ex debitis aspernatur. Nobis ab illo ducimus. Nam sunt voluptatem architecto.', 21, 17, 38, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(13, 2, 5, 'Repellat repudiandae corporis nobis. Aspernatur molestiae eaque saepe reiciendis natus eius. Nam aut iusto quis ipsa dolorem et possimus.', 25, 20, 24, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(14, 2, 2, 'Quia sed cupiditate et natus officiis sit. Voluptates eum maxime omnis omnis in ab velit. Sint dolorem facere similique dolor velit vel.', 16, 13, 49, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(15, 6, 2, 'Ipsam debitis id recusandae doloribus odit aliquid. Sunt et dolore dolores quia autem aut. Sunt ut beatae porro voluptate laudantium.', 19, 15, 46, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(16, 3, 3, 'Id dicta quia sit repudiandae autem maxime ducimus. Blanditiis doloribus consequatur veniam dolor sit non aut. Sed nulla et saepe deserunt eum. Voluptates repellendus iure fugit qui.', 24, 19, 20, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(17, 1, 4, 'Sint quis aperiam accusantium cum laudantium aut. Illo minima omnis sunt quibusdam quos labore. Officiis fuga molestias ipsum eum.', 18, 14, 32, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(18, 10, 5, 'Ea magnam aliquid quo est ipsum. Beatae reiciendis sint quis voluptatem. Quo et quaerat accusamus architecto illo. Autem qui nam adipisci praesentium accusamus eius.', 19, 15, 36, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(19, 1, 2, 'Voluptatem commodi aut occaecati saepe ex explicabo quaerat voluptatem. Ea commodi voluptatibus tenetur vero. Aut molestias sunt animi voluptatum. Officiis officia autem dolor ullam.', 22, 18, 48, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(20, 7, 1, 'Omnis incidunt assumenda facere velit qui. Natus atque ipsa dolorum dolorem dignissimos. Suscipit et optio adipisci ut et et et et. Ipsum eaque dolor voluptatem sunt et voluptatem expedita.', 14, 11, 45, '2024-04-03 09:11:07', '2024-04-03 09:11:07'),
(21, 5, 2, 'Voluptas id quis et. Neque eveniet est sapiente blanditiis amet. Nisi esse magnam aut aut nisi sed officia. Quia sunt magnam exercitationem non blanditiis.', 27, 22, 21, '2024-04-03 09:11:08', '2024-04-03 09:11:08'),
(22, 8, 2, 'Tenetur aliquam eum deleniti nostrum ipsam dicta id. Aut aut deserunt aut eos.', 25, 20, 30, '2024-04-03 09:11:08', '2024-04-03 09:11:08'),
(23, 2, 3, 'Dolores dolores eos molestiae consequatur esse voluptatem. Dolores sed tempora itaque aliquam corporis. Qui dolorum neque aut sit excepturi asperiores. Corporis magnam fugiat non.', 21, 17, 47, '2024-04-03 09:11:08', '2024-04-03 09:11:08'),
(24, 4, 1, 'Non sapiente explicabo pariatur porro maxime beatae. Inventore beatae libero in dolor eos magni. Aperiam consectetur quae sint ut voluptatem ut.', 17, 14, 44, '2024-04-03 09:11:08', '2024-04-03 09:11:08'),
(25, 4, 3, 'Hic vel rerum id repellendus omnis esse repellendus et. Consequatur magni id animi et officiis. Odio commodi et aut laudantium.', 24, 19, 45, '2024-04-03 09:11:08', '2024-04-03 09:11:08'),
(26, 3, 4, 'Aliquid eligendi tempore reprehenderit quidem. Recusandae quisquam earum et ut et. Iusto sunt nemo debitis magni ex.', 11, 9, 30, '2024-04-03 09:11:09', '2024-04-03 09:11:09'),
(27, 5, 5, 'Ea sed molestiae occaecati qui labore eaque. Illum totam architecto distinctio ad fugiat modi. Est sit quidem est autem eligendi incidunt.', 16, 13, 24, '2024-04-03 09:11:09', '2024-04-03 09:11:09'),
(28, 4, 3, 'Sint quia reprehenderit ut nam ducimus qui optio eligendi. Saepe maxime quod vel quaerat cumque. Qui non eaque sint distinctio molestias id eligendi. Unde quidem dicta eveniet eos ut expedita.', 23, 18, 48, '2024-04-03 09:11:09', '2024-04-03 09:11:09'),
(29, 2, 2, 'Est saepe exercitationem est. Laudantium ducimus quis facere molestiae beatae dolorum. Facilis labore optio placeat eos. Molestiae adipisci laudantium molestias molestias non inventore qui.', 14, 11, 29, '2024-04-03 09:11:09', '2024-04-03 09:11:09'),
(30, 7, 3, 'Voluptas et voluptatem magnam minus numquam id perspiciatis. Dicta amet vero totam nisi itaque tempore. Modi amet consequuntur iusto sed vitae sunt sed.', 10, 8, 24, '2024-04-03 09:11:09', '2024-04-03 09:11:09'),
(31, 80, 2, 'Sunt odit praesentium numquam modi. Aperiam sunt vel deleniti ad officia. Unde dolorem maiores distinctio adipisci quia assumenda. Occaecati amet et dolores expedita atque. Mollitia quis tenetur et.', 24, 19, 45, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(32, 82, 2, 'Aut praesentium quia praesentium quaerat magnam vitae. Officia fugiat quaerat consequuntur enim rerum qui autem. Velit corrupti fugit nemo molestiae eum.', 13, 10, 22, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(33, 29, 4, 'Officiis totam ipsum vel repudiandae saepe. Est at minima non animi quod quae. Autem sint aut qui molestias expedita expedita nihil. Architecto reiciendis enim delectus natus.', 16, 13, 23, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(34, 54, 4, 'Ut repellendus beatae soluta quas molestias. Omnis earum ut beatae. Perferendis velit repudiandae praesentium incidunt et qui.', 28, 22, 35, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(35, 39, 1, 'Aut nulla dolores culpa soluta provident expedita non commodi. Asperiores earum neque quibusdam aperiam enim a aliquam.', 11, 9, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(36, 93, 5, 'Et rerum ratione minus dolores excepturi. Sint nobis doloribus error ipsam. Rerum aut vitae eos sunt vero tenetur qui. Veniam sint cumque ratione aut.', 21, 17, 40, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(37, 105, 1, 'Eligendi harum sed ducimus qui iste. Aut ab accusantium nihil debitis explicabo deleniti nemo. Blanditiis ipsam et non repudiandae.', 15, 12, 27, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(38, 30, 1, 'Nihil non voluptatem voluptatum similique adipisci vel. Aut reprehenderit sint consectetur et at. Ea placeat omnis et necessitatibus consequatur provident aliquam eveniet.', 22, 18, 29, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(39, 42, 5, 'Reiciendis sunt et sunt sit. Velit voluptatum sit necessitatibus non voluptatem. Consequatur dignissimos quo odio sed voluptatibus eaque et veritatis. Optio at consequatur dolorum culpa.', 18, 14, 35, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(40, 48, 2, 'At quam explicabo eius id explicabo voluptates. Occaecati minima magnam illum ab omnis ipsam. Sit reprehenderit qui quae aut maiores vel.', 17, 14, 25, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(41, 62, 2, 'A natus cumque tenetur quam. Nisi inventore magnam facere nisi facilis ut molestiae. Explicabo quaerat error amet vitae molestiae quos nulla. Est quibusdam et quo necessitatibus.', 25, 20, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(42, 106, 1, 'Quam sed dolore ut eius nemo velit. Ratione dolorum impedit beatae. Aut nobis optio qui illum saepe. Praesentium sunt assumenda beatae qui laudantium quaerat quos.', 22, 18, 23, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(43, 81, 3, 'Ipsum mollitia maxime quia enim non similique magni. Dicta qui autem unde voluptatum. Vitae ut voluptas quia.', 24, 19, 24, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(44, 100, 1, 'Et incidunt aliquid modi non velit. Ipsum et maxime sint est est. Non quibusdam et maiores est quae.', 24, 19, 28, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(45, 82, 2, 'Error ex quis fuga architecto commodi expedita et. Quidem omnis dicta nisi. Numquam iure consequatur recusandae aut aut.', 25, 20, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(46, 34, 4, 'Nulla eum laborum distinctio autem fuga dolores nisi suscipit. Aspernatur in eius in. Dicta tenetur porro magni tempora. Voluptatem enim quidem dolorum aut.', 18, 14, 34, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(47, 49, 2, 'Dolorem minus aut iure in qui reprehenderit. Et inventore dicta fugit quod officiis. Pariatur provident iure quis quia eaque commodi. Et adipisci aut ipsam sit aut nihil exercitationem.', 10, 8, 42, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(48, 16, 1, 'Aut debitis itaque saepe et iusto maiores voluptatem. Saepe ea corporis est aut voluptatem maiores fugiat. Cumque suscipit excepturi tempore harum ea. Quia quae amet a quia perferendis magni qui.', 11, 9, 37, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(49, 39, 3, 'Architecto officiis et error. Et sed recusandae cum et voluptatem. Maiores neque minus doloribus molestiae. Voluptas et perspiciatis ut et non.', 28, 22, 48, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(50, 58, 4, 'Eveniet deleniti voluptas quas modi excepturi. Accusamus cupiditate temporibus animi odit sunt. Odit laborum ipsam nisi enim aut qui quia. Incidunt odit aut et cum provident deleniti.', 16, 13, 30, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(51, 62, 3, 'Qui repellendus dolore distinctio et modi cupiditate qui. Dolore assumenda quidem blanditiis incidunt quia nemo. Qui nihil incidunt voluptas dignissimos. Eveniet qui nihil et ea voluptates ea.', 29, 23, 28, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(52, 110, 2, 'Dicta sit ad iste incidunt nulla aliquam. Dignissimos ut maxime beatae aut aut. Qui fugit culpa labore suscipit voluptas. Mollitia et labore ipsam aperiam maiores.', 24, 19, 33, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(53, 103, 4, 'Id cumque placeat quisquam quaerat quia id. Sequi veritatis mollitia accusantium cupiditate et. Ea et maxime et.', 30, 24, 20, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(54, 104, 5, 'Et explicabo blanditiis esse quisquam dolore. Autem rerum a dicta illo. Aliquam recusandae asperiores accusamus. Odit cum expedita ut est ducimus officiis omnis.', 11, 9, 49, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(55, 35, 2, 'Nihil ipsam dolore et doloremque quo odit facilis. Sapiente sit cum et. Inventore quia sint ex reiciendis et. Et aut nostrum aliquid quisquam quis autem minus.', 13, 10, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(56, 81, 1, 'Omnis vel assumenda culpa autem. Velit consectetur praesentium harum repellat. Sunt corporis consequatur fugiat sit unde sunt. Iusto non ratione ipsa maxime.', 26, 21, 40, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(57, 83, 2, 'Repudiandae aut quisquam impedit ut. Sit eligendi rerum est quo. Voluptatem eligendi ipsum quia in aut unde ut optio. Ducimus rerum impedit et expedita velit et.', 15, 12, 40, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(58, 99, 2, 'Ducimus inventore quisquam illum ut ut maiores. Quia exercitationem et esse provident. Explicabo est placeat ea. Quis repellat aut sint.', 23, 18, 38, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(59, 23, 1, 'Sit itaque autem voluptatem quos eaque dolores. Eos sit repellendus incidunt eum ducimus. Ea vel rerum quas ipsam. Quia velit autem excepturi praesentium et.', 15, 12, 30, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(60, 33, 2, 'Saepe nihil nobis consectetur facere qui explicabo animi. Officia quaerat quia in. Dolor nam rem nulla minima.', 12, 10, 32, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(61, 82, 5, 'Repellat distinctio autem corporis ipsam ad. Sint natus et odit deserunt.', 25, 20, 24, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(62, 55, 1, 'Nesciunt esse placeat suscipit ut dolores. Velit ut laudantium quasi in.', 24, 19, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(63, 46, 5, 'Maiores blanditiis doloribus est vel eligendi unde. Occaecati magni et mollitia deleniti et ea. Est debitis itaque corrupti.', 18, 14, 45, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(64, 29, 4, 'Optio libero incidunt ut dolores fugiat est qui. Velit natus autem sed dolores. Itaque ad excepturi repellendus vitae dolorem ad. Quia consequatur sed aut accusantium reprehenderit.', 10, 8, 20, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(65, 18, 2, 'Laudantium accusamus dolor laudantium id ut voluptas aut. Totam sunt quo at fugit. Ratione dolorum esse voluptatum.', 29, 23, 41, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(66, 32, 5, 'Est voluptatem dolorem sit impedit. Velit deserunt hic at voluptas. Laboriosam minus facilis ut omnis et.', 22, 18, 28, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(67, 91, 4, 'Laboriosam explicabo sapiente laboriosam odio ut. Ad autem vitae eos est iusto tempore sed. Ut magnam quo porro cum et magnam exercitationem. Quibusdam quis nostrum ipsam quia.', 22, 18, 36, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(68, 41, 1, 'At non sit dolores modi. Voluptas rerum voluptas inventore voluptate aut voluptas. Vel officia enim labore quis et minus et minus.', 14, 11, 47, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(69, 46, 2, 'Laudantium dicta sed commodi ea natus. Aspernatur distinctio magnam eum possimus debitis.', 12, 10, 40, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(70, 95, 4, 'Architecto ratione sint dignissimos porro alias ullam. Non atque animi perferendis illo sint quia sint.', 10, 8, 26, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(71, 27, 5, 'Voluptas molestias quasi voluptatibus. Et consequatur et amet voluptatem.', 25, 20, 31, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(72, 64, 4, 'Eos omnis dolor maxime. Laborum quia quia recusandae hic necessitatibus. Deserunt sint omnis ut provident cumque dolores. Qui qui nesciunt autem.', 29, 23, 21, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(73, 57, 3, 'Ea aut consectetur enim sed atque quisquam. Vel doloremque sint animi voluptatem et nisi. Unde vel autem in est enim et rerum corporis. Delectus minus omnis sunt aut et magnam veritatis est.', 12, 10, 32, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(74, 17, 4, 'Voluptate est ad dolores sit libero dolor dolores. Aut qui quis rerum.', 13, 10, 46, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(75, 37, 1, 'Est excepturi illo dolorem nam veniam eum ea. Unde cupiditate ut ut magni sit sequi. Quam reprehenderit aliquam eius voluptas. Voluptatum commodi sapiente error voluptas a officia fugit.', 28, 22, 47, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(76, 33, 5, 'Quae nulla dolorem aut aliquam corporis. Itaque ut ea officia natus dicta quis ratione. Nisi laudantium sit commodi quis eos sit.', 10, 8, 28, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(77, 30, 5, 'Accusamus consequatur maiores dolores. Ut quas cum et at cum ipsam qui. Iusto voluptas dolores mollitia nemo aut. Eaque maiores vitae beatae magni dolor ea at.', 13, 10, 27, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(78, 50, 3, 'Quis est quidem voluptatum est temporibus. Dolores quia quos sint culpa id modi id autem. Dicta et voluptas voluptas nostrum sed quo amet sit. Minus earum dignissimos quidem architecto.', 25, 20, 46, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(79, 69, 5, 'Ullam aut ullam et est voluptatem. Incidunt fugiat maxime sed commodi labore. Cupiditate nihil non maxime et et vel culpa nulla. Iste amet asperiores distinctio qui.', 24, 19, 44, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(80, 22, 4, 'Vero harum ratione et. Accusantium quia totam numquam tempora ut. Iure dolorem aut et pariatur. Sed ad repellendus enim occaecati est. Molestiae ut aut non fuga perspiciatis qui iste voluptatem.', 28, 22, 29, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(81, 81, 2, 'Molestias et ea natus id laborum dignissimos ipsum. Tenetur dolorem exercitationem explicabo est nihil sit. Illo eius veritatis voluptatem alias.', 14, 11, 20, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(82, 105, 5, 'Voluptate deleniti sapiente non. Ducimus aut odit distinctio nesciunt. Et soluta quia et.', 18, 14, 23, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(83, 107, 4, 'Cum ab unde aperiam illo quo error non. Veniam sed sed accusantium deserunt. Et totam est fugit quaerat. Ea modi culpa qui mollitia. Facilis velit autem non vel illum.', 24, 19, 31, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(84, 98, 3, 'Qui dolor quasi harum ex ducimus. Et animi molestiae debitis. Ipsum voluptas ea cumque maxime animi laboriosam.', 29, 23, 20, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(85, 80, 1, 'Ut facere illo fugiat sunt ea voluptatem. Aut quia esse cupiditate tenetur recusandae saepe dolores est. Quibusdam mollitia qui velit voluptate sunt magni.', 30, 24, 31, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(86, 106, 4, 'Veniam accusantium voluptate inventore repellendus omnis. Ut autem possimus quae rerum voluptatem sint tempore. Quia non reiciendis aliquam voluptatem qui voluptatum soluta rem.', 10, 8, 32, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(87, 14, 2, 'Ea non repudiandae incidunt iusto est sit non facilis. Velit odio neque earum magnam sunt sapiente esse. Quod ut libero magni aspernatur ut necessitatibus. Tenetur maxime nihil quo iste possimus vel.', 25, 20, 42, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(88, 93, 2, 'Expedita magni qui consectetur omnis ex illum. Debitis quaerat temporibus facere perferendis sint. Voluptatem necessitatibus aut molestiae doloribus autem.', 17, 14, 47, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(89, 93, 2, 'Non placeat a rerum et. Aperiam maxime veritatis minus voluptatum optio dolore. Tenetur rerum eum quaerat corporis et.', 18, 14, 20, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(90, 98, 2, 'Quas exercitationem ab sed dolorem eum. Eius aut molestiae omnis et porro. Tenetur voluptatibus nobis expedita minima deleniti.', 15, 12, 25, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(91, 107, 5, 'Aut aut ab aut autem vero dolores voluptas. Cupiditate non enim ut voluptatibus esse aspernatur. Deleniti saepe necessitatibus temporibus earum. Magni non quos dolor.', 30, 24, 45, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(92, 101, 5, 'Sit et possimus minima minus sed atque. Rerum nemo autem rem non. Autem qui unde non voluptatem eum et et nulla. Quia ut dolorum doloribus iusto accusamus doloremque.', 22, 18, 42, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(93, 25, 1, 'Cum qui quisquam eaque pariatur et. Quam animi numquam non voluptatem harum magni illo. Non aliquam aspernatur unde ut id laborum. Quas maxime molestias deserunt et nulla placeat non.', 27, 22, 46, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(94, 11, 3, 'Assumenda facere saepe aliquid incidunt cumque velit. Voluptatibus eum et dolores neque eum. Culpa veniam totam voluptatum vero. Doloremque iure ut deleniti quia.', 20, 16, 40, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(95, 12, 3, 'Sit eum laboriosam omnis est. Quae officiis maxime rerum soluta est quo repellendus. Vero et nam eaque consequatur. Numquam molestias et aut eos sint.', 30, 24, 43, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(96, 5, 2, 'Neque totam rerum nemo in. Sapiente et soluta cumque laborum amet repellat. Officia provident possimus qui incidunt voluptatem veniam deserunt sapiente. Ut non officiis quia ut autem expedita est.', 10, 8, 41, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(97, 22, 3, 'Deleniti natus est aut magnam omnis expedita est ut. Et ipsa expedita qui excepturi consequatur laboriosam praesentium. Doloribus voluptatum quisquam sunt perspiciatis aliquam ratione.', 26, 21, 49, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(98, 100, 1, 'Asperiores veritatis perferendis sunt. Voluptates deleniti itaque dolor ea. Dolor accusamus harum qui.', 29, 23, 23, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(99, 61, 3, 'Et nulla alias repellendus dolore ipsa quas. Harum id et eligendi accusamus. Perferendis dolor aut quam. Nihil quam aut fugiat labore voluptates quam odit nam.', 30, 24, 21, '2024-04-04 07:02:12', '2024-04-04 07:02:12'),
(100, 50, 3, 'Minus qui in similique ut quos doloribus rerum soluta. Sed quo id placeat. Corrupti blanditiis dolorem ducimus nam tempore doloribus laudantium fugit.', 16, 13, 48, '2024-04-04 07:02:12', '2024-04-04 07:02:12');

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
(1, 'Ana María Malave', 'anguiano.natalia@example.com', '2024-04-03 09:07:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oXaeNKMhzh', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(2, 'Lic. Juan Caro', 'czavala@example.net', '2024-04-03 09:07:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gcpuD5PqTl', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(3, 'Beatriz Ramos', 'yolanda.cortes@example.org', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YnHhabsKCG', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(4, 'Sr. Arnau Cortez Tercero', 'tdominquez@example.com', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'exr732oQVF', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(5, 'Pedro Soto', 'herrera.rocio@example.org', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MEUG40woMh', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(6, 'Helena Prado', 'rnavas@example.com', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'grRAmGlXbL', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(7, 'Fátima Verduzco Hijo', 'mireia.villar@example.net', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kpKCZWfgSH', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(8, 'Dña Ariadna Salinas Hijo', 'diego.gil@example.net', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RzfnMf4LhN', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(9, 'Dr. Gabriel Regalado Hijo', 'montes.valeria@example.org', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MrZwx2NKCg', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(10, 'Daniela Cazares', 'ivalles@example.net', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'grApi6zbgJ', '2024-04-03 09:07:55', '2024-04-03 09:07:55'),
(11, 'Test User', 'test@example.com', '2024-04-03 09:07:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lNRav8Sqmu', '2024-04-03 09:07:55', '2024-04-03 09:07:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`identificador`, `usuario`, `contrasenia`, `foto`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'aaron70', '=jQ8~mo#Wz', 'https://via.placeholder.com/640x480.png/000066?text=eum', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(2, 'fcastro', 'IXu>d3ZEV.8O6}>v*N!', 'https://via.placeholder.com/640x480.png/00bb11?text=corrupti', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(3, 'nora.galvez', '{ZZu/OHcYI{l', 'https://via.placeholder.com/640x480.png/003388?text=assumenda', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(4, 'izan62', '(I-Yi+Hy/b:7IB', 'https://via.placeholder.com/640x480.png/00aaaa?text=similique', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(5, 'mrazo', '|o@gYEA)p%', 'https://via.placeholder.com/640x480.png/0000cc?text=iste', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(6, 'javier67', '#4:JNSI0oiSk@AO1kc', 'https://via.placeholder.com/640x480.png/002255?text=expedita', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(7, 'lucas.hinojosa', '5I-}1Iw:D1?I<', 'https://via.placeholder.com/640x480.png/00bb77?text=veniam', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(8, 'manuel.luque', 'y\'u\'!D_~Eq%rNM+$o{t]', 'https://via.placeholder.com/640x480.png/00ddee?text=voluptas', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(9, 'uparra', 'wePV<d+`17J<$9~', 'https://via.placeholder.com/640x480.png/007799?text=et', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(10, 'velasco.oliver', 'b{231]', 'https://via.placeholder.com/640x480.png/0044bb?text=nemo', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(11, 'luna.gurule', 'l5{kl_7', 'https://via.placeholder.com/640x480.png/00cc99?text=ab', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(12, 'vesquibel', 'f@x5Y\'c*Rw$$mp4', 'https://via.placeholder.com/640x480.png/00bb11?text=quam', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(13, 'hernando.isaac', 'j#!+zM', 'https://via.placeholder.com/640x480.png/007722?text=quisquam', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(14, 'rtrujillo', ']mKJZm|MJQBvz', 'https://via.placeholder.com/640x480.png/00aa77?text=repudiandae', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(15, 'juarez.eric', '1+(x]\'ALV8\\w', 'https://via.placeholder.com/640x480.png/00ddbb?text=vitae', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(16, 'ainara00', 'v)6O{o#rA.Dm', 'https://via.placeholder.com/640x480.png/003355?text=iste', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(17, 'dario.marin', '<\']w+;^|a}]-W', 'https://via.placeholder.com/640x480.png/00bb77?text=quibusdam', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(18, 'rsantos', 'w}oo@\\wm-$C!!Tys\'UJR', 'https://via.placeholder.com/640x480.png/0077bb?text=ratione', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(19, 'bruno55', 'FN~ATd\'', 'https://via.placeholder.com/640x480.png/0022ee?text=velit', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(20, 'daniel40', 'l^jXiEF.sl!@*', 'https://via.placeholder.com/640x480.png/00bbdd?text=aliquid', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(21, 'diego18', 'eORnF>q4Gf%O#Z^1', 'https://via.placeholder.com/640x480.png/000088?text=ut', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(22, 'beatriz07', '\"/ThoayE^%=4U4A%Vc-', 'https://via.placeholder.com/640x480.png/000077?text=amet', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(23, 'itrejo', 'iIby7Oh8wr\'aJ5n%', 'https://via.placeholder.com/640x480.png/0022aa?text=culpa', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(24, 'luis75', 'F=&32FQP7nf\'ABTd=', 'https://via.placeholder.com/640x480.png/00ee77?text=quibusdam', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(25, 'solis.nadia', 'FIs^S#W-`dp-i@Y{_N', 'https://via.placeholder.com/640x480.png/00aa77?text=deleniti', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(26, 'leire.jiminez', 'c-,HJz-pY/^T;5', 'https://via.placeholder.com/640x480.png/00aa33?text=voluptate', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(27, 'olga.raya', 'ad06J<t`T]T]j!A5{', 'https://via.placeholder.com/640x480.png/002233?text=consectetur', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(28, 'krosario', 'lZ;I_)I^<K:|+x`KK#>', 'https://via.placeholder.com/640x480.png/006600?text=cumque', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(29, 'nicolas.mata', 'N2zCGYnZSD+@kl', 'https://via.placeholder.com/640x480.png/00ffbb?text=aut', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(30, 'esoriano', 'i[\"xeY', 'https://via.placeholder.com/640x480.png/0044ee?text=expedita', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(31, 'irene50', 'dMKa&?Y\\<Y,=UT89[*&', 'https://via.placeholder.com/640x480.png/00ee44?text=aspernatur', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(32, 'pmolina', 'QLS8R%y?#sg@\"Ej{Yb\'', 'https://via.placeholder.com/640x480.png/00aa44?text=rerum', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(33, 'espinoza.mariacarmen', 'bB_5WaP<,^49_o[E', 'https://via.placeholder.com/640x480.png/002277?text=voluptatum', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(34, 'malak.fernandez', '$8O?tXNQVYff', 'https://via.placeholder.com/640x480.png/006699?text=rerum', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(35, 'eric.robles', 'o&\'yC?P**', 'https://via.placeholder.com/640x480.png/00ee88?text=laborum', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(36, 'miguel.perales', 'KTA8xRiO5CmW#pc?2xf', 'https://via.placeholder.com/640x480.png/00aa77?text=vel', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(37, 'gnavarro', 'v6\\iK76^(', 'https://via.placeholder.com/640x480.png/00ffcc?text=repudiandae', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(38, 'ocampo.ariadna', 'ce4\\Gc2>H4=*(', 'https://via.placeholder.com/640x480.png/0044ee?text=repudiandae', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(39, 'gabriela17', '/`a5?N;W[xVId:/R9~x', 'https://via.placeholder.com/640x480.png/00cccc?text=voluptates', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(40, 'cesar65', '/x_GmpV*AS?TT6', 'https://via.placeholder.com/640x480.png/00aaee?text=minima', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(41, 'manuela01', '\'-5aC3}G;', 'https://via.placeholder.com/640x480.png/004400?text=accusantium', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(42, 'mariadolores73', 'J2uc9kVYp;0G;(tc)', 'https://via.placeholder.com/640x480.png/00dd33?text=odio', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(43, 'joel00', 'znvN\\:Y', 'https://via.placeholder.com/640x480.png/003322?text=nostrum', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(44, 'inmaculada46', 'L4k8MU=Y7U(J2dCS', 'https://via.placeholder.com/640x480.png/005544?text=sed', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(45, 'gbaca', ')BZfa{7', 'https://via.placeholder.com/640x480.png/007744?text=harum', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(46, 'alberto.rosas', 'crAxHy', 'https://via.placeholder.com/640x480.png/003333?text=ipsa', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(47, 'guajardo.rodrigo', 'UC=1!?OW-P18/GEO{A', 'https://via.placeholder.com/640x480.png/00ffff?text=placeat', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(48, 'aitana50', ',zv?ML}', 'https://via.placeholder.com/640x480.png/0088aa?text=deserunt', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(49, 'naranjo.guillem', 'Sv~MF^UKFB|5CbS)', 'https://via.placeholder.com/640x480.png/009955?text=et', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(50, 'zcaro', 'GU-ka]Doz-ml^4`#8a', 'https://via.placeholder.com/640x480.png/00ffcc?text=doloremque', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(51, 'inmaculada.camarillo', '3@1&_~', 'https://via.placeholder.com/640x480.png/0066ff?text=tempore', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(52, 'maria10', ')HG*BY>oWeS..9zq,$k', 'https://via.placeholder.com/640x480.png/005566?text=velit', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(53, 'quintana.antonio', 'J*\"VFS>2[JxMM', 'https://via.placeholder.com/640x480.png/0088aa?text=voluptatem', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(54, 'ines.valles', 'R`w4C>N', 'https://via.placeholder.com/640x480.png/00ff00?text=ipsa', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(55, 'hernandes.gerard', '_0x<P>YFA1i\\X', 'https://via.placeholder.com/640x480.png/003366?text=minima', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(56, 'inmaculada.zayas', 'i7t$\'|GN_/t', 'https://via.placeholder.com/640x480.png/0099ff?text=illum', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(57, 'aitor.barela', 'N#x.1cEbXZ', 'https://via.placeholder.com/640x480.png/0055aa?text=totam', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(58, 'kgalan', '^$`yST8_y', 'https://via.placeholder.com/640x480.png/002222?text=sint', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(59, 'hugo.carrasquillo', '`g*\\i*dJf$q+', 'https://via.placeholder.com/640x480.png/00aaff?text=sint', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(60, 'berta.armenta', '.1TD4aID#d9\\A^', 'https://via.placeholder.com/640x480.png/00ffcc?text=culpa', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(61, 'jimena.meraz', 'XRGCEb8q{]hbw&OMjxP', 'https://via.placeholder.com/640x480.png/006655?text=ducimus', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(62, 'kmolina', 'tp.EPg!3', 'https://via.placeholder.com/640x480.png/006611?text=sed', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(63, 'nolivas', '3VTVi}', 'https://via.placeholder.com/640x480.png/008811?text=dolorem', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(64, 'celia.hidalgo', 'T*QH4aB3;W}2j}', 'https://via.placeholder.com/640x480.png/00cccc?text=est', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(65, 'alonso00', 'u8rlA2bzq]vx', 'https://via.placeholder.com/640x480.png/00bb00?text=veritatis', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(66, 'xfont', 'Yw@@9$TB', 'https://via.placeholder.com/640x480.png/0044dd?text=nihil', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(67, 'qarmijo', 'd^ylv5$N)`6GI', 'https://via.placeholder.com/640x480.png/001155?text=tempora', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(68, 'beatriz08', '-[|k-z#gE', 'https://via.placeholder.com/640x480.png/00bb88?text=voluptas', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(69, 'jesus.marroquin', '[fJJ<U%\\\\6Y,{H', 'https://via.placeholder.com/640x480.png/00ff88?text=error', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(70, 'sandra.orta', 'NcJeRxiM:dBj94', 'https://via.placeholder.com/640x480.png/00eeaa?text=itaque', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(71, 'angeles.giron', '|lo0XeW=', 'https://via.placeholder.com/640x480.png/0033cc?text=labore', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(72, 'jaramillo.enrique', ',`W^Uc>F', 'https://via.placeholder.com/640x480.png/0055ff?text=ut', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(73, 'blanco.pau', 'I+~WY{yY5', 'https://via.placeholder.com/640x480.png/0022cc?text=rerum', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(74, 'jescobedo', 'T]Q8<M.!$c', 'https://via.placeholder.com/640x480.png/002277?text=omnis', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(75, 'nadia24', 'P%Q%;]ln.LY#c', 'https://via.placeholder.com/640x480.png/001155?text=velit', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(76, 'mireia.preciado', '[4F/\"xJf', 'https://via.placeholder.com/640x480.png/001155?text=qui', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(77, 'laura20', '7_\\KjI;B\\@+', 'https://via.placeholder.com/640x480.png/0077aa?text=in', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(78, 'gcastellano', 'y%Mso`aiz', 'https://via.placeholder.com/640x480.png/00aa44?text=nostrum', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(79, 'lucas51', ':8*$!+PSw/G[', 'https://via.placeholder.com/640x480.png/002266?text=ipsam', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(80, 'xsaucedo', '`\'\"EU5KAo[#j[7_q', 'https://via.placeholder.com/640x480.png/002200?text=fuga', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(81, 'sbermejo', '?1cm%~J', 'https://via.placeholder.com/640x480.png/006699?text=ut', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(82, 'franciscojavier20', '*Q#+]y3:Q7\"%f', 'https://via.placeholder.com/640x480.png/00bbbb?text=molestias', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(83, 'lorena41', '&U2]yZH`LZSA', 'https://via.placeholder.com/640x480.png/009900?text=rerum', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(84, 'clozano', 'HTjkQEqzsGfm}5)Ig\\2', 'https://via.placeholder.com/640x480.png/008855?text=aut', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(85, 'blanca18', '%u;+n-Ls@BKQ>', 'https://via.placeholder.com/640x480.png/007744?text=voluptatum', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(86, 'juarez.eva', '%qp?p(,93IEBcB{.#Pf', 'https://via.placeholder.com/640x480.png/002233?text=adipisci', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(87, 'sanchez.lucas', 'X~!d/h_MT<*WR2/\'o', 'https://via.placeholder.com/640x480.png/00bbee?text=qui', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(88, 'nayara80', 'QSiLL;GR}.st', 'https://via.placeholder.com/640x480.png/0077dd?text=ullam', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(89, 'jimenez.fernando', '\'z!YtLhW', 'https://via.placeholder.com/640x480.png/0066ee?text=quo', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(90, 'qortiz', 'WNe7S7', 'https://via.placeholder.com/640x480.png/00cc44?text=molestiae', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(91, 'lorena35', '!t{?C~\"M2_n%d;DT87', 'https://via.placeholder.com/640x480.png/003311?text=dicta', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(92, 'xluna', '(-#PD~{R60j{', 'https://via.placeholder.com/640x480.png/00dd33?text=et', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(93, 'andrea.granado', 'E!pyJ_N<', 'https://via.placeholder.com/640x480.png/0099bb?text=facilis', 'Miércoles', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(94, 'corral.sergio', '6y<P}z+\"5s6`@n!P', 'https://via.placeholder.com/640x480.png/00ddbb?text=laborum', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(95, 'pedro.perales', ',oY\"\\6<v', 'https://via.placeholder.com/640x480.png/00ff44?text=non', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(96, 'grosario', '\"dSavWgQBi', 'https://via.placeholder.com/640x480.png/000066?text=voluptas', 'Jueves', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(97, 'rocha.victor', 'zaG%A&EfdkQZVX~N', 'https://via.placeholder.com/640x480.png/002244?text=tempora', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(98, 'gamez.antonio', 'U^8}yVl^\\\"x', 'https://via.placeholder.com/640x480.png/00cc33?text=vel', 'Lunes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(99, 'canales.salma', 'TfY/iv', 'https://via.placeholder.com/640x480.png/00ee33?text=et', 'Martes', '2024-04-14 23:28:03', '2024-04-14 23:28:03'),
(100, 'mario68', '@g_t1g0k)AG', 'https://via.placeholder.com/640x480.png/002211?text=placeat', 'Viernes', '2024-04-14 23:28:03', '2024-04-14 23:28:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_alumno`
--

CREATE TABLE `usuario_alumno` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Usuario` int(10) UNSIGNED NOT NULL,
  `identificador_Alumno` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_alumno`
--

INSERT INTO `usuario_alumno` (`identificador`, `identificador_Usuario`, `identificador_Alumno`, `created_at`, `updated_at`) VALUES
(1, 75, 49, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(2, 79, 45, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(3, 36, 44, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(4, 59, 94, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(5, 23, 36, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(6, 71, 54, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(7, 61, 72, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(8, 80, 56, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(9, 72, 42, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(10, 95, 1, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(11, 82, 29, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(12, 82, 11, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(13, 2, 24, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(14, 60, 27, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(15, 49, 15, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(16, 79, 52, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(17, 14, 98, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(18, 44, 52, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(19, 43, 81, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(20, 7, 24, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(21, 97, 24, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(22, 42, 8, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(23, 92, 95, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(24, 83, 89, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(25, 20, 30, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(26, 57, 92, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(27, 13, 45, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(28, 40, 96, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(29, 40, 91, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(30, 67, 31, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(31, 55, 72, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(32, 28, 7, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(33, 83, 4, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(34, 75, 10, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(35, 72, 24, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(36, 27, 9, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(37, 82, 69, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(38, 16, 66, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(39, 7, 3, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(40, 89, 70, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(41, 91, 32, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(42, 10, 29, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(43, 12, 3, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(44, 31, 23, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(45, 84, 7, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(46, 53, 56, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(47, 20, 14, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(48, 12, 93, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(49, 30, 86, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(50, 78, 41, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(51, 53, 64, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(52, 18, 92, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(53, 66, 39, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(54, 41, 2, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(55, 88, 12, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(56, 73, 7, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(57, 98, 78, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(58, 58, 74, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(59, 9, 12, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(60, 29, 38, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(61, 10, 83, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(62, 97, 1, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(63, 95, 4, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(64, 60, 7, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(65, 55, 62, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(66, 9, 10, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(67, 36, 8, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(68, 56, 41, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(69, 61, 30, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(70, 98, 52, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(71, 58, 21, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(72, 8, 10, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(73, 95, 77, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(74, 41, 64, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(75, 27, 29, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(76, 80, 65, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(77, 66, 9, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(78, 91, 74, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(79, 47, 6, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(80, 12, 77, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(81, 23, 51, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(82, 47, 70, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(83, 29, 83, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(84, 88, 22, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(85, 85, 21, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(86, 87, 78, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(87, 92, 18, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(88, 26, 76, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(89, 39, 87, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(90, 11, 9, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(91, 25, 9, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(92, 34, 24, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(93, 49, 75, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(94, 98, 54, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(95, 38, 56, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(96, 24, 93, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(97, 49, 40, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(98, 47, 75, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(99, 18, 54, '2024-04-14 23:40:49', '2024-04-14 23:40:49'),
(100, 23, 52, '2024-04-14 23:40:49', '2024-04-14 23:40:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_docente`
--

CREATE TABLE `usuario_docente` (
  `identificador` int(10) UNSIGNED NOT NULL,
  `identificador_Usuario` int(10) UNSIGNED NOT NULL,
  `identificador_Docente` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_docente`
--

INSERT INTO `usuario_docente` (`identificador`, `identificador_Usuario`, `identificador_Docente`, `created_at`, `updated_at`) VALUES
(1, 33, 40, '2024-04-14 23:37:26', '2024-04-14 23:37:26'),
(2, 94, 21, '2024-04-14 23:37:26', '2024-04-14 23:37:26'),
(3, 50, 98, '2024-04-14 23:37:26', '2024-04-14 23:37:26'),
(4, 26, 53, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(5, 69, 42, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(6, 68, 103, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(7, 34, 90, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(8, 85, 5, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(9, 32, 73, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(10, 89, 9, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(11, 20, 14, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(12, 37, 10, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(13, 69, 40, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(14, 91, 1, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(15, 22, 29, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(16, 92, 71, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(17, 75, 101, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(18, 87, 109, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(19, 98, 19, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(20, 22, 107, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(21, 50, 55, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(22, 85, 1, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(23, 46, 1, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(24, 80, 26, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(25, 92, 107, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(26, 58, 102, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(27, 78, 31, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(28, 24, 2, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(29, 58, 70, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(30, 10, 22, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(31, 16, 3, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(32, 61, 11, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(33, 13, 4, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(34, 48, 35, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(35, 22, 79, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(36, 71, 78, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(37, 80, 20, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(38, 18, 66, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(39, 76, 110, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(40, 30, 19, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(41, 83, 83, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(42, 93, 104, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(43, 99, 15, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(44, 45, 40, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(45, 75, 44, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(46, 79, 1, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(47, 66, 43, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(48, 58, 16, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(49, 99, 42, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(50, 18, 81, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(51, 67, 23, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(52, 75, 27, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(53, 33, 52, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(54, 60, 53, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(55, 67, 61, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(56, 51, 85, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(57, 80, 41, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(58, 93, 105, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(59, 8, 76, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(60, 31, 73, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(61, 37, 33, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(62, 34, 97, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(63, 100, 97, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(64, 51, 56, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(65, 80, 55, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(66, 28, 2, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(67, 86, 84, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(68, 31, 41, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(69, 91, 3, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(70, 5, 62, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(71, 99, 66, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(72, 65, 63, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(73, 50, 32, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(74, 25, 40, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(75, 3, 99, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(76, 68, 107, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(77, 50, 74, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(78, 21, 7, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(79, 83, 34, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(80, 76, 43, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(81, 52, 70, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(82, 62, 70, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(83, 51, 55, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(84, 14, 82, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(85, 43, 69, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(86, 60, 34, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(87, 98, 72, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(88, 28, 91, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(89, 89, 84, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(90, 24, 88, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(91, 63, 54, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(92, 4, 57, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(93, 2, 12, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(94, 4, 73, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(95, 17, 7, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(96, 14, 66, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(97, 16, 60, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(98, 11, 2, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(99, 96, 38, '2024-04-14 23:37:27', '2024-04-14 23:37:27'),
(100, 16, 74, '2024-04-14 23:37:27', '2024-04-14 23:37:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `actividad_clase`
--
ALTER TABLE `actividad_clase`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `actividad_clase_identificador_clase_foreign` (`identificador_Clase`),
  ADD KEY `actividad_clase_identificador_actividad_unidad_foreign` (`identificador_Actividad_Unidad`);

--
-- Indices de la tabla `actividad_unidad`
--
ALTER TABLE `actividad_unidad`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `actividad_unidad_identificador_actividad_foreign` (`identificador_Actividad`),
  ADD KEY `actividad_unidad_identificador_unidad_foreign` (`identificador_Unidad`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `alumno_materia_docente`
--
ALTER TABLE `alumno_materia_docente`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `alumno_materia_docente_identificador_alumno_foreign` (`identificador_Alumno`),
  ADD KEY `alumno_materia_docente_identificador_materia_docente_foreign` (`identificador_Materia_Docente`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `clase_identificador_alumno_materia_docente_foreign` (`identificador_Alumno_Materia_Docente`),
  ADD KEY `clase_identificador_tema_foreign` (`identificador_Tema`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `horario_materia`
--
ALTER TABLE `horario_materia`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `horario_materia_identificador_horario_foreign` (`identificador_Horario`),
  ADD KEY `horario_materia_identificador_materia_foreign` (`identificador_Materia`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `materia_docente_identificador_materia_foreign` (`identificador_Materia`),
  ADD KEY `materia_docente_identificador_docente_foreign` (`identificador_Docente`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `tema_identificador_unidad_foreign` (`identificador_Unidad`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `unidad_identificador_materia_foreign` (`identificador_Materia`);

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
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `usuario_alumno`
--
ALTER TABLE `usuario_alumno`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `usuario_alumno_identificador_usuario_foreign` (`identificador_Usuario`),
  ADD KEY `usuario_alumno_identificador_alumno_foreign` (`identificador_Alumno`);

--
-- Indices de la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `usuario_docente_identificador_usuario_foreign` (`identificador_Usuario`),
  ADD KEY `usuario_docente_identificador_docente_foreign` (`identificador_Docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `actividad_clase`
--
ALTER TABLE `actividad_clase`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `actividad_unidad`
--
ALTER TABLE `actividad_unidad`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `alumno_materia_docente`
--
ALTER TABLE `alumno_materia_docente`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `horario_materia`
--
ALTER TABLE `horario_materia`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuario_alumno`
--
ALTER TABLE `usuario_alumno`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  MODIFY `identificador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad_clase`
--
ALTER TABLE `actividad_clase`
  ADD CONSTRAINT `actividad_clase_identificador_actividad_unidad_foreign` FOREIGN KEY (`identificador_Actividad_Unidad`) REFERENCES `actividad_unidad` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `actividad_clase_identificador_clase_foreign` FOREIGN KEY (`identificador_Clase`) REFERENCES `clase` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `actividad_unidad`
--
ALTER TABLE `actividad_unidad`
  ADD CONSTRAINT `actividad_unidad_identificador_actividad_foreign` FOREIGN KEY (`identificador_Actividad`) REFERENCES `actividad` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `actividad_unidad_identificador_unidad_foreign` FOREIGN KEY (`identificador_Unidad`) REFERENCES `unidad` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alumno_materia_docente`
--
ALTER TABLE `alumno_materia_docente`
  ADD CONSTRAINT `alumno_materia_docente_identificador_alumno_foreign` FOREIGN KEY (`identificador_Alumno`) REFERENCES `alumno` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumno_materia_docente_identificador_materia_docente_foreign` FOREIGN KEY (`identificador_Materia_Docente`) REFERENCES `materia_docente` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_identificador_alumno_materia_docente_foreign` FOREIGN KEY (`identificador_Alumno_Materia_Docente`) REFERENCES `alumno_materia_docente` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `clase_identificador_tema_foreign` FOREIGN KEY (`identificador_Tema`) REFERENCES `tema` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `horario_materia`
--
ALTER TABLE `horario_materia`
  ADD CONSTRAINT `horario_materia_identificador_horario_foreign` FOREIGN KEY (`identificador_Horario`) REFERENCES `horario` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `horario_materia_identificador_materia_foreign` FOREIGN KEY (`identificador_Materia`) REFERENCES `materia` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  ADD CONSTRAINT `materia_docente_identificador_docente_foreign` FOREIGN KEY (`identificador_Docente`) REFERENCES `docente` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `materia_docente_identificador_materia_foreign` FOREIGN KEY (`identificador_Materia`) REFERENCES `materia` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_identificador_unidad_foreign` FOREIGN KEY (`identificador_Unidad`) REFERENCES `unidad` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `unidad_identificador_materia_foreign` FOREIGN KEY (`identificador_Materia`) REFERENCES `materia` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_alumno`
--
ALTER TABLE `usuario_alumno`
  ADD CONSTRAINT `usuario_alumno_identificador_alumno_foreign` FOREIGN KEY (`identificador_Alumno`) REFERENCES `alumno` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_alumno_identificador_usuario_foreign` FOREIGN KEY (`identificador_Usuario`) REFERENCES `usuario` (`identificador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  ADD CONSTRAINT `usuario_docente_identificador_docente_foreign` FOREIGN KEY (`identificador_Docente`) REFERENCES `docente` (`identificador`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_docente_identificador_usuario_foreign` FOREIGN KEY (`identificador_Usuario`) REFERENCES `usuario` (`identificador`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
