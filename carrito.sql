-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2023 a las 18:42:01
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20502285_tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `activo`) VALUES
(1, 'Laptop LHMZNIY Yobook Pro Intel Celeron', '1869.00', 1),
(2, 'Laptop Huawei ', '2849.00', 1),
(3, 'CPU Lenovo EDGEE 73 I3 4TA ', '5345.00', 1),
(4, 'CPU Core i7-10700 480GB SSD ', '3599.00', 1),
(5, 'Computadora Pc Gamer ', '2399.00', 1),
(6, 'CPU INTEL CORE i7-10700 ', '3679.00', 1),
(7, 'Camara Web 2560P FULL HD ', '85.90', 1),
(8, 'Cámara web FULL HD 1080p', '55.90', 1),
(9, 'Webcam con micrófono HD 1080p Clip-On', '91.90', 1),
(10, 'Funda 15,6 Crepier Artis', '69.90', 1),
(11, 'Funda 15,6 Maleta con ASA', '30.00', 1),
(12, 'Audífono Skullcandy Riff', '69.90', 1),
(13, 'Skullcandy Spoke True Audífonos', '149.90', 1),
(14, 'Audifono Samsung AKG', '110.00', 1),
(15, 'Audifonos Gaming Hunterspider ', '89.90', 1),
(16, 'JBL Audifonos Bluetooth', '159.90', 1),
(17, 'Audifono SONY ZX310AP', '86.00', 1),
(18, 'Mouse Optico Inalambrico Fiddler FD-223 ', '29.90', 1),
(19, 'Mouse Inalambrico Xiaomi Dual Mode', '69.90', 1),
(20, 'Mouse Gamer 4000dpi8 ', '184.00', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
