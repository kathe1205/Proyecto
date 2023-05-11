-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2023 a las 17:04:06
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `usuario` varchar(50) NOT NULL,
  `contrasena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`usuario`, `contrasena`) VALUES
('[Pepita]', 0),
('pedro castañeda', 1234),
('laura ', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `identificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `identificacion`) VALUES
(1, 'marcela', 1234),
(2, 'viviana', 2345),
(3, 'laura', 32456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `tipo`, `precio`, `descripcion`) VALUES
(1, 'capuchino', 'cafe', 5, 'Es una bebida nacida en Italia, preparada con cafe expreso y leche montada con vapor para darle cremosidad.'),
(2, 'moccacino', 'cafe', 5, 'Suele llevar un tercio de expreso y dos tercios de leche vaporizada, pero se anade una parte de chocolate.'),
(3, 'expreso', 'cafe', 5, 'Se caracteriza por su rapida preparacion a una alta presion y por un sabor y textura mas concentrados.'),
(4, 'macchiato', 'cafe', 5, 'es un cafe cortado tipico de Italia, consiste en un expreso con una pequena cantidad de leche caliente y espumada.'),
(5, 'ristretto', 'cafe', 5, 'Se elabora con la misma cantidad de cafe molido, pero se extrae con un molido mas fino utilizando la mitad de agua'),
(6, 'latte', 'cafe', 5, 'Es una bebida de cafe de origen italiano hecha con espresso y leche al vapor. a menudo abreviado simplemente como latte'),
(7, 'irlandes', 'cafe', 5, 'Consiste en la mezcla de whisky irlandes, una cucharada de azucar y cafe, pero finalmente va cubierto de crema de leche'),
(8, 'carajillo', 'cafe', 5, 'Consiste en la mezcla de whisky irlandes, una cucharada de azucar y cafe, pero finalmente va cubierto de crema de leche'),
(9, 'cortado', 'cafe', 5, 'Forma en que leche corta la intensidad del espresso, atenuando su acidez mientras mantiene el sabor del cafe.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `valor_producto` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto`, `valor_producto`, `cliente`) VALUES
(1, 'moccacino', 5, 'marcela'),
(2, 'tiramisu', 7, 'laura'),
(3, 'cupcake', 5, 'laura');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
