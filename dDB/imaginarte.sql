-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2020 a las 07:13:12
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

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
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Bandera', '../adminBanner/bannerlist-lumi.php', 1),
(2, 'Una Vista', '../adminBanner/bannerlist-uvis.php', 2),
(3, 'Dos Vistas', '../adminBanner/bannerlist-dvis.php', 3),
(4, 'Contorno o Figura', '../adminBanner/bannerlist-con.php', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `extracto` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
-- Estructura de tabla para la tabla `banner_acralu`
--

CREATE TABLE `banner_acralu` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_acralu`
--

INSERT INTO `banner_acralu` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_acri`
--

CREATE TABLE `banner_acri` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_acri`
--

INSERT INTO `banner_acri` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(34, 'Reunion Ordinaria', 'khgkhgk', 'pngocean.com.png', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_art`
--

CREATE TABLE `banner_art` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_art`
--

INSERT INTO `banner_art` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(22, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8),
(25, '', '', 'demo.png', 0, 0),
(26, '', '', 'demo.png', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_back`
--

CREATE TABLE `banner_back` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_back`
--

INSERT INTO `banner_back` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_civil`
--

CREATE TABLE `banner_civil` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_civil`
--

INSERT INTO `banner_civil` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(29, '', '', 'demo.png', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_con`
--

CREATE TABLE `banner_con` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_con`
--

INSERT INTO `banner_con` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(31, '', '', 'demo.png', 0, 0);

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
(2, 'Sistema de FacturaciÃ³n Simple', 'http://obedalvarado.pw/simple-invoice/', 'factura_simple.png', 1, 2),
(29, 'Prueba ', 'Google Noticias es un agregador y buscador de noticias automatizado que rastrea de forma constante la informaciÃ³n de los principales medios de comunicaciÃ³n online.', 'LogosinF.png', 1, 9);

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
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6),
(25, 'Reunion Ordinaria', 'bvbnvnbvnb', 'foto_3.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_dvis`
--

CREATE TABLE `banner_dvis` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_dvis`
--

INSERT INTO `banner_dvis` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_esp`
--

CREATE TABLE `banner_esp` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_esp`
--

INSERT INTO `banner_esp` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_lona`
--

CREATE TABLE `banner_lona` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_lona`
--

INSERT INTO `banner_lona` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

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
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(21, 'Cotizador web de camisetas con PHP', 'En esta ocasiÃ³n quiero compartir un pequeÃ±o script desarrollado en PHP, el cual cumple la funciÃ³n de cotizador web de productos', 'captura_1.png', 1, 7),
(22, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8),
(25, 'Reunion Ordinaria', 'gvcgcgcgf', 'W-TECHBL6.png', 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_mdf`
--

CREATE TABLE `banner_mdf` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_mdf`
--

INSERT INTO `banner_mdf` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_papel`
--

CREATE TABLE `banner_papel` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_papel`
--

INSERT INTO `banner_papel` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(29, '', '', 'demo.png', 0, 0);

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
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_pvc`
--

CREATE TABLE `banner_pvc` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_pvc`
--

INSERT INTO `banner_pvc` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_rig`
--

CREATE TABLE `banner_rig` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_rig`
--

INSERT INTO `banner_rig` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4),
(30, '', '', 'demo.png', 0, 0);

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
-- Estructura de tabla para la tabla `banner_subli`
--

CREATE TABLE `banner_subli` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_subli`
--

INSERT INTO `banner_subli` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(29, '', '', 'demo.png', 0, 0);

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
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6),
(21, 'Cotizador web de camisetas con PHP', 'En esta ocasiÃ³n quiero compartir un pequeÃ±o script desarrollado en PHP, el cual cumple la funciÃ³n de cotizador web de productos', 'captura_1.png', 1, 7),
(22, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_tap`
--

CREATE TABLE `banner_tap` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_tap`
--

INSERT INTO `banner_tap` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_uvis`
--

CREATE TABLE `banner_uvis` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner_uvis`
--

INSERT INTO `banner_uvis` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(26, 'Reunion Ordinaria', 'lmknnm', '4.jpg', 1, 4);

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
(1, 'Sistema Web de Inventario Simple ', 'https://obedalvarado.pw/blog/sistema-inventario-simple-php/', 'simple_stock_php.png', 1, 1),
(17, 'CÃ³mo instalar ionCube Loader en Windows', 'En este tutorial voy a mostrar como instalar ioncube loader en servidor local  con Windows.', 'ioncube-windows.png', 1, 3),
(19, 'CRUD de datos de empleados con PHP, MySQL y Bootst', 'La creaciÃ³n de un CRUD es una tarea muy comÃºn en el desarrollo web  (CRUD por sus siglas en ingles Create/Read/Update/Delete). ', 'crud_empleados.png', 1, 5),
(20, 'SISTEMA PARA FARMACIAS DESARROLLADO CON PHP â€“ MY', 'El sistema de Inventario para farmacias es un software de oficina de farmacia, que cuenta con un diseÃ±o moderno de respuesta ideal para cualquier tipo de negocio de farmacia.', 'inventario_farmacia.png', 1, 6),
(21, 'Cotizador web de camisetas con PHP', 'En esta ocasiÃ³n quiero compartir un pequeÃ±o script desarrollado en PHP, el cual cumple la funciÃ³n de cotizador web de productos', 'captura_1.png', 1, 7),
(22, 'Sistema de GestiÃ³n de Inventario con PHP', 'El Sistema de GestiÃ³n de Inventario es un proyecto de cÃ³digo abierto (Open Source), desarrollado con PHP, MySQL, Bootstrap y jQuery.', 'sistema_gestion_inventario_php.png', 1, 8),
(25, '', '', 'demo.png', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `digital`
--

CREATE TABLE `digital` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `digital`
--

INSERT INTO `digital` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Impresion En Vinil', '../adminBanner/bannerlist-dig.php', 1),
(2, 'Impresion En Rigidos', '../adminBanner/bannerlist-rig.php', 2),
(3, 'Impresion En Lona', '../adminBanner/bannerlist-lona.php', 3),
(4, 'Impresion En Papel Tapiz', '../adminBanner/bannerlist-tap.php', 4),
(5, 'Impresion En Backlight', '../adminBanner/bannerlist-back.php', 5),
(6, 'Impresion En Papel', '../adminBanner/bannerlist-papel.php', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `letras3d`
--

CREATE TABLE `letras3d` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `letras3d`
--

INSERT INTO `letras3d` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Letras de Aluminio', '../adminBanner/bannerlist-corpo.php', 1),
(2, 'Letras Acrilico', '../adminBanner/bannerlist-acri.php', 2),
(3, 'Letras de Acrilico con Aluminio', '../adminBanner/bannerlist-acralu.php', 3),
(4, 'Letras MDF', '../adminBanner/bannerlist-mdf.php', 4),
(5, 'Letras de PVC', '../adminBanner/bannerlist-pvc.php', 5),
(6, 'Combinaciones Especiales', '../adminBanner/bannerlist-esp.php', 6);

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
(1, 'Letras 3D Corporeas', '../adminBanner/letras3d.php', 1),
(2, 'Anuncios Luminosos', '../adminBanner/anuncios.php', 2),
(3, 'Neon', '../adminBanner/bannerlist-sena.php', 3),
(4, 'Impresion Digital', '../adminBanner/digital.php', 4),
(5, 'Promocionales', '../adminBanner/promocionales.php', 5),
(7, 'Recorte de vinil', '../adminBanner/bannerlist-vin.php', 7),
(8, 'Senaletica', '../adminBanner/senalitica.php', 8);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocionales`
--

CREATE TABLE `promocionales` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promocionales`
--

INSERT INTO `promocionales` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Serigrafia', '../adminBanner/bannerlist-promo.php', 1),
(2, 'Sublimacion', '../adminBanner/bannerlist-subli.php', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `senalitica`
--

CREATE TABLE `senalitica` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `senalitica`
--

INSERT INTO `senalitica` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Creativa', '../adminBanner/bannerlist-art.php', 1),
(2, 'Civil', '../adminBanner/bannerlist-civil.php', 2);

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
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_acralu`
--
ALTER TABLE `banner_acralu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_acri`
--
ALTER TABLE `banner_acri`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_art`
--
ALTER TABLE `banner_art`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_back`
--
ALTER TABLE `banner_back`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_civil`
--
ALTER TABLE `banner_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_con`
--
ALTER TABLE `banner_con`
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
-- Indices de la tabla `banner_dvis`
--
ALTER TABLE `banner_dvis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_esp`
--
ALTER TABLE `banner_esp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_lona`
--
ALTER TABLE `banner_lona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_lumi`
--
ALTER TABLE `banner_lumi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_mdf`
--
ALTER TABLE `banner_mdf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_papel`
--
ALTER TABLE `banner_papel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_pvc`
--
ALTER TABLE `banner_pvc`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_rig`
--
ALTER TABLE `banner_rig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_sena`
--
ALTER TABLE `banner_sena`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_subli`
--
ALTER TABLE `banner_subli`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_tab`
--
ALTER TABLE `banner_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_tap`
--
ALTER TABLE `banner_tap`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_uvis`
--
ALTER TABLE `banner_uvis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_vin`
--
ALTER TABLE `banner_vin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `digital`
--
ALTER TABLE `digital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `letras3d`
--
ALTER TABLE `letras3d`
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
-- Indices de la tabla `promocionales`
--
ALTER TABLE `promocionales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `senalitica`
--
ALTER TABLE `senalitica`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `banner_acralu`
--
ALTER TABLE `banner_acralu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_acri`
--
ALTER TABLE `banner_acri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `banner_art`
--
ALTER TABLE `banner_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `banner_back`
--
ALTER TABLE `banner_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_civil`
--
ALTER TABLE `banner_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_con`
--
ALTER TABLE `banner_con`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `banner_corp`
--
ALTER TABLE `banner_corp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `banner_dig`
--
ALTER TABLE `banner_dig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `banner_dvis`
--
ALTER TABLE `banner_dvis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_esp`
--
ALTER TABLE `banner_esp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_lona`
--
ALTER TABLE `banner_lona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_lumi`
--
ALTER TABLE `banner_lumi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `banner_mdf`
--
ALTER TABLE `banner_mdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_papel`
--
ALTER TABLE `banner_papel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `banner_pvc`
--
ALTER TABLE `banner_pvc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_rig`
--
ALTER TABLE `banner_rig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `banner_sena`
--
ALTER TABLE `banner_sena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `banner_subli`
--
ALTER TABLE `banner_subli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_tab`
--
ALTER TABLE `banner_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `banner_tap`
--
ALTER TABLE `banner_tap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_uvis`
--
ALTER TABLE `banner_uvis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `banner_vin`
--
ALTER TABLE `banner_vin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
