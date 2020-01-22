-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2020 a las 04:49:23
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
(1, 'Google', 'Google Noticias', '2020-01-09 00:03:32', 'Google Noticias es un agregador y buscador de noticias automatizado que rastrea de forma constante la informacion de los principales medios de comunicacion online.', 'sign-741813_1280.jpg'),
(2, 'Aceite del motor', 'En caso de no realizar un cambio...', '2020-01-08 07:08:26', 'El sitio web de Google News, elaborado por Google, se actualiza cada 15 minutos y fue lanzado en versiÃ³n beta en abril de 2002.', 'sign-741813_1280.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_art`
--

CREATE TABLE `banner_art` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_art`
--

INSERT INTO `banner_art` (`id`, `id_categoria`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, NULL, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(19, NULL, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(22, NULL, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8),
(25, NULL, '', '', 'demo.png', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_corp`
--

CREATE TABLE `banner_corp` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_corp`
--

INSERT INTO `banner_corp` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(29, 'Prueba  corpo', 'Google Noticias es un agregador y buscador de noticias automatizado que rastrea de forma constante la informaciÃ³n de los principales medios de comunicaciÃ³n online.', 'LogosinF.png', 1, 1),
(30, 'LETRAS DE ALUMINIO', 'Somos un equipo de especialistas que promueve\r\nsoluciones en diseÃ±o publicitaario, mediante\r\nla elavoracion de productos de alta caliad y de acuerdo a tus necesidades.', '1.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_dig`
--

CREATE TABLE `banner_dig` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_dig`
--

INSERT INTO `banner_dig` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_lumi`
--

CREATE TABLE `banner_lumi` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_lumi`
--

INSERT INTO `banner_lumi` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(22, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8),
(25, 'Reunion Ordinaria', 'gvcgcgcgf', 'W-TECHBL6.png', 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_promo`
--

CREATE TABLE `banner_promo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_promo`
--

INSERT INTO `banner_promo` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(27, '', '', 'demo.png', 0, 0),
(28, '', '', 'demo.png', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_sena`
--

CREATE TABLE `banner_sena` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_sena`
--

INSERT INTO `banner_sena` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_tab`
--

CREATE TABLE `banner_tab` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_tab`
--

INSERT INTO `banner_tab` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6),
(21, 'Cotizador web de camisetas con PHP', 'En esta ocasiÃ³n quiero compartir un pequeÃ±o script desarrollado en PHP, el cual cumple la funciÃ³n de cotizador web de productos', 'captura_1.png', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_vin`
--

CREATE TABLE `banner_vin` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_vin`
--

INSERT INTO `banner_vin` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Letras 3D Corporeas', '../adminBanner/bannerlist-corpo.php', 1),
(2, 'Anuncios Luminosos', '../adminBanner/bannerlist-lumi.php', 2),
(4, 'Impresion Digital', '../adminBanner/bannerlist-dig.php', 4),
(5, 'Promocionales', '../adminBanner/bannerlist-promo.php', 5),
(7, 'Recorte de vinil', '../adminBanner/bannerlist-tab.php', 7),
(9, 'Neon', '../adminBanner/bannerlist-vin.php', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_subcategorias`
--

CREATE TABLE `productos_subcategorias` (
  `id` int(11) NOT NULL,
  `subcategorias` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_subcategorias`
--

INSERT INTO `productos_subcategorias` (`id`, `subcategorias`, `id_categoria`, `nombre`, `src`) VALUES
(1, 'LETRAS DE ALUMINIO', 1, '', '');

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
-- Indices de la tabla `banner_art`
--
ALTER TABLE `banner_art`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_corp`
--
ALTER TABLE `banner_corp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_dig`
--
ALTER TABLE `banner_dig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_lumi`
--
ALTER TABLE `banner_lumi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_sena`
--
ALTER TABLE `banner_sena`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_tab`
--
ALTER TABLE `banner_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_vin`
--
ALTER TABLE `banner_vin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_subcategorias`
--
ALTER TABLE `productos_subcategorias`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `banner_art`
--
ALTER TABLE `banner_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `banner_corp`
--
ALTER TABLE `banner_corp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `banner_dig`
--
ALTER TABLE `banner_dig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `banner_lumi`
--
ALTER TABLE `banner_lumi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `banner_sena`
--
ALTER TABLE `banner_sena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `banner_tab`
--
ALTER TABLE `banner_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `banner_vin`
--
ALTER TABLE `banner_vin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos_subcategorias`
--
ALTER TABLE `productos_subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
