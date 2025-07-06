-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2025 a las 00:46:55
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
