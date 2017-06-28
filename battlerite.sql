-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 13:01
-- Version du serveur :  5.7.9
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `battlerite`
--

-- --------------------------------------------------------

--
-- Structure de la table `f_categories`
--

DROP TABLE IF EXISTS `f_categories`;
CREATE TABLE IF NOT EXISTS `f_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `f_categories`
--

INSERT INTO `f_categories` (`id`, `nom`) VALUES
(1, 'Battlerite'),
(2, 'Battlerite-Community');

-- --------------------------------------------------------

--
-- Structure de la table `f_messages`
--

DROP TABLE IF EXISTS `f_messages`;
CREATE TABLE IF NOT EXISTS `f_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_topic` int(11) NOT NULL,
  `id_posteur` int(11) NOT NULL,
  `date_heure_post` datetime NOT NULL,
  `date_heure_edition` datetime DEFAULT NULL,
  `meilleure_reponse` int(1) NOT NULL DEFAULT '0',
  `contenu` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `f_messages`
--

INSERT INTO `f_messages` (`id`, `id_topic`, `id_posteur`, `date_heure_post`, `date_heure_edition`, `meilleure_reponse`, `contenu`) VALUES
(1, 13, 6, '2017-06-23 14:05:00', NULL, 0, 'test'),
(2, 13, 6, '2017-06-26 08:41:14', NULL, 0, 'salut salut'),
(4, 13, 6, '2017-06-26 08:44:25', NULL, 0, 'ez'),
(5, 13, 6, '2017-06-26 09:10:46', NULL, 0, 'test test test'),
(6, 9, 6, '2017-06-26 09:34:40', NULL, 0, 'tg'),
(7, 9, 6, '2017-06-26 09:35:02', NULL, 0, 'lolilol\r\n'),
(8, 9, 6, '2017-06-26 09:35:07', NULL, 0, '27'),
(9, 9, 6, '2017-06-26 09:35:13', NULL, 0, 'kalash'),
(10, 11, 6, '2017-06-26 10:37:32', NULL, 0, 'kk'),
(11, 14, 6, '2017-06-26 14:09:55', NULL, 0, '&lt;p&gt;dqdqzd&lt;/p&gt;'),
(12, 14, 6, '2017-06-26 14:10:05', NULL, 0, '&lt;p&gt;test&lt;/p&gt;'),
(13, 14, 6, '2017-06-26 14:15:31', NULL, 0, '&lt;p&gt;dzqdzq&lt;/p&gt;'),
(14, 14, 6, '2017-06-26 14:34:30', NULL, 0, '&lt;p&gt;test&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `f_souscategories`
--

DROP TABLE IF EXISTS `f_souscategories`;
CREATE TABLE IF NOT EXISTS `f_souscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `f_souscategories`
--

INSERT INTO `f_souscategories` (`id`, `id_categorie`, `nom`) VALUES
(1, 1, 'Discussions Générales'),
(2, 1, 'News & Patchnotes'),
(3, 1, 'Vidéos'),
(4, 1, 'Guides/Astuces & Tips'),
(5, 1, 'Aide & Support'),
(6, 2, 'Annonce Battlerite Community'),
(7, 2, 'Suggestions'),
(8, 2, 'Recrutement'),
(9, 2, 'Aide & Support');

-- --------------------------------------------------------

--
-- Structure de la table `f_suivis`
--

DROP TABLE IF EXISTS `f_suivis`;
CREATE TABLE IF NOT EXISTS `f_suivis` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `f_topics`
--

DROP TABLE IF EXISTS `f_topics`;
CREATE TABLE IF NOT EXISTS `f_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_createur` int(11) NOT NULL,
  `sujet` text COLLATE utf8_bin NOT NULL,
  `contenu` text COLLATE utf8_bin NOT NULL,
  `date_heure_creation` datetime NOT NULL,
  `resolu` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `f_topics`
--

INSERT INTO `f_topics` (`id`, `id_createur`, `sujet`, `contenu`, `date_heure_creation`, `resolu`) VALUES
(4, 6, 'test ', 'bonjour je suuis le test\r\n', '2017-06-22 13:33:43', 0),
(5, 6, 'test2', 'test2', '2017-06-22 13:54:31', 0),
(6, 6, 'test3', 'test3', '2017-06-22 13:54:39', 0),
(7, 6, 'test4', 'test4', '2017-06-22 13:54:44', 0),
(8, 6, 'dzqd', 'qdqzd', '2017-06-22 15:54:38', 0),
(9, 6, 'video pvp', 'minecraft lol', '2017-06-23 09:48:00', 0),
(10, 6, 'help', 'help', '2017-06-23 10:55:18', 0),
(11, 6, 'bj je veux etre admin', 'nique les salopes', '2017-06-23 10:55:43', 0),
(12, 6, 'met moi admin stp ', 'nique les salopes', '2017-06-23 10:56:22', 0),
(13, 6, 'help2', 'tavu', '2017-06-23 10:59:15', 0),
(14, 6, 'test', 'test', '2017-06-26 12:51:32', 0);

-- --------------------------------------------------------

--
-- Structure de la table `f_topics_categories`
--

DROP TABLE IF EXISTS `f_topics_categories`;
CREATE TABLE IF NOT EXISTS `f_topics_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_topic` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_souscategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `f_topics_categories`
--

INSERT INTO `f_topics_categories` (`id`, `id_topic`, `id_categorie`, `id_souscategorie`) VALUES
(1, 4, 1, 1),
(2, 6, 2, 6),
(3, 5, 1, 2),
(4, 7, 2, 7),
(5, 9, 1, 3),
(6, 10, 1, 5),
(7, 11, 2, 6),
(8, 12, 2, 9),
(9, 13, 1, 5),
(10, 14, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `id_expediteur` int(11) NOT NULL,
  `id_destinataire` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`id_message`, `id_expediteur`, `id_destinataire`, `message`) VALUES
(50, 6, 9, 'dzzdz'),
(51, 6, 9, 'le bon test'),
(48, 9, 9, 'le bon test'),
(49, 6, 9, 'dz'),
(47, 9, 9, 'dz'),
(44, 6, 3, 'cc\r\n'),
(42, 6, 6, 'test'),
(41, 6, 9, 'tqt ruya'),
(40, 9, 6, 'dsl encore un test.'),
(39, 9, 6, 'Bonjour, je suis un test et j''ai besoin de tester votre systÃ¨me de message pour voir si il est opÃ©rationnel. '),
(53, 10, 6, 't bÃ´ woula');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `title_news` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `news` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `news`) VALUES
(1, 'SEASON 1 - NEW RANK', 'La Saison 1 de Battlerite propose de nouveaux Grades...'),
(3, 'Season 1 - Arctic Winds', 'la saison 1 de battlerite...');

-- --------------------------------------------------------

--
-- Structure de la table `patchnote`
--

DROP TABLE IF EXISTS `patchnote`;
CREATE TABLE IF NOT EXISTS `patchnote` (
  `id_patchnote` int(11) NOT NULL AUTO_INCREMENT,
  `title_patchnote` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `patchnote` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_patchnote`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `patchnote`
--

INSERT INTO `patchnote` (`id_patchnote`, `title_patchnote`, `patchnote`) VALUES
(1, 'PATCH NOTE | 0.10.0.2', 'Hotfix including matchmaking changes, character balance and bug fixes.');

-- --------------------------------------------------------

--
-- Structure de la table `tchat`
--

DROP TABLE IF EXISTS `tchat`;
CREATE TABLE IF NOT EXISTS `tchat` (
  `id_tchat` int(11) NOT NULL AUTO_INCREMENT,
  `tchat_pseudo` varchar(30) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `rank` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_tchat`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `tchat`
--

INSERT INTO `tchat` (`id_tchat`, `tchat_pseudo`, `message`, `rank`) VALUES
(87, 'FuFuMaxime', 'Je m''appelle FuFuMaxime\r\nEt je vous souhaite la bienvenue sur mon site internet', 'new'),
(86, 'FuFuMaxime', 'Bonsoir\r\n', 'new'),
(85, 'TuuBz', 'bj les adminnnn c''est un message un peux long dans le but de tester ma fonction css lol.', 'admin'),
(80, 'TuuBz', 'Bievenue :)', 'admin'),
(81, 'TuuBz', 'Bievenue :)', 'admin'),
(82, 'TuuBz', 'fsenjefsjsefoioijqofijqemjoifjmoifsqmoijfsmjfmejoi', 'admin'),
(83, 'TuuBz', 'test\r\nfesf\r\nfs\r\n', 'admin'),
(84, 'TuuBz', 'bj les adminnnn c''est un message un peux long dans le but de tester ma fonction css lol.', 'admin'),
(75, 'TuuBz', 'Bienvenue :)', 'admin'),
(76, 'TuuBz', 'Bievenue :)', 'admin'),
(77, 'TuuBz', 'Bievenue :)', 'admin'),
(78, 'TuuBz', 'Bievenue :)', 'admin'),
(79, 'TuuBz', 'Bievenue :)', 'admin'),
(74, 'TuuBz', 'Bienvenue :)', 'admin'),
(73, 'TuuBz', 'Bienvenue :)', 'admin'),
(88, 'TuuBz', 'nvm les admin !!\r\n', 'admin'),
(89, 'TuuBz', 'test script', 'admin'),
(90, 'TuuBz', 't', 'admin'),
(91, 'TuuBz', 't', 'admin'),
(92, 'TuuBz', 'test', 'admin'),
(93, 'TuuBz', 'dz', 'admin'),
(94, 'TuuBz', 'ez', 'admin'),
(95, 'TuuBz', 'i', 'admin'),
(96, 'TuuBz', 'f', 'admin'),
(97, 'TuuBz', 'y', 'admin'),
(104, 'TuuBz', ':(\r\n', 'admin'),
(105, 'TuuBz', ':''(', 'admin'),
(106, 'TuuBz', '^^\r\n', 'admin'),
(107, 'TuuBz', 'xD', 'admin'),
(108, 'TuuBz', ':/', 'admin'),
(109, 'TuuBz', ':.', 'admin'),
(110, 'TuuBz', ':''(', 'admin'),
(111, 'TuuBz', ':'')', 'admin'),
(103, 'TuuBz', ':)', 'admin'),
(112, 'Howkalm', 'salut t bÃ´', 'admin'),
(113, 'Howkalm', '^^', 'admin'),
(114, 'Howkalm', 'dezdez', 'admin'),
(115, 'Howkalm', 'reefre', 'admin'),
(116, 'Howkalm', 'reefre', 'admin'),
(117, 'Howkalm', 'zfzfz', 'admin'),
(118, 'Howkalm', 'czefczecz', 'admin'),
(119, 'Howkalm', 'trop bien ce chat', 'admin'),
(120, 'Howkalm', 'ezdz', 'admin'),
(121, 'Howkalm', 'dzdezdz', 'admin'),
(122, 'Howkalm', 'daezdzed', 'admin'),
(123, 'Howkalm', 'bonjour', 'admin'),
(124, 'Howkalm', 'dezdezfez', 'admin'),
(125, 'Howkalm', 'bonjour ', 'admin'),
(126, 'Howkalm', 'cecdezcez', 'admin'),
(127, 'Howkalm', 'bonjour', 'admin'),
(128, 'Howkalm', 'yoyo', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id_team` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_player_1` int(11) NOT NULL,
  `id_player_2` int(11) NOT NULL,
  `id_player_3` int(11) NOT NULL,
  `team_logo` varchar(255) COLLATE utf8_bin NOT NULL,
  `Team_on` tinyint(1) NOT NULL DEFAULT '0',
  `team_validate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_team`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `team`
--

INSERT INTO `team` (`id_team`, `team_name`, `id_player_1`, `id_player_2`, `id_player_3`, `team_logo`, `Team_on`, `team_validate`) VALUES
(16, 'E-test', 9, 9, 9, '9.png', 1, 1),
(17, 'Battlerite Community', 6, 3, 5, '6.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_bin NOT NULL,
  `mail` varchar(255) COLLATE utf8_bin NOT NULL,
  `mdp` text COLLATE utf8_bin NOT NULL,
  `biographie` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rank` varchar(25) COLLATE utf8_bin DEFAULT 'new',
  `muted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_utilisateur`) USING HASH,
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `pseudo`, `mail`, `mdp`, `biographie`, `rank`, `muted`) VALUES
(6, 'TuuBz', 'j-em@outlook.fr', '1b5ccbc2f3e470991826af67853805b3e21507bd', 'Fonda', 'admin', 0),
(3, 'FuFuMaxime', 'c4ssim3@gmail.com', 'db1a687152d79979e34a2e42cbd1235189093370', 'bonsoÃ¨re', 'admin', 0),
(5, 'Sleid', 'pierrem.wow@gmail.com', '78b9c189aa65ee4c711d6fa8c28bc254e6564ddb', 'Ex-Battlerite player\r\n\r\nSoon Admin', 'new', 0),
(9, 'test', 'test@test.ts', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Bonjour,  je suis un test.', 'admin', 0),
(10, 'Howkalm', 'howkalm@gmail.com', 'b85ac4fc71368717d0e39f931de9a96570dfdf76', 'soon dans l''e-sport', 'admin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `title_video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lien_video` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `video`
--

INSERT INTO `video` (`id_video`, `title_video`, `lien_video`) VALUES
(1, 'BATTLERITE GAMEPLAY TRAILER', 'https://youtu.be/f5Q041c0Sis');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
