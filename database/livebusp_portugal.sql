-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17-Jan-2021 às 16:39
-- Versão do servidor: 10.2.36-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livebusp_portugal`
--
CREATE DATABASE IF NOT EXISTS `livebusp_portugal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `livebusp_portugal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `partida` varchar(5) DEFAULT NULL,
  `chegada` varchar(5) DEFAULT NULL,
  `duracao` varchar(5) DEFAULT NULL,
  `transbordo` varchar(50) DEFAULT NULL,
  `local_hora` varchar(50) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `partida`, `chegada`, `duracao`, `transbordo`, `local_hora`, `origem`, `destino`) VALUES
(1, '08:05', '08:30', '00:25', NULL, 'CAMARNEIRA/8:25', NULL, NULL),
(2, '08:30', '9:00', '00:30', 'Não', 'Casa do Zé', 'Aveiro', 'Coimbra'),
(3, '16:30', '17:30', '01:00', 'Não', 'Casa do Zé da Esquina', 'Aveiro', 'Coimbra'),
(4, '18:30', '19:30', '01:00', 'Não', 'Zé do Bar', 'Coimbra', 'Aveiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paragens`
--

CREATE TABLE `paragens` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `horario1` varchar(11) DEFAULT NULL,
  `horario2` varchar(11) DEFAULT NULL,
  `horario3` varchar(11) DEFAULT NULL,
  `horario4` varchar(11) DEFAULT NULL,
  `horario5` varchar(11) DEFAULT NULL,
  `horario6` varchar(11) DEFAULT NULL,
  `horario7` varchar(11) DEFAULT NULL,
  `horario8` varchar(11) DEFAULT NULL,
  `horario9` varchar(11) DEFAULT NULL,
  `horario10` varchar(11) DEFAULT NULL,
  `horario11` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paragens`
--

INSERT INTO `paragens` (`id`, `nome`, `horario1`, `horario2`, `horario3`, `horario4`, `horario5`, `horario6`, `horario7`, `horario8`, `horario9`, `horario10`, `horario11`) VALUES
(1, '1 - Centro (Vermelho)', '07:20', '07:50', '08:41', '10:33', '11:15', '12:25', '13:30', '14:20', '16:08', '16:58', '17:32'),
(2, '2 - Escola Secundária', '', '', '', '', '', '', '', '14:20', '', '', ''),
(3, '3 - R. Padre Américo', '07:21', '07:52', '08:43', '', '11:16', '12:26', '13:31', '14:21', '16:09', '17:00', '17:34'),
(4, '4 - Pav. Marialvas', '', '', '08:43', '10:35', '', '', '', '', '', '', ''),
(5, '5 - R. Prof. Mota Pinto', '07:22', '07:53', '08:43', '', '11:17', '12:27', '13:32', '14:22', '16:10', '17:01', '17:35'),
(6, '6 - Vila de Alva 1', '07:25', '07:56', '08:47', '', '11:20', '12:30', '13:35', '14:25', '16:13', '17:04', '17:38'),
(7, '7 - Vila de Alva 2', '07:26', '07:57', '08:47', '', '11:21', '12:31', '13:36', '14:26', '16:14', '17:05', '17:39'),
(8, '8 - Vila de Alva 3', '07:27', '07:58', '08:48', '', '11:22', '12:32', '13:37', '14:27', '16:15', '17:06', '17:40'),
(9, '9 - Vila de Alva 4', '07:28', '07:59', '08:49', '', '11:23', '12:33', '13:38', '14:28', '16:16', '17:07', '17:41'),
(10, '10 - R. Heróis Ultramar', '07:29', '08:00', '08:50', '', '11:24', '12:34', '13:39', '14:29', '16:17', '17:08', '17:42'),
(11, '11 - R. Sá Carneiro', '07:30', '08:00', '08:51', '', '11:25', '12:35', '13:40', '14:30', '16:18', '17:08', '17:43'),
(12, '12 - Esc. Pedro Teixeira', '07:31', '08:02', '08:52', '', '11:26', '12:36', '13:41', '14:31', '16:19', '17:10', '17:44'),
(13, '13 - R. 1º de Maio 1', '07:32', '08:03', '08:54', '', '11:27', '12:37', '13:42', '14:32', '16:20', '17:11', '17:45'),
(14, '14 - R. 1º de Maio 2', '07:33', '08:04', '08:54', '', '11:28', '12:38', '13:43', '14:33', '16:21', '17:12', '17:46'),
(15, '15 - Lrg. Fonte do Ouro', '07:34', '08:05', '08:56', '', '11:29', '12:39', '13:44', '14:34', '16:22', '17:13', '17:47'),
(16, '16 - R. Dr. Ant. J. Almeida', '07:35', '08:06', '08:56', '', '11:30', '12:40', '13:45', '14:35', '16:23', '17:14', '17:48'),
(17, '17 - Centro (Azul)', '07:35', '08:06', '08:57', '', '11:30', '12:40', '13:56', '14:36', '16:23', '17:14', '17:48'),
(18, '18 - R. Padre Américo', '', '08:08', '08:59', '10:55', '11:32', '12:42', '13:58', '14:55', '16:25', '17:16', '17:50'),
(19, '19 - Pav. Marialvas', '', '', '', '11:00', '', '', '', '14:58', '', '', ''),
(20, '20 - Transdev', '', '08:09', '08:59', '', '11:33', '12:43', '13:58', '', '16:26', '17:17', '17:51'),
(21, '21 - Av. do Brasil', '', '08:09', '09:00', '', '11:34', '12:44', '13:59', '', '16:27', '17:17', '17:52'),
(22, '22 - Escola Secundária', '', '08:11', '09:02', '', '11:35', '12:45', '14:00', '', '16:28', '17:20', '17:53'),
(23, '23 - Hospital', '', '08:12', '09:03', '', '11:37', '12:47', '14:01', '', '16:30', '', '17:55'),
(24, '24 - Lrg. Pedro Teixeira', '', '08:15', '09:05', '', '11:39', '12:49', '', '', '16:32', '', '17:57'),
(25, '25 - Biblioteca', '', '08:15', '09:06', '', '11:39', '12:49', '', '', '16:32', '', '17:57'),
(26, '26 - Intermarché', '', '08:17', '09:07', '', '11:41', '12:51', '', '', '16:34', '', '17:59'),
(27, '27 - Modelo', '', '08:18', '09:09', '', '11:42', '12:52', '', '', '16:35', '', '18:00'),
(28, '28 - Lidl', '', '08:19', '09:09', '', '11:43', '12:53', '', '', '16:36', '', '18:01'),
(29, '29 - Biblioteca', '', '08:20', '09:11', '', '11:45', '12:55', '', '', '16:38', '', '18:03'),
(30, '30 - Lrg. Pedro Teixeira', '', '08:21', '09:12', '', '11:45', '12:55', '', '', '16:38', '', '18:03'),
(31, '31 - Pav. Marialvas', '', '', '', '', '', '12:55', '', '', '', '', ''),
(32, '32 - R. Padre Américo', '', '', '', '', '', '12:58', '', '', '', '', ''),
(33, '33 - Centro (Verde)', '07:35', '08:25', '09:15', '', '12:00', '12:59', '14:04', '', '16:42', '', '18:07'),
(34, '34 - Lrg. Cidade do Funchal', '07:36', '08:26', '', '', '12:01', '13:00', '14:05', '', '16:43', '', '18:08'),
(35, '35 - R. João Ruão', '07:36', '08:27', '', '', '12:02', '13:01', '14:06', '', '16:44', '', '18:09'),
(36, '36 - Zi - Lusimat', '07:38', '08:28', '', '', '12:04', '13:03', '14:08', '', '16:46', '', '18:11'),
(37, '37 - Biocant / Inova', '07:39', '08:30', '', '', '12:05', '13:04', '14:09', '', '16:47', '', '18:12'),
(38, '38 - Parque Tecnológico', '07:40', '08:30', '', '', '12:06', '13:05', '14:10', '', '16:48', '', '18:13'),
(39, '39 - Complexo Desportivo', '07:40', '08:31', '', '', '12:06', '13:05', '14:10', '', '16:48', '', '18:13'),
(40, '40 - Academia de Golf', '07:41', '08:32', '', '', '12:07', '13:06', '14:11', '', '16:49', '', '18:14'),
(41, '41 - Quinta dos Laticínios', '07:43', '08:33', '', '', '12:08', '13:07', '14:12', '', '16:50', '17:24', '18:15'),
(42, '42 - Adega Cooperativa', '07:43', '08:34', '', '', '12:09', '13:08', '14:13', '', '16:51', '17:25', '18:16'),
(43, '43 - Urb. Amaro da Costa', '07:44', '08:35', '', '', '12:10', '13:09', '14:14', '', '16:52', '17:26', '18:17'),
(44, '44 - R. dos Lameiros 1', '07:45', '08:36', '', '', '12:11', '13:10', '14:15', '', '16:53', '17:27', '18:18'),
(45, '45 - R. dos Lameiros 2', '07:45', '08:36', '', '', '12:11', '13:10', '14:15', '', '16:53', '17:27', '18:18'),
(46, '46 - Lrg. S. João', '07:46', '08:37', '', '', '12:12', '13:11', '14:16', '', '16:54', '17:28', '18:19'),
(47, '47 - R. 5 de Outubro', '07:48', '08:39', '', '', '12:14', '13:13', '14:18', '', '16:56', '17:30', '18:21'),
(48, '48 - Centro', '07:50', '08:41', '', '', '12:16', '13:15', '14:20', '', '16:58', '17:32', '18:23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paragens`
--
ALTER TABLE `paragens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `paragens`
--
ALTER TABLE `paragens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
