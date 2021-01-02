-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 02 jan. 2021 à 23:53
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maxence_final_mh`
--

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

DROP TABLE IF EXISTS `arme`;
CREATE TABLE IF NOT EXISTS `arme` (
  `IDArme` int(20) NOT NULL AUTO_INCREMENT,
  `Type` varchar(100) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Element` varchar(25) NOT NULL,
  `Tranchant` varchar(10) NOT NULL,
  `Degat` int(11) NOT NULL,
  `Rarete` int(13) NOT NULL,
  `Sceaux` varchar(10) NOT NULL,
  `Affinite` int(100) NOT NULL,
  PRIMARY KEY (`IDArme`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `arme`
--

INSERT INTO `arme` (`IDArme`, `Type`, `Nom`, `Element`, `Tranchant`, `Degat`, `Rarete`, `Sceaux`, `Affinite`) VALUES
(51, 'Double Lame', 'Déchireuses Anja II', 'Feu', 'Blanc', 378, 10, 'Aucun', -20),
(52, 'Double Lame', 'Crime', 'Feu', 'Blanc', 322, 10, 'Aucun', 30),
(53, 'Double Lame', 'Conflit Wyverne', 'Feu', 'Violet', 378, 12, 'Aucun', 15),
(54, 'Double Lame', 'Flammes destructrices II', 'Feu', 'Blanc', 364, 10, 'Aucun', 0),
(55, 'Double Lame', 'Royaumes calcinés', 'Feu', 'violet', 364, 11, 'Aucun', 0),
(56, 'Double Lame', 'Griffes Safi - Feu', 'Feu', 'Blanc', 378, 12, 'Aucun', 5),
(57, 'Double Lame', 'Flamberges Jyura II', 'Eau', 'Blanc', 364, 10, 'Aucun', 0),
(58, 'Double Lame', 'Saint-Esprit de Guilde', 'Eau', 'Violet', 350, 11, 'Aucun', 0),
(59, 'Double Lame', 'Sabres possaiguiseurs +', 'Eau', 'Violet', 322, 11, 'Aucun', 5),
(61, 'Double Lame', 'Dagues Royales \"Messiah\"', 'Eau', 'Violet', 378, 12, 'Aucun', 15),
(62, 'Double Lame', 'Griffes Safi - Eau', 'Eau', 'Blanc', 378, 12, 'Aucun', 5),
(63, 'Double Lame', 'Dents de thanatos', 'Glace', 'Violet', 406, 10, 'Aucun', -10),
(64, 'Double Lame', 'Brassier et blizzard', 'Glace', 'Violet', 364, 11, 'Aucun', 10),
(65, 'Double Lame', 'Blizzarioths montagneux', 'Glace', 'Blanc', 350, 11, 'Aucun', 25),
(66, 'Double Lame', 'Os mammouth II', 'Glace', 'Blanc', 392, 10, 'Aucun', 0),
(68, 'Double Lame', 'Helheim immaculé', 'Glace', 'Violet', 378, 12, 'Aucun', 0),
(69, 'Double Lame', 'Hachettes Beo II', 'Glace', 'Blanc', 350, 10, 'Aucun', 0),
(70, 'Double Lame', 'Griffes Safi - Glace', 'Glace', 'Blanc', 378, 12, 'Aucun', 5),
(71, 'Double Lame', 'Faucons Kadachi II', 'Foudre', 'Violet', 322, 10, 'Aucun', 10),
(72, 'Double Lame', 'Croix destructrice II', 'Foudre', 'Blanc', 364, 10, 'Aucun', 0),
(73, 'Double Lame', 'Wunderkirins', 'Foudre', 'Blanc', 336, 11, 'Aucun', 0),
(74, 'Double Lame', 'Tornade fulgurante II', 'Foudre', 'Blanc', 350, 10, 'Aucun', 15),
(75, 'Double Lame', 'Suzuka Otakemaru', 'Foudre', 'Blanc', 434, 12, 'Aucun', -10),
(76, 'Double Lame', 'Blitz du despote', 'Foudre', 'Violet', 364, 12, 'Aucun', 0),
(77, 'Double Lame', 'Poings infernaux du roi-démon', 'Foudre', 'Violet', 406, 12, 'Aucun', 15),
(78, 'Double Lame', 'Griffes Safi - Foudre', 'Foudre', 'Blanc', 378, 12, 'Aucun', 5),
(79, 'Double Lame', 'Supplice exorbitant', 'Dragon', 'Blanc', 406, 12, 'Fort', 0),
(80, 'Double Lame', 'Xeno Raqs +', 'Dragon', 'Blanc', 392, 12, 'Faible', 15),
(81, 'Double Lame', 'Suprématie éternelle', 'Dragon', 'Blanc', 336, 11, 'Moyen', 0),
(82, 'Double Lame', 'Lames souveraines', 'Dragon', 'Violet', 392, 12, 'Fort', -15),
(83, 'Double Lame', 'Zireael +', 'Dragon', 'Violet', 364, 12, 'Fort', 0),
(84, 'Double Lame', 'Griffes-sang stygiennes', 'Dragon', 'Violet', 378, 12, 'Moyen', 0),
(85, 'Double Lame', 'Clairvoyance infinie', 'Dragon', 'Violet', 392, 12, 'Fort', 0),
(86, 'Double Lame', 'Folie Alatreon', 'Dragon', 'Violet', 392, 12, 'Faible', 0),
(87, 'Double Lame', 'Faucheuse inéluctable', 'Dragon', 'Blanc', 336, 11, 'Fort', 20),
(88, 'Double Lame', 'Griffes Safi - Dragon', 'Dragon', 'Blanc', 378, 12, 'Moyen', 5),
(89, 'Double Lame', 'Cieux doubles Fatalis', 'Dragon', 'Violet', 518, 12, 'Fort', -30),
(91, 'Morpho-hache', 'Lohenbeil', 'Feu', 'Blanc', 945, 10, 'Aucun', -20),
(92, 'Morpho-hache', 'Porte-rage Argent', 'Feu', 'Violet', 945, 12, 'Aucun', 20),
(94, 'Morpho-hache', 'Moteur géant II', 'Feu', 'Bleu', 1015, 10, 'Aucun', 0),
(95, 'Morpho-hache', 'Ecraseur Glavenus II', 'Feu', 'Violet', 875, 10, 'Aucun', 0),
(96, 'Morpho-hache', 'Hache Safi - Feu', 'Feu', 'Blanc', 12, 945, 'Aucun', 5),
(97, 'Morpho-hache', 'Cataclysme Jyura II', 'Eau', 'Blanc', 910, 10, 'Aucun', 0),
(98, 'Morpho-hache', 'Lagon profond II', 'Eau', 'Violet', 840, 10, 'Aucun', 0),
(99, 'Morpho-hache', 'Strobila noire', 'Eau', 'Blanc', 980, 12, 'Aucun', 15),
(100, 'Morpho-hache', 'Hache royale \"Titan\"', 'Eau', 'Violet', 945, 12, 'Aucun', 15),
(101, 'Morpho-hache', 'Hache Safi - Eau', 'Eau', 'Blanc', 945, 12, 'Aucun', 5),
(102, 'Morpho-hache', 'Glacia Hector', 'Glace', 'Violet', 840, 11, 'Aucun', 0),
(103, 'Morpho-hache', 'Hache Hadès', 'Glace', 'Violet', 1015, 10, 'Aucun', -30),
(104, 'Morpho-hache', 'Mammo-hallebarde II', 'Glace', 'Bleu', 980, 10, 'Aucun', 0),
(105, 'Morpho-hache', 'Niddoq maléfique', 'Glace', 'Violet', 945, 12, 'Aucun', 0),
(106, 'Morpho-hache', 'Engelure ambrée', 'Glace', 'Violet', 945, 11, 'Aucun', 30),
(107, 'Morpho-hache', 'Hache Safi - Glace', 'Glace', 'Blanc', 945, 12, 'Aucun', 5),
(108, 'Morpho-hache', 'Kirin titan', 'Foudre', 'Blanc', 840, 11, 'Aucun', 0),
(109, 'Morpho-hache', 'Foudre tranchante II', 'Foudre', 'Violet', 875, 11, 'Aucun', 0),
(110, 'Morpho-hache', 'Morsure fulgurante', 'Foudre', 'Blanc', 910, 11, 'Aucun', 20),
(111, 'Morpho-hache', 'Lumière éternelle', 'Foudre', 'Blanc', 1085, 12, 'Aucun', -15),
(112, 'Morpho-hache', 'Hache démon \"Orage\"', 'Foudre', 'Violet', 1015, 12, 'Aucun', 15),
(113, 'Morpho-hache', 'Hache Safi - Foudre', 'Foudre', 'Blanc', 945, 12, 'Aucun', 5),
(114, 'Morpho-hache', 'Lumière exorbitante', 'Dragon', 'Blanc', 1015, 12, 'Fort', 0),
(115, 'Morpho-hache', 'Lame de mort Vaal Demios', 'Dragon', 'Blanc', 875, 11, 'Moyen', 0),
(116, 'Morpho-hache', 'Xeno Martshu +', 'Dragon', 'Blanc', 980, 12, 'Faible', 15),
(117, 'Morpho-hache', 'Hache Sceau-de-dragon II', 'Dragon', 'Blanc', 840, 11, 'Moyen', 0),
(118, 'Morpho-hache', 'Hache infâme Saligia', 'Dragon', 'Violet', 980, 12, 'Fort', -30),
(119, 'Morpho-hache', 'Tranchoir infernal +', 'Dragon', 'Violet', 945, 12, 'Moyen', 0),
(120, 'Morpho-hache', 'Lueur évanescente', 'Dragon', 'Violet', 980, 12, 'Fort', 0),
(121, 'Morpho-hache', 'Moisson noire', 'Dragon', 'Violet', 980, 12, 'Faible', 0),
(122, 'Morpho-hache', 'Hache Safi - Dragon', 'Dragon', 'Blanc', 945, 12, 'Moyen', 5),
(123, 'Morpho-hache', 'Fin Ultime du Fatalis', 'Dragon', 'Violet', 1225, 12, 'Fort', -30);

-- --------------------------------------------------------

--
-- Structure de la table `armemonstre`
--

DROP TABLE IF EXISTS `armemonstre`;
CREATE TABLE IF NOT EXISTS `armemonstre` (
  `IDArme` int(255) NOT NULL,
  `IDMonstre` int(50) NOT NULL,
  KEY `TypeArme` (`IDArme`),
  KEY `NomMonstre` (`IDMonstre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

DROP TABLE IF EXISTS `element`;
CREATE TABLE IF NOT EXISTS `element` (
  `IDElement` int(10) NOT NULL AUTO_INCREMENT,
  `Element` varchar(20) NOT NULL,
  PRIMARY KEY (`IDElement`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `element`
--

INSERT INTO `element` (`IDElement`, `Element`) VALUES
(1, 'Feu'),
(2, 'Eau'),
(3, 'Glace'),
(4, 'Foudre'),
(5, 'Dragon');

-- --------------------------------------------------------

--
-- Structure de la table `monstre`
--

DROP TABLE IF EXISTS `monstre`;
CREATE TABLE IF NOT EXISTS `monstre` (
  `IDMonstre` int(100) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Faiblesse` int(11) NOT NULL,
  `Element` varchar(10) NOT NULL,
  PRIMARY KEY (`IDMonstre`),
  KEY `Faiblesse` (`Faiblesse`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `monstre`
--

INSERT INTO `monstre` (`IDMonstre`, `Nom`, `Faiblesse`, `Element`) VALUES
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
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `armemonstre`
--
ALTER TABLE `armemonstre`
  ADD CONSTRAINT `ArmeMonstre_ibfk_1` FOREIGN KEY (`IDArme`) REFERENCES `arme` (`IDArme`),
  ADD CONSTRAINT `ArmeMonstre_ibfk_2` FOREIGN KEY (`IDMonstre`) REFERENCES `monstre` (`IDMonstre`);

--
-- Contraintes pour la table `monstre`
--
ALTER TABLE `monstre`
  ADD CONSTRAINT `Monstre_ibfk_1` FOREIGN KEY (`Faiblesse`) REFERENCES `element` (`IDElement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
