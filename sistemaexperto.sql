-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2025 at 08:04 PM
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
(7, 3, '2025-06-27 13:41:16', 'No se detecto la enfermedad'),
(8, 4, '2025-06-27 13:42:08', 'No se detecto la enfermedad'),
(9, 4, '2025-06-27 13:44:06', 'Gripe'),
(10, 4, '2025-06-27 13:47:03', 'No se detecto la enfermedad'),
(11, 4, '2025-06-27 13:47:34', 'No se detecto la enfermedad'),
(12, 4, '2025-06-27 13:49:26', 'No se detecto la enfermedad'),
(13, 4, '2025-06-27 13:51:50', 'Gripe'),
(14, 4, '2025-06-27 13:54:00', 'No se detecto la enfermedad'),
(15, 4, '2025-06-27 13:54:20', 'Gripe'),
(16, 4, '2025-06-27 13:54:35', 'Gripe'),
(17, 4, '2025-06-27 13:55:14', 'No se detecto la enfermedad'),
(18, 4, '2025-06-27 13:55:21', 'No se detecto la enfermedad'),
(19, 4, '2025-06-27 13:55:25', 'Gripe'),
(20, 4, '2025-06-27 14:05:03', 'Gripe'),
(21, 4, '2025-06-27 14:39:55', 'Gripe'),
(22, 4, '2025-06-27 14:40:25', 'Gripe'),
(23, 4, '2025-06-27 14:41:54', 'Gripe'),
(24, 4, '2025-06-27 14:43:07', 'Gripe'),
(25, 4, '2025-06-27 14:43:41', 'Gripe'),
(26, 4, '2025-06-27 14:44:09', 'Gripe'),
(27, 4, '2025-06-27 15:00:19', 'Gripe'),
(28, 4, '2025-06-27 15:00:34', 'COVID-19'),
(29, 4, '2025-06-27 15:00:58', 'Neumonía'),
(30, 4, '2025-06-27 15:01:39', 'No se pudo determinar el diagnóstico.'),
(31, 4, '2025-06-27 15:01:49', 'No se pudo determinar el diagnóstico.'),
(32, 4, '2025-06-27 15:02:07', 'No se pudo determinar el diagnóstico.'),
(33, 4, '2025-06-27 15:02:13', 'Alergia'),
(34, 4, '2025-06-27 15:02:49', 'Migraña');

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
(73, 7, 1, 'n'),
(74, 7, 2, 'n'),
(75, 7, 3, 'n'),
(76, 7, 4, 'n'),
(77, 7, 5, 'n'),
(78, 7, 6, 'n'),
(79, 7, 7, 'n'),
(80, 7, 8, 'n'),
(81, 7, 9, 'n'),
(82, 7, 10, 'n'),
(83, 7, 11, 'n'),
(84, 7, 12, 'n'),
(85, 8, 1, 'n'),
(86, 8, 2, 'n'),
(87, 8, 3, 'n'),
(88, 8, 4, 'n'),
(89, 8, 5, 'n'),
(90, 8, 6, 'n'),
(91, 8, 7, 'n'),
(92, 8, 8, 'n'),
(93, 8, 9, 'n'),
(94, 8, 10, 'n'),
(95, 8, 11, 'n'),
(96, 8, 12, 'n'),
(97, 9, 1, 's'),
(98, 9, 2, 's'),
(99, 9, 3, 's'),
(100, 9, 4, 'n'),
(101, 9, 5, 'n'),
(102, 9, 6, 'n'),
(103, 9, 7, 'n'),
(104, 9, 8, 'n'),
(105, 9, 9, 'n'),
(106, 9, 10, 'n'),
(107, 9, 11, 'n'),
(108, 9, 12, 'n'),
(109, 10, 1, 'n'),
(110, 10, 2, 'n'),
(111, 10, 3, 'n'),
(112, 10, 4, 'n'),
(113, 10, 5, 'n'),
(114, 10, 6, 'n'),
(115, 10, 7, 'n'),
(116, 10, 8, 'n'),
(117, 10, 9, 'n'),
(118, 10, 10, 'n'),
(119, 10, 11, 'n'),
(120, 10, 12, 'n'),
(121, 11, 1, 'n'),
(122, 11, 2, 'n'),
(123, 11, 3, 'n'),
(124, 11, 4, 'n'),
(125, 11, 5, 'n'),
(126, 11, 6, 'n'),
(127, 11, 7, 'n'),
(128, 11, 8, 'n'),
(129, 11, 9, 'n'),
(130, 11, 10, 'n'),
(131, 11, 11, 'n'),
(132, 11, 12, 'n'),
(133, 12, 1, 'n'),
(134, 12, 2, 'n'),
(135, 12, 3, 'n'),
(136, 12, 4, 'n'),
(137, 12, 5, 'n'),
(138, 12, 6, 'n'),
(139, 12, 7, 'n'),
(140, 12, 8, 'n'),
(141, 12, 9, 'n'),
(142, 12, 10, 'n'),
(143, 12, 11, 'n'),
(144, 12, 12, 'n'),
(145, 13, 1, 's'),
(146, 13, 2, 's'),
(147, 13, 3, 's'),
(148, 13, 4, 'n'),
(149, 13, 5, 'n'),
(150, 13, 6, 'n'),
(151, 13, 7, 'n'),
(152, 13, 8, 'n'),
(153, 13, 9, 'n'),
(154, 13, 10, 'n'),
(155, 13, 11, 'n'),
(156, 13, 12, 'n'),
(157, 14, 1, 's'),
(158, 14, 2, 'n'),
(159, 14, 3, 's'),
(160, 14, 4, 'n'),
(161, 14, 5, 's'),
(162, 14, 6, 'n'),
(163, 14, 7, 'n'),
(164, 14, 8, 'n'),
(165, 14, 9, 'n'),
(166, 14, 10, 'n'),
(167, 14, 11, 'n'),
(168, 14, 12, 'n'),
(169, 15, 1, 's'),
(170, 15, 2, 's'),
(171, 15, 3, 's'),
(172, 15, 4, 'n'),
(173, 15, 5, 'n'),
(174, 15, 6, 'n'),
(175, 15, 7, 'n'),
(176, 15, 8, 'n'),
(177, 15, 9, 'n'),
(178, 15, 10, 'n'),
(179, 15, 11, 'n'),
(180, 15, 12, 'n'),
(181, 16, 1, 's'),
(182, 16, 2, 's'),
(183, 16, 3, 's'),
(184, 16, 4, 'n'),
(185, 16, 5, 'n'),
(186, 16, 6, 'n'),
(187, 16, 7, 'n'),
(188, 16, 8, 'n'),
(189, 16, 9, 'n'),
(190, 16, 10, 'n'),
(191, 16, 11, 'n'),
(192, 16, 12, 'n'),
(193, 17, 1, 's'),
(194, 17, 2, 'n'),
(195, 17, 3, 's'),
(196, 17, 4, 'n'),
(197, 17, 5, 'n'),
(198, 17, 6, 'n'),
(199, 17, 7, 'n'),
(200, 17, 8, 'n'),
(201, 17, 9, 'n'),
(202, 17, 10, 'n'),
(203, 17, 11, 'n'),
(204, 17, 12, 'n'),
(205, 18, 1, 's'),
(206, 18, 2, 'n'),
(207, 18, 3, 's'),
(208, 18, 4, 'n'),
(209, 18, 5, 'n'),
(210, 18, 6, 'n'),
(211, 18, 7, 'n'),
(212, 18, 8, 'n'),
(213, 18, 9, 'n'),
(214, 18, 10, 'n'),
(215, 18, 11, 'n'),
(216, 18, 12, 'n'),
(217, 19, 1, 's'),
(218, 19, 2, 's'),
(219, 19, 3, 's'),
(220, 19, 4, 'n'),
(221, 19, 5, 'n'),
(222, 19, 6, 'n'),
(223, 19, 7, 'n'),
(224, 19, 8, 'n'),
(225, 19, 9, 'n'),
(226, 19, 10, 'n'),
(227, 19, 11, 'n'),
(228, 19, 12, 'n'),
(229, 20, 1, 's'),
(230, 20, 2, 's'),
(231, 20, 3, 's'),
(232, 20, 4, 'n'),
(233, 20, 5, 'n'),
(234, 20, 6, 'n'),
(235, 20, 7, 'n'),
(236, 20, 8, 'n'),
(237, 20, 9, 'n'),
(238, 20, 10, 'n'),
(239, 20, 11, 'n'),
(240, 20, 12, 'n'),
(241, 21, 1, 's'),
(242, 21, 2, 's'),
(243, 21, 3, 's'),
(244, 21, 4, 'n'),
(245, 21, 5, 'n'),
(246, 21, 6, 'n'),
(247, 21, 7, 'n'),
(248, 21, 8, 'n'),
(249, 21, 9, 'n'),
(250, 21, 10, 'n'),
(251, 21, 11, 'n'),
(252, 21, 12, 'n'),
(253, 22, 1, 's'),
(254, 22, 2, 's'),
(255, 22, 3, 's'),
(256, 22, 4, 'n'),
(257, 22, 5, 'n'),
(258, 22, 6, 'n'),
(259, 22, 7, 'n'),
(260, 22, 8, 'n'),
(261, 22, 9, 'n'),
(262, 22, 10, 'n'),
(263, 22, 11, 'n'),
(264, 22, 12, 'n'),
(265, 23, 1, 's'),
(266, 23, 2, 's'),
(267, 23, 3, 's'),
(268, 23, 4, 'n'),
(269, 23, 5, 'n'),
(270, 23, 6, 'n'),
(271, 23, 7, 'n'),
(272, 23, 8, 'n'),
(273, 23, 9, 'n'),
(274, 23, 10, 'n'),
(275, 23, 11, 'n'),
(276, 23, 12, 'n'),
(277, 24, 1, 's'),
(278, 24, 2, 's'),
(279, 24, 3, 's'),
(280, 24, 4, 'n'),
(281, 24, 5, 'n'),
(282, 24, 6, 'n'),
(283, 24, 7, 'n'),
(284, 24, 8, 'n'),
(285, 24, 9, 'n'),
(286, 24, 10, 'n'),
(287, 24, 11, 'n'),
(288, 24, 12, 'n'),
(289, 25, 1, 's'),
(290, 25, 2, 's'),
(291, 25, 3, 's'),
(292, 25, 4, 'n'),
(293, 25, 5, 'n'),
(294, 25, 6, 'n'),
(295, 25, 7, 'n'),
(296, 25, 8, 'n'),
(297, 25, 9, 'n'),
(298, 25, 10, 'n'),
(299, 25, 11, 'n'),
(300, 25, 12, 'n'),
(301, 26, 1, 's'),
(302, 26, 2, 's'),
(303, 26, 3, 's'),
(304, 26, 4, 's'),
(305, 26, 5, 'n'),
(306, 26, 6, 'n'),
(307, 26, 7, 'n'),
(308, 26, 8, 'n'),
(309, 26, 9, 'n'),
(310, 26, 10, 'n'),
(311, 26, 11, 'n'),
(312, 26, 12, 'n'),
(313, 27, 1, 's'),
(314, 27, 2, 's'),
(315, 27, 3, 's'),
(316, 27, 4, 'n'),
(317, 27, 5, 'n'),
(318, 27, 6, 'n'),
(319, 27, 7, 'n'),
(320, 27, 8, 'n'),
(321, 27, 9, 'n'),
(322, 27, 10, 'n'),
(323, 27, 11, 'n'),
(324, 27, 12, 'n'),
(325, 28, 1, 's'),
(326, 28, 2, 'n'),
(327, 28, 3, 'n'),
(328, 28, 4, 's'),
(329, 28, 5, 's'),
(330, 28, 6, 'n'),
(331, 28, 7, 'n'),
(332, 28, 8, 'n'),
(333, 28, 9, 'n'),
(334, 28, 10, 'n'),
(335, 28, 11, 'n'),
(336, 28, 12, 'n'),
(337, 29, 1, 's'),
(338, 29, 2, 'n'),
(339, 29, 3, 'n'),
(340, 29, 4, 'n'),
(341, 29, 5, 's'),
(342, 29, 6, 's'),
(343, 29, 7, 'n'),
(344, 29, 8, 'n'),
(345, 29, 9, 'n'),
(346, 29, 10, 'n'),
(347, 29, 11, 'n'),
(348, 29, 12, 'n'),
(349, 30, 1, 'n'),
(350, 30, 2, 'n'),
(351, 30, 3, 'n'),
(352, 30, 4, 's'),
(353, 30, 5, 'n'),
(354, 30, 6, 'n'),
(355, 30, 7, 's'),
(356, 30, 8, 's'),
(357, 30, 9, 'n'),
(358, 30, 10, 'n'),
(359, 30, 11, 'n'),
(360, 30, 12, 'n'),
(361, 31, 1, 'n'),
(362, 31, 2, 'n'),
(363, 31, 3, 'n'),
(364, 31, 4, 's'),
(365, 31, 5, 'n'),
(366, 31, 6, 'n'),
(367, 31, 7, 'n'),
(368, 31, 8, 's'),
(369, 31, 9, 's'),
(370, 31, 10, 'n'),
(371, 31, 11, 'n'),
(372, 31, 12, 'n'),
(373, 32, 1, 'n'),
(374, 32, 2, 'n'),
(375, 32, 3, 's'),
(376, 32, 4, 'n'),
(377, 32, 5, 'n'),
(378, 32, 6, 'n'),
(379, 32, 7, 'n'),
(380, 32, 8, 's'),
(381, 32, 9, 's'),
(382, 32, 10, 'n'),
(383, 32, 11, 'n'),
(384, 32, 12, 'n'),
(385, 33, 1, 'n'),
(386, 33, 2, 'n'),
(387, 33, 3, 's'),
(388, 33, 4, 'n'),
(389, 33, 5, 'n'),
(390, 33, 6, 'n'),
(391, 33, 7, 's'),
(392, 33, 8, 's'),
(393, 33, 9, 'n'),
(394, 33, 10, 'n'),
(395, 33, 11, 'n'),
(396, 33, 12, 'n'),
(397, 34, 1, 'n'),
(398, 34, 2, 'n'),
(399, 34, 3, 'n'),
(400, 34, 4, 'n'),
(401, 34, 5, 'n'),
(402, 34, 6, 'n'),
(403, 34, 7, 'n'),
(404, 34, 8, 'n'),
(405, 34, 9, 's'),
(406, 34, 10, 's'),
(407, 34, 11, 's'),
(408, 34, 12, 's');

-- --------------------------------------------------------

--
-- Table structure for table `enfermedad`
--

CREATE TABLE `enfermedad` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enfermedad`
--

INSERT INTO `enfermedad` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Gripe', 'Descansa mucho y bebe líquidos calientes como té o caldo para aliviar los síntomas. Toma medicamentos antivirales recetados por un médico y practica buena higiene.', '/sistema_experto/img/gripe.jpg'),
(2, 'COVID-19', 'Quédate en casa y aísla si tienes síntomas. Usa mascarilla, mantén una distancia segura y busca atención médica si los síntomas son graves.', '/sistema_experto/img/covid.jpg'),
(3, 'Neumonía', 'Busca atención médica si tienes tos, fiebre y dificultad para respirar. Toma antibióticos si es bacteriana, descansa y mantente hidratado.', '/sistema_experto/img/neumonia.jpg'),
(4, 'Alergia', 'Evita el contacto con el alérgeno que causa la reacción. Toma antihistamínicos o medicamentos recetados. Lleva epinefrina si tienes alergia grave.', '/sistema_experto/img/alergia.jpg'),
(5, 'Migraña', 'Identifica y evita los desencadenantes. Toma medicamentos recetados y practica técnicas de relajación como yoga o meditación.', '/sistema_experto/img/migrana.jpg');

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
  `telefono` varchar(20) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idusuario`, `dni`, `nombres`, `apellidos`, `correo`, `fecha_nacimiento`, `sexo`, `telefono`, `contrasena`) VALUES
(3, '73633890', 'Jhon', 'Doe', 'jhon2@gmail.com', '2009-04-28', 'M', NULL, '$2y$10$vYxrgIjeFiDDIFOutiQnpOEz6Uw4CsooizLszWdGBe9PQkCcOKc4G'),
(4, '73633895', 'Jose', 'Villanueva', 'jose@gmail.com', '2009-04-10', 'M', NULL, '$2y$10$44eFXhy2FTNhjNAXp1flJedKzXOIv.7QoGs3okYl10mYk.LLIqPfC');

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
-- Indexes for table `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `idatencion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `atencionsintoma`
--
ALTER TABLE `atencionsintoma`
  MODIFY `idatencionsintoma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `sintoma`
--
ALTER TABLE `sintoma`
  MODIFY `idsintoma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
