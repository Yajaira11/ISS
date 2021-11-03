-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2021 a las 03:07:24
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pawg8`
--
CREATE DATABASE IF NOT EXISTS `pawg8` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pawg8`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `imagen_cate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `imagen_cate`) VALUES
(20, 'mariscos', 'mariscos.jpg'),
(21, 'res', 'res.jpg'),
(22, 'embutidos', 'embutidos.jpg'),
(23, 'lacteos', 'lacteos.jpg'),
(24, 'abarrotes', 'abarrotes.jpeg'),
(25, 'aves', 'aves.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre_producto` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio_compra` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `imagen_cate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_producto`, `descripcion`, `precio_compra`, `cantidad`, `precio_venta`, `categoria`, `imagen_cate`) VALUES
(22, 'camaron', 'camaron fresco', 10, 10, 12, 'mariscos', 'camaron.jpg'),
(23, 'pollo', 'pollo empanizado', 1, 7, 2, 'aves', 'pollo.jpg'),
(24, 'cereal', 'cereal zucaritas', 3, 9, 4.99, 'abarrotes', 'cereal.jpg'),
(25, 'queso', 'queso duro blanco', 3, 6, 3.5, 'lacteos', 'queso.jpg'),
(26, 'jamon', 'jamon de cerdo', 4, 11, 5.5, 'embutidos', 'jamon.jpg'),
(27, 'carne de res', 'carne de vaca', 6, 14, 6.5, 'res', 'carne de res.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `correo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `direccion`, `telefono`, `correo`) VALUES
(22, 'proveedor el barquito', '200 metros sobre carretera', '77345679', 'elbarquito200@gmail.com'),
(23, 'el rancho', 'cerro alto', '75804950', 'elrancho@gmail.com'),
(24, 'multi venta', 'zona central', '77365920', 'multiventa@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `email` text NOT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `foto` text NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `email`, `clave`, `token`, `tipo`, `foto`, `estado`) VALUES
(21, 'admin', '', '$2y$10$IhfnhT4ZqYkWnXhwcuerquRXxPvNDcyi3Jp/9Iicj/5/5ejtEYWti', NULL, 1, 'admin.png', 1),
(22, 'Yajaira Rivera', '', '$2y$10$MZL8gHJO1LtvtWDDGARpzOORr2jrBo2fQuajcKvFmpoOgptK..n/q', NULL, 1, 'Yajaira Rivera.jpg', 1),
(23, 'Yajaira Rivera', '', '$2y$10$uAwz/rPbvbSIRUlmzn3gQ.G5BppTX.Lma8mMd/J0JznXZaSdWrEOW', NULL, 1, 'Yajaira Rivera.jpg', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
