-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2023 a las 14:35:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Base de datos: `cultupaz_org`
--
CREATE DATABASE IF NOT EXISTS `cultupaz_org` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `cultupaz_org`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `idActividades` int(10) UNSIGNED NOT NULL,
  `idPsicologo` int(10) UNSIGNED NOT NULL,
  `idAprendiz` int(10) UNSIGNED NOT NULL,
  `idArtesanias` int(10) UNSIGNED NOT NULL,
  `idJuegos` int(10) UNSIGNED NOT NULL,
  `idCuestionario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) UNSIGNED NOT NULL,
  `nombre_admin` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_admin` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `documento_admin` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `celular_admin` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo_admin` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`idAdmin`, `nombre_admin`, `apellido_admin`, `documento_admin`, `celular_admin`, `correo_admin`) VALUES
(1, 'Isaac Daniel', 'Dorado Zuñiga', '1058962835', '3117557590', 'isaacddz14@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendices` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_aprendiz` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_aprendiz` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `documento_aprendiz` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `celular_aprendiz` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `correo_aprendiz` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_ficha_aprendiz` varchar(45) COLLATE utf8_spanish_ci NOT NULL
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`idAprendiz`, `nombre_aprendiz`, `apellido_aprendiz`, `documento_aprendiz`, `celular_aprendiz`, `correo_aprendiz`, `num_ficha_aprendiz`) VALUES
(1, 'Camilo', 'ordonez', '107283930', '31245363738', 'camordo@gmail.com', '2323445'),
(2, 'luis', 'caldon', '107283930', '31144363738', 'luis@gmail.com', '2323445'),
(3, 'andrea', 'perez', '1012203930', '3122036378', 'andrea@gmail.com', '2223445');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artesanias`
--

CREATE TABLE `artesanias` (
  `idArtesanias` int(10) UNSIGNED NOT NULL,
  `nombre_artesanias` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_artesanias` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `artesanias`
--

INSERT INTO `artesanias` (`idArtesanias`, `nombre_artesanias`, `descripcion_artesanias`, `imagen`) VALUES
(1, 'Vasijas de arcilla', 'Pieza cóncava y pequeña, de barro u otra materia y de forma común u ordinaria, que sirve para conten', 'Imagen_1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `idCitas` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `lugar` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idPsicologo` int(10) UNSIGNED NOT NULL,
  `idAprendiz` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`idCitas`, `fecha`, `hora`, `lugar`, `idPsicologo`, `idAprendiz`) VALUES
(1, '2022-12-18', '07:30:00', 'sena ctpi cauca', 1, 2),
(2, '2022-12-20', '07:30:00', 'sena ctpi cauca', 2, 1),
(3, '2022-11-08', '10:30:00', 'sena ctpi cauca', 1, 3),
(4, '2022-10-29', '09:00:00', 'sena ctpi cauca', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `idCuestionario` int(10) UNSIGNED NOT NULL,
  `preguntas` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuestas` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`idCuestionario`, `preguntas`, `respuestas`) VALUES
(1, 'pregunta multiples', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `idEspecialidad` int(10) UNSIGNED NOT NULL,
  `nombre_especialidad` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion_especialidad` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`idEspecialidad`, `nombre_especialidad`, `descripcion_especialidad`) VALUES
(1, 'Psicología Infantil y de Adolescencia', 'estudia todo lo relacionado con el desarrollo infantil, desd'),
(2, 'Psicología Clínica', 'Esta práctica se enfoca en el diagnóstico y tratamiento de e'),
(3, 'Psicología Cognitiva Conductual', 'Esta especialidad se centra en los procesos responsables de ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `idJuegos` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `puntaje` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`idJuegos`, `nombre`, `descripcion`, `puntaje`) VALUES
(1, 'ruleta', 'ruleta contentra las emosiones donde el usuar', '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muro`
--

CREATE TABLE `muro` (
  `idMuro` int(10) UNSIGNED NOT NULL,
  `introduccion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_muro` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idAprendiz` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `muro`
--

INSERT INTO `muro` (`idMuro`, `introduccion`, `descripcion_muro`, `idAprendiz`) VALUES
(1, 'Exprésate 3.0', 'Espacio para que publiques cualquier cosa y te relaciones con mas personas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo`
--

CREATE TABLE `psicologo` (
  `idPsicologo` int(10) UNSIGNED NOT NULL,
  `nombre_psicologo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_psicologo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `documentoidentidad_psicologo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `celular_psicologo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_psicologo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_psicologo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `idEspecialidad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `psicologo`
--

INSERT INTO `psicologo` (`idPsicologo`, `nombre_psicologo`, `apellido_psicologo`, `documentoidentidad_psicologo`, `celular_psicologo`, `telefono_psicologo`, `correo_psicologo`, `idEspecialidad`) VALUES
(1, 'Daniela', 'Diaz', '1002783893', '3123455859', '', 'daniela@gmail.com', 1),
(2, 'jose', 'reina', '1082736478', '3124455330', '', 'jose12@hotmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idPsicologo` int(10) UNSIGNED NOT NULL,
  `idAdmin` int(10) UNSIGNED NOT NULL,
  `idAprendiz` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idPsicologo`, `idAdmin`, `idAprendiz`) VALUES
(1, 1, 2),
(1, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`idActividades`),
  ADD KEY `idAprendiz` (`idAprendiz`),
  ADD KEY `idArtesanias` (`idArtesanias`),
  ADD KEY `idJuegos` (`idJuegos`),
  ADD KEY `idPsicologo` (`idPsicologo`),
  ADD KEY `idCuestionario` (`idCuestionario`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`idAprendiz`);

--
-- Indices de la tabla `artesanias`
--
ALTER TABLE `artesanias`
  ADD PRIMARY KEY (`idArtesanias`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`idCitas`),
  ADD KEY `idPsicologo` (`idPsicologo`),
  ADD KEY `idAprendiz` (`idAprendiz`);

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`idCuestionario`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`idEspecialidad`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`idJuegos`);

--
-- Indices de la tabla `muro`
--
ALTER TABLE `muro`
  ADD PRIMARY KEY (`idMuro`),
  ADD KEY `idAprendiz` (`idAprendiz`);

--
-- Indices de la tabla `psicologo`
--
ALTER TABLE `psicologo`
  ADD PRIMARY KEY (`idPsicologo`),
  ADD KEY `idEspecialidad` (`idEspecialidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD KEY `idPsicologo` (`idPsicologo`),
  ADD KEY `idAdmin` (`idAdmin`),
  ADD KEY `idAprendiz` (`idAprendiz`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `idActividades` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `idAprendiz` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `artesanias`
--
ALTER TABLE `artesanias`
  MODIFY `idArtesanias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `idCitas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `idCuestionario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `idEspecialidad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `idJuegos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `muro`
--
ALTER TABLE `muro`
  MODIFY `idMuro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `psicologo`
--
ALTER TABLE `psicologo`
  MODIFY `idPsicologo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`idAprendiz`) REFERENCES `aprendiz` (`idAprendiz`),
  ADD CONSTRAINT `actividades_ibfk_2` FOREIGN KEY (`idArtesanias`) REFERENCES `artesanias` (`idArtesanias`),
  ADD CONSTRAINT `actividades_ibfk_3` FOREIGN KEY (`idJuegos`) REFERENCES `juegos` (`idJuegos`),
  ADD CONSTRAINT `actividades_ibfk_4` FOREIGN KEY (`idPsicologo`) REFERENCES `psicologo` (`idPsicologo`),
  ADD CONSTRAINT `actividades_ibfk_5` FOREIGN KEY (`idCuestionario`) REFERENCES `cuestionario` (`idCuestionario`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`idPsicologo`) REFERENCES `psicologo` (`idPsicologo`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`idAprendiz`) REFERENCES `aprendiz` (`idAprendiz`);

--
-- Filtros para la tabla `muro`
--
ALTER TABLE `muro`
  ADD CONSTRAINT `muro_ibfk_1` FOREIGN KEY (`idAprendiz`) REFERENCES `aprendiz` (`idAprendiz`);

--
-- Filtros para la tabla `psicologo`
--
ALTER TABLE `psicologo`
  ADD CONSTRAINT `psicologo_ibfk_1` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idPsicologo`) REFERENCES `psicologo` (`idPsicologo`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`idAprendiz`) REFERENCES `aprendiz` (`idAprendiz`);
--
-- Base de datos: `empresa`
--
CREATE DATABASE IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `Direccion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codigo`, `Nombre`, `Direccion`) VALUES
(1, 'Manuela Mo', 'calle 72 a'),
(2, 'Manolo Esc', 'calle 74 a'),
(3, 'Dario Max', 'calle 11 a'),
(4, 'Ivan Camay', 'calle 13 a'),
(5, 'Manuela Mo', 'calle 72 a'),
(6, 'Manolo Esc', 'calle 74 a'),
(7, 'Dario Max', 'calle 11 a'),
(8, 'Ivan Camay', 'calle 13 a'),
(9, 'Manuela Mo', 'calle 72 a'),
(10, 'Manolo Esc', 'calle 74 a'),
(11, 'Dario Max', 'calle 11 a'),
(12, 'Ivan Camay', 'calle 13 a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `Direccion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`codigo`, `Nombre`, `Direccion`) VALUES
(1, 'Bueñas', 'calle 72 a'),
(2, 'Bueñas', 'calle 72 a'),
(3, 'Economica', 'calle 74 a'),
(4, 'Norte', 'calle 11 a'),
(5, 'Sur', 'calle 13 a'),
(6, 'Bueñas', 'calle 72 a'),
(7, 'Economica', 'calle 74 a'),
(8, 'Norte', 'calle 11 a'),
(9, 'Sur', 'calle 13 a'),
(10, 'Bueñas', 'calle 72 a'),
(11, 'Economica', 'calle 74 a'),
(12, 'Norte', 'calle 11 a'),
(13, 'Sur', 'calle 13 a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `Nombre`, `precio`) VALUES
(1, 'Harina', 2000),
(2, 'Atun', 6000),
(3, 'Arbeja', 4000),
(4, 'Arroz', 2500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes`
--

CREATE TABLE `representantes` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `Direccion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `representantes`
--

INSERT INTO `representantes` (`codigo`, `Nombre`, `Direccion`) VALUES
(1, 'Manuela Mo', 'calle 72 a'),
(2, 'Manuela Mo', 'calle 72 a'),
(3, 'Manuela Mo', 'calle 72 a'),
(4, 'Manuela Mo', 'calle 72 a'),
(5, 'Pablo Esco', 'calle 74 a'),
(6, 'Dario Max', 'calle 11 a'),
(7, 'Ivan Pompo', 'calle 13 a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `Direccion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`codigo`, `Nombre`, `Direccion`) VALUES
(1, 'Natalia Mo', 'calle 72 a'),
(2, 'Natalia Mo', 'calle 72 a'),
(3, 'David Rest', 'calle 74 a'),
(4, 'Carlos Gue', 'calle 11 a'),
(5, 'Gonzalo Lo', 'calle 13 a'),
(6, 'Natalia Mo', 'calle 72 a'),
(7, 'David Rest', 'calle 74 a'),
(8, 'Carlos Gue', 'calle 11 a'),
(9, 'Gonzalo Lo', 'calle 13 a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `oficina`
--
ALTER TABLE `oficina`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `representantes`
--
ALTER TABLE `representantes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"banco_proyectos\",\"table\":\"instructor\"},{\"db\":\"mario\",\"table\":\"rol\"},{\"db\":\"mario\",\"table\":\"user\"},{\"db\":\"lenny\",\"table\":\"rol\"},{\"db\":\"max\",\"table\":\"mascota\"},{\"db\":\"max\",\"table\":\"cliente\"},{\"db\":\"MARIO\",\"table\":\"rol\"},{\"db\":\"lenny\",\"table\":\"user\"},{\"db\":\"manejonotas\",\"table\":\"profesor\"},{\"db\":\"manejonotas\",\"table\":\"alumno\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-13 00:44:59', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categoria', 7, 'add_categoria'),
(26, 'Can change categoria', 7, 'change_categoria'),
(27, 'Can delete categoria', 7, 'delete_categoria'),
(28, 'Can view categoria', 7, 'view_categoria'),
(29, 'Can add marca', 8, 'add_marca'),
(30, 'Can change marca', 8, 'change_marca'),
(31, 'Can delete marca', 8, 'delete_marca'),
(32, 'Can view marca', 8, 'view_marca'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$6lyfHx0vmIOk5thskWH9QA$/lBLL5i6LkftsTPgDXM2RS5oWRyOBlek1RZzz+iDiTA=', '2022-10-01 17:52:49.880431', 1, 'admin', '', '', '', 1, 1, '2022-09-24 01:50:33.399708');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-24 02:19:35.412450', '1', 'Automoviles', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-09-24 02:21:58.141995', '2', 'Ropa', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-09-24 02:22:36.313920', '3', 'Accesorios', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-09-24 02:23:06.235383', '4', 'Calzado', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-09-24 02:23:46.737788', '5', 'Lacteos', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-09-24 02:24:05.619101', '6', 'Carnicos', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-09-24 02:25:10.289995', '7', 'Vegetales', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-09-24 02:25:31.745800', '8', 'Frutas', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-09-24 02:27:50.881619', '9', 'Bebidas Alcoholicas', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-09-24 02:29:59.674590', '10', 'Helados', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-09-24 02:33:44.904542', '1', 'Toyota', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-09-24 02:33:58.472901', '2', 'Poker', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-09-24 02:34:13.912369', '3', 'Isabela', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-09-24 02:34:30.472466', '4', 'Get', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-09-24 02:34:41.295364', '5', 'Americanino', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-09-24 02:35:01.415840', '6', 'Adidas', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-09-24 02:35:10.062464', '7', 'Nike', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-09-24 02:36:40.641211', '8', 'Mazda', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-09-24 02:37:41.648059', '9', 'Velez', 1, '[{\"added\": {}}]', 8, 1),
(20, '2022-09-24 02:38:06.271541', '10', 'Alpina', 1, '[{\"added\": {}}]', 8, 1),
(21, '2022-09-24 13:41:43.310809', '1', 'yogurt', 1, '[{\"added\": {}}]', 9, 1),
(22, '2022-09-24 13:45:32.155469', '2', 'pantalón', 1, '[{\"added\": {}}]', 9, 1),
(23, '2022-09-24 13:46:28.092322', '3', 'anillo', 1, '[{\"added\": {}}]', 9, 1),
(24, '2022-09-24 13:48:03.079415', '4', 'muslos', 1, '[{\"added\": {}}]', 9, 1),
(25, '2022-09-24 13:48:38.939556', '5', 'manzana', 1, '[{\"added\": {}}]', 9, 1),
(26, '2022-09-24 13:54:34.138409', '6', 'Pepino', 1, '[{\"added\": {}}]', 9, 1),
(27, '2022-09-24 13:55:35.493423', '7', 'Cerveza corona', 1, '[{\"added\": {}}]', 9, 1),
(28, '2022-09-24 13:56:24.580049', '8', 'Uvas', 1, '[{\"added\": {}}]', 9, 1),
(29, '2022-09-24 13:57:17.713106', '9', 'salmon', 1, '[{\"added\": {}}]', 9, 1),
(30, '2022-09-24 13:58:09.525460', '10', 'Blusa', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'categoria'),
(8, 'home', 'marca'),
(9, 'home', 'producto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-24 01:25:44.567104'),
(2, 'auth', '0001_initial', '2022-09-24 01:25:44.923396'),
(3, 'admin', '0001_initial', '2022-09-24 01:25:44.996788'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-24 01:25:45.003474'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-24 01:25:45.009476'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-24 01:25:45.045957'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-24 01:25:45.088986'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-24 01:25:45.101986'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-24 01:25:45.109144'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-24 01:25:45.136158'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-24 01:25:45.138160'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-24 01:25:45.145159'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-24 01:25:45.158108'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-24 01:25:45.172318'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-24 01:25:45.185606'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-24 01:25:45.191347'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-24 01:25:45.204368'),
(18, 'home', '0001_initial', '2022-09-24 01:25:45.336697'),
(19, 'sessions', '0001_initial', '2022-09-24 01:25:45.362473'),
(20, 'home', '0002_producto_foto', '2022-10-15 17:55:05.409377');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1s4646femxa3dlrxp5capw75innqdc5f', '.eJxVjEEOwiAQRe_C2hCmBQZcuvcMBGamtmpoUtqV8e7apAvd_vfef6mUt3VMW5MlTazOCtTpdyuZHlJ3wPdcb7Omua7LVPSu6IM2fZ1ZnpfD_TsYcxu_te2ZwQzAGCigAStkwQ4S8xCQe0chR3bcoe9ij8YaJ-ileIiOAEHU-wPZXzdT:1oc5Nl:vFks1K5GZND8F15eQgp3xCDLBu-zLPNkyLC0VSYiqHM', '2022-10-08 13:39:49.951377'),
('k8zvurhit772vp5zxalas8qybo73ot5o', '.eJxVjEEOwiAQRe_C2hCmBQZcuvcMBGamtmpoUtqV8e7apAvd_vfef6mUt3VMW5MlTazOCtTpdyuZHlJ3wPdcb7Omua7LVPSu6IM2fZ1ZnpfD_TsYcxu_te2ZwQzAGCigAStkwQ4S8xCQe0chR3bcoe9ij8YaJ-ileIiOAEHU-wPZXzdT:1oegfR:5Vycl0muKGlPs02NuLN8UCQn_LffCy9YJs4Z0tdAFAY', '2022-10-15 17:52:49.885430');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_categoria`
--

CREATE TABLE `home_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_categoria`
--

INSERT INTO `home_categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Automoviles', 'clasificación por marcas'),
(2, 'Ropa', 'Clasificación por marca de ropa'),
(3, 'Accesorios', 'Clasificación por tipos'),
(4, 'Calzado', 'Clasificación  por estilo'),
(5, 'Lacteos', 'Clasificación producto'),
(6, 'Carnicos', 'Clasificación por tipo de carne'),
(7, 'Vegetales', 'Clasificación por tipo'),
(8, 'Frutas', 'Clasificación por tipo de fruta'),
(9, 'Bebidas Alcoholicas', 'Clasificación por tipo de bebida'),
(10, 'Helados', 'Clasificación por tipo de helado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_marca`
--

CREATE TABLE `home_marca` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_marca`
--

INSERT INTO `home_marca` (`id`, `nombre`) VALUES
(1, 'Toyota'),
(2, 'Poker'),
(3, 'Isabela'),
(4, 'Get'),
(5, 'Americanino'),
(6, 'Adidas'),
(7, 'Nike'),
(8, 'Mazda'),
(9, 'Velez'),
(10, 'Alpina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_producto`
--

CREATE TABLE `home_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `marca_id` bigint(20) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_producto`
--

INSERT INTO `home_producto` (`id`, `nombre`, `descripcion`, `status`, `precio`, `stock`, `marca_id`, `foto`) VALUES
(1, 'yogurt', 'Producto lácteo', 1, '2000.00', 0, 10, NULL),
(2, 'pantalón', 'jeans caballero', 1, '8.00', 5, 5, NULL),
(3, 'anillo', 'accesorio bañado en plata', 1, '3.00', 5, 9, NULL),
(4, 'muslos', 'Muslos de pollo campesino', 1, '1.00', 4, 3, NULL),
(5, 'manzana', 'Manzana chilena verde', 1, '1000.00', 3, 3, NULL),
(6, 'Pepino', 'Pepino pintón mediano', 1, '800.00', 2, 3, NULL),
(7, 'Cerveza corona', 'Cerveza coronita', 1, '4500.00', 3, 2, NULL),
(8, 'Uvas', 'Uva pequeña en bandeja', 1, '2500.00', 14, 3, NULL),
(9, 'salmon', 'Bandeja de Salmon pequeño', 1, '15.00', 3, 3, NULL),
(10, 'Blusa', 'Blusa manga larga para dama', 1, '5.00', 4, 5, NULL),
(11, 'qwerty', 'asdf', 1, '123.00', 12, 3, 'productos/WIN_20220629_12_16_24_Pro.jpg'),
(12, 'qwerty', 'asdf', 1, '123.00', 12, 3, 'productos/WIN_20220629_12_16_24_Pro_ZjGLtmU.jpg'),
(13, 'cerezas', 'frutas frescas', 1, '4000.00', 1, 3, 'productos/cerezas-aisladas-sobre-fondo-blanco-trazado-recorte_88281-270.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_producto_categorias`
--

CREATE TABLE `home_producto_categorias` (
  `id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `categoria_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_producto_categorias`
--

INSERT INTO `home_producto_categorias` (`id`, `producto_id`, `categoria_id`) VALUES
(1, 1, 5),
(2, 2, 2),
(3, 3, 3),
(4, 4, 6),
(5, 5, 8),
(6, 6, 7),
(7, 7, 9),
(8, 8, 8),
(9, 9, 6),
(10, 10, 2),
(11, 11, 1),
(12, 12, 1),
(13, 13, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `home_categoria`
--
ALTER TABLE `home_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_marca`
--
ALTER TABLE `home_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_producto`
--
ALTER TABLE `home_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_producto_marca_id_d039bbda_fk_home_marca_id` (`marca_id`);

--
-- Indices de la tabla `home_producto_categorias`
--
ALTER TABLE `home_producto_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_producto_categorias_producto_id_categoria_id_51c2cbd1_uniq` (`producto_id`,`categoria_id`),
  ADD KEY `home_producto_catego_categoria_id_ae8505fa_fk_home_cate` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `home_categoria`
--
ALTER TABLE `home_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `home_marca`
--
ALTER TABLE `home_marca`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `home_producto`
--
ALTER TABLE `home_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `home_producto_categorias`
--
ALTER TABLE `home_producto_categorias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `home_producto`
--
ALTER TABLE `home_producto`
  ADD CONSTRAINT `home_producto_marca_id_d039bbda_fk_home_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `home_marca` (`id`);

--
-- Filtros para la tabla `home_producto_categorias`
--
ALTER TABLE `home_producto_categorias`
  ADD CONSTRAINT `home_producto_catego_categoria_id_ae8505fa_fk_home_cate` FOREIGN KEY (`categoria_id`) REFERENCES `home_categoria` (`id`),
  ADD CONSTRAINT `home_producto_catego_producto_id_13f26514_fk_home_prod` FOREIGN KEY (`producto_id`) REFERENCES `home_producto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
