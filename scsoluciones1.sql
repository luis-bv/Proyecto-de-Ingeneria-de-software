-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-03-2019 a las 20:27:32
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scsoluciones1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` int(15) NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(10) NOT NULL,
  `fechaingreso` date NOT NULL,
  `tipoprestamo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `capitalsolicitado` int(20) NOT NULL,
  `interesprestamo` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacredito`
--

CREATE TABLE `notacredito` (
  `id` int(11) NOT NULL,
  `ncredito` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `numerofactura` int(10) NOT NULL,
  `concepto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(10) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `debe` int(10) NOT NULL,
  `haber` int(10) NOT NULL,
  `detalles` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notadebito`
--

CREATE TABLE `notadebito` (
  `id` int(5) NOT NULL,
  `ndebito` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `numerofactura` int(10) NOT NULL,
  `concepto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `debe` int(10) NOT NULL,
  `haber` int(10) NOT NULL,
  `detalles` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `nombreuser` int(50) NOT NULL,
  `tipouser` int(30) NOT NULL,
  `contrasena` int(20) NOT NULL,
  `repcontrasena` int(20) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodepago`
--

CREATE TABLE `registrodepago` (
  `norecibo` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `nomcliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellcliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `formapago` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pago` int(10) NOT NULL,
  `pendiente` int(10) NOT NULL,
  `diferencia` int(10) NOT NULL,
  `tipodpago` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `moneda` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cuotas` int(10) NOT NULL,
  `cuotapagada` int(10) NOT NULL,
  `fechvencimiento` date NOT NULL,
  `nota` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `interes` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroempleados`
--

CREATE TABLE `registroempleados` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechadnacimiento` date NOT NULL,
  `sexo` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(20) NOT NULL,
  `estadocivil` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminoprestamo`
--

CREATE TABLE `terminoprestamo` (
  `condicionespres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numerocuota` int(10) NOT NULL,
  `cuotasxpago` int(10) NOT NULL,
  `totalxpagar` int(10) NOT NULL,
  `plazodpago` date NOT NULL,
  `fechadpago` date NOT NULL,
  `reditoxatraso` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registroempleados`
--
ALTER TABLE `registroempleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registroempleados`
--
ALTER TABLE `registroempleados`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
