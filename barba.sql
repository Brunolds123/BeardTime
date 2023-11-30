-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2023 às 13:39
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `barba`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `barbeiro_bruno`
--

CREATE TABLE `barbeiro_bruno` (
  `ID` int(20) NOT NULL,
  `CLIENTE` varchar(55) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `SERVICO` varchar(30) DEFAULT NULL,
  `DIA` date DEFAULT NULL,
  `HORÁRIO` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `barbeiro_leonardo`
--

CREATE TABLE `barbeiro_leonardo` (
  `ID` int(100) NOT NULL,
  `CLIENTE` varchar(55) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `SERVICO` varchar(30) DEFAULT NULL,
  `DIA` date DEFAULT NULL,
  `HORÁRIO` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_barbearia`
--

CREATE TABLE `dados_barbearia` (
  `ID` int(100) NOT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `NUMERO` varchar(12) DEFAULT NULL,
  `SERVICO` varchar(50) DEFAULT NULL,
  `VALOR` int(30) DEFAULT NULL,
  `BARBEIRO` varchar(50) DEFAULT NULL,
  `AGENDADO` date DEFAULT NULL,
  `HORARIO` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_barbearia`
--

INSERT INTO `dados_barbearia` (`ID`, `NOME`, `NUMERO`, `SERVICO`, `VALOR`, `BARBEIRO`, `AGENDADO`, `HORARIO`) VALUES
(1, 'Abacate', '12345689898', 'Corte de Barba', 15, 'Leonardo', '2023-11-30', '15:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `testando`
--

CREATE TABLE `testando` (
  `NOME` varchar(55) NOT NULL,
  `NUMERO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `barbeiro_bruno`
--
ALTER TABLE `barbeiro_bruno`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `barbeiro_leonardo`
--
ALTER TABLE `barbeiro_leonardo`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `dados_barbearia`
--
ALTER TABLE `dados_barbearia`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barbeiro_bruno`
--
ALTER TABLE `barbeiro_bruno`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `barbeiro_leonardo`
--
ALTER TABLE `barbeiro_leonardo`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dados_barbearia`
--
ALTER TABLE `dados_barbearia`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
