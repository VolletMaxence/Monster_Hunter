-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 20 déc. 2020 à 18:34
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
  `IDRelation` int(11) NOT NULL,
  `IDArme` int(255) NOT NULL,
  `IDMonstre` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `armemonstre`
--

INSERT INTO `armemonstre` (`IDRelation`, `IDArme`, `IDMonstre`) VALUES
(2, 51, 1),
(3, 52, 1),
(4, 53, 1),
(5, 54, 1),
(6, 55, 1),
(7, 56, 1),
(8, 91, 1),
(9, 92, 1),
(10, 94, 1),
(11, 95, 1),
(12, 96, 1),
(14, 51, 4),
(15, 52, 4),
(16, 53, 4),
(17, 54, 4),
(18, 55, 4),
(19, 56, 4),
(20, 91, 4),
(21, 92, 4),
(22, 94, 4),
(23, 95, 4),
(24, 96, 4),
(26, 51, 25),
(27, 52, 25),
(28, 53, 25),
(29, 54, 25),
(30, 55, 25),
(31, 56, 25),
(32, 91, 25),
(33, 92, 25),
(34, 94, 25),
(35, 95, 25),
(36, 96, 25),
(38, 51, 32),
(39, 52, 32),
(40, 53, 32),
(41, 54, 32),
(42, 55, 32),
(43, 56, 32),
(44, 91, 32),
(45, 92, 32),
(46, 94, 32),
(47, 95, 32),
(48, 96, 32),
(50, 57, 2),
(51, 58, 2),
(52, 59, 2),
(53, 61, 2),
(54, 62, 2),
(55, 97, 2),
(56, 98, 2),
(57, 99, 2),
(58, 100, 2),
(59, 101, 2),
(61, 57, 6),
(62, 58, 6),
(63, 59, 6),
(64, 61, 6),
(65, 62, 6),
(66, 97, 6),
(67, 98, 6),
(68, 99, 6),
(69, 100, 6),
(70, 101, 6),
(72, 57, 7),
(73, 58, 7),
(74, 59, 7),
(75, 61, 7),
(76, 62, 7),
(77, 97, 7),
(78, 98, 7),
(79, 99, 7),
(80, 100, 7),
(81, 101, 7),
(83, 57, 27),
(84, 58, 27),
(85, 59, 27),
(86, 61, 27),
(87, 62, 27),
(88, 97, 27),
(89, 98, 27),
(90, 99, 27),
(91, 100, 27),
(92, 101, 27),
(94, 57, 37),
(95, 58, 37),
(96, 59, 37),
(97, 61, 37),
(98, 62, 37),
(99, 97, 37),
(100, 98, 37),
(101, 99, 37),
(102, 100, 37),
(103, 101, 37),
(105, 57, 38),
(106, 58, 38),
(107, 59, 38),
(108, 61, 38),
(109, 62, 38),
(110, 97, 38),
(111, 98, 38),
(112, 99, 38),
(113, 100, 38),
(114, 101, 38),
(116, 50, 29),
(118, 63, 29),
(119, 64, 29),
(120, 65, 29),
(121, 66, 29),
(122, 68, 29),
(123, 69, 29),
(124, 70, 29),
(125, 102, 29),
(126, 103, 29),
(127, 104, 29),
(128, 105, 29),
(129, 106, 29),
(130, 107, 29),
(132, 50, 31),
(134, 63, 31),
(135, 64, 31),
(136, 65, 31),
(137, 66, 31),
(138, 68, 31),
(139, 69, 31),
(140, 70, 31),
(141, 102, 31),
(142, 103, 31),
(143, 104, 31),
(144, 105, 31),
(145, 106, 31),
(146, 107, 31),
(148, 50, 36),
(150, 63, 36),
(151, 64, 36),
(152, 65, 36),
(153, 66, 36),
(154, 68, 36),
(155, 69, 36),
(156, 70, 36),
(157, 102, 36),
(158, 103, 36),
(159, 104, 36),
(160, 105, 36),
(161, 106, 36),
(162, 107, 36),
(164, 50, 40),
(166, 63, 40),
(167, 64, 40),
(168, 65, 40),
(169, 66, 40),
(170, 68, 40),
(171, 69, 40),
(172, 70, 40),
(173, 102, 40),
(174, 103, 40),
(175, 104, 40),
(176, 105, 40),
(177, 106, 40),
(178, 107, 40),
(180, 50, 43),
(182, 63, 43),
(183, 64, 43),
(184, 65, 43),
(185, 66, 43),
(186, 68, 43),
(187, 69, 43),
(188, 70, 43),
(189, 102, 43),
(190, 103, 43),
(191, 104, 43),
(192, 105, 43),
(193, 106, 43),
(194, 107, 43),
(196, 71, 3),
(197, 72, 3),
(198, 73, 3),
(199, 74, 3),
(200, 75, 3),
(201, 76, 3),
(202, 77, 3),
(203, 78, 3),
(204, 108, 3),
(205, 109, 3),
(206, 110, 3),
(207, 111, 3),
(208, 112, 3),
(209, 113, 3),
(211, 71, 5),
(212, 72, 5),
(213, 73, 5),
(214, 74, 5),
(215, 75, 5),
(216, 76, 5),
(217, 77, 5),
(218, 78, 5),
(219, 108, 5),
(220, 109, 5),
(221, 110, 5),
(222, 111, 5),
(223, 112, 5),
(224, 113, 5),
(226, 71, 24),
(227, 72, 24),
(228, 73, 24),
(229, 74, 24),
(230, 75, 24),
(231, 76, 24),
(232, 77, 24),
(233, 78, 24),
(234, 108, 24),
(235, 109, 24),
(236, 110, 24),
(237, 111, 24),
(238, 112, 24),
(239, 113, 24),
(241, 71, 28),
(242, 72, 28),
(243, 73, 28),
(244, 74, 28),
(245, 75, 28),
(246, 76, 28),
(247, 77, 28),
(248, 78, 28),
(249, 108, 28),
(250, 109, 28),
(251, 110, 28),
(252, 111, 28),
(253, 112, 28),
(254, 113, 28),
(256, 71, 35),
(257, 72, 35),
(258, 73, 35),
(259, 74, 35),
(260, 75, 35),
(261, 76, 35),
(262, 77, 35),
(263, 78, 35),
(264, 108, 35),
(265, 109, 35),
(266, 110, 35),
(267, 111, 35),
(268, 112, 35),
(269, 113, 35),
(271, 71, 41),
(272, 72, 41),
(273, 73, 41),
(274, 74, 41),
(275, 75, 41),
(276, 76, 41),
(277, 77, 41),
(278, 78, 41),
(279, 108, 41),
(280, 109, 41),
(281, 110, 41),
(282, 111, 41),
(283, 112, 41),
(284, 113, 41),
(286, 71, 42),
(287, 72, 42),
(288, 73, 42),
(289, 74, 42),
(290, 75, 42),
(291, 76, 42),
(292, 77, 42),
(293, 78, 42),
(294, 108, 42),
(295, 109, 42),
(296, 110, 42),
(297, 111, 42),
(298, 112, 42),
(299, 113, 42),
(301, 79, 23),
(302, 80, 23),
(303, 81, 23),
(304, 82, 23),
(305, 83, 23),
(306, 84, 23),
(307, 85, 23),
(308, 86, 23),
(309, 87, 23),
(310, 88, 23),
(311, 89, 23),
(312, 114, 23),
(313, 115, 23),
(314, 116, 23),
(315, 117, 23),
(316, 118, 23),
(317, 119, 23),
(318, 120, 23),
(319, 121, 23),
(320, 122, 23),
(321, 123, 23),
(323, 79, 26),
(324, 80, 26),
(325, 81, 26),
(326, 82, 26),
(327, 83, 26),
(328, 84, 26),
(329, 85, 26),
(330, 86, 26),
(331, 87, 26),
(332, 88, 26),
(333, 89, 26),
(334, 114, 26),
(335, 115, 26),
(336, 116, 26),
(337, 117, 26),
(338, 118, 26),
(339, 119, 26),
(340, 120, 26),
(341, 121, 26),
(342, 122, 26),
(343, 123, 26),
(345, 79, 30),
(346, 80, 30),
(347, 81, 30),
(348, 82, 30),
(349, 83, 30),
(350, 84, 30),
(351, 85, 30),
(352, 86, 30),
(353, 87, 30),
(354, 88, 30),
(355, 89, 30),
(356, 114, 30),
(357, 115, 30),
(358, 116, 30),
(359, 117, 30),
(360, 118, 30),
(361, 119, 30),
(362, 120, 30),
(363, 121, 30),
(364, 122, 30),
(365, 123, 30),
(367, 79, 33),
(368, 80, 33),
(369, 81, 33),
(370, 82, 33),
(371, 83, 33),
(372, 84, 33),
(373, 85, 33),
(374, 86, 33),
(375, 87, 33),
(376, 88, 33),
(377, 89, 33),
(378, 114, 33),
(379, 115, 33),
(380, 116, 33),
(381, 117, 33),
(382, 118, 33),
(383, 119, 33),
(384, 120, 33),
(385, 121, 33),
(386, 122, 33),
(387, 123, 33),
(389, 79, 34),
(390, 80, 34),
(391, 81, 34),
(392, 82, 34),
(393, 83, 34),
(394, 84, 34),
(395, 85, 34),
(396, 86, 34),
(397, 87, 34),
(398, 88, 34),
(399, 89, 34),
(400, 114, 34),
(401, 115, 34),
(402, 116, 34),
(403, 117, 34),
(404, 118, 34),
(405, 119, 34),
(406, 120, 34),
(407, 121, 34),
(408, 122, 34),
(409, 123, 34),
(411, 79, 39),
(412, 80, 39),
(413, 81, 39),
(414, 82, 39),
(415, 83, 39),
(416, 84, 39),
(417, 85, 39),
(418, 86, 39),
(419, 87, 39),
(420, 88, 39),
(421, 89, 39),
(422, 114, 39),
(423, 115, 39),
(424, 116, 39),
(425, 117, 39),
(426, 118, 39),
(427, 119, 39),
(428, 120, 39),
(429, 121, 39),
(430, 122, 39),
(431, 123, 39),
(432, 71, 41),
(433, 72, 41),
(434, 73, 41),
(435, 74, 41),
(436, 75, 41),
(437, 76, 41),
(438, 77, 41),
(439, 78, 41),
(440, 108, 41),
(441, 109, 41),
(442, 110, 41),
(443, 111, 41),
(444, 112, 41),
(445, 113, 41),
(446, 71, 42),
(447, 72, 42),
(448, 73, 42),
(449, 74, 42),
(450, 75, 42),
(451, 76, 42),
(452, 77, 42),
(453, 78, 42),
(454, 108, 42),
(455, 109, 42),
(456, 110, 42),
(457, 111, 42),
(458, 112, 42),
(459, 113, 42),
(460, 50, 43),
(461, 63, 43),
(462, 64, 43),
(463, 65, 43),
(464, 66, 43),
(465, 68, 43),
(466, 69, 43),
(467, 70, 43),
(468, 102, 43),
(469, 103, 43),
(470, 104, 43),
(471, 105, 43),
(472, 106, 43),
(473, 107, 43),
(474, 51, 44),
(475, 52, 44),
(476, 53, 44),
(477, 54, 44),
(478, 55, 44),
(479, 56, 44),
(480, 91, 44),
(481, 92, 44),
(482, 94, 44),
(483, 95, 44),
(484, 96, 44),
(485, 51, 45),
(486, 52, 45),
(487, 53, 45),
(488, 54, 45),
(489, 55, 45),
(490, 56, 45),
(491, 91, 45),
(492, 92, 45),
(493, 94, 45),
(494, 95, 45),
(495, 96, 45);

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

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `nom_utilisateur` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`nom_utilisateur`, `mot_de_passe`) VALUES
('root', 'root');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Arme`
--
ALTER TABLE `Arme`
  ADD PRIMARY KEY (`IDArme`);

--
-- Index pour la table `armemonstre`
--
ALTER TABLE `armemonstre`
  ADD PRIMARY KEY (`IDRelation`),
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
  MODIFY `IDArme` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `armemonstre`
--
ALTER TABLE `armemonstre`
  MODIFY `IDRelation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT pour la table `Element`
--
ALTER TABLE `Element`
  MODIFY `IDElement` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Monstre`
--
ALTER TABLE `Monstre`
  MODIFY `IDMonstre` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `armemonstre`
--
ALTER TABLE `armemonstre`
  ADD CONSTRAINT `armemonstre_ibfk_1` FOREIGN KEY (`IDMonstre`) REFERENCES `Monstre` (`IDMonstre`),
  ADD CONSTRAINT `armemonstre_ibfk_2` FOREIGN KEY (`IDArme`) REFERENCES `Arme` (`IDArme`);

--
-- Contraintes pour la table `Monstre`
--
ALTER TABLE `Monstre`
  ADD CONSTRAINT `Monstre_ibfk_1` FOREIGN KEY (`Faiblesse`) REFERENCES `Element` (`IDElement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
