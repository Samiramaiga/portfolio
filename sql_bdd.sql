-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 14 Décembre 2022 à 11:22
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmploye` int(20) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Sexe` text NOT NULL,
  `Salaire` char(20) NOT NULL,
  `TypeContrat` text NOT NULL,
  `Fonction` text NOT NULL,
  `Site` text NOT NULL,
  `Date d'embauche` date NOT NULL,
  `Date de naissance` date NOT NULL,
  `NoSrv` int(20) NOT NULL,
  PRIMARY KEY (`NoEmploye`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmploye`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `TypeContrat`, `Fonction`, `Site`, `Date d'embauche`, `Date de naissance`, `NoSrv`) VALUES
(0, 'ettia', 'maelly', 'F', '4500', 'CDD', 'PDG', 'Versailles', '2022-01-14', '2004-08-17', 1),
(15, 'maiga', 'samira', 'F', '2500', 'CDI', 'Cadre', 'Paris', '2021-08-20', '2003-10-21', 1);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num Interv` int(20) NOT NULL,
  `NoProjet` int(20) NOT NULL,
  `NoEmploye` int(20) NOT NULL,
  `NbHeures` int(20) NOT NULL,
  PRIMARY KEY (`Num Interv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num Interv`, `NoProjet`, `NoEmploye`, `NbHeures`) VALUES
(12, 3, 15, 20),
(16, 5, 9, 18);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProjet` int(20) NOT NULL,
  `LibelleProjet` text NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProjet`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProjet`, `LibelleProjet`, `NoSrv`) VALUES
(3, 'Conception voiture', 0),
(5, 'Site numéro 2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL,
  `NumAuto` text NOT NULL,
  `NomSrv` text NOT NULL,
  PRIMARY KEY (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NumAuto`, `NomSrv`) VALUES
(1, '2', 'Marketing'),
(3, '4', 'Comptabilité');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`);
