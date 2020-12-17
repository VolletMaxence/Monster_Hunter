-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 17 déc. 2020 à 16:18
-- Version du serveur :  10.1.47-MariaDB-0+deb9u1
-- Version de PHP : 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Maxence_Final_MH`
--

-- --------------------------------------------------------

--
-- Structure de la table `Arme`
--

CREATE TABLE `Arme` (
  `IDArme` int(20) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Element` varchar(25) NOT NULL,
  `Tranchant` varchar(10) NOT NULL,
  `Degat` int(11) NOT NULL,
  `Rarete` int(13) NOT NULL,
  `Sceaux` varchar(10) NOT NULL,
  `Affinite` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Arme`
--

INSERT INTO `Arme` (`IDArme`, `Type`, `Nom`, `Element`, `Tranchant`, `Degat`, `Rarete`, `Sceaux`, `Affinite`) VALUES
(1, 'Double Lame', 'Supplice exorbitant', 'Dragon', 'Blanc', 406, 12, 'Fort', 0),
(2, 'Double Lame', 'Blitz du despote', 'Foudre', 'Blanc', 364, 12, 'Aucun', 0),
(3, 'Double Lame', 'Conflit wyverne', 'Feu', 'Violet', 378, 12, 'Aucun', 15),
(29, 'Double Lame', 'Saint-Esprit de Guilde', 'Eau', 'Violet', 350, 11, 'Aucun', 0),
(31, 'Double Lame', 'Blizzarioths montagneux', 'Glace', 'Blanc', 350, 11, 'Aucun', 25),
(50, 'Double Lame', 'Bergel Vatra', 'Glace', 'Violet', 378, 11, 'Aucun', 15);

-- --------------------------------------------------------

--
-- Structure de la table `ArmeMonstre`
--

CREATE TABLE `ArmeMonstre` (
  `IDArme` int(255) NOT NULL,
  `IDMonstre` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Element`
--

CREATE TABLE `Element` (
  `IDElement` int(10) NOT NULL,
  `Element` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Element`
--

INSERT INTO `Element` (`IDElement`, `Element`) VALUES
(1, 'Feu'),
(2, 'Eau'),
(3, 'Glace'),
(4, 'Foudre'),
(5, 'Dragon');

-- --------------------------------------------------------

--
-- Structure de la table `Monstre`
--

CREATE TABLE `Monstre` (
  `IDMonstre` int(100) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Faiblesse` int(11) NOT NULL,
  `Element` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Monstre`
--

INSERT INTO `Monstre` (`IDMonstre`, `Nom`, `Faiblesse`, `Element`) VALUES
(1, 'Grand Jagras', 1, 'Aucun'),
(2, 'Kulu-Ya-Ku', 2, 'Aucun'),
(3, 'Pukei-Pukei', 4, 'Aucun'),
(4, 'Barroth', 1, 'Aucun'),
(5, 'Jyuratodus', 4, 'Eau'),
(6, 'Tobi-Kadachi', 2, 'Foudre'),
(7, 'Anjanath', 2, 'Feu'),
(23, 'Rathian', 5, 'Feu'),
(24, 'Tzitzi-Ya-Ku', 4, 'Aucun'),
(25, 'Paolumu', 1, 'Aucun'),
(26, 'Radoban', 5, 'Aucun'),
(27, 'Grand Girros', 2, 'Aucun'),
(28, 'Legiana', 4, 'Glace'),
(29, 'Odogaron', 3, 'Aucun'),
(30, 'Rathalos', 5, 'Feu'),
(31, 'Diablos', 3, 'Aucun'),
(32, 'Kirin', 1, 'Foudre'),
(33, 'Zorah Magdaros', 5, 'Feu'),
(34, 'Rathian Sakura', 5, 'Feu'),
(35, 'Dodogama', 4, 'Aucun'),
(36, 'Bazelgeuse', 3, 'Feu'),
(37, 'Lavasioth', 2, 'Feu'),
(38, 'Uragaan', 2, 'Feu'),
(39, 'Rathalos Azur', 5, 'Feu'),
(40, 'Diablos Noir', 3, 'Aucun'),
(41, 'Nergigante', 4, 'Aucun'),
(42, 'Kushala Daora', 4, 'Aucun'),
(43, 'Teostra', 3, 'Feu'),
(44, 'Vaal Hazak', 1, 'Aucun'),
(45, 'Xeno jiiva', 1, 'Dragon');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Arme`
--
ALTER TABLE `Arme`
  ADD PRIMARY KEY (`IDArme`);

--
-- Index pour la table `ArmeMonstre`
--
ALTER TABLE `ArmeMonstre`
  ADD KEY `TypeArme` (`IDArme`),
  ADD KEY `NomMonstre` (`IDMonstre`);

--
-- Index pour la table `Element`
--
ALTER TABLE `Element`
  ADD PRIMARY KEY (`IDElement`);

--
-- Index pour la table `Monstre`
--
ALTER TABLE `Monstre`
  ADD PRIMARY KEY (`IDMonstre`),
  ADD KEY `Faiblesse` (`Faiblesse`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Arme`
--
ALTER TABLE `Arme`
  MODIFY `IDArme` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `Element`
--
ALTER TABLE `Element`
  MODIFY `IDElement` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Monstre`
--
ALTER TABLE `Monstre`
  MODIFY `IDMonstre` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ArmeMonstre`
--
ALTER TABLE `ArmeMonstre`
  ADD CONSTRAINT `ArmeMonstre_ibfk_1` FOREIGN KEY (`IDArme`) REFERENCES `Arme` (`IDArme`),
  ADD CONSTRAINT `ArmeMonstre_ibfk_2` FOREIGN KEY (`IDMonstre`) REFERENCES `Monstre` (`IDMonstre`);

--
-- Contraintes pour la table `Monstre`
--
ALTER TABLE `Monstre`
  ADD CONSTRAINT `Monstre_ibfk_1` FOREIGN KEY (`Faiblesse`) REFERENCES `Element` (`IDElement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
