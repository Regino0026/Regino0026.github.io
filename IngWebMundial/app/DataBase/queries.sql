CREATE DATABASE  IF NOT EXISTS `ingweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ingweb`;

UNLOCK TABLES;

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `roles` WRITE;

INSERT INTO `roles` VALUES (1, 'admin', 'Administrador');
INSERT INTO `roles` VALUES (2, 'user', 'Usuario');

UNLOCK TABLES;

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `rol_id` int,
  PRIMARY KEY (`id_users`),
  CONSTRAINT FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Juan22','1234','Juan','Alvarado','juan@live.com','1');
INSERT INTO `users` VALUES (2,'samuel00','12345612','Samuel','Nuñez','samuel@gmail.com','2');
INSERT INTO `users` VALUES (3,'roberto14','291402','Roberto','Cortez','robertito@gmail.com','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `clasificacion` (
  `idClasificacion` int(11) NOT NULL,
  `idGrupo` int(5) NOT NULL,
  `idEquipo` int(5) DEFAULT NULL,
  `Puntos` int(5) DEFAULT NULL,
  `JJ` int(5) DEFAULT NULL,
  `JG` int(5) DEFAULT NULL,
  `JE` int(5) DEFAULT NULL,
  `JP` int(5) DEFAULT NULL,
  `GA` int(5) DEFAULT NULL,
  `GC` int(5) DEFAULT NULL,
  `DIF` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`idClasificacion`, `idGrupo`, `idEquipo`, `Puntos`, `JJ`, `JG`, `JE`, `JP`, `GA`, `GC`, `DIF`) VALUES
(1, 1, 1, 0, 3, 0, 0, 3, 1, 7, -6),
(2, 1, 2, 4, 3, 1, 1, 1, 4, 3, 1),
(3, 1, 3, 6, 3, 2, 0, 1, 5, 4, 1),
(4, 1, 4, 7, 3, 2, 1, 0, 5, 1, 4),
(5, 2, 5, 7, 3, 2, 1, 0, 9, 2, 7),
(6, 2, 6, 3, 3, 1, 0, 2, 4, 7, -3),
(7, 2, 7, 5, 3, 1, 2, 0, 2, 1, 1),
(8, 2, 8, 1, 3, 0, 1, 2, 1, 6, -5),
(9, 3, 9, 6, 3, 2, 0, 1, 5, 2, 3),
(10, 3, 10, 3, 3, 1, 0, 2, 3, 5, -2),
(11, 3, 11, 4, 3, 1, 1, 1, 2, 3, -1),
(12, 3, 12, 4, 3, 1, 1, 1, 2, 2, 0),
(13, 4, 13, 6, 2, 2, 0, 0, 6, 2, 4),
(14, 4, 14, 6, 3, 2, 0, 1, 3, 4, -1),
(15, 4, 15, 1, 3, 0, 1, 2, 1, 3, -2),
(16, 4, 16, 1, 2, 0, 1, 1, 0, 1, -1),
(17, 5, 17, 4, 2, 1, 1, 0, 8, 1, 7),
(18, 5, 18, 3, 2, 1, 0, 1, 1, 7, -6),
(19, 5, 19, 1, 2, 0, 1, 1, 2, 3, -1),
(20, 5, 20, 3, 2, 1, 0, 1, 2, 2, 0),
(21, 6, 21, 3, 2, 1, 0, 1, 1, 2, -1),
(22, 6, 22, 0, 2, 0, 0, 2, 1, 5, -4),
(23, 6, 23, 4, 2, 1, 1, 0, 2, 0, 2),
(24, 6, 24, 4, 2, 1, 1, 0, 4, 1, 3),
(25, 7, 25, 6, 2, 2, 0, 0, 3, 0, 3),
(26, 7, 26, 1, 2, 0, 1, 1, 3, 5, -2),
(27, 7, 27, 3, 2, 1, 0, 1, 1, 1, 0),
(28, 7, 28, 1, 2, 0, 1, 1, 3, 4, -1),
(29, 8, 29, 6, 2, 2, 0, 0, 5, 2, 3),
(30, 8, 30, 3, 2, 1, 0, 1, 5, 5, 0),
(31, 8, 31, 1, 2, 0, 1, 1, 0, 2, -2),
(32, 8, 32, 1, 2, 0, 1, 1, 2, 3, -1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificadosoctavos`
--

CREATE TABLE `clasificadosoctavos` (
  `idClasificado` int(5) NOT NULL,
  `idEquipo` int(5) NOT NULL,
  `idGrupo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificadosoctavos`
--

INSERT INTO `clasificadosoctavos` (`idClasificado`, `idEquipo`, `idGrupo`) VALUES
(22, 24, 6),
(23, 22, 6),
(28, 4, 1),
(29, 3, 1),
(30, 5, 2),
(31, 7, 2),
(32, 9, 3),
(33, 12, 3),
(34, 13, 4),
(35, 14, 4),
(36, 17, 5),
(37, 18, 5),
(38, 24, 6),
(39, 23, 6),
(40, 25, 7),
(41, 27, 7),
(42, 29, 8),
(43, 30, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idEquipos` int(11) NOT NULL,
  `NombreEquipo` varchar(45) DEFAULT NULL,
  `idGrupo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idEquipos`, `NombreEquipo`, `idGrupo`) VALUES
(1, 'Qatar', 1),
(2, 'Ecuador', 1),
(3, 'Senegal', 1),
(4, 'Países Bajos', 1),
(5, 'Inglaterra', 2),
(6, 'Irán', 2),
(7, 'Estados Unidos', 2),
(8, 'Gales', 2),
(9, 'Argentina', 3),
(10, 'Arabia Saudita', 3),
(11, 'México', 3),
(12, 'Polonia', 3),
(13, 'Francia', 4),
(14, 'Australia', 4),
(15, 'Dinamarca', 4),
(16, 'Túnez', 4),
(17, 'España', 5),
(18, 'Costa Rica', 5),
(19, 'Alemania', 5),
(20, 'Japón', 5),
(21, 'Bélgica', 6),
(22, 'Canadá', 6),
(23, 'Marruecos', 6),
(24, 'Croacia', 6),
(25, 'Brasil', 7),
(26, 'Serbia', 7),
(27, 'Suiza', 7),
(28, 'Camerún', 7),
(29, 'Portugal', 8),
(30, 'Ghana', 8),
(31, 'Uruguay', 8),
(32, 'Corea del Sur', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadios`
--

CREATE TABLE `estadios` (
  `idEstadios` int(11) NOT NULL,
  `NombreEstadio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadios`
--

INSERT INTO `estadios` (`idEstadios`, `NombreEstadio`) VALUES
(1, 'Estadio Al Bayt'),
(2, 'Estadio Internacional Jalifa'),
(3, 'Estadio Al Thumama'),
(4, 'Ahmed bin Ali Stadium'),
(5, 'Estadio Lusail'),
(6, 'Education City Stadium'),
(7, 'Stadium 974 - Ras Abu Aboud'),
(8, 'Al Janoub Stadium');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `idGrupos` int(11) NOT NULL,
  `NombreGrupo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`idGrupos`, `NombreGrupo`) VALUES
(1, 'Grupo A'),
(2, 'Grupo B'),
(3, 'Grupo C'),
(4, 'Grupo D'),
(5, 'Grupo E'),
(6, 'Grupo F'),
(7, 'Grupo G'),
(8, 'Grupo H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `idJugadores` int(11) NOT NULL,
  `idEquipo` int(5) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `idPartido` int(10) NOT NULL,
  `idEquipo1` int(3) NOT NULL,
  `idEquipo2` int(3) NOT NULL,
  `golesEquipo1` int(3) NOT NULL,
  `golesEquipo2` int(3) NOT NULL,
  `fecha` date NOT NULL,
  `Estadio` int(5) NOT NULL,
  `hora` time(5) NOT NULL,
  `Grupo` int(5) NOT NULL,
  `Finalizado` varchar(5) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`idPartido`, `idEquipo1`, `idEquipo2`, `golesEquipo1`, `golesEquipo2`, `fecha`, `Estadio`, `hora`, `Grupo`, `Finalizado`) VALUES
(8, 1, 2, 0, 2, '0000-00-00', 1, '19:00:00.00000', 1, 'Si'),
(9, 3, 4, 0, 2, '0000-00-00', 3, '19:00:00.00000', 1, 'Si'),
(10, 1, 3, 1, 3, '2022-11-25', 3, '00:00:16.00000', 1, 'Si'),
(11, 4, 2, 1, 1, '2022-11-25', 2, '19:00:00.00000', 1, 'Si'),
(12, 2, 3, 1, 2, '2022-11-29', 2, '18:00:00.00000', 1, 'Si'),
(13, 4, 1, 2, 0, '2022-11-29', 1, '18:00:00.00000', 1, 'Si'),
(14, 5, 6, 6, 2, '2022-11-21', 2, '16:00:00.00000', 2, 'Si'),
(15, 7, 8, 1, 1, '2022-11-21', 4, '22:00:00.00000', 2, 'Si'),
(16, 8, 6, 0, 2, '2022-11-25', 4, '13:00:00.00000', 2, 'Si'),
(17, 5, 7, 0, 0, '2022-11-25', 1, '22:00:00.00000', 2, 'Si'),
(18, 8, 5, 0, 3, '2022-11-29', 4, '22:00:00.00000', 2, 'Si'),
(19, 6, 7, 0, 1, '2022-11-29', 3, '22:00:00.00000', 2, 'Si'),
(20, 9, 10, 1, 2, '2022-11-22', 5, '13:00:00.00000', 3, 'Si'),
(21, 11, 12, 0, 0, '2022-11-22', 7, '19:00:00.00000', 3, 'Si'),
(22, 12, 10, 2, 0, '2022-11-26', 6, '16:00:00.00000', 3, 'Si'),
(23, 9, 11, 2, 0, '2022-11-26', 5, '22:00:00.00000', 3, 'Si'),
(24, 12, 9, 0, 2, '2022-11-30', 7, '22:00:00.00000', 3, 'Si'),
(25, 10, 11, 1, 2, '2022-11-30', 5, '22:00:00.00000', 3, 'Si'),
(26, 15, 16, 0, 0, '2022-11-22', 6, '16:00:00.00000', 4, 'Si'),
(27, 13, 14, 4, 1, '2022-11-22', 8, '22:00:00.00000', 4, 'Si'),
(28, 16, 14, 0, 1, '2022-11-26', 8, '13:00:00.00000', 4, 'Si'),
(29, 13, 15, 2, 1, '2022-11-26', 7, '19:00:00.00000', 4, 'Si'),
(30, 14, 15, 1, 0, '2022-11-30', 8, '18:00:00.00000', 4, 'Si'),
(31, 16, 13, 1, 0, '2022-11-30', 6, '18:00:00.00000', 4, 'No'),
(32, 19, 20, 1, 2, '2022-11-23', 2, '16:00:00.00000', 5, 'Si'),
(33, 17, 18, 7, 0, '2022-11-23', 7, '19:00:00.00000', 5, 'Si'),
(34, 20, 18, 0, 1, '2022-11-27', 4, '13:00:00.00000', 5, 'Si'),
(35, 17, 19, 1, 1, '2022-11-27', 1, '22:00:00.00000', 5, 'Si'),
(36, 20, 17, 0, 0, '2022-12-01', 2, '22:00:00.00000', 5, 'No'),
(37, 18, 17, 0, 0, '2022-12-01', 1, '22:00:00.00000', 5, 'No'),
(38, 23, 24, 0, 0, '2022-11-23', 1, '13:00:00.00000', 6, 'Si'),
(39, 21, 22, 1, 0, '2022-11-23', 4, '22:00:00.00000', 6, 'Si'),
(40, 21, 23, 0, 2, '2022-11-27', 4, '16:00:00.00000', 6, 'Si'),
(41, 24, 22, 4, 1, '2022-11-27', 2, '19:00:00.00000', 6, 'Si'),
(42, 24, 21, 0, 0, '2022-12-01', 4, '18:00:00.00000', 6, 'No'),
(43, 22, 23, 0, 0, '2022-12-01', 3, '18:00:00.00000', 6, 'No'),
(44, 27, 28, 1, 0, '2022-11-24', 8, '13:00:00.00000', 7, 'Si'),
(45, 25, 26, 2, 0, '2022-11-24', 5, '22:00:00.00000', 7, 'Si'),
(46, 28, 26, 3, 3, '2022-11-28', 8, '13:00:00.00000', 7, 'Si'),
(47, 25, 27, 1, 0, '2022-11-28', 7, '19:00:00.00000', 7, 'Si'),
(48, 26, 27, 0, 0, '2022-12-02', 7, '22:00:00.00000', 7, 'No'),
(49, 28, 25, 0, 0, '2022-12-02', 5, '22:00:00.00000', 7, 'No'),
(50, 31, 32, 0, 0, '2022-11-24', 6, '16:00:00.00000', 8, 'Si'),
(51, 29, 30, 3, 2, '2022-11-24', 7, '19:00:00.00000', 8, 'Si'),
(52, 32, 30, 2, 3, '2022-11-28', 6, '16:00:00.00000', 8, 'Si'),
(53, 29, 31, 2, 0, '2022-11-28', 5, '22:00:00.00000', 8, 'Si'),
(54, 30, 31, 0, 0, '2022-12-02', 8, '18:00:00.00000', 8, 'No'),
(55, 32, 29, 0, 0, '2022-12-02', 6, '18:00:00.00000', 8, 'No');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idClasificacion`),
  ADD KEY `FK_idEquipo` (`idEquipo`),
  ADD KEY `FK_idGrupo` (`idGrupo`);

--
-- Indices de la tabla `clasificadosoctavos`
--
ALTER TABLE `clasificadosoctavos`
  ADD PRIMARY KEY (`idClasificado`),
  ADD KEY `FK_ClasificaIdEquipo` (`idEquipo`),
  ADD KEY `FK_ClasificaidGrupo` (`idGrupo`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idEquipos`),
  ADD KEY `FK_EquipoidGrupo` (`idGrupo`);

--
-- Indices de la tabla `estadios`
--
ALTER TABLE `estadios`
  ADD PRIMARY KEY (`idEstadios`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idGrupos`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`idJugadores`),
  ADD KEY `FK_JugadorIDEquipo` (`idEquipo`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`idPartido`),
  ADD KEY `FK_ResultIDEquipo1` (`idEquipo1`),
  ADD KEY `FK_ResultIDEquipo2` (`idEquipo2`),
  ADD KEY `FK_ResultIdEstadio` (`Estadio`),
  ADD KEY `FK_ResultGrupo` (`Grupo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `idClasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `clasificadosoctavos`
--
ALTER TABLE `clasificadosoctavos`
  MODIFY `idClasificado` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `estadios`
--
ALTER TABLE `estadios`
  MODIFY `idEstadios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `idPartido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD CONSTRAINT `FK_idEquipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`idEquipos`),
  ADD CONSTRAINT `FK_idGrupo` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupos`);

--
-- Filtros para la tabla `clasificadosoctavos`
--
ALTER TABLE `clasificadosoctavos`
  ADD CONSTRAINT `FK_ClasificaIdEquipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`idEquipos`),
  ADD CONSTRAINT `FK_ClasificaidGrupo` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupos`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `FK_EquipoidGrupo` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupos`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `FK_JugadorIDEquipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`idEquipos`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `FK_ResultGrupo` FOREIGN KEY (`Grupo`) REFERENCES `grupos` (`idGrupos`),
  ADD CONSTRAINT `FK_ResultIDEquipo1` FOREIGN KEY (`idEquipo1`) REFERENCES `equipos` (`idEquipos`),
  ADD CONSTRAINT `FK_ResultIDEquipo2` FOREIGN KEY (`idEquipo2`) REFERENCES `equipos` (`idEquipos`),
  ADD CONSTRAINT `FK_ResultIdEstadio` FOREIGN KEY (`Estadio`) REFERENCES `estadios` (`idEstadios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




