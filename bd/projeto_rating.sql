-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Set-2018 às 16:53
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_rating`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `media` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `media`) VALUES
(1, 'Lost', 3.44444),
(2, 'Rambo', 3.75),
(3, 'Esqueceram de Mim 15', 3.4375);

-- --------------------------------------------------------

--
-- Estrutura da tabela `votos`
--

CREATE TABLE `votos` (
  `id` int(11) NOT NULL,
  `id_filme` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `votos`
--

INSERT INTO `votos` (`id`, `id_filme`, `nota`) VALUES
(604, 1, 3),
(605, 1, 5),
(606, 2, 2),
(607, 2, 5),
(608, 3, 1),
(609, 3, 5),
(610, 3, 3),
(611, 3, 4),
(612, 3, 2),
(613, 3, 1),
(614, 3, 5),
(615, 3, 4),
(616, 3, 5),
(617, 3, 3),
(618, 3, 2),
(619, 3, 1),
(620, 3, 4),
(621, 3, 5),
(622, 3, 5),
(623, 3, 5),
(624, 2, 3),
(625, 2, 5),
(626, 1, 2),
(627, 1, 4),
(628, 1, 5),
(629, 1, 5),
(630, 1, 4),
(631, 1, 2),
(632, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
