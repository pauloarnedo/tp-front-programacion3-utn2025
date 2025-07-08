-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2025 a las 05:13:50
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
-- Base de datos: `parcialtp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 8, 1, '74500.00'),
(2, 1, 9, 1, '90000.00'),
(3, 1, 6, 1, '28500.00'),
(4, 2, 8, 1, '74500.00'),
(5, 3, 8, 1, '74500.00'),
(6, 3, 6, 3, '28500.00'),
(7, 3, 2, 8, '38500.00'),
(8, 3, 3, 1, '45000.00'),
(9, 3, 5, 3, '53000.00'),
(10, 4, 8, 1, '74500.00'),
(11, 5, 8, 1, '74500.00'),
(12, 5, 5, 1, '53000.00'),
(13, 5, 2, 1, '38500.00'),
(14, 6, 8, 1, '74500.00'),
(15, 6, 6, 1, '28500.00'),
(16, 7, 8, 1, '74500.00'),
(17, 7, 5, 1, '53000.00'),
(18, 8, 8, 1, '74500.00'),
(19, 9, 8, 1, '74500.00'),
(20, 10, 8, 1, '74500.00'),
(21, 11, 8, 1, '74500.00'),
(22, 11, 5, 1, '53000.00'),
(23, 11, 6, 1, '28500.00'),
(24, 12, 8, 1, '74500.00'),
(25, 13, 8, 1, '74500.00'),
(26, 13, 9, 3, '90000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `image`, `name`, `price`, `active`) VALUES
(1, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-936998.jpg', 'Shadow of the Tomb Raider', '30000.00', 1),
(2, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-936103.jpg', 'Assassins Creed Unity', '38500.00', 1),
(3, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-937249.jpg', 'Red Dead Redemption', '45000.00', 1),
(4, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-41zBIlK1ujL._AC_SY1000_.jpg', 'R:E Village', '38000.00', 1),
(5, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-ragnarok-ps4.jpg', 'God of War: Ragnarok', '53000.00', 1),
(6, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-905418.jpg', 'Rayman Legends', '28500.00', 1),
(7, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-b935b816-283b-4490-b66d-2c644226e465.jpeg', 'Zelda Echoes of Wisdom', '83000.00', 1),
(8, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-905396.jpg', 'Luigis Mansion 2 HD', '74500.00', 1),
(9, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-905345.jpg', 'Super Mario Bros. Wonder', '90000.00', 1),
(10, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-91O9Uk5oWAL._SL1500_.jpg', 'Zelda Tears of the Kingdom', '88000.00', 1),
(11, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-81JwPWoFOLL.jpg', 'Pokemon Scarlet', '73200.00', 1),
(12, 'juegos', 'https://images.launchbox-app.com//3e0032bb-3e29-4206-af02-6fdeed8ecb06.jpg', 'The Last of Us Part II', '55000.00', 1),
(13, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-marionsw2.jpg', 'Mario Kart World', '120000.00', 1),
(14, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-932313.jpg', 'Max Payne 3', '28000.00', 1),
(15, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-938264.jpg', 'Resident Evil 2', '57500.00', 1),
(16, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-938179.jpg', 'Horizon Forbidden West', '73200.00', 1),
(17, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-938199.jpg', 'Black Myth Wu Kong', '100000.00', 1),
(18, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-938225.jpg', 'Dragon Ball FighterZ', '67000.00', 1),
(19, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-WhatsApp_Image_2023-10-24_at_17.14.36.jpeg', 'Spider Man 2', '80000.00', 1),
(20, 'juegos', 'https://www.cdmarket.com.ar/Image/0/600_750-sh2.jpeg', 'Silent Hill 2', '74300.00', 1),
(21, 'consolas', 'https://www.cdmarket.com.ar/image/0/600_750-image_(6).png', 'Playstation 5 Slim', '1200000.00', 1),
(22, 'consolas', 'https://www.cdmarket.com.ar/Image/0/400_400-905420.jpeg', 'Nintendo Switch', '820000.00', 1),
(23, 'consolas', 'https://www.cdmarket.com.ar/image/0/600_750-NS2.png', 'Nintendo Switch 2', '1349000.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `usuario`, `fecha`, `total`) VALUES
(1, 'Josefina', '2025-07-07 22:48:41', '193000.00'),
(2, 'Josefina', '2025-07-07 22:51:08', '74500.00'),
(3, 'Josefina', '2025-07-07 23:03:38', '672000.00'),
(4, 'Josefina', '2025-07-07 23:14:46', '74500.00'),
(5, 'Josefina', '2025-07-07 23:15:01', '166000.00'),
(6, 'Josefina', '2025-07-07 23:29:15', '103000.00'),
(7, 'Carlos', '2025-07-07 23:32:30', '127500.00'),
(8, 'Carlitos', '2025-07-07 23:45:02', '74500.00'),
(9, 'Carlitos', '2025-07-07 23:45:46', '74500.00'),
(10, 'asd', '2025-07-07 23:50:16', '74500.00'),
(11, '222', '2025-07-08 00:02:09', '156000.00'),
(12, '1651651', '2025-07-08 00:11:34', '74500.00'),
(13, 'Miguelito', '2025-07-08 00:12:03', '344500.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
