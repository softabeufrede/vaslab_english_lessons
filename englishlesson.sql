-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 02 mars 2020 à 15:09
-- Version du serveur :  10.1.32-MariaDB
-- Version de PHP :  7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `englishlesson`
--

-- --------------------------------------------------------

--
-- Structure de la table `alertes`
--

CREATE TABLE `alertes` (
  `idalertes` int(11) NOT NULL,
  `datenreg` datetime NOT NULL,
  `messages` text NOT NULL,
  `dateheureenvoi` datetime NOT NULL,
  `datejour` date NOT NULL,
  `etatalerte` varchar(30) NOT NULL,
  `statutalerte` tinyint(1) NOT NULL,
  `idusers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `desouscription`
--

CREATE TABLE `desouscription` (
  `iddes` int(11) NOT NULL,
  `dateheure` datetime NOT NULL,
  `datestat` date NOT NULL,
  `idsous` int(11) NOT NULL,
  `idoffre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `dateheure` datetime DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `intitule` text,
  `nombreposte` int(11) DEFAULT NULL,
  `structure` text,
  `messages` text NOT NULL,
  `statut` tinyint(1) DEFAULT NULL,
  `datelimite` varchar(255) DEFAULT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `idoffre` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `montant` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`idoffre`, `libelle`, `montant`, `duree`, `statut`) VALUES
(1, 'jour', 20, 1, 1),
(2, 'mois ', 20, 30, 1),
(3, 'semaine', 100, 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sendalerte`
--

CREATE TABLE `sendalerte` (
  `idsendalerte` int(11) NOT NULL,
  `datejours` date NOT NULL,
  `datetraitement` datetime NOT NULL,
  `message` text NOT NULL,
  `numero` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  `idalerte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `souscription`
--

CREATE TABLE `souscription` (
  `idsous` int(11) NOT NULL,
  `datedebut` datetime NOT NULL,
  `datefin` datetime NOT NULL,
  `datefinsous` date DEFAULT NULL,
  `datesouscription` datetime NOT NULL,
  `numero` varchar(255) NOT NULL,
  `statutsous` tinyint(1) DEFAULT NULL,
  `etatsous` varchar(20) DEFAULT NULL,
  `relance` tinyint(1) DEFAULT NULL,
  `idoffre` int(11) NOT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `souscription`
--

INSERT INTO `souscription` (`idsous`, `datedebut`, `datefin`, `datefinsous`, `datesouscription`, `numero`, `statutsous`, `etatsous`, `relance`, `idoffre`, `token`) VALUES
(1, '2020-02-10 10:20:19', '2020-03-11 09:57:45', '2020-03-11', '2020-02-10 10:20:19', '22559964182', 1, 'S', 0, 3, 'B64d9RRRwM0lvC3giRuwQvv5cCoyKNR4bqVP15AdrzxH/s9SJPXtZOEIts8PV2243es|MCO=OCI|tcd=1567069398|ted=1567069498|7l0iDihWlhDL0gYAKIgXksc6AIo='),
(2, '2020-02-10 14:48:58', '2020-04-20 10:24:51', '2020-04-20', '2020-02-10 14:48:58', '22507929385', 1, 'S', 0, 3, 'B64d9RRRwM0lvC3giRuwQvv5cCoyKNR4bqVP15AdrzxH/s9SJPXtZOEIts8PV2243es|MCO=OCI|tcd=1567069398|ted=1567069498|7l0iDihWlhDL0gYAKIgXksc6AIo='),
(3, '2020-02-12 09:48:35', '2020-03-10 16:51:13', '2020-03-10', '2020-02-12 09:48:35', '22547170052', 1, 'S', 0, 3, 'B64d9RRRwM0lvC3giRuwQvv5cCoyKNR4bqVP15AdrzxH/s9SJPXtZOEIts8PV2243es|MCO=OCI|tcd=1567069398|ted=1567069498|7l0iDihWlhDL0gYAKIgXksc6AIo=');

-- --------------------------------------------------------

--
-- Structure de la table `statsouscription`
--

CREATE TABLE `statsouscription` (
  `idstatsous` int(11) NOT NULL,
  `datedebut` datetime NOT NULL,
  `datefin` datetime NOT NULL,
  `dateheure` datetime NOT NULL,
  `datestat` datetime NOT NULL,
  `etatstat` varchar(20) NOT NULL,
  `idoffre` int(11) NOT NULL,
  `statutstat` tinyint(4) NOT NULL,
  `libelleoffre` varchar(225) NOT NULL,
  `montantoffre` int(11) NOT NULL,
  `numero` varchar(225) NOT NULL,
  `idsous` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statsouscription`
--

INSERT INTO `statsouscription` (`idstatsous`, `datedebut`, `datefin`, `dateheure`, `datestat`, `etatstat`, `idoffre`, `statutstat`, `libelleoffre`, `montantoffre`, `numero`, `idsous`) VALUES
(1, '2020-02-10 10:04:41', '2020-02-11 10:04:41', '2020-02-10 10:04:41', '2020-02-10 10:04:41', 'S', 1, 1, 'jour', 20, '22559964182', 1),
(2, '2020-02-10 10:14:26', '2020-02-17 10:14:26', '2020-02-10 10:14:26', '2020-02-10 10:14:26', 'S', 3, 1, 'semaine', 100, '22559964182', 1),
(3, '2020-02-10 10:14:26', '2020-02-17 10:14:26', '2020-02-10 10:14:26', '2020-02-10 10:14:26', 'S', 3, 1, 'semaine', 100, '22559964182', 1),
(4, '2020-02-10 10:19:52', '2020-02-17 10:19:52', '2020-02-10 10:19:52', '2020-02-10 10:19:52', 'S', 3, 1, 'semaine', 100, '22559964182', 1),
(5, '2020-02-10 10:20:19', '2020-02-17 10:20:19', '2020-02-10 10:20:19', '2020-02-10 10:20:19', 'S', 3, 1, 'semaine', 100, '22559964182', 1),
(6, '2020-02-10 10:24:51', '2020-02-17 10:24:51', '2020-02-10 10:24:51', '2020-02-10 10:24:51', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(7, '2020-02-10 10:26:07', '2020-02-17 10:26:07', '2020-02-10 10:26:07', '2020-02-10 10:26:07', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(8, '2020-02-10 10:29:13', '2020-02-17 10:29:13', '2020-02-10 10:29:13', '2020-02-10 10:29:13', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(9, '2020-02-10 10:29:13', '2020-02-17 10:29:13', '2020-02-10 10:29:13', '2020-02-10 10:29:13', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(10, '2020-02-10 11:42:26', '2020-02-17 11:42:26', '2020-02-10 11:42:26', '2020-02-10 11:42:26', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(11, '2020-02-10 12:01:22', '2020-02-17 12:01:22', '2020-02-10 12:01:22', '2020-02-10 12:01:22', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(12, '2020-02-10 12:03:55', '2020-02-17 12:03:55', '2020-02-10 12:03:55', '2020-02-10 12:03:55', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(13, '2020-02-10 12:03:55', '2020-02-17 12:03:55', '2020-02-10 12:03:55', '2020-02-10 12:03:55', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(14, '2020-02-10 14:34:18', '2020-02-17 14:34:18', '2020-02-10 14:34:18', '2020-02-10 14:34:18', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(15, '2020-02-10 14:48:58', '2020-02-17 14:48:58', '2020-02-10 14:48:58', '2020-02-10 14:48:58', 'S', 3, 1, 'semaine', 100, '22507929385', 2),
(16, '2020-02-11 16:51:13', '2020-02-18 16:51:13', '2020-02-11 16:51:13', '2020-02-11 16:51:13', 'S', 3, 1, 'semaine', 100, '22547170052', 3),
(17, '2020-02-12 09:42:03', '2020-02-19 09:42:03', '2020-02-12 09:42:03', '2020-02-12 09:42:03', 'S', 3, 1, 'semaine', 100, '22547170052', 3),
(18, '2020-02-12 09:48:14', '2020-02-19 09:48:14', '2020-02-12 09:48:14', '2020-02-12 09:48:14', 'S', 3, 1, 'semaine', 100, '22547170052', 3),
(19, '2020-02-12 09:48:35', '2020-02-19 09:48:35', '2020-02-12 09:48:35', '2020-02-12 09:48:35', 'S', 3, 1, 'semaine', 100, '22547170052', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`iduser`, `login`, `password`) VALUES
(1, 'info@vastechnologies.ci', 'vas@2019'),
(2, 'bizao', 'bizao$2019'),
(3, '2GA GROUP', 'SVA@#2019');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `alertes`
--
ALTER TABLE `alertes`
  ADD PRIMARY KEY (`idalertes`),
  ADD KEY `idusers` (`idusers`),
  ADD KEY `idusers_2` (`idusers`);

--
-- Index pour la table `desouscription`
--
ALTER TABLE `desouscription`
  ADD PRIMARY KEY (`iddes`),
  ADD KEY `idsous` (`idsous`),
  ADD KEY `idsous_2` (`idsous`);

--
-- Index pour la table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`idoffre`);

--
-- Index pour la table `sendalerte`
--
ALTER TABLE `sendalerte`
  ADD PRIMARY KEY (`idsendalerte`),
  ADD KEY `idalerte` (`idalerte`);

--
-- Index pour la table `souscription`
--
ALTER TABLE `souscription`
  ADD PRIMARY KEY (`idsous`),
  ADD KEY `idoffre` (`idoffre`);

--
-- Index pour la table `statsouscription`
--
ALTER TABLE `statsouscription`
  ADD PRIMARY KEY (`idstatsous`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `alertes`
--
ALTER TABLE `alertes`
  MODIFY `idalertes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `desouscription`
--
ALTER TABLE `desouscription`
  MODIFY `iddes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `idoffre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sendalerte`
--
ALTER TABLE `sendalerte`
  MODIFY `idsendalerte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `souscription`
--
ALTER TABLE `souscription`
  MODIFY `idsous` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `statsouscription`
--
ALTER TABLE `statsouscription`
  MODIFY `idstatsous` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `alertes`
--
ALTER TABLE `alertes`
  ADD CONSTRAINT `alertes_ibfk_1` FOREIGN KEY (`idusers`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `desouscription`
--
ALTER TABLE `desouscription`
  ADD CONSTRAINT `desouscription_ibfk_1` FOREIGN KEY (`idsous`) REFERENCES `souscription` (`idsous`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sendalerte`
--
ALTER TABLE `sendalerte`
  ADD CONSTRAINT `sendalerte_ibfk_1` FOREIGN KEY (`idalerte`) REFERENCES `alertes` (`idalertes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `souscription`
--
ALTER TABLE `souscription`
  ADD CONSTRAINT `souscription_ibfk_1` FOREIGN KEY (`idoffre`) REFERENCES `offre` (`idoffre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
