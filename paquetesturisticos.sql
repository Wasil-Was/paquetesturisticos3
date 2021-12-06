-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2021 a las 17:49:23
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paquetesturisticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adicionales`
--

CREATE TABLE `adicionales` (
  `ID_Adicional` int(11) NOT NULL,
  `adicional` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `adicionales`
--

INSERT INTO `adicionales` (`ID_Adicional`, `adicional`) VALUES
(1, 'Wi-Fi'),
(2, 'Silla de Bebes'),
(3, 'Sanitizacion'),
(4, 'Automóvil'),
(5, 'Piscina'),
(6, 'Hospedaje'),
(7, 'Restaurante'),
(8, 'Aire Acondicionado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rut` varchar(8) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `fechaNac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rut`, `nombre`, `telefono`, `email`, `fechaNac`) VALUES
('16325478', 'Juanito Gonzales', 956874526, 'juanitogonzales@gmail.com', '2002-06-16'),
('17348561', 'Pedro Pedrero', 946573535, 'pedropedre@gmail.com', '1988-03-14'),
('18123456', 'Juan Perez', 32124322, 'juanperez@gmail.com', '1990-01-22'),
('20333132', 'Elvis Tek', 945787378, 'elvistek@gmail.com', '2001-02-28'),
('8576822', 'Gonzalo Gonzalez', 3254709, 'gonzgonz@gmail.com', '1962-06-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_Boleta` int(11) NOT NULL,
  `rut_cliente` varchar(8) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`ID_Boleta`, `rut_cliente`, `valor`) VALUES
(123, '18123456', 200000),
(234, '17348561', 450000),
(345, '18123456', 500000),
(567, '20333132', 1000000),
(876, '8576822', 1200000),
(999, '20333132', 700000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `ID_Paquete` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `paisDestino` varchar(30) NOT NULL,
  `ciudadDestino` varchar(60) NOT NULL,
  `hospedaje` varchar(60) NOT NULL,
  `restaurante` varchar(60) NOT NULL,
  `automovil` varchar(60) NOT NULL,
  `cantPersonas` int(11) NOT NULL,
  `valorNoche` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`ID_Paquete`, `descripcion`, `paisDestino`, `ciudadDestino`, `hospedaje`, `restaurante`, `automovil`, `cantPersonas`, `valorNoche`) VALUES
(1001, 'Este paquete turístico cuenta con automóvil, el cual cuenta con asiento de bebes, herramientas de Sanitización por Covid-19 y aire acondicionado en el vehículo. Espectacular para viajar por el pais con la familia.', 'Argentina', 'Buenos Aires', 'Hotel Mercure Santiago Centro', 'Krossbar', 'Mazda CX 5', 1, 50000),
(1002, 'Este paquete turístico cuenta con automóvil, el cual cuenta con asiento de bebes, herramientas de Sanitización por Covid-19 y aire acondicionado en el vehículo.Espectacular para viajar por el pais con la familia.', 'Japon', 'Akihabara', 'No Aplica', 'No Aplica', 'Ssangyong Korando', 3, 150000),
(1003, 'Este paquete turístico cuenta con un vehículo espectacular y capacidad para dos personas, con Wi-Fi en el vehículo. Gran opción para disfrutar con un amigo o en pareja paseando por el país.', 'Japon', 'Takayama', 'No Aplica', 'No Aplica', 'Lamborghini Urus', 2, 100000),
(1004, 'Este paquete turístico cuenta hospedaje y acceso a restaurante, además de acceso a Wi-Fi, y Sanitización por Covid-19 en todas las locaciones. Ideal para disfrutar y pasear por la ciudad conociendo gente.', 'Egipto', 'Giza', 'Hotel Santibañez de la Mancha', 'Zanzíbar', 'No Aplica', 1, 50000),
(1005, 'Este paquete turístico cuenta hospedaje y acceso a restaurante, además de acceso a Wi-Fi y Sanitización en las locaciones.Espectacular para disfrutar de la ciudad con la familia.', 'Reino Unido', 'Londres', 'Hotel Panamericano', 'Gran Refugio', 'No Aplica', 4, 200000),
(1024, 'Este paquete turístico para dos personas no cuenta con nada, pero Francia es bonito.', 'Francia', 'Paris', 'No Aplica', 'No Aplica', 'No Aplica', 2, 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_adicionales`
--

CREATE TABLE `paquete_adicionales` (
  `ID_Adicional` int(11) NOT NULL,
  `ID_Paquete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete_adicionales`
--

INSERT INTO `paquete_adicionales` (`ID_Adicional`, `ID_Paquete`) VALUES
(1, 1001),
(1, 1004),
(1, 1005),
(2, 1002),
(3, 1001),
(3, 1002),
(3, 1004),
(3, 1005),
(4, 1001),
(4, 1002),
(6, 1001),
(6, 1004),
(6, 1005),
(7, 1001),
(7, 1004),
(7, 1005),
(8, 1002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_cliente`
--

CREATE TABLE `paquete_cliente` (
  `ID_Paquete` int(11) NOT NULL,
  `rut_cliente` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete_cliente`
--

INSERT INTO `paquete_cliente` (`ID_Paquete`, `rut_cliente`) VALUES
(1001, '18123456'),
(1002, '17348561'),
(1005, '20333132'),
(1005, '8576822');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasaje`
--

CREATE TABLE `pasaje` (
  `ID_Pasaje` int(11) NOT NULL,
  `ID_Paquete` int(11) NOT NULL,
  `rutPasajero` varchar(8) NOT NULL,
  `clase` varchar(20) NOT NULL,
  `asiento` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasaje`
--

INSERT INTO `pasaje` (`ID_Pasaje`, `ID_Paquete`, `rutPasajero`, `clase`, `asiento`, `valor`) VALUES
(80186, 1001, '20483921', 'Economica', 22, 500000),
(80286, 1002, '12436520', 'Economica', 33, 400000),
(80486, 1004, '20531130', 'Premium', 14, 750000),
(80586, 1005, '12165854', 'Ejecutiva', 5, 1000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `ID_Ruta` int(11) NOT NULL,
  `ID_Vuelo` int(11) NOT NULL,
  `aeropuertoOrigen` varchar(70) NOT NULL,
  `aeropuertoDestino` varchar(70) NOT NULL,
  `paisOrigen` varchar(30) NOT NULL,
  `paisDestino` varchar(30) NOT NULL,
  `fechaIda` date NOT NULL,
  `fechaVuelta` date NOT NULL,
  `horaSalida` time NOT NULL,
  `horaVuelta` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`ID_Ruta`, `ID_Vuelo`, `aeropuertoOrigen`, `aeropuertoDestino`, `paisOrigen`, `paisDestino`, `fechaIda`, `fechaVuelta`, `horaSalida`, `horaVuelta`) VALUES
(1111, 186, 'Aeropuerto Internacional Arturo Merino Benítez', 'Aeropuerto de Brasil', 'Chile', 'Brasil', '2021-09-30', '2021-10-07', '08:30:00', '09:00:00'),
(1212, 286, 'Aeropuerto Internacional Arturo Merino Benítez', 'Aeropuerto de Peru', 'Chile', 'Peru', '2021-10-12', '2021-10-20', '07:30:00', '10:00:00'),
(1414, 486, 'Aeropuerto Internacional Arturo Merino Benítez', 'Aeropuerto de Colombia', 'Chile', 'Colombia', '2021-11-01', '2021-11-25', '09:00:00', '23:00:00'),
(1515, 586, 'Aeropuerto Internacional Arturo Merino Benítez', 'Aeropuerto de Mexico', 'Chile', 'Mexico', '2021-12-07', '2022-01-07', '23:00:00', '17:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `ID_Vuelo` int(11) NOT NULL,
  `ID_Pasaje` int(11) NOT NULL,
  `modeloAvion` varchar(20) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`ID_Vuelo`, `ID_Pasaje`, `modeloAvion`, `capacidad`) VALUES
(186, 80186, 'Boeing 777', 500),
(286, 80286, 'Boeing 777', 550),
(486, 80486, 'Boeing 757', 100),
(586, 80586, 'Boeing 777', 500);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adicionales`
--
ALTER TABLE `adicionales`
  ADD PRIMARY KEY (`ID_Adicional`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_Boleta`),
  ADD KEY `FK_Pago_Cliente` (`rut_cliente`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`ID_Paquete`);

--
-- Indices de la tabla `paquete_adicionales`
--
ALTER TABLE `paquete_adicionales`
  ADD PRIMARY KEY (`ID_Adicional`,`ID_Paquete`),
  ADD KEY `FK_Paquete_Adicionales2` (`ID_Paquete`);

--
-- Indices de la tabla `paquete_cliente`
--
ALTER TABLE `paquete_cliente`
  ADD PRIMARY KEY (`ID_Paquete`,`rut_cliente`),
  ADD KEY `FK_Paquete_Cliente2` (`rut_cliente`);

--
-- Indices de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD PRIMARY KEY (`ID_Pasaje`),
  ADD KEY `FK_Pasaje_Paquete` (`ID_Paquete`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`ID_Ruta`),
  ADD KEY `FK_Ruta_Vuelo` (`ID_Vuelo`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`ID_Vuelo`),
  ADD KEY `FK_Vuelo_Pasaje` (`ID_Pasaje`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adicionales`
--
ALTER TABLE `adicionales`
  MODIFY `ID_Adicional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_Boleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `ID_Paquete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;

--
-- AUTO_INCREMENT de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  MODIFY `ID_Pasaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80587;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `ID_Ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1617;

--
-- AUTO_INCREMENT de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  MODIFY `ID_Vuelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `FK_Pago_Cliente` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete_adicionales`
--
ALTER TABLE `paquete_adicionales`
  ADD CONSTRAINT `FK_Paquete_Adicionales1` FOREIGN KEY (`ID_Adicional`) REFERENCES `adicionales` (`ID_Adicional`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Paquete_Adicionales2` FOREIGN KEY (`ID_Paquete`) REFERENCES `paquete` (`ID_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete_cliente`
--
ALTER TABLE `paquete_cliente`
  ADD CONSTRAINT `FK_Paquete_Cliente1` FOREIGN KEY (`ID_Paquete`) REFERENCES `paquete` (`ID_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Paquete_Cliente2` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD CONSTRAINT `FK_Pasaje_Paquete` FOREIGN KEY (`ID_Paquete`) REFERENCES `paquete` (`ID_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `FK_Ruta_Vuelo` FOREIGN KEY (`ID_Vuelo`) REFERENCES `vuelo` (`ID_Vuelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `FK_Vuelo_Pasaje` FOREIGN KEY (`ID_Pasaje`) REFERENCES `pasaje` (`ID_Pasaje`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
