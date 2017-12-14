-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 28/11/2017 às 00:46
-- Versão do servidor: 5.7.20-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Tables_in_pusher`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `message` varchar(30) DEFAULT NULL,
  `created_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `name`, `message`, `created_at`) VALUES
(49, 'joas', 'asldqfdqfa', '2017-11-24 21:26:39'),
(50, 'fjlqdsaf', 'asldqfdqfadsfadqljfsfsadq', '2017-11-24 21:26:46'),
(51, 'oi', 'alsdqjfÃ§ls', '2017-11-24 21:27:04'),
(52, 'afsdqfs', 'asfdqfsasdq', '2017-11-24 21:27:50'),
(53, 'aff', 'jaldqf', '2017-11-24 21:28:32'),
(54, 'werw', 'werqwer', '2017-11-24 21:29:29'),
(55, 'aaaaaaaaafa', 'aa', '2017-11-24 21:30:00'),
(56, 'aaaaaaaaafa', 'aa', '2017-11-24 21:30:05'),
(57, 'f', 'dqf', '2017-11-24 21:40:21'),
(58, 'fasdqfdq', 'fasdqf', '2017-11-24 21:41:02'),
(59, '', '', '2017-11-24 21:41:39'),
(60, 'aadqsf', 'dqfsa', '2017-11-24 21:41:45'),
(61, 'joa', 'sera que foi o scrooll?', '2017-11-24 21:43:21'),
(62, 'joa', 'sera que foi o scrooll?', '2017-11-24 21:43:51'),
(63, 'adqfsqadqfqf', 'adqdsfdsqa', '2017-11-24 21:44:39'),
(64, 'joas', 'pow', '2017-11-24 21:49:40'),
(65, 'jowa', 'sim', '2017-11-24 21:50:16'),
(66, 'joas', 'foi sem net', '2017-11-26 00:06:07'),
(67, 'joas', 'oiiiii', '2017-11-27 20:53:46');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
