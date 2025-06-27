-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2025 at 04:08 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemaexperto`
--

-- --------------------------------------------------------

--
-- Table structure for table `atencion`
--

CREATE TABLE `atencion` (
  `idatencion` int NOT NULL,
  `idusuario` int DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `resultado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `atencion`
--

INSERT INTO `atencion` (`idatencion`, `idusuario`, `fecha`, `resultado`) VALUES
(1, 1, '2025-06-27 02:05:14', 'Gripe'),
(2, 1, '2025-06-27 02:05:19', 'Gripe'),
(3, 1, '2025-06-27 02:05:41', 'No se detecto la enfermedad'),
(4, 1, '2025-06-27 02:05:45', 'No se detecto la enfermedad'),
(5, 1, '2025-06-27 02:05:49', 'No se detecto la enfermedad'),
(6, 1, '2025-06-27 02:06:01', 'COVID-19');

-- --------------------------------------------------------

--
-- Table structure for table `atencionsintoma`
--

CREATE TABLE `atencionsintoma` (
  `idatencionsintoma` int NOT NULL,
  `idatencion` int DEFAULT NULL,
  `idsintoma` int DEFAULT NULL,
  `respuesta` enum('s','n') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `atencionsintoma`
--

INSERT INTO `atencionsintoma` (`idatencionsintoma`, `idatencion`, `idsintoma`, `respuesta`) VALUES
(1, 1, 1, 's'),
(2, 1, 2, 's'),
(3, 1, 3, 's'),
(4, 1, 4, 'n'),
(5, 1, 5, 'n'),
(6, 1, 6, 'n'),
(7, 1, 7, 'n'),
(8, 1, 8, 'n'),
(9, 1, 9, 'n'),
(10, 1, 10, 'n'),
(11, 1, 11, 'n'),
(12, 1, 12, 'n'),
(13, 2, 1, 's'),
(14, 2, 2, 's'),
(15, 2, 3, 's'),
(16, 2, 4, 'n'),
(17, 2, 5, 'n'),
(18, 2, 6, 'n'),
(19, 2, 7, 'n'),
(20, 2, 8, 'n'),
(21, 2, 9, 'n'),
(22, 2, 10, 'n'),
(23, 2, 11, 'n'),
(24, 2, 12, 'n'),
(25, 3, 1, 'n'),
(26, 3, 2, 'n'),
(27, 3, 3, 'n'),
(28, 3, 4, 'n'),
(29, 3, 5, 's'),
(30, 3, 6, 's'),
(31, 3, 7, 's'),
(32, 3, 8, 's'),
(33, 3, 9, 'n'),
(34, 3, 10, 'n'),
(35, 3, 11, 'n'),
(36, 3, 12, 'n'),
(37, 4, 1, 'n'),
(38, 4, 2, 'n'),
(39, 4, 3, 'n'),
(40, 4, 4, 'n'),
(41, 4, 5, 'n'),
(42, 4, 6, 's'),
(43, 4, 7, 'n'),
(44, 4, 8, 'n'),
(45, 4, 9, 'n'),
(46, 4, 10, 's'),
(47, 4, 11, 's'),
(48, 4, 12, 'n'),
(49, 5, 1, 'n'),
(50, 5, 2, 'n'),
(51, 5, 3, 's'),
(52, 5, 4, 'n'),
(53, 5, 5, 's'),
(54, 5, 6, 's'),
(55, 5, 7, 'n'),
(56, 5, 8, 'n'),
(57, 5, 9, 'n'),
(58, 5, 10, 'n'),
(59, 5, 11, 'n'),
(60, 5, 12, 'n'),
(61, 6, 1, 's'),
(62, 6, 2, 'n'),
(63, 6, 3, 'n'),
(64, 6, 4, 's'),
(65, 6, 5, 's'),
(66, 6, 6, 'n'),
(67, 6, 7, 'n'),
(68, 6, 8, 'n'),
(69, 6, 9, 'n'),
(70, 6, 10, 'n'),
(71, 6, 11, 'n'),
(72, 6, 12, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `sintoma`
--

CREATE TABLE `sintoma` (
  `idsintoma` int NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sintoma`
--

INSERT INTO `sintoma` (`idsintoma`, `descripcion`) VALUES
(1, 'Fiebre'),
(2, 'Dolor de garganta'),
(3, 'Congestión nasal'),
(4, 'Tos seca'),
(5, 'Dificultad para respirar'),
(6, 'Dolor en el pecho'),
(7, 'Estornudos'),
(8, 'Picazón en ojos o nariz'),
(9, 'Dolor de cabeza intenso'),
(10, 'Náuseas'),
(11, 'Sensibilidad a la luz'),
(12, 'Cansancio o fatiga general');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idusuario`, `dni`, `nombres`, `apellidos`, `correo`, `fecha_nacimiento`, `sexo`, `telefono`) VALUES
(1, '73633895', 'Jose', 'Villanueva', NULL, NULL, 'M', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`idatencion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indexes for table `atencionsintoma`
--
ALTER TABLE `atencionsintoma`
  ADD PRIMARY KEY (`idatencionsintoma`),
  ADD KEY `idatencion` (`idatencion`),
  ADD KEY `idsintoma` (`idsintoma`);

--
-- Indexes for table `sintoma`
--
ALTER TABLE `sintoma`
  ADD PRIMARY KEY (`idsintoma`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atencion`
--
ALTER TABLE `atencion`
  MODIFY `idatencion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `atencionsintoma`
--
ALTER TABLE `atencionsintoma`
  MODIFY `idatencionsintoma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `sintoma`
--
ALTER TABLE `sintoma`
  MODIFY `idsintoma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE;

--
-- Constraints for table `atencionsintoma`
--
ALTER TABLE `atencionsintoma`
  ADD CONSTRAINT `atencionsintoma_ibfk_1` FOREIGN KEY (`idatencion`) REFERENCES `atencion` (`idatencion`) ON DELETE CASCADE,
  ADD CONSTRAINT `atencionsintoma_ibfk_2` FOREIGN KEY (`idsintoma`) REFERENCES `sintoma` (`idsintoma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
