-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2020 a las 04:24:23
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `imaginarte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `extracto` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `texto` text NOT NULL,
  `thumb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `extracto`, `fecha`, `texto`, `thumb`) VALUES
(1, 'Google', 'Google Noticias', '2020-01-11 09:25:12', 'Google Noticias es un agregador y buscador de noticias automatizado que rastrea de forma constante la informacion de los principales medios de comunicacion online.', 'abstract_lanes_5k.jpg'),
(2, 'Aceite del motor', 'En caso de no realizar un cambio...', '2020-01-10 07:30:57', 'El sitio web de Google News, elaborado por Google, se actualiza cada 15 minutos y fue lanzado en versiÃ³n beta en abril de 2002.', 'colorful_papers_4k.jpg'),
(4, 'Imaginarte 3d', 'Los amortiguadores tienen una vida Ãºtil de 80.000 kilÃ³metros, lo que equivale a unos tres aÃ±os y medio.', '2020-01-10 07:31:31', 'Los amortiguadores tienen una vida Ãºtil de 80.000 kilÃ³metros, lo que equivale a unos tres aÃ±os y medio.Los amortiguadores tienen una vida Ãºtil de 80.000 kilÃ³metros, lo que equivale a unos tres aÃ±os y medio.Los amortiguadores tienen una vida Ãºtil de 80.000 kilÃ³metros, lo que equivale a unos tres aÃ±os y medio.', 'astronaut_dream_4k.jpg'),
(5, 'Prueba Imaginarte', 'El filtro de aceite purifica el aceite, su vida Ãºtil es de 5.000 kms.', '2020-01-10 07:37:15', 'Prueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba ImaginartePrueba Imaginarte', 'halo_wars_new_game.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `boton` varchar(250) NOT NULL,
  `folder` varchar(250) NOT NULL,
  `src` varchar(250) NOT NULL,
  `created_at` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `title`, `boton`, `folder`, `src`, `created_at`) VALUES
(1, 'promocion de temporada', '', 'uploads/', 'bicycle-1869176_1280_1.jpg', '2020-01-08 18:37:14'),
(2, 'Algebra Lineal', '', 'uploads/', 'person-731492_1280.jpg', '2020-01-08 20:23:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
