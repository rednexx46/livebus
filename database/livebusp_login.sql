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
-- Banco de dados: `livebusp_login`
--
CREATE DATABASE IF NOT EXISTS `livebusp_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `livebusp_login`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `genero` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`, `genero`) VALUES
(1, 'Ze', 'Das Flores', 'zeflores@gmail.com', 'teste', '12413541345', '2020-04-01 11:56:28', 'fem'),
(2, 'Ze', 'Das Flores', 'zeflores@gmail.com', 'teste', '12413541345', '2020-04-01 12:00:38', 'fem'),
(3, 'Ze', 'Tasca', 'ze@gmail.com', 'teste', '93434035', '2020-04-01 18:53:46', 'masc'),
(4, 'claudio', 'simoes', 'claudioimoes@gmail.com', '02082017', '910308614', '2020-04-13 17:00:15', 'masc'),
(5, 'JosÃ©', 'Tasca', 'zedatasca@gmail.com', '', '934340035', '2020-05-21 00:01:33', ''),
(6, 'Jose', 'xavier', 'josexavier@gmail.com', 'cosmos', '123', '2020-05-21 01:42:25', ''),
(7, 'claudio', 'sergio', 'claudioimoes@gmail.com', '02082017', '910308617', '2020-05-21 01:46:06', ''),
(8, 'JosÃ© Xavier', 'NabÃ£o', 'josexavier46@outlook.pt', 'eumafesta', '934340035', '2020-05-24 13:50:12', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
