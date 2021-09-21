-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-09-2021 a las 02:05:11
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `categoria` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Accion'),
(2, 'Drama'),
(3, 'Comedia'),
(4, 'Aventura'),
(5, 'Ciencia Ficción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(10) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `Título` varchar(250) NOT NULL,
  `Descripción` text NOT NULL,
  `Duración` varchar(25) NOT NULL,
  `Múltiples_categorías` int(5) NOT NULL,
  `Trailer_youtube` varchar(100) NOT NULL,
  `Fecha_estreno` datetime NOT NULL,
  `visualizacion` varchar(25) NOT NULL,
  `calificacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `imagen`, `Título`, `Descripción`, `Duración`, `Múltiples_categorías`, `Trailer_youtube`, `Fecha_estreno`, `visualizacion`, `calificacion`) VALUES
(1, 'https://placeimg.com/640/480/nature', 'cine de terror', 'hbcdhbjcbdhbhbcdhbdchbhbdchbdchbhbdcbhdcnjdcnjdcnjnjdnjcdnjdjccfcfcsxcfcfsxcfcfsxsxhbsxhbsxhbbhxshbsx', '2 horas', 2, 'https://www.youtube.com/watch?v=77vWTVyebvI&t=26s', '2021-09-08 17:52:49', 'vista', 'me gusta'),
(2, 'sxxxxxxxxxxxxxxxxxxxxxxx', 'csssssssssssssssssssssss', 'scccccccccccccccccccccccccccc', '3 horas', 5, 'sxxxxxxxxxxxxxxxxxxxxxxx', '2021-09-07 20:12:08', 'vista', 'me gusta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Múltiples_categorías` (`Múltiples_categorías`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`Múltiples_categorías`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
