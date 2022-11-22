-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 02:12:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horchata`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `idCat` int(10) NOT NULL,
  `nomJuego` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `plataforma` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`idCat`, `nomJuego`, `descripcion`, `precio`, `plataforma`, `imagen`) VALUES
(1, 'Minecraft', 'Explora mundos y así ', 'MXN$759.00', 'Windows', ''),
(2, 'Rocket League', 'Rocket League es un jueguito, como futbol, pero con carritos :D', 'Gratis', 'Windows', ''),
(3, 'Fall Guys', 'Cositas raras pero tiernas', 'Gratis', 'Windows', ''),
(4, 'God of War: Ragnarök', 'Los Dioses del Olimpo nos han abandonado', 'MXN$1,699.00', 'Windows', ''),
(5, 'Resident Evil 7: Biohazard', 'Que no te maten D:', 'MXN$849.00', 'Windows', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDe` int(10) NOT NULL,
  `idCat` int(10) NOT NULL,
  `nomJuego` varchar(255) NOT NULL,
  `desarrollador` varchar(255) NOT NULL,
  `distribuidor` varchar(255) NOT NULL,
  `disenadores` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `modos` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `pataformas` varchar(255) NOT NULL,
  `lanzamiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idDe`, `idCat`, `nomJuego`, `desarrollador`, `distribuidor`, `disenadores`, `genero`, `modos`, `version`, `pataformas`, `lanzamiento`) VALUES
(1, 1, 'Minecraft', 'Mojang Studios', 'Mojang\r\nXbox Game Studios\r\nSony Computer Entertainment', 'Markus Persson \"Notch\"\r\nJens Bergensten \"Jeb\"\r\nNathan Adams \"Dinnerbone\"', 'Sandbox', 'Un jugador, multijugador', 'Minecraft: Java Edition: 1.19.2', 'Windows\r\nmacOS\r\nLinux (compatibles con Java)\r\nAndroid\r\niOS\r\niPadOS\r\nXbox 360\r\nXbox One\r\nXbox Series X/S\r\nPlayStation 3\r\nPlayStation 4\r\nPlayStation Vita\r\nRaspberry Pi\r\nWii U\r\nNintendo Switch\r\nNew Nintendo 3DS\r\nWindows Phone\r\nFire OS\r\ntvOS\r\nApple TV', '2011-11-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`idCat`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDe`),
  ADD KEY `idCat` (`idCat`),
  ADD KEY `nomJuego` (`nomJuego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `idCat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
