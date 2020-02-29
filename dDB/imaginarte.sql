-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-02-2020 a las 03:36:41
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
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(1, 'Tienda Virtual', 'dayanna@gmail.com', 'vistas/img/perfiles/499.png', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'administrador', 1, '2019-12-06 02:00:53'),
(2, 'Editor de la Tienda', 'adrian@gmail.com', 'vistas/img/perfiles/477.png', '$2a$07$asxx54ahjppf45sd87a5auBnK0T8g/TaNYrkZQmRmlyohJLox8X9S', 'editor', 1, '2019-12-06 06:46:45');

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
(4, 'Contorno o Figura', '../adminBanner/bannerlist-con.php', 4),
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
(1, 'Letras 3D', 'Â¿Por que elegir Letras Corporeas 3D?', '2020-01-13 23:04:29', 'Porque son ideales para exterior e interior, visualmente generan gran impacto, debido a su elasticidad y resistencia permiten crear cualquier tipo de forma, las tonalidades e iluminaciÃ³n pueden acoplarse perfectamente a tus necesidades. No requieren mantenimiento y cuentan con mÃ¡xima durabilidad.\r\n\r\nÂ¡Sin duda la mejor inversiÃ³n para potenciar tu Imagen Corporativa!\r\n\r\n\r\n\r\n\r\n\r\n', 'IMG_20190802_175920.jpg'),
(4, 'CaracterÃ­sticas y cualidades de Letras 3D', 'Lo que tienes que saber...', '2020-01-13 22:52:05', 'Las letras 3D o letras corpÃ³reas ademÃ¡s de brindarle a tu Imagen presencia y atraer la atenciÃ³n del pÃºblico, cuentan con muchas ventajas, como;\r\n\r\n* Alta resistencia a la intemperie (lluvia, sol, viento, polvo, brisa, etc.)\r\n* Materiales ligeros que no comprometen su estabilidad.\r\n* Adaptables a cualquier tipo de sujeciÃ³n (instalaciÃ³n).\r\n*Versatilidad en tonos, acabados e iluminaciÃ³n (luz directa e indirecta).\r\n*Espesor o canto desde 2 hasta 18 cms.\r\n\r\nY muchas cualidades mÃ¡s...\r\n', 'IMG_20200113_165030.jpg'),
(5, 'Tipos de Letras 3D', 'Materiales', '2020-01-13 23:02:17', 'Para fabricaciÃ³n de letras 3D existen muchos materiales que pueden utilizarse, por ejemplo; Acrilico, Aluminio, Laton, Acero inoxidable, mdf, pvc, etc.\r\n\r\nPueden fabricarse con o sin iluminaciÃ³n y ambas opciones se verÃ¡n encantadoras \r\n\r\n', 'IMG_20191213_235419.jpg'),
(6, 'Letreros luminosos', 'Â¡IluminaciÃ³n Creativa!', '2020-01-21 05:30:01', ' Elige la iluminaciÃ³n que mÃ¡s se adapte a tus necesidades; Luz frÃ­a, cÃ¡lida o mÃ¡s de 18 colores para que tu letrero resalte de los demÃ¡s.\r\n\r\n\r\n', 'aluminio8.jpg'),
(7, 'Luz Neon', 'Â¿QuÃ© es?', '2020-01-24 04:10:44', 'La luz de neÃ³n se produce en unos tubos que contienen neÃ³n y otros gases enrarecidos y que, mediante la electricidad, dan una luminiscencia brillantemente increÃ­ble.\r\nÂ¡Dan un efecto de iluminaciÃ³n Ãºnica y son sÃºper originales!', '6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `tipo`, `img`, `estado`, `fecha`) VALUES
(1, 'letras-3d-corporeas', 'categorias', 'vistas/img/banner/.jpg', 1, '2020-02-29 02:25:58'),
(3, 'alumino', 'subcategorias', 'vistas/img/banner/faros-montana.jpg', 1, '2020-02-29 02:25:44'),
(4, 'neon', 'categorias', 'vistas/img/banner/faros.jpg', 1, '2020-02-29 02:25:32');

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
(25, 'Reunion Ordinaria', 'gvcgcgcgf', 'W-TECHBL6.png', 1, 20),
(26, 'Anuncios luminosos ', 'iluminaciÃ³n creativa\r\n', 'aluminio8.jpg', 1, 1);

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
(0, 'Aceite del motor', 'bxb', 'servicio.jpg', 1, 3);

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
(0, 'modal', 'banner_uvibanner_uvibanner_uvibanner_uvibanner_uvi', 'received_1245346168897933.jpeg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Tienda Virtual', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/default.jpg', '2017-11-17 14:58:16'),
(2, 'desarrollo-web', 'Desarrollo Web', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/web.jpg', '2017-11-17 14:59:28'),
(3, 'peliculas', 'peliculas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris felis velit, volutpat nec molestie id, tempus eu enim. V', 'lorem,ipsum,sit', 'vistas/img/cabeceras/peliculas.jpg', '2018-03-15 22:22:27'),
(4, 'bicicletas', 'bicicletas', 'bicicleta azul', 'azul,rojo,gratis', 'vistas/img/cabeceras/bicicletas.jpg', '2019-12-05 23:45:15'),
(7, 'faro-amarilla', 'faro amarilla', 'faro amarilla', 'amarilla,faro,blanca,gratis', 'vistas/img/cabeceras/faro-amarilla.jpg', '2019-12-06 00:25:54'),
(8, 'bicicleta', 'bicicleta', 'jbsd hjdf', 'rojo,gratis', 'vistas/img/cabeceras/bicicleta.jpg', '2019-12-06 03:04:04'),
(22, 'yhjgj', 'yhjgj', 'hjg', 'hnm', 'vistas/img/cabeceras/yhjgj.png', '2020-02-29 01:31:53'),
(23, 'letras-3d-corporeas', 'LETRAS 3D CORPOREAS', 'fhg', 'corporeas', 'vistas/img/cabeceras/letras-3d-corporeas.jpg', '2020-02-29 02:11:21'),
(24, 'neon', 'NEON', 'dcbvf', 'neon,letrero', 'vistas/img/cabeceras/neon.jpg', '2020-02-29 02:11:59'),
(25, 'alumino', 'ALUMINO', 'GFDG', 'bn', 'vistas/img/cabeceras/alumino.png', '2020-02-29 02:13:02'),
(26, 'neon', 'NEON', 'hf', 'ne', 'vistas/img/cabeceras/neon.jpg', '2020-02-29 02:13:37'),
(27, 'aceite', 'aceite', 'jdah', 'alu', 'vistas/img/cabeceras/aceite.jpg', '2020-02-29 02:15:58'),
(28, 'bici', 'bici', 'dfhf', 'bicicleta,azul', 'vistas/img/cabeceras/bici.jpg', '2020-02-29 02:22:38'),
(29, 'hfh', 'hfh', 'hgh', 'jkj', 'vistas/img/cabeceras/hfh.jpg', '2020-02-29 02:23:56'),
(30, 'faros', 'Faros', 'ghd', 'fhg', 'vistas/img/cabeceras/default/default.jpg', '2020-02-29 02:31:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(8, 'LETRAS 3D CORPOREAS', 'letras-3d-corporeas', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-02-29 02:11:21'),
(9, 'NEON', 'neon', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-02-29 02:11:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 86, 496, 3.5, 'Lo mejor de PHP', '2018-02-13 16:39:25'),
(2, 86, 464, 4.5, 'Excelente', '2018-02-13 15:55:14'),
(3, 87, 496, 4, 'El curso es muy bueno, pero puede ser mejor.', '2018-02-13 16:10:50'),
(4, 88, 496, 4.5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n		cillum dolore eu fugiat nulla pariatur', '2018-02-13 17:17:48'),
(6, 5, 496, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. ', '2018-02-13 17:21:30'),
(7, 12, 500, 0, '', '2018-03-27 23:19:33'),
(8, 2, 502, 5, 'buen producto', '2019-12-06 00:35:52'),
(9, 2, 502, 0, '', '2019-12-06 01:16:25'),
(10, 2, 502, 0, '', '2019-12-06 01:17:51'),
(11, 2, 502, 0, '', '2019-12-06 01:20:05'),
(12, 2, 502, 0, '', '2019-12-06 01:54:21'),
(13, 13, 502, 0, '', '2019-12-06 02:16:53'),
(14, 1, 502, 0, '', '2019-12-06 02:53:13'),
(15, 1, 503, 0, '', '2019-12-06 03:04:59'),
(16, 1, 503, 0, '', '2019-12-06 03:13:17'),
(17, 16, 503, 0, '', '2019-12-06 03:27:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 16, 0, 2, 0, 10, 'MX', 'sandbox', 'AecffvSZfOgj6g1MkrVmz12ACMES2-InggmWCpU5CblR-z5WwkYBYjmLsh9yPRLuRape1ahjqpcJet4N', 'EAx1SVMHGV6MJKwl-pnOSzaJASlAINZdYRdS--wkgaPYLevcGw88V0PU_W_rg00xLkBknybCjsO_xzA0', 'live', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(29, 1, 502, 10, 'paypal', 'sb-0fivk657767@personal.example.com', 'Calle Juarez 1, Miguel Hidalgo, Ciudad de Mexico, 11580', 'MX', 1, NULL, '2', '2019-12-06 06:30:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 469, '2018-03-26 22:03:34'),
(2, 9, 469, '2018-03-26 22:03:35'),
(3, 9, 467, '2018-03-26 22:03:39'),
(4, 9, 3, '2018-03-26 22:03:43'),
(5, 9, 469, '2018-03-26 22:03:54'),
(6, 9, 470, '2018-03-26 22:03:57'),
(7, 9, 467, '2018-03-26 22:04:00'),
(8, 9, 4, '2018-03-26 22:04:37'),
(9, 2, 506, '2020-02-29 02:20:47');

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
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `nuevosUsuarios` int(11) NOT NULL,
  `nuevasVentas` int(11) NOT NULL,
  `nuevasVisitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `nuevosUsuarios`, `nuevasVentas`, `nuevasVisitas`) VALUES
(1, 0, 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `fecha`) VALUES
(1, '#5132cf', '#ffffff', '#33ff6e', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"https://m.facebook.com/imaginart3D/?ref=bookmarks\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"https://www.youtube.com/channel/UCEJK7dFCaXKXX8ZOOwy02QA\",\"activo\":1},{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\",\"activo\":0},{\"red\":\"fa-google-plus\",\"estilo\":\"google-plusBlanco\",\"url\":\"http://www.imaginarte3d.com.mx/\",\"activo\":1},{\"red\":\"fa-instagram\",\"estilo\":\"instagramBlanco\",\"url\":\"https://www.instagram.com/imaginarte3d_/\",\"activo\":1}]', '\r\n      		<script>   window.fbAsyncInit = function() {     FB.init({       appId      : \'131737410786111\',       cookie     : true,       xfbml      : true,       version    : \'v2.10\'     });            FB.AppEvents.logPageView();             };    (function(d, s, id){      var js, fjs = d.getElementsByTagName(s)[0];      if (d.getElementById(id)) {return;}      js = d.createElement(s); js.id = id;      js.src = \"https://connect.facebook.net/en_US/sdk.js\";      fjs.parentNode.insertBefore(js, fjs);    }(document, \'script\', \'facebook-jssdk\'));  </script>\r\n      		', '\r\n  			<!-- Facebook Pixel Code --> 	<script> 	  !function(f,b,e,v,n,t,s) 	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod? 	  n.callMethod.apply(n,arguments):n.queue.push(arguments)}; 	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\'; 	  n.queue=[];t=b.createElement(e);t.async=!0; 	  t.src=v;s=b.getElementsByTagName(e)[0]; 	  s.parentNode.insertBefore(t,s)}(window, document,\'script\', 	  \'https://connect.facebook.net/en_US/fbevents.js\'); 	  fbq(\'init\', \'131737410786111\'); 	  fbq(\'track\', \'PageView\'); 	</script> 	<noscript><img height=\"1\" width=\"1\" style=\"display:none\" 	  src=\"https://www.facebook.com/tr?id=149877372404434&ev=PageView&noscript=1\" 	/></noscript> <!-- End Facebook Pixel Code -->    \r\n  			', '  \r\n  				<!-- Global site tag (gtag.js) - Google Analytics --> 	<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-999999-1\"></script> 	<script> 	  window.dataLayer = window.dataLayer || []; 	  function gtag(){dataLayer.push(arguments);} 	  gtag(\'js\', new Date());  	  gtag(\'config\', \'UA-9999999-1\'); 	</script>      \r\n            \r\n            \r\n            \r\n      ', '2020-02-29 02:27:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `productos`, `src`, `id_categoria`) VALUES
(1, 'Letras 3D Corporeas', '../adminBanner/bannerlist-corpo.php', 1),
(2, 'Anuncios Luminosos', '../adminBanner/bannerlist-lumi.php', 2),
(4, 'Impresion Digital', '../adminBanner/bannerlist-dig.php', 4),
(5, 'Promocionales', '../adminBanner/bannerlist-promo.php', 5),
(7, 'Recorte de vinil', '../adminBanner/bannerlist-tab.php', 7),
(9, 'Neon', '../adminBanner/bannerlist-vin.php', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `peso`, `entrega`, `fecha`) VALUES
(506, 8, 24, 'fisico', 'aceite', 1, 'aceite', 'jdah...', 'jdah', '[{\"foto\":\"vistas/img/multimedia/aceite/prodcto4.jpg\"},{\"foto\":\"vistas/img/multimedia/aceite/producto3.jpg\"}]', '{\"Color\":[\"blanco\",\"azul\",\"negro\",\"rosa\",\"rojo\"],\"Marca\":[\"fh\",\"jy\",\"sf\"]}', 900, 'vistas/img/productos/aceite.jpg', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 30, 6, '2020-02-29 02:24:04'),
(507, 9, 25, 'fisico', 'bici', 1, 'bici', 'dfhf...', 'dfhf', '[{\"foto\":\"vistas/img/multimedia/bici/bicycle-1869176_1280.jpg\"},{\"foto\":\"vistas/img/multimedia/bici/5dccf3a66f463.png\"}]', '{\"Color\":[\"verde\",\"negra\",\"blanca\"],\"Marca\":[\"sf\",\"hg\",\"fgj\"]}', 30, 'vistas/img/productos/bici.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 20, 10, '2020-02-29 02:22:38'),
(508, 8, 24, 'fisico', 'hfh', 1, 'hfh', 'hgh...', 'hgh', '[{\"foto\":\"vistas/img/multimedia/hfh/equipo.jpg\"},{\"foto\":\"vistas/img/multimedia/hfh/comuni.png\"}]', '{\"Color\":[\"blanco\"],\"Marca\":[\"lsd\"]}', 21, 'vistas/img/productos/hfh.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 30, 92, '2020-02-29 02:23:56');

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
(11, 'fgh', '', 'uploads/', 'ayuda.jpg', '2020-02-28 19:42:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slides`
--

INSERT INTO `slides` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(5, 'PRINCIPAL', 'vistas/img/slide/slide5/fondo.jpg', 'slideOpcion2', '', '{\"top\":\"0\",\"right\":\"\",\"left\":\"0\",\"width\":\"0\"}', '{\"top\":\"15\",\"right\":\"20\",\"left\":\"\",\"width\":\"35\"}', '{\"texto\":\"IMAGINA\",\"color\":\"#f7eded\"}', '{\"texto\":\"COTIZA\",\"color\":\"#f0eaea\"}', '{\"texto\":\"CREA\",\"color\":\"#f7e8e8\"}', 'VER PRODUCTO', '#', 1, '2020-02-29 02:09:02'),
(7, 'ANUNCIO', 'vistas/img/slide/slide7/fondo.png', 'slideOpcion2', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"0\",\"width\":\"\"}', '{\"top\":\"50\",\"right\":\"9.999261689909762\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 2, '2020-02-29 02:10:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(24, 'ALUMINO', 8, 'alumino', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-02-29 02:13:02'),
(25, 'NEON', 9, 'neon', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-02-29 02:13:37'),
(26, 'Faros', 9, 'faros', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-02-29 02:31:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nombrefiscal` text COLLATE utf8_spanish_ci NOT NULL,
  `emailfac` text COLLATE utf8_spanish_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `rfc` text COLLATE utf8_spanish_ci NOT NULL,
  `regimenfiscal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`, `nombrefiscal`, `emailfac`, `cp`, `rfc`, `regimenfiscal`) VALUES
(2, 'Francisco gomez', '$2a$07$asxx54ahjppf45sd87a5auxq/SS293XhTEeizKWMnfhnpfay0AALe', 'pepe@gmail.com', 'directo', '', 0, '6b0becddecd5a06042b3f8078c97f2e0', '2019-12-06 06:42:28', 'SAT', 'web@gmail.com', 7560, 'EIO09FHDJ', 90),
(17, 'sheila', '$2a$07$asxx54ahjppf45sd87a5auSFuHPq3ZGSopXFgdE2d.w3JOLfYhtKu', 'sheila@gmail.com', 'directo', '', 0, 'd3731f6d859b1101d09263d8bb9a09fe', '2019-12-06 05:07:50', '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(1, 'United States', 'US', 2, '2017-12-05 21:02:46'),
(2, 'Japan', 'JP', 65, '2018-03-27 13:26:30'),
(3, 'Spain', 'ES', 10, '2017-12-05 21:02:53'),
(4, 'Colombia', 'CO', 5, '2017-12-05 21:02:55'),
(5, 'China', 'CN', 3, '2017-12-05 21:04:32'),
(6, 'Germany', 'DE', 34, '2017-12-05 21:04:39'),
(7, 'Mexico', 'MX', 19, '2020-02-25 02:50:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.202.197.216', 'Japan', 1, '2017-11-08 18:37:07'),
(3, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:16'),
(5, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:19'),
(6, '234.13.198.119', 'Colombia', 1, '2017-11-28 19:16:03'),
(7, '141.46.61.241', 'Germany', 1, '2017-11-28 19:13:45'),
(8, '40.179.75.60', 'United States', 1, '2017-11-28 19:14:05'),
(9, '153.205.198.22', 'Japan', 1, '2017-11-01 19:14:18'),
(10, '148.21.177.158', 'United States', 1, '2017-10-28 19:14:34'),
(11, '40.224.125.226', 'United States', 1, '2017-11-28 19:14:56'),
(12, '10.98.135.68', 'China', 1, '2017-11-28 19:15:57'),
(13, '23.121.157.131', 'United States', 1, '2017-11-28 19:15:37'),
(17, '8.12.238.123', 'United States', 1, '2017-11-28 19:28:27'),
(18, '148.21.177.158', 'United States', 1, '2017-11-28 19:33:05'),
(19, '153.202.197.216', 'Japan', 1, '2017-11-28 19:33:50'),
(27, '153.205.198.22', 'Japan', 1, '2017-10-28 20:05:19'),
(31, '153.205.198.22', 'Japan', 1, '2017-11-28 20:09:49'),
(32, '153.205.198.22', 'Japan', 1, '2017-11-29 19:23:07'),
(33, '153.205.198.22', 'Japan', 1, '2017-11-30 23:01:27'),
(34, '153.205.198.22', 'Japan', 1, '2017-12-04 14:55:27'),
(35, '153.205.198.22', 'Japan', 1, '2017-12-05 20:58:04'),
(36, '153.205.198.22', 'Japan', 1, '2017-12-06 21:11:13'),
(37, '153.205.198.22', 'Japan', 1, '2017-12-07 22:32:13'),
(38, '153.205.198.22', 'Japan', 1, '2017-12-11 15:32:10'),
(39, '153.205.198.22', 'Japan', 1, '2017-12-13 15:45:58'),
(40, '153.205.198.22', 'Japan', 1, '2017-12-19 02:37:45'),
(41, '153.205.198.22', 'Japan', 1, '2017-12-19 12:54:21'),
(42, '153.205.198.22', 'Unknown', 1, '2017-12-30 15:41:47'),
(43, '153.205.198.22', 'Japan', 1, '2018-01-02 15:46:52'),
(44, '153.205.198.22', 'Japan', 1, '2018-01-03 13:54:29'),
(45, '153.205.198.22', 'Japan', 1, '2018-01-04 16:54:03'),
(46, '153.205.198.22', 'Japan', 1, '2018-01-05 17:17:05'),
(47, '153.205.198.22', 'Japan', 1, '2018-01-08 13:57:21'),
(48, '153.205.198.22', 'Japan', 1, '2018-01-09 15:46:40'),
(49, '153.205.198.22', 'Japan', 1, '2018-01-10 20:34:12'),
(50, '153.205.198.22', 'Japan', 1, '2018-01-11 14:08:56'),
(51, '153.205.198.22', 'Japan', 1, '2018-01-15 18:10:09'),
(52, '153.205.198.22', 'Japan', 1, '2018-01-16 16:15:33'),
(53, '153.205.198.22', 'Japan', 1, '2018-01-17 21:39:17'),
(54, '153.205.198.22', 'Japan', 1, '2018-01-18 20:16:09'),
(55, '153.205.198.22', 'Japan', 1, '2018-01-19 15:05:32'),
(56, '153.205.198.22', 'Japan', 1, '2018-01-22 14:38:48'),
(57, '153.205.198.22', 'Japan', 1, '2018-01-25 15:44:30'),
(58, '153.205.198.22', 'Japan', 1, '2018-01-26 21:24:38'),
(59, '153.205.198.22', 'Japan', 1, '2018-01-29 20:45:50'),
(60, '153.205.198.22', 'Japan', 1, '2018-01-30 22:32:35'),
(61, '153.205.198.22', 'Japan', 1, '2018-01-31 18:35:33'),
(62, '153.205.198.22', 'Japan', 1, '2018-02-07 17:37:45'),
(63, '153.205.198.22', 'Japan', 1, '2018-02-13 16:52:37'),
(64, '153.205.198.22', 'Japan', 1, '2018-02-14 13:33:04'),
(65, '153.205.198.22', 'Japan', 1, '2018-02-16 13:50:44'),
(66, '153.205.198.22', 'Japan', 1, '2018-02-23 17:06:23'),
(67, '153.205.198.22', 'Japan', 1, '2018-03-02 17:25:19'),
(68, '153.205.198.22', 'Japan', 1, '2018-03-03 12:06:54'),
(69, '153.205.198.22', 'Japan', 1, '2018-03-05 16:27:57'),
(70, '153.205.198.22', 'Japan', 1, '2018-03-06 17:59:36'),
(71, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(72, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(73, '153.205.198.22', 'Japan', 1, '2018-03-12 19:38:37'),
(74, '153.205.198.22', 'Japan', 1, '2018-03-13 20:35:47'),
(75, '153.205.198.22', 'Japan', 1, '2018-03-14 19:41:17'),
(76, '153.205.198.22', 'Japan', 1, '2018-03-15 16:41:11'),
(77, '153.205.198.22', 'Japan', 1, '2018-03-16 19:21:45'),
(78, '153.205.198.22', 'Japan', 1, '2018-03-17 12:23:58'),
(79, '153.205.198.22', 'Japan', 1, '2018-03-19 00:38:47'),
(80, '153.205.198.22', 'Japan', 1, '2018-03-19 12:57:20'),
(81, '153.205.198.22', 'Japan', 1, '2018-03-20 20:33:33'),
(82, '153.205.198.22', 'Japan', 1, '2018-03-21 19:30:58'),
(83, '153.205.198.22', 'Japan', 1, '2018-03-23 19:41:03'),
(84, '153.205.198.22', 'Japan', 1, '2018-03-26 12:42:06'),
(85, '153.205.198.22', 'Japan', 1, '2018-03-27 13:26:30'),
(86, '163.172.160.190', 'France', 1, '2018-03-27 23:23:14'),
(87, '189.183.96.0', 'Mexico', 1, '2019-12-06 04:21:13'),
(88, '189.183.96.0', 'Mexico', 1, '2019-12-06 05:55:10'),
(89, '189.183.96.0', 'Mexico', 1, '2019-12-06 05:55:27'),
(90, '189.183.96.0', 'Mexico', 1, '2019-12-06 05:55:58'),
(91, '189.183.96.0', 'Mexico', 1, '2019-12-06 05:56:17'),
(92, '189.183.96.0', 'Mexico', 1, '2019-12-06 05:57:10'),
(93, '189.183.96.0', 'Mexico', 1, '2019-12-28 06:35:54'),
(94, '189.183.96.0', 'Mexico', 1, '2020-02-21 03:55:06'),
(95, '189.183.96.0', 'Mexico', 1, '2020-02-21 05:21:01'),
(96, '189.183.96.0', 'Mexico', 1, '2020-02-21 05:21:04'),
(97, '189.183.96.0', 'Mexico', 1, '2020-02-25 02:50:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
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
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `letras3d`
--
ALTER TABLE `letras3d`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
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
-- Indices de la tabla `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `banner_art`
--
ALTER TABLE `banner_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `banner_corp`
--
ALTER TABLE `banner_corp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `banner_dig`
--
ALTER TABLE `banner_dig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `banner_lumi`
--
ALTER TABLE `banner_lumi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `banner_sena`
--
ALTER TABLE `banner_sena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
