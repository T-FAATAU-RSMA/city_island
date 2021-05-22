-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 23 mai 2021 à 01:18
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `city_island`
--

-- --------------------------------------------------------

--
-- Structure de la table `iles`
--

CREATE TABLE `iles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `iles`
--

INSERT INTO `iles` (`id`, `name`) VALUES
(1, 'Tahiti'),
(2, 'Moorea'),
(3, 'Bora Bora');

-- --------------------------------------------------------

--
-- Structure de la table `ile_ville`
--

CREATE TABLE `ile_ville` (
  `id` int(11) NOT NULL,
  `fk_ile` int(11) NOT NULL,
  `fk_ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ile_ville`
--

INSERT INTO `ile_ville` (`id`, `fk_ile`, `fk_ville`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`) VALUES
(1, 'Arue'),
(2, 'Papenoo'),
(3, 'Papara'),
(4, 'Afareaitu'),
(5, 'Paopao'),
(6, 'Maharepa'),
(7, 'Vaitape'),
(8, 'Anau'),
(9, 'Nunue');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `iles`
--
ALTER TABLE `iles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ile_ville`
--
ALTER TABLE `ile_ville`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ile` (`fk_ile`),
  ADD KEY `fk_ville` (`fk_ville`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `iles`
--
ALTER TABLE `iles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ile_ville`
--
ALTER TABLE `ile_ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ile_ville`
--
ALTER TABLE `ile_ville`
  ADD CONSTRAINT `fk_ile` FOREIGN KEY (`fk_ile`) REFERENCES `iles` (`id`),
  ADD CONSTRAINT `fk_ville` FOREIGN KEY (`fk_ville`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
