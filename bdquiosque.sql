-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Fev-2022 às 02:17
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdquiosque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `tipoProduto` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `genero`, `tipoProduto`, `data_nascimento`) VALUES
(1, 'nicolas', 'nicolasbegninileite@gmail.com', '9812815123', 'rua francisco', 'M', 'camisas', '2022-02-02'),
(2, 'felipão', 'felipaoGamer@outlook.hentai.com', '99925132065', 'paulista', 'O', 'calcas', '2002-11-03'),
(3, 'Nícolas', 'nicolasbegninileite@gmail.com', '99925132065', 'rua francisco', 'M', 'calcas', '2022-02-11'),
(4, 'nicolas', 'dwadad@dawd.com', '6982035', 'dwadasda', 'F', 'calcas', '2022-02-01'),
(5, 'nicolas', 'dwadad@dawd.com', '6982035', 'dwadasda', 'F', 'calcas', '2022-02-01'),
(6, 'maria', 'wajdbwau@findawm.com', '515515311121', 'rua francisco', 'F', 'camisas', '2022-02-04'),
(7, 'mel', 'mel@gmail.com', '99925132065', 'minha casa', 'F', 'calcas', '2022-02-03'),
(8, 'joao', 'joao@gmail.com', '6982035', 'minha cas', 'O', 'calcas', '2021-03-31'),
(9, 'joao', 'joao@gmail.com', '6982035', 'minha cas', 'O', 'calcas', '2021-03-31'),
(10, 'marcio', 'marcio@gmail.com', '984216161', 'sla', 'Masculino', 'camisas', '2021-11-11'),
(11, 'doiawnd', 'dawkn@doiamd.com', '56484651', 'dwdawdwa', 'Masculino', 'camisas', '2021-10-06'),
(12, 'dwadads', 'dawdawds@dwdas.com', '65181321', 'dawdsad', 'Masculino', 'calcas', '2021-12-03');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
