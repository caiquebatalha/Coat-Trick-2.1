-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jan-2023 às 19:33
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cliente`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` varchar(10) NOT NULL,
  `nomeCliente` varchar(10) DEFAULT NULL,
  `emailCliente` varchar(10) DEFAULT NULL,
  `cpfCliente` varchar(10) DEFAULT NULL,
  `sobrenomeCliente` varchar(10) DEFAULT NULL,
  `senhaCliente` varchar(10) DEFAULT NULL,
  `confirmarsenhaCliente` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `tipoLogradouro` varchar(10) DEFAULT NULL,
  `logradouro` varchar(10) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `bairro` varchar(10) DEFAULT NULL,
  `municipio` varchar(10) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` varchar(10) NOT NULL,
  `nomeFuncionario` varchar(10) DEFAULT NULL,
  `telefoneFuncionario` varchar(10) DEFAULT NULL,
  `cpfFuncionario` varchar(10) DEFAULT NULL,
  `tipoLogradouro` varchar(10) DEFAULT NULL,
  `Logradouro` varchar(10) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `bairro` varchar(10) DEFAULT NULL,
  `municipio` varchar(10) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `numeroCartao` varchar(19) DEFAULT NULL,
  `validadeCartao` varchar(5) DEFAULT NULL,
  `nometitularCartao` varchar(100) DEFAULT NULL,
  `cvcCartao` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` varchar(10) NOT NULL,
  `dtPedido` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roupa`
--

CREATE TABLE `roupa` (
  `pp` varchar(10) DEFAULT NULL,
  `p` varchar(10) DEFAULT NULL,
  `m` varchar(10) DEFAULT NULL,
  `g` varchar(10) DEFAULT NULL,
  `gg` varchar(10) DEFAULT NULL,
  `masculino` varchar(10) DEFAULT NULL,
  `feminino` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `cpfCliente` (`cpfCliente`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD UNIQUE KEY `cpfFuncionario` (`cpfFuncionario`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
