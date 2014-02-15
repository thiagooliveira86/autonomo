-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 13-Fev-2014 às 03:19
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `autonomous`
--
CREATE DATABASE IF NOT EXISTS `autonomous` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `autonomous`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `complements_pf`
--

CREATE TABLE IF NOT EXISTS `complements_pf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` int(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `neighborhood` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `address2` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `cep` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cel_phone` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `complements_pj`
--

CREATE TABLE IF NOT EXISTS `complements_pj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `fantasy_name` varchar(50) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `neighborhood` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address2` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `cep` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cel_phone` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `access` int(11) NOT NULL,
  `activate_key` varchar(50) NOT NULL,
  `question_security` varchar(50) NOT NULL,
  `response_security` varchar(255) NOT NULL,
  `type` enum('pf','pj','','') NOT NULL,
  `level` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `attempts_login` int(11) NOT NULL,
  `date_cadastre` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
