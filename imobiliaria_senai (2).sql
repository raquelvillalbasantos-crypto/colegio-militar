-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/11/2026 às 12:25
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria_senai`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `id_proprietaio` int DEFAULT NULL,
  `tipo_imovel` varchar(40) DEFAULT NULL,
  `tipo_negocio` varchar(40) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `estado`, `cidade`, `bairro`, `id_proprietaio`, `tipo_imovel`, `tipo_negocio`, `valor`) VALUES
(1, 'destrito, 002', 'PR', 'umuarama', 'centro', NULL, 'casa', 'aluguel', 350000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `negocios`
--

CREATE TABLE `negocios` (
  `id` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  `contrato` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `email`, `senha`, `endereco`, `telefone`, `cpf`) VALUES
(1, 'Don Quixote', 'Donquixote@gmail.com', 'limbusCOmpanyy111', 'destrito asa, 0002', '441156231762', '121232121211'),
(2, 'Ryoshu', '@Ryoshu@Gmail.com', 'smoker12123', 'destrito asa, 012', '445567112123', '12334612381'),
(3, 'Rodia', 'rodia@gmail.com', 'i1mperfect1212', 'Destrito, 0012', '443422143566', '999219802'),
(4, 'Outis', 'outis@gmail.com', 'ihavemyfamily12', 'Destrito, 0007', '441233781219', '1209873521'),
(5, 'Faust', 'faust@gmail.com', 'papatut1011', 'Destrito, 0008', '445698120123', '999023421'),
(6, 'Ishmael', 'ishmael@gmail.com', 'ilovetheocean', 'Destrito, 0006', '445221889121', '992341231'),
(7, 'Gregor', 'gregor10@gmail.com', 'ilovethebleetles', 'Destrito, 0023', '445466712812', '23443123'),
(8, 'Sinclair', 'sinclair@gmail.com', 'limbus232', 'Destrito, 0024', '447783221312', '778634352'),
(9, 'Heathcliff', 'heathcliff@gmail.com', 'limbus2021', 'Destrito, 0009', '445633331277', '998554232'),
(10, 'Dante', 'dante@gmail.com', 'tictic1201', 'Destrito, 0076', '445564321712', '878352561');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relacao_pessoa`
--

CREATE TABLE `relacao_pessoa` (
  `id_pessoa` int NOT NULL,
  `id_tipo_pessoa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `relacao_pessoa`
--

INSERT INTO `relacao_pessoa` (`id_pessoa`, `id_tipo_pessoa`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_pessoa`
--

CREATE TABLE `tipos_pessoa` (
  `id` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipos_pessoa`
--

INSERT INTO `tipos_pessoa` (`id`, `tipo`) VALUES
(1, 'cliente'),
(2, 'Usuário'),
(3, 'Properietário');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `relacao_pessoa`
--
ALTER TABLE `relacao_pessoa`
  ADD PRIMARY KEY (`id_pessoa`,`id_tipo_pessoa`);

--
-- Índices de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
