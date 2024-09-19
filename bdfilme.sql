-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2024 às 03:36
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Banco de dados: `bdfilmes`

-- --------------------------------------------------------

-- Estrutura para tabela `cartaz`
CREATE TABLE `cartaz` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Ano` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Índices para tabelas despejadas

-- Índices de tabela `cartaz`
ALTER TABLE `cartaz`
  ADD PRIMARY KEY (`Id`);

-- AUTO_INCREMENT para tabelas despejadas

-- AUTO_INCREMENT de tabela `cartaz`
ALTER TABLE `cartaz`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

-- Inserindo 3 filmes de cada gênero na tabela 'filmes'
INSERT INTO `cartaz` (Genero, Nome, Ano) 
VALUES 
    -- Ação
    ('Ação', 'Velozes e Furiosos', 2001),
    ('Ação', 'Mad Max: Estrada da Fúria', 2015),
    ('Ação', 'John Wick', 2014),

    -- Comédia
    ('Comédia', 'Todo Mundo em Pânico', 2000),
    ('Comédia', 'Se Beber, Não Case', 2009),
    ('Comédia', 'As Branquelas', 2004),

    -- Drama
    ('Drama', 'À Espera de um Milagre', 1999),
    ('Drama', 'O Pianista', 2002),
    ('Drama', 'Clube da Luta', 1999),

    -- Ficção Científica
    ('Ficção Científica', 'Interestelar', 2014),
    ('Ficção Científica', 'Matrix', 1999),
    ('Ficção Científica', 'Blade Runner 2049', 2017),

    -- Romance
    ('Romance', 'Orgulho e Preconceito', 2005),
    ('Romance', 'Diário de uma Paixão', 2004),
    ('Romance', 'La La Land', 2016);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
