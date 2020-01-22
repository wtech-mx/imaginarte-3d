-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-01-2020 a las 20:51:33
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
(6, 'Letreros luminosos', 'Â¡IluminaciÃ³n Creativa!', '2020-01-21 05:30:01', ' Elige la iluminaciÃ³n que mÃ¡s se adapte a tus necesidades; Luz frÃ­a, cÃ¡lida o mÃ¡s de 18 colores para que tu letrero resalte de los demÃ¡s.\r\n\r\n\r\n', 'aluminio8.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
