-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-01-2020 a las 23:41:29
-- Versión del servidor: 5.6.44-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `imaginarte-3d`
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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `productos` varchar(200) NOT NULL,
  `src` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
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
(9, 'Damos Vida a tus ideas ', '', 'uploads/', '1.jpg', '2020-01-13 16:12:56');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `letras3d`
--
ALTER TABLE `letras3d`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `producto`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
