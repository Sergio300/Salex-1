-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2017 a las 11:13:33
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apPaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apMaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correoInst` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `boleta` int(30) NOT NULL,
  `materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `activo` int(2) NOT NULL,
  `pass` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apPaterno`, `apMaterno`, `correoInst`, `boleta`, `materia`, `activo`, `pass`) VALUES
(1, 'Sergio', 'Borja', 'Dominguex', 'serio.ipn@alumos.com', 2113066221, 'ingles 1', 1, '1234'),
(2, 'Mario', 'Reyes', 'Dominguez', 'mario@ipn.mx', 1234567890, 'Ingles 8', 1, '123456'),
(3, 'Oscar Eduardo', 'Reyes Dominguez', 'Dominguez', 'al.rey.bi93@hotmail.com', 1234567898, 'Ingles 9', 1, '12'),
(4, 'Naomi', 'Azuara', 'Dominguez', 'luisrosas_39@hotmail.com', 987654323, 'Ingles 3', 1, '0987');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
