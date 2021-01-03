-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 03 Janvier 2021 à 18:12
-- Version du serveur :  10.1.47-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `maxence_final_mh`
--

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

CREATE TABLE `arme` (
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
-- Contenu de la table `arme`
--

INSERT INTO `arme` (`IDArme`, `Type`, `Nom`, `Element`, `Tranchant`, `Degat`, `Rarete`, `Sceaux`, `Affinite`) VALUES
(1, 'Double Lame', 'Supplice exorbitant', 'Dragon', 'Blanc', 406, 12, 'Fort', 0),
(2, 'Double Lame', 'Blitz du despote', 'Foudre', 'Blanc', 364, 12, 'Aucun', 0),
(3, 'Double Lame', 'Conflit wyverne', 'Feu', 'Violet', 378, 12, 'Aucun', 15),
(29, 'Double Lame', 'Saint-Esprit de Guilde', 'Eau', 'Violet', 350, 11, 'Aucun', 0),
(31, 'Double Lame', 'Blizzarioths montagneux', 'Glace', 'Blanc', 350, 11, 'Aucun', 25),
(50, 'Double Lame', 'Bergel Vatra', 'Glace', 'Violet', 378, 11, 'Aucun', 15),
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

CREATE TABLE `armemonstre` (
  `IDArme` int(255) NOT NULL,
  `IDMonstre` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `armemonstre`
--

INSERT INTO `armemonstre` (`IDArme`, `IDMonstre`) VALUES
(3, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(91, 1),
(92, 1),
(94, 1),
(95, 1),
(96, 1),
(3, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(91, 4),
(92, 4),
(94, 4),
(95, 4),
(96, 4),
(3, 25),
(51, 25),
(52, 25),
(53, 25),
(54, 25),
(55, 25),
(56, 25),
(91, 25),
(92, 25),
(94, 25),
(95, 25),
(96, 25),
(3, 32),
(51, 32),
(52, 32),
(53, 32),
(54, 32),
(55, 32),
(56, 32),
(91, 32),
(92, 32),
(94, 32),
(95, 32),
(96, 32),
(29, 2),
(57, 2),
(58, 2),
(59, 2),
(61, 2),
(62, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(29, 6),
(57, 6),
(58, 6),
(59, 6),
(61, 6),
(62, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(29, 7),
(57, 7),
(58, 7),
(59, 7),
(61, 7),
(62, 7),
(97, 7),
(98, 7),
(99, 7),
(100, 7),
(101, 7),
(29, 27),
(57, 27),
(58, 27),
(59, 27),
(61, 27),
(62, 27),
(97, 27),
(98, 27),
(99, 27),
(100, 27),
(101, 27),
(29, 37),
(57, 37),
(58, 37),
(59, 37),
(61, 37),
(62, 37),
(97, 37),
(98, 37),
(99, 37),
(100, 37),
(101, 37),
(29, 38),
(57, 38),
(58, 38),
(59, 38),
(61, 38),
(62, 38),
(97, 38),
(98, 38),
(99, 38),
(100, 38),
(101, 38),
(31, 29),
(50, 29),
(51, 29),
(63, 29),
(64, 29),
(65, 29),
(66, 29),
(68, 29),
(69, 29),
(70, 29),
(102, 29),
(103, 29),
(104, 29),
(105, 29),
(106, 29),
(107, 29),
(31, 31),
(50, 31),
(51, 31),
(63, 31),
(64, 31),
(65, 31),
(66, 31),
(68, 31),
(69, 31),
(70, 31),
(102, 31),
(103, 31),
(104, 31),
(105, 31),
(106, 31),
(107, 31),
(31, 36),
(50, 36),
(51, 36),
(63, 36),
(64, 36),
(65, 36),
(66, 36),
(68, 36),
(69, 36),
(70, 36),
(102, 36),
(103, 36),
(104, 36),
(105, 36),
(106, 36),
(107, 36),
(31, 40),
(50, 40),
(51, 40),
(63, 40),
(64, 40),
(65, 40),
(66, 40),
(68, 40),
(69, 40),
(70, 40),
(102, 40),
(103, 40),
(104, 40),
(105, 40),
(106, 40),
(107, 40),
(31, 43),
(50, 43),
(51, 43),
(63, 43),
(64, 43),
(65, 43),
(66, 43),
(68, 43),
(69, 43),
(70, 43),
(102, 43),
(103, 43),
(104, 43),
(105, 43),
(106, 43),
(107, 43),
(2, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(2, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(108, 5),
(109, 5),
(110, 5),
(111, 5),
(112, 5),
(113, 5),
(2, 24),
(71, 24),
(72, 24),
(73, 24),
(74, 24),
(75, 24),
(76, 24),
(77, 24),
(78, 24),
(108, 24),
(109, 24),
(110, 24),
(111, 24),
(112, 24),
(113, 24),
(2, 28),
(71, 28),
(72, 28),
(73, 28),
(74, 28),
(75, 28),
(76, 28),
(77, 28),
(78, 28),
(108, 28),
(109, 28),
(110, 28),
(111, 28),
(112, 28),
(113, 28),
(2, 35),
(71, 35),
(72, 35),
(73, 35),
(74, 35),
(75, 35),
(76, 35),
(77, 35),
(78, 35),
(108, 35),
(109, 35),
(110, 35),
(111, 35),
(112, 35),
(113, 35),
(2, 41),
(71, 41),
(72, 41),
(73, 41),
(74, 41),
(75, 41),
(76, 41),
(77, 41),
(78, 41),
(108, 41),
(109, 41),
(110, 41),
(111, 41),
(112, 41),
(113, 41),
(2, 42),
(71, 42),
(72, 42),
(73, 42),
(74, 42),
(75, 42),
(76, 42),
(77, 42),
(78, 42),
(108, 42),
(109, 42),
(110, 42),
(111, 42),
(112, 42),
(113, 42),
(1, 23),
(79, 23),
(80, 23),
(81, 23),
(82, 23),
(83, 23),
(84, 23),
(85, 23),
(86, 23),
(87, 23),
(88, 23),
(89, 23),
(114, 23),
(115, 23),
(116, 23),
(117, 23),
(118, 23),
(119, 23),
(120, 23),
(121, 23),
(122, 23),
(123, 23),
(1, 26),
(79, 26),
(80, 26),
(81, 26),
(82, 26),
(83, 26),
(84, 26),
(85, 26),
(86, 26),
(87, 26),
(88, 26),
(89, 26),
(114, 26),
(115, 26),
(116, 26),
(117, 26),
(118, 26),
(119, 26),
(120, 26),
(121, 26),
(122, 26),
(123, 26),
(1, 30),
(79, 30),
(80, 30),
(81, 30),
(82, 30),
(83, 30),
(84, 30),
(85, 30),
(86, 30),
(87, 30),
(88, 30),
(89, 30),
(114, 30),
(115, 30),
(116, 30),
(117, 30),
(118, 30),
(119, 30),
(120, 30),
(121, 30),
(122, 30),
(123, 30),
(1, 33),
(79, 33),
(80, 33),
(81, 33),
(82, 33),
(83, 33),
(84, 33),
(85, 33),
(86, 33),
(87, 33),
(88, 33),
(89, 33),
(114, 33),
(115, 33),
(116, 33),
(117, 33),
(118, 33),
(119, 33),
(120, 33),
(121, 33),
(122, 33),
(123, 33),
(1, 34),
(79, 34),
(80, 34),
(81, 34),
(82, 34),
(83, 34),
(84, 34),
(85, 34),
(86, 34),
(87, 34),
(88, 34),
(89, 34),
(114, 34),
(115, 34),
(116, 34),
(117, 34),
(118, 34),
(119, 34),
(120, 34),
(121, 34),
(122, 34),
(123, 34),
(1, 39),
(79, 39),
(80, 39),
(81, 39),
(82, 39),
(83, 39),
(84, 39),
(85, 39),
(86, 39),
(87, 39),
(88, 39),
(89, 39),
(114, 39),
(115, 39),
(116, 39),
(117, 39),
(118, 39),
(119, 39),
(120, 39),
(121, 39),
(122, 39),
(123, 39);

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `IDElement` int(10) NOT NULL,
  `Element` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `element`
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

CREATE TABLE `monstre` (
  `IDMonstre` int(100) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Faiblesse` int(11) NOT NULL,
  `Element` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `monstre`
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
-- Index pour les tables exportées
--

--
-- Index pour la table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`IDArme`);

--
-- Index pour la table `armemonstre`
--
ALTER TABLE `armemonstre`
  ADD KEY `TypeArme` (`IDArme`),
  ADD KEY `NomMonstre` (`IDMonstre`);

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`IDElement`);

--
-- Index pour la table `monstre`
--
ALTER TABLE `monstre`
  ADD PRIMARY KEY (`IDMonstre`),
  ADD KEY `Faiblesse` (`Faiblesse`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `arme`
--
ALTER TABLE `arme`
  MODIFY `IDArme` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT pour la table `element`
--
ALTER TABLE `element`
  MODIFY `IDElement` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `monstre`
--
ALTER TABLE `monstre`
  MODIFY `IDMonstre` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Contraintes pour les tables exportées
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
