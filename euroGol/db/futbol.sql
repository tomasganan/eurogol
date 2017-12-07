-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2017 a las 21:27:47
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--
CREATE DATABASE IF NOT EXISTS `futbol` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `futbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaequipo`
--

DROP TABLE IF EXISTS `tablaequipo`;
CREATE TABLE `tablaequipo` (
  `idEquipo` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `tableId` int(11) DEFAULT NULL,
  `code` varchar(150) NOT NULL,
  `shortName` varchar(150) NOT NULL,
  `squadMarketValue` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci;


DROP TABLE IF EXISTS `tablafixture`;
CREATE TABLE `tablafixture` (
  `idFix` int(11) NOT NULL,
  `date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `matchday` varchar(150) NOT NULL,
  `homeTeamNameId` int(11) DEFAULT NULL,
  `awayTeamNameId` int(11) DEFAULT NULL,
  `result` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci;

DROP TABLE IF EXISTS `tablaplayers`;
CREATE TABLE `tablaplayers` (
  `idPlayer` int(11) NOT NULL,
  `equipoId` int(11) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `dateOfBirth` varchar(150) NOT NULL,
  `nationality` varchar(150) NOT NULL,
  `contractUntil` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci;

DROP TABLE IF EXISTS `tablatable`;
CREATE TABLE `tablatable` (
  `idTable` int(11) NOT NULL,
  `Group` varchar(50) NOT NULL,
  `teamId` int(11) DEFAULT NULL,
  `goals` varchar(50) NOT NULL,
  `goalsAgainst` varchar(50) NOT NULL,
  `goalDifference` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tablaequipo`
--
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(1, 'SL Benfica', 1, 'SLB', 'Lisbon', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(2, 'CSKA Moscow', 2, 'CSK', 'CSKA', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(3, 'Olympiacos F.C.', 13, 'OLY', 'Olympiacos', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(4, 'Sporting CP', 14, 'SCP', 'Sporting', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(5, 'FC Barcelona', 15, 'FCB', 'Barcelona', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(6, 'Juventus Turin', 16, 'JUVE', 'Juventus', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(7, 'AS Roma', 9, 'ROM', 'Roma', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(8, 'Club Atlético de Madrid', 10, 'ATM', 'Atlético', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(9, 'Chelsea FC', 11, 'CFC', 'Chelsea', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(10, 'Qarabag Agdam FK', 12, 'null', 'Qaraba?', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(11, 'Celtic FC', 5, 'null', 'null', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(12, 'Paris Saint-Germain', 6, 'PSG', 'PSG', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(13, 'FC Bayern München', 7, 'FCB', 'Bayern', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(14, 'RSC Anderlecht', 8, 'null', 'Anderlecht', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(15, 'Manchester United FC', 3, 'MUFC', 'ManU', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(16, 'FC Basel', 4, 'null', 'Basel', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(17, 'Real Madrid CF', 29, 'MAD', 'Real Madrid', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(18, 'APOEL Nicosia', 30, 'null', 'APOEL', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(19, 'Red Bull Leipzig', 25, 'RBL', 'Leipzig', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(20, 'AS Monaco FC', 26, 'MON', 'Monaco', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(21, 'FC Porto', 27, 'FCP', 'Porto', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(22, 'Besiktas JK', 28, 'null', 'Besiktas', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(23, 'Shakhtar Donetsk', 21, 'SHA', 'Shakhtar', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(24, 'SSC Napoli', 22, 'SSC', 'Napoli', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(25, 'Feyenoord Rotterdam', 23, 'null', 'Feyenoord', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(26, 'Manchester City FC', 24, 'MCFC', 'ManCity', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(27, 'NK Maribor', 17, 'null', 'Maribor', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(28, 'Spartak Moskva', 18, 'null', 'Moskva', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(29, 'Liverpool FC', 19, 'LFC', 'Liverpool', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(30, 'Sevilla FC', 20, 'SEV', 'Sevilla', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(31, 'Tottenham Hotspur FC', 31, 'THFC', 'Spurs', 'null');
INSERT INTO `tablaequipo` (`idEquipo`, `name`, `tableId`, `code`, `shortName`, `squadMarketValue`) VALUES(32, 'Borussia Dortmund', 32, 'BVB', 'Dortmund', 'null');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(1, 1, 'Haris Seferovic', 'Centre-Forward', '1992-02-22', 'Switzerland', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(2, 1, 'Ola John', 'Left Wing', '1992-05-19', 'Netherlands', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(3, 1, 'Douglas', 'Right-Back', '1990-08-06', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(4, 1, 'Gabriel Barbosa', 'Right Wing', '1996-08-30', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(5, 1, 'Filip Krovinovic', 'Attacking Midfield', '1995-08-29', 'Croatia', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(6, 1, 'Júlio César', 'Keeper', '1979-09-03', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(7, 1, 'Paulo Lopes', 'Keeper', '1978-06-29', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(8, 1, 'Lisandro López', 'Centre-Back', '1989-09-01', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(9, 1, 'Jardel', 'Centre-Back', '1986-03-29', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(10, 1, 'Luisão', 'Centre-Back', '1981-02-13', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(11, 1, 'Alejandro Grimaldo', 'Left-Back', '1995-09-20', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(12, 1, 'André Almeida', 'Right-Back', '1990-09-10', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(13, 1, 'Eliseu', 'Left-Back', '1983-10-01', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(14, 1, 'Marcelo Hermes', 'Left-Back', '1995-01-02', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(15, 1, 'Pedro Pereira', 'Right-Back', '1998-01-22', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(16, 1, 'Ljubomir Fejsa', 'Defensive Midfield', '1988-08-14', 'Serbia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(17, 1, 'Andreas Samaris', 'Defensive Midfield', '1989-06-13', 'Greece', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(18, 1, 'Filipe Augusto', 'Defensive Midfield', '1993-08-12', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(19, 1, 'Pizzi', 'Central Midfield', '1989-10-06', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(20, 1, 'Rafa Silva', 'Left Wing', '1993-05-17', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(21, 1, 'Franco Cervi', 'Left Wing', '1994-05-26', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(22, 1, 'Andrija Zivkovic', 'Right Wing', '1996-07-11', 'Serbia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(23, 1, 'Jonas', 'Secondary Striker', '1984-04-01', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(24, 1, 'Raúl Jiménez', 'Centre-Forward', '1991-05-05', 'Mexico', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(25, 1, 'Bruno Varela', 'Keeper', '1994-11-04', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(26, 1, 'João Carvalho', 'Attacking Midfield', '1997-03-09', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(27, 1, 'Mile Svilar', 'Keeper', '1999-08-27', 'Belgium', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(28, 1, 'Branimir Kalaica', 'Centre-Back', '1998-06-01', 'Croatia', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(29, 1, 'Martin Chrien', 'Central Midfield', '1995-09-08', 'Slovakia', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(30, 1, 'Diogo Gonçalves', 'Left Wing', '1997-02-06', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(31, 1, 'Eduardo Salvio', 'Right Wing', '1990-07-13', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(32, 2, 'Igor Akinfeev', 'Keeper', '1986-04-08', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(33, 2, 'Ilya Pomazun', 'Keeper', '1996-08-16', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(34, 2, 'Viktor Vasin', 'Centre-Back', '1988-10-06', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(35, 2, 'Vasili Berezutski', 'Centre-Back', '1982-06-20', 'Russia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(36, 2, 'Aleksey Berezutski', 'Centre-Back', '1982-06-20', 'Russia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(37, 2, 'Sergey Ignashevich', 'Centre-Back', '1979-07-14', 'Russia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(38, 2, 'Georgi Schennikov', 'Left-Back', '1991-04-27', 'Russia', '2017-12-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(39, 2, 'Mário Fernandes', 'Right-Back', '1990-09-19', 'Russia', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(40, 2, 'Kirill Nababkin', 'Right-Back', '1986-09-08', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(41, 2, 'Pontus Wernbloom', 'Defensive Midfield', '1986-06-25', 'Sweden', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(42, 2, 'Alan Dzagoev', 'Central Midfield', '1990-06-17', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(43, 2, 'Aleksandr Golovin', 'Central Midfield', '1996-05-30', 'Russia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(44, 2, 'Bibras Natcho', 'Central Midfield', '1988-02-18', 'Israel', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(45, 2, 'Konstantin Kuchaev', 'Central Midfield', '1998-03-18', 'Russia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(46, 2, 'Georgi Milanov', 'Attacking Midfield', '1992-02-19', 'Bulgaria', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(47, 2, 'Vitinho', 'Left Wing', '1993-10-09', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(48, 2, 'Aleksandr Makarov', 'Left Wing', '1996-04-24', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(49, 2, 'Fedor Chalov', 'Centre-Forward', '1998-04-10', 'Russia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(50, 2, 'Aaron Olanare', 'Centre-Forward', '1994-06-04', 'Nigeria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(51, 2, 'Timur Zhamaletdinov', 'Centre-Forward', '1997-05-21', 'Russia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(52, 3, 'Guillaume Gillet', 'Defensive Midfield', '1984-03-09', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(53, 3, 'Felipe Pardo', 'Right Wing', '1990-08-17', 'Colombia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(54, 3, 'Pape Abou Cissé', 'Centre-Back', '1995-09-14', 'Senegal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(55, 3, 'Mehdi Carcela-González', 'Right Wing', '1989-07-01', 'Morocco', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(56, 3, 'Hrvoje Milic', 'Left-Back', '1989-05-10', 'Croatia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(57, 3, 'Stefanos Kapino', 'Keeper', '1994-03-18', 'Greece', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(58, 3, 'Silvio Proto', 'Keeper', '1983-05-23', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(59, 3, 'Lefteris Choutesiotis', 'Keeper', '1994-07-20', 'Greece', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(60, 3, 'Dimitrios Skafidas', 'Keeper', '1999-08-05', 'Greece', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(61, 3, 'Björn Engels', 'Centre-Back', '1994-09-15', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(62, 3, 'Alberto Botía', 'Centre-Back', '1989-01-27', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(63, 3, 'Jagos Vukovic', 'Centre-Back', '1988-06-10', 'Serbia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(64, 3, 'Dimitrios Nikolaou', 'Centre-Back', '1998-08-13', 'Greece', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(65, 3, 'Leonardo Koutris', 'Left-Back', '1995-07-23', 'Greece', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(66, 3, 'Omar Elabdellaoui', 'Right-Back', '1991-12-05', 'Norway', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(67, 3, 'Diogo Figueiras', 'Right-Back', '1991-01-07', 'Portugal', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(68, 3, 'Panagiotis Tachtsidis', 'Defensive Midfield', '1991-02-15', 'Greece', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(69, 3, 'Sasa Zdjelar', 'Defensive Midfield', '1995-03-20', 'Serbia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(70, 3, 'Alaixys Romao', 'Defensive Midfield', '1984-01-18', 'Togo', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(71, 3, 'Vadis Odjidja-Ofoe', 'Central Midfield', '1989-02-21', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(72, 3, 'André Martins', 'Central Midfield', '1990-01-21', 'Portugal', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(73, 3, 'Athanasios Androutsos', 'Central Midfield', '1997-05-06', 'Greece', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(74, 3, 'Konstantinos Fortounis', 'Attacking Midfield', '1992-10-16', 'Greece', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(75, 3, 'Sebá', 'Left Wing', '1992-06-08', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(76, 3, 'Marko Marin', 'Left Wing', '1989-03-13', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(77, 3, 'El Fardou Ben', 'Right Wing', '1989-06-10', 'Comoros', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(78, 3, 'Uros Djurdjevic', 'Centre-Forward', '1994-03-02', 'Serbia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(79, 3, 'Emmanuel Emenike', 'Centre-Forward', '1987-05-10', 'Nigeria', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(80, 3, 'Karim Ansarifard', 'Centre-Forward', '1990-04-03', 'Iran', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(81, 4, 'Romain Salin', 'Keeper', '1984-07-29', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(82, 4, 'Jérémy Mathieu', 'Centre-Back', '1983-10-29', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(83, 4, 'Cristiano Piccini', 'Right-Back', '1992-09-26', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(84, 4, 'Fábio Coentrão', 'Left-Back', '1988-03-11', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(85, 4, 'Bruno Fernandes', 'Central Midfield', '1994-09-08', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(86, 4, 'Radosav Petrovic', 'Defensive Midfield', '1989-03-08', 'Serbia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(87, 4, 'Daniel Podence', 'Secondary Striker', '1995-10-21', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(88, 4, 'Rui Patrício', 'Keeper', '1988-02-15', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(89, 4, 'Sebastián Coates', 'Centre-Back', '1990-10-07', 'Uruguay', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(90, 4, 'William Carvalho', 'Defensive Midfield', '1992-04-07', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(91, 4, 'João Palhinha', 'Defensive Midfield', '1995-07-09', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(92, 4, 'Bryan Ruíz', 'Left Wing', '1985-08-18', 'Costa Rica', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(93, 4, 'Bruno César', 'Left Wing', '1988-11-03', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(94, 4, 'Gelson Martins', 'Right Wing', '1995-05-11', 'Portugal', '2022-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(95, 4, 'Alan Ruiz', 'Secondary Striker', '1993-08-19', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(96, 4, 'Bas Dost', 'Centre-Forward', '1989-05-31', 'Netherlands', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(97, 4, 'Iuri Medeiros', 'Right Wing', '1994-07-10', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(98, 4, 'Rodrigo Battaglia', 'Defensive Midfield', '1991-07-12', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(99, 4, 'Mattheus', 'Attacking Midfield', '1994-07-07', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(100, 4, 'Tobias Figueiredo', 'Centre-Back', '1994-02-02', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(101, 4, 'Pedro Silva', 'Keeper', '1997-02-13', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(102, 4, 'André Pinto', 'Centre-Back', '1989-10-05', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(103, 4, 'Jonathan Silva', 'Left-Back', '1994-06-29', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(104, 4, 'Stefan Ristovski', 'Right-Back', '1992-02-12', 'Macedonia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(105, 4, 'Marcos Acuña', 'Left Wing', '1991-10-28', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(106, 4, 'Gelson Dala', 'Secondary Striker', '1996-07-13', 'Angola', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(107, 4, 'Seydou Doumbia', 'Centre-Forward', '1987-12-31', 'Cote dIvoire', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(108, 5, 'Ousmane Dembélé', 'Left Wing', '1997-05-15', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(109, 5, 'Marc-André ter Stegen', 'Keeper', '1992-04-30', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(110, 5, 'Jasper Cillessen', 'Keeper', '1989-04-22', 'Netherlands', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(111, 5, 'Gerard Piqué', 'Centre-Back', '1987-02-02', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(112, 5, 'Samuel Umtiti', 'Centre-Back', '1993-11-14', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(113, 5, 'Javier Mascherano', 'Centre-Back', '1984-06-08', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(114, 5, 'Jordi Alba', 'Left-Back', '1989-03-21', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(115, 5, 'Lucas Digne', 'Left-Back', '1993-07-20', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(116, 5, 'Sergi Roberto', 'Central Midfield', '1992-02-07', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(117, 5, 'Aleix Vidal', 'Right-Back', '1989-08-21', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(118, 5, 'Sergio Busquets', 'Defensive Midfield', '1988-07-16', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(119, 5, 'Ivan Rakitic', 'Central Midfield', '1988-03-10', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(120, 5, 'Andrés Iniesta', 'Central Midfield', '1984-05-11', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(121, 5, 'André Gomes', 'Central Midfield', '1993-07-30', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(122, 5, 'Denis Suárez', 'Central Midfield', '1994-01-06', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(123, 5, 'Arda Turan', 'Left Wing', '1987-01-30', 'Turkey', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(124, 5, 'Lionel Messi', 'Right Wing', '1987-06-24', 'Argentina', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(125, 5, 'Luis Suárez', 'Centre-Forward', '1987-01-24', 'Uruguay', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(126, 5, 'Paco Alcácer', 'Centre-Forward', '1993-08-30', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(127, 5, 'Thomas Vermaelen', 'Centre-Back', '1985-11-14', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(128, 5, 'Gerard Deulofeu', 'Left Wing', '1994-03-13', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(129, 5, 'Nélson Semedo', 'Right-Back', '1993-11-16', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(130, 6, 'Douglas Costa', 'Left Wing', '1990-09-14', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(131, 6, 'Blaise Matuidi', 'Central Midfield', '1987-04-09', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(132, 6, 'Wojciech Szczesny', 'Keeper', '1990-04-18', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(133, 6, 'Gianluigi Buffon', 'Keeper', '1978-01-28', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(134, 6, 'Daniele Rugani', 'Centre-Back', '1994-07-29', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(135, 6, 'Medhi Benatia', 'Centre-Back', '1987-04-17', 'Morocco', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(136, 6, 'Giorgio Chiellini', 'Centre-Back', '1984-08-14', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(137, 6, 'Andrea Barzagli', 'Centre-Back', '1981-05-08', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(138, 6, 'Alex Sandro', 'Left-Back', '1991-01-26', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(139, 6, 'Stephan Lichtsteiner', 'Right-Back', '1984-01-16', 'Switzerland', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(140, 6, 'Miralem Pjanic', 'Central Midfield', '1990-04-02', 'Bosnia-Herzegovina', '2021-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(141, 6, 'Claudio Marchisio', 'Central Midfield', '1986-01-19', 'Italy', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(142, 6, 'Sami Khedira', 'Central Midfield', '1987-04-04', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(143, 6, 'Stefano Sturaro', 'Central Midfield', '1993-03-09', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(144, 6, 'Kwadwo Asamoah', 'Central Midfield', '1988-12-09', 'Ghana', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(145, 6, 'Marko Pjaca', 'Left Wing', '1995-05-06', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(146, 6, 'Juan Cuadrado', 'Right Wing', '1988-05-26', 'Colombia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(147, 6, 'Gonzalo Higuaín', 'Centre-Forward', '1987-12-10', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(148, 6, 'Paulo Dybala', 'Secondary Striker', '1993-11-15', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(149, 6, 'Mario Mandzukic', 'Centre-Forward', '1986-05-21', 'Croatia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(150, 6, 'Federico Bernardeschi', 'Right Wing', '1994-02-16', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(151, 6, 'Mattia De Sciglio', 'Right-Back', '1992-10-20', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(152, 6, 'Mame Thiam', 'Left Wing', '1992-10-09', 'Senegal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(153, 6, 'Carlo Pinsoglio', 'Keeper', '1990-03-16', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(154, 6, 'Benedikt Höwedes', 'Centre-Back', '1988-02-29', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(155, 6, 'Rodrigo Bentancur', 'Central Midfield', '1997-06-25', 'Uruguay', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(156, 7, 'Aleksandar Kolarov', 'Left-Back', '1985-11-10', 'Serbia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(157, 7, 'Héctor Moreno', 'Centre-Back', '1988-01-17', 'Mexico', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(158, 7, 'Maxime Gonalons', 'Defensive Midfield', '1989-03-10', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(159, 7, 'Alisson', 'Keeper', '1992-10-02', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(160, 7, 'Bogdan Lobont', 'Keeper', '1978-01-18', 'Romania', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(161, 7, 'Konstantinos Manolas', 'Centre-Back', '1991-06-14', 'Greece', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(162, 7, 'Federico Fazio', 'Centre-Back', '1987-03-17', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(163, 7, 'Juan Jesus', 'Centre-Back', '1991-06-10', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(164, 7, 'Emerson', 'Left-Back', '1994-08-03', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(165, 7, 'Bruno Peres', 'Right-Back', '1990-03-01', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(166, 7, 'Abdullahi Nura', 'Right-Back', '1997-08-17', 'Nigeria', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(167, 7, 'Daniele De Rossi', 'Defensive Midfield', '1983-07-24', 'Italy', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(168, 7, 'Radja Nainggolan', 'Central Midfield', '1988-05-04', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(169, 7, 'Kevin Strootman', 'Central Midfield', '1990-02-13', 'Netherlands', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(170, 7, 'Alessandro Florenzi', 'Central Midfield', '1991-03-11', 'Italy', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(171, 7, 'Gerson', 'Attacking Midfield', '1997-05-20', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(172, 7, 'Diego Perotti', 'Left Wing', '1988-07-26', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(173, 7, 'Stephan El Shaarawy', 'Left Wing', '1992-10-27', 'Italy', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(174, 7, 'Edin Dzeko', 'Centre-Forward', '1986-03-17', 'Bosnia-Herzegovina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(175, 7, 'Leandro Castán', 'Centre-Back', '1986-11-05', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(176, 7, 'Lukasz Skorupski', 'Keeper', '1991-05-05', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(177, 7, 'Patrik Schick', 'Centre-Forward', '1996-01-24', 'Czech Republic', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(178, 7, 'Lorenzo Pellegrini', 'Central Midfield', '1996-06-19', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(179, 7, 'Grégoire Defrel', 'Centre-Forward', '1991-06-17', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(180, 7, 'Silvio Anocic', 'Left-Back', '1997-09-10', 'Croatia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(181, 7, 'Rick Karsdorp', 'Right-Back', '1995-02-11', 'Netherlands', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(182, 7, 'Rezan Corlu', 'Attacking Midfield', '1997-08-07', 'Denmark', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(183, 7, 'Conor Borg', 'Attacking Midfield', '1997-05-13', 'Malta', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(184, 7, 'Cengiz Ünder', 'Left Wing', '1997-07-14', 'Turkey', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(185, 8, 'Juanfran', 'Right-Back', '1985-01-09', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(186, 8, 'Luciano Vietto', 'Centre-Forward', '1993-12-05', 'Argentina', '2020-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(187, 8, 'Jan Oblak', 'Keeper', '1993-01-07', 'Slovenia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(188, 8, 'Miguel Ángel Moyà', 'Keeper', '1984-04-02', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(189, 8, 'Diego Godín', 'Centre-Back', '1986-02-16', 'Uruguay', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(190, 8, 'Stefan Savic', 'Centre-Back', '1991-01-08', 'Montenegro', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(191, 8, 'José Giménez', 'Centre-Back', '1995-01-20', 'Uruguay', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(192, 8, 'Lucas Hernández', 'Centre-Back', '1996-02-14', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(193, 8, 'Filipe Luís', 'Left-Back', '1985-08-09', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(194, 8, 'Sime Vrsaljko', 'Right-Back', '1992-01-10', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(195, 8, 'Augusto Fernández', 'Central Midfield', '1986-04-10', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(196, 8, 'Thomas', 'Defensive Midfield', '1993-06-13', 'Ghana', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(197, 8, 'Koke', 'Central Midfield', '1992-01-08', 'Spain', '2024-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(198, 8, 'Saúl Ñíguez', 'Central Midfield', '1994-11-21', 'Spain', '2026-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(199, 8, 'Gabi', 'Central Midfield', '1983-07-10', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(200, 8, 'Yannick Carrasco', 'Left Wing', '1993-09-04', 'Belgium', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(201, 8, 'Nico Gaitán', 'Right Wing', '1988-02-23', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(202, 8, 'Ángel Correa', 'Right Wing', '1995-03-09', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(203, 8, 'Antoine Griezmann', 'Centre-Forward', '1991-03-21', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(204, 8, 'Kévin Gameiro', 'Centre-Forward', '1987-05-09', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(205, 8, 'Fernando Torres', 'Centre-Forward', '1984-03-20', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(206, 8, 'Guilherme Siqueira', 'Left-Back', '1986-04-28', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(207, 8, 'Axel Werner', 'Keeper', '1996-02-28', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(208, 9, 'Danny Drinkwater', 'Central Midfield', '1990-03-05', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(209, 9, 'Willy Caballero', 'Keeper', '1981-09-28', 'Argentina', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(210, 9, 'Thibaut Courtois', 'Keeper', '1992-05-11', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(211, 9, 'David Luiz', 'Centre-Back', '1987-04-22', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(212, 9, 'Gary Cahill', 'Centre-Back', '1985-12-19', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(213, 9, 'Marcos Alonso', 'Left-Back', '1990-12-28', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(214, 9, 'Kenedy', 'Left-Back', '1996-02-08', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(215, 9, 'César Azpilicueta', 'Right-Back', '1989-08-28', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(216, 9, 'Golo Kanté', 'Defensive Midfield', '1991-03-29', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(217, 9, 'Cesc Fàbregas', 'Central Midfield', '1987-05-04', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(218, 9, 'Eden Hazard', 'Left Wing', '1991-01-07', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(219, 9, 'Charly Musonda Jr.', 'Left Wing', '1996-10-15', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(220, 9, 'Willian', 'Right Wing', '1988-08-09', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(221, 9, 'Pedro', 'Right Wing', '1987-07-28', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(222, 9, 'Victor Moses', 'Right Wing', '1990-12-12', 'Nigeria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(223, 9, 'Diego Costa', 'Centre-Forward', '1988-10-07', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(224, 9, 'Michy Batshuayi', 'Centre-Forward', '1993-10-02', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(225, 9, 'Andreas Christensen', 'Centre-Back', '1996-04-10', 'Denmark', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(226, 9, 'Tiemoué Bakayoko', 'Defensive Midfield', '1994-08-17', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(227, 9, 'Álvaro Morata', 'Centre-Forward', '1992-10-23', 'Spain', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(228, 9, 'Antonio Rüdiger', 'Centre-Back', '1993-03-03', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(229, 9, 'Davide Zappacosta', 'Right-Back', '1992-06-11', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(230, 9, 'Matej Delac', 'Keeper', '1992-08-20', 'Croatia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(231, 9, 'Abdul Rahman Baba', 'Left-Back', '1994-07-02', 'Ghana', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(232, 9, 'Wallace Oliveira', 'Right-Back', '1994-05-01', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(233, 10, 'Caglar Sahin Akbaba', 'Keeper', '1995-03-17', 'Turkey', '2020-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(234, 10, 'Oleksandr Rybka', 'Keeper', '1987-04-10', 'Ukraine', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(235, 10, 'Ahmet Sahin', 'Keeper', '1978-03-22', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(236, 10, 'Valerica Gaman', 'Centre-Back', '1989-02-25', 'Romania', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(237, 10, 'Baris Basdas', 'Centre-Back', '1990-01-17', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(238, 10, 'Paul Papp', 'Centre-Back', '1989-11-11', 'Romania', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(239, 10, 'Dany Nounkeu', 'Centre-Back', '1986-04-11', 'Cameroon', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(240, 10, 'Ferhat Görgülü', 'Centre-Back', '1991-10-28', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(241, 10, 'Iasmin Latovlevici', 'Left-Back', '1986-05-11', 'Romania', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(242, 10, 'Ishak Dogan', 'Left-Back', '1990-08-09', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(243, 10, 'Hakan Aslantas', 'Right-Back', '1985-08-26', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(244, 10, 'Kerim Zengin', 'Right-Back', '1985-04-13', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(245, 10, 'André Biyogo Poko', 'Defensive Midfield', '1993-03-07', 'Gabon', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(246, 10, 'Ceyhun Gülselam', 'Defensive Midfield', '1987-12-25', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(247, 10, 'Osman Celik', 'Defensive Midfield', '1991-11-27', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(248, 10, 'Ólafur Ingi Skúlason', 'Defensive Midfield', '1983-04-01', 'Iceland', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(249, 10, 'Hamidou Traore', 'Central Midfield', '1996-10-07', 'Mali', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(250, 10, 'Andriy Bliznichenko', 'Right Midfield', '1994-07-24', 'Ukraine', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(251, 10, 'Cristian Tanase', 'Left Midfield', '1987-02-18', 'Romania', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(252, 10, 'Ilhan Depe', 'Left Midfield', '1992-09-10', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(253, 10, 'Gheorghe Grozav', 'Left Wing', '1990-09-29', 'Romania', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(254, 10, 'Gabriel Torje', 'Right Wing', '1989-11-22', 'Romania', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(255, 10, 'Evgen Seleznev', 'Centre-Forward', '1985-07-20', 'Ukraine', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(256, 10, 'Mustapha Yatabaré', 'Centre-Forward', '1986-01-26', 'Mali', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(257, 10, 'Serdar Deliktas', 'Centre-Forward', '1986-08-04', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(258, 11, 'Odsonne Edouard', 'Centre-Forward', '1998-01-16', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(259, 11, 'Olivier Ntcham', 'Central Midfield', '1996-02-09', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(260, 11, 'Patrick Roberts', 'Right Wing', '1997-02-05', 'England', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(261, 11, 'Craig Gordon', 'Keeper', '1982-12-31', 'Scotland', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(262, 11, 'Dorus de Vries', 'Keeper', '1980-12-29', 'Netherlands', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(263, 11, 'Jozo Simunovic', 'Centre-Back', '1994-08-04', 'Bosnia-Herzegovina', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(264, 11, 'Erik Sviatchenko', 'Centre-Back', '1991-10-04', 'Denmark', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(265, 11, 'Dedryck Boyata', 'Centre-Back', '1990-11-28', 'Belgium', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(266, 11, 'Kristoffer Ajer', 'Centre-Back', '1998-04-17', 'Norway', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(267, 11, 'Jamie McCart', 'Centre-Back', '1997-06-20', 'Scotland', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(268, 11, 'Kieran Tierney', 'Left-Back', '1997-06-05', 'Scotland', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(269, 11, 'Mikael Lustig', 'Right-Back', '1986-12-13', 'Sweden', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(270, 11, 'Cristian Gamboa', 'Right-Back', '1989-10-24', 'Costa Rica', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(271, 11, 'Anthony Ralston', 'Right-Back', '1998-11-16', 'Scotland', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(272, 11, 'Nir Bitton', 'Defensive Midfield', '1991-10-30', 'Israel', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(273, 11, 'Eboue Kouassi', 'Defensive Midfield', '1997-12-13', 'Cote Ivoire', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(274, 11, 'Scott Brown', 'Central Midfield', '1985-06-25', 'Scotland', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(275, 11, 'Callum McGregor', 'Central Midfield', '1993-06-14', 'Scotland', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(276, 11, 'Liam Henderson', 'Central Midfield', '1996-04-25', 'Scotland', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(277, 11, 'Kundai Benyu', 'Central Midfield', '1997-12-12', 'England', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(278, 11, 'James Forrest', 'Right Midfield', '1991-07-07', 'Scotland', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(279, 11, 'Jonny Hayes', 'Right Midfield', '1987-07-09', 'Ireland', '2020-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(280, 11, 'Stuart Armstrong', 'Left Midfield', '1992-03-30', 'Scotland', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(281, 11, 'Tom Rogic', 'Attacking Midfield', '1992-12-16', 'Australia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(282, 11, 'Scott Sinclair', 'Left Wing', '1989-03-25', 'England', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(283, 11, 'Moussa Dembélé', 'Centre-Forward', '1996-07-12', 'France', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(284, 11, 'Leigh Griffiths', 'Centre-Forward', '1990-08-20', 'Scotland', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(285, 11, 'Jack Aitchison', 'Centre-Forward', '2000-03-05', 'Scotland', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(286, 12, 'Hatem Ben Arfa', 'Attacking Midfield', '1987-03-07', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(287, 12, 'Kevin Trapp', 'Keeper', '1990-07-08', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(288, 12, 'Alphonse Aréola', 'Keeper', '1993-02-27', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(289, 12, 'Rémy Descamps', 'Keeper', '1996-06-25', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(290, 12, 'Marquinhos', 'Centre-Back', '1994-05-14', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(291, 12, 'Thiago Silva', 'Centre-Back', '1984-09-22', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(292, 12, 'Presnel Kimpembe', 'Centre-Back', '1995-08-13', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(293, 12, 'Layvin Kurzawa', 'Left-Back', '1992-09-04', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(294, 12, 'Thomas Meunier', 'Right-Back', '1991-09-12', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(295, 12, 'Thiago Motta', 'Defensive Midfield', '1982-08-28', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(296, 12, 'Marco Verratti', 'Central Midfield', '1992-11-05', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(297, 12, 'Adrien Rabiot', 'Central Midfield', '1995-04-03', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(298, 12, 'Christopher Nkunku', 'Central Midfield', '1997-11-14', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(299, 12, 'Javier Pastore', 'Central Midfield', '1989-06-20', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(300, 12, 'Giovani Lo Celso', 'Attacking Midfield', '1996-04-09', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(301, 12, 'Ángel Di María', 'Right Wing', '1988-02-14', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(302, 12, 'Lucas', 'Right Wing', '1992-08-13', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(303, 12, 'Edinson Cavani', 'Centre-Forward', '1987-02-14', 'Uruguay', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(304, 12, 'Kylian Mbappé', 'Centre-Forward', '1998-12-20', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(305, 12, 'Neymar', 'Left Wing', '1992-02-05', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(306, 12, 'Yuri Berchiche', 'Left-Back', '1990-02-10', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(307, 12, 'Dani Alves', 'Right-Back', '1983-05-06', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(308, 12, 'Alec Georgen', 'Right-Back', '1998-09-17', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(309, 12, 'Julian Draxler', 'Left Wing', '1993-09-20', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(310, 13, 'Manuel Neuer', 'Keeper', '1986-03-27', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(311, 13, 'Sven Ulreich', 'Keeper', '1988-08-03', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(312, 13, 'Jérôme Boateng', 'Centre-Back', '1988-09-03', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(313, 13, 'Mats Hummels', 'Centre-Back', '1988-12-16', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(314, 13, 'Javi Martínez', 'Centre-Back', '1988-09-02', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(315, 13, 'David Alaba', 'Left-Back', '1992-06-24', 'Austria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(316, 13, 'Juan Bernat', 'Left-Back', '1993-03-01', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(317, 13, 'Niklas Dorsch', 'Defensive Midfield', '1998-01-15', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(318, 13, 'Thiago', 'Central Midfield', '1991-04-11', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(319, 13, 'Arturo Vidal', 'Central Midfield', '1987-05-22', 'Chile', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(320, 13, 'Joshua Kimmich', 'Right-Back', '1995-02-08', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(321, 13, 'Franck Ribéry', 'Left Midfield', '1983-04-07', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(322, 13, 'Fabian Benko', 'Attacking Midfield', '1998-06-05', 'Croatia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(323, 13, 'Kingsley Coman', 'Right Wing', '1996-06-13', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(324, 13, 'Arjen Robben', 'Right Wing', '1984-01-23', 'Netherlands', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(325, 13, 'Thomas Müller', 'Secondary Striker', '1989-09-13', 'Germany', '2021-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(326, 13, 'Robert Lewandowski', 'Centre-Forward', '1988-08-21', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(327, 13, 'Niklas Süle', 'Centre-Back', '1995-09-03', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(328, 13, 'Sebastian Rudy', 'Defensive Midfield', '1990-02-28', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(329, 13, 'Corentin Tolisso', 'Central Midfield', '1994-08-03', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(330, 13, 'James Rodríguez', 'Attacking Midfield', '1991-07-12', 'Colombia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(331, 13, 'Christian Früchtl', 'Keeper', '2000-01-28', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(332, 13, 'Felix Götze', 'Centre-Back', '1998-02-11', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(333, 13, 'Marco Friedl', 'Centre-Back', '1998-03-16', 'Austria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(334, 14, 'Matz Sels', 'Keeper', '1992-02-26', 'Belgium', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(335, 14, 'Robert Beric', 'Centre-Forward', '1991-06-17', 'Slovenia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(336, 14, 'Sven Kums', 'Defensive Midfield', '1988-02-26', 'Belgium', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(337, 14, 'Josué Sá', 'Centre-Back', '1992-06-17', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(338, 14, 'Frank Boeckx', 'Keeper', '1986-09-27', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(339, 14, 'Boy de Jong', 'Keeper', '1994-04-10', 'Netherlands', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(340, 14, 'Kara', 'Centre-Back', '1989-11-11', 'Senegal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(341, 14, 'Uros Spajic', 'Centre-Back', '1993-02-13', 'Serbia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(342, 14, 'Hannes Delcroix', 'Centre-Back', '1999-02-28', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(343, 14, 'Olivier Deschacht', 'Centre-Back', '1981-02-16', 'Belgium', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(344, 14, 'Ivan Obradovic', 'Left-Back', '1988-07-25', 'Serbia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(345, 14, 'Andy Nájar', 'Right-Back', '1993-03-16', 'Honduras', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(346, 14, 'Dennis Appiah', 'Right-Back', '1992-06-09', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(347, 14, 'Emmanuel Sowah Adjei', 'Right-Back', '1998-01-16', 'Ghana', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(348, 14, 'Leander Dendoncker', 'Defensive Midfield', '1995-04-15', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(349, 14, 'Adrien Trebel', 'Central Midfield', '1991-03-03', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(350, 14, 'Pieter Gerkens', 'Central Midfield', '1995-08-13', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(351, 14, 'Sofiane Hanni', 'Attacking Midfield', '1990-12-29', 'Algeria', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(352, 14, 'Nicolae Stanciu', 'Attacking Midfield', '1993-05-07', 'Romania', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(353, 14, 'Henry Onyekuru', 'Left Wing', '1997-06-05', 'Nigeria', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(354, 14, 'Alexandru Chipciu', 'Right Wing', '1989-05-18', 'Romania', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(355, 14, 'Massimo Bruno', 'Right Wing', '1993-09-17', 'Belgium', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(356, 14, 'Lukasz Teodorczyk', 'Centre-Forward', '1991-06-03', 'Poland', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(357, 14, 'Hamdi Harbaoui', 'Centre-Forward', '1985-01-05', 'Tunisia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(358, 15, 'Romelu Lukaku', 'Centre-Forward', '1993-05-13', 'Belgium', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(359, 15, 'David de Gea', 'Keeper', '1990-11-07', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(360, 15, 'Sergio Romero', 'Keeper', '1987-02-22', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(361, 15, 'Eric Bailly', 'Centre-Back', '1994-04-12', 'Cote d Ivoire', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(362, 15, 'Chris Smalling', 'Centre-Back', '1989-11-22', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(363, 15, 'Marcos Rojo', 'Centre-Back', '1990-03-20', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(364, 15, 'Phil Jones', 'Centre-Back', '1992-02-21', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(365, 15, 'Daley Blind', 'Left-Back', '1990-03-09', 'Netherlands', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(366, 15, 'Luke Shaw', 'Left-Back', '1995-07-12', 'England', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(367, 15, 'Matteo Darmian', 'Right-Back', '1989-12-02', 'Italy', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(368, 15, 'Antonio Valencia', 'Right-Back', '1985-08-04', 'Ecuador', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(369, 15, 'Michael Carrick', 'Defensive Midfield', '1981-07-28', 'England', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(370, 15, 'Paul Pogba', 'Central Midfield', '1993-03-15', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(371, 15, 'Ander Herrera', 'Central Midfield', '1989-08-14', 'Spain', '2018-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(372, 15, 'Marouane Fellaini', 'Central Midfield', '1987-11-22', 'Belgium', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(373, 15, 'Ashley Young', 'Left Midfield', '1985-07-09', 'England', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(374, 15, 'Henrikh Mkhitaryan', 'Attacking Midfield', '1989-01-21', 'Armenia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(375, 15, 'Juan Mata', 'Attacking Midfield', '1988-04-28', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(376, 15, 'Jesse Lingard', 'Left Wing', '1992-12-15', 'England', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(377, 15, 'Anthony Martial', 'Centre-Forward', '1995-12-05', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(378, 15, 'Zlatan Ibrahimovic', 'Centre-Forward', '1981-10-03', 'Sweden', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(379, 15, 'Marcus Rashford', 'Centre-Forward', '1997-10-31', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(380, 15, 'Nemanja Matic', 'Defensive Midfield', '1988-08-01', 'Serbia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(381, 15, 'Victor Lindelöf', 'Centre-Back', '1994-07-17', 'Sweden', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(382, 15, 'Joel Pereira', 'Keeper', '1996-06-28', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(383, 17, 'Borja Mayoral', 'Centre-Forward', '1997-04-05', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(384, 17, 'Jesús Vallejo', 'Centre-Back', '1997-01-05', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(385, 17, 'Dani Ceballos', 'Central Midfield', '1996-08-07', 'Spain', '2023-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(386, 17, 'Keylor Navas', 'Keeper', '1986-12-15', 'Costa Rica', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(387, 17, 'Kiko Casilla', 'Keeper', '1986-10-02', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(388, 17, 'Sergio Ramos', 'Centre-Back', '1986-03-30', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(389, 17, 'Raphaël Varane', 'Centre-Back', '1993-04-25', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(390, 17, 'Nacho Fernández', 'Centre-Back', '1990-01-18', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(391, 17, 'Daniel Carvajal', 'Right-Back', '1992-01-11', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(392, 17, 'Casemiro', 'Defensive Midfield', '1992-02-23', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(393, 17, 'Toni Kroos', 'Central Midfield', '1990-01-04', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(394, 17, 'Luka Modric', 'Central Midfield', '1985-09-09', 'Croatia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(395, 17, 'Mateo Kovacic', 'Central Midfield', '1994-05-06', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(396, 17, 'Isco', 'Attacking Midfield', '1992-04-21', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(397, 17, 'Cristiano Ronaldo', 'Left Wing', '1985-02-05', 'Portugal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(398, 17, 'Marco Asensio', 'Left Wing', '1996-01-21', 'Spain', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(399, 17, 'Gareth Bale', 'Right Wing', '1989-07-16', 'Wales', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(400, 17, 'Lucas Vázquez', 'Right Wing', '1991-07-01', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(401, 17, 'Karim Benzema', 'Centre-Forward', '1987-12-19', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(402, 17, 'Theo Hernández', 'Left-Back', '1997-10-06', 'France', '2023-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(403, 17, 'Achraf Hakimi', 'Right-Back', '1998-11-04', 'Morocco', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(404, 17, 'Marcos Llorente', 'Defensive Midfield', '1995-01-30', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(405, 18, 'Carlão', 'Centre-Back', '1986-01-19', 'Brazil', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(406, 18, 'Roland Sallai', 'Attacking Midfield', '1997-05-22', 'Hungary', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(407, 18, 'Raúl Gudiño', 'Keeper', '1996-04-22', 'Mexico', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(408, 18, 'Boy Waterman', 'Keeper', '1984-01-24', 'Netherlands', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(409, 18, 'Andreas Paraskevas', 'Keeper', '1998-09-15', 'Cyprus', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(410, 18, 'Jesús Rueda', 'Centre-Back', '1987-02-19', 'Spain', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(411, 18, 'Nikolas Ioannou', 'Centre-Back', '1995-11-10', 'Cyprus', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(412, 18, 'Giorgos Merkis', 'Centre-Back', '1984-07-30', 'Cyprus', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(413, 18, 'Zacharias Adoni', 'Centre-Back', '1999-07-13', 'Cyprus', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(414, 18, 'Roberto Lago', 'Left-Back', '1985-08-30', 'Spain', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(415, 18, 'Nektarios Alexandrou', 'Left-Back', '1983-12-19', 'Cyprus', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(416, 18, 'Zhivko Milanov', 'Right-Back', '1984-07-15', 'Bulgaria', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(417, 18, 'Lucas Souza', 'Defensive Midfield', '1990-07-04', 'Brazil', '2020-05-31');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(418, 18, 'Agustín Farías', 'Defensive Midfield', '1987-12-25', 'Argentina', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(419, 18, 'Nuno Morais', 'Defensive Midfield', '1984-01-29', 'Portugal', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(420, 18, 'Vinicius', 'Central Midfield', '1986-05-16', 'Brazil', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(421, 18, 'Ghayas Zahid', 'Left Midfield', '1994-11-18', 'Norway', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(422, 18, 'Facundo Bertoglio', 'Attacking Midfield', '1990-06-30', 'Argentina', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(423, 18, 'Lorenzo Ebecilio', 'Attacking Midfield', '1991-09-24', 'Netherlands', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(424, 18, 'Tommy Oar', 'Left Wing', '1991-12-10', 'Australia', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(425, 18, 'Efstathios Aloneftis', 'Left Wing', '1983-03-29', 'Cyprus', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(426, 18, 'Minas Antoniou', 'Left Wing', '1994-02-22', 'Cyprus', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(427, 18, 'Georgios Efrem', 'Right Wing', '1989-07-05', 'Cyprus', '2021-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(428, 18, 'Andreas Makris', 'Right Wing', '1995-11-27', 'Cyprus', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(429, 18, 'Mickaël Poté', 'Centre-Forward', '1984-09-24', 'Benin', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(430, 18, 'Igor de Camargo', 'Centre-Forward', '1983-05-12', 'Belgium', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(431, 19, 'Kevin Kampl', 'Central Midfield', '1990-10-09', 'Slovenia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(432, 19, 'Péter Gulácsi', 'Keeper', '1990-05-06', 'Hungary', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(433, 19, 'Fabio Coltorti', 'Keeper', '1980-12-03', 'Switzerland', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(434, 19, 'Willi Orban', 'Centre-Back', '1992-11-03', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(435, 19, 'Dayot Upamecano', 'Centre-Back', '1998-10-27', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(436, 19, 'Marvin Compper', 'Centre-Back', '1985-06-14', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(437, 19, 'Marcel Halstenberg', 'Left-Back', '1991-09-27', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(438, 19, 'Bernardo', 'Left-Back', '1995-05-14', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(439, 19, 'Lukas Klostermann', 'Right-Back', '1996-06-03', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(440, 19, 'Benno Schmitz', 'Right-Back', '1994-11-17', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(441, 19, 'Stefan Ilsanker', 'Defensive Midfield', '1989-05-18', 'Austria', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(442, 19, 'Diego Demme', 'Defensive Midfield', '1991-11-21', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(443, 19, 'Naby Keïta', 'Central Midfield', '1995-02-10', 'Guinea', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(444, 19, 'Dominik Kaiser', 'Central Midfield', '1988-09-16', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(445, 19, 'Emil Forsberg', 'Left Midfield', '1991-10-23', 'Sweden', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(446, 19, 'Marcel Sabitzer', 'Right Wing', '1994-03-17', 'Austria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(447, 19, 'Timo Werner', 'Centre-Forward', '1996-03-06', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(448, 19, 'Yussuf Poulsen', 'Centre-Forward', '1994-06-15', 'Denmark', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(449, 19, 'Jean-Kévin Augustin', 'Centre-Forward', '1997-06-16', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(450, 19, 'Ibrahima Konate', 'Centre-Back', '1999-05-25', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(451, 19, 'Yvon Mvogo', 'Keeper', '1994-06-06', 'Switzerland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(452, 19, 'Philipp Köhn', 'Keeper', '1998-04-02', 'Switzerland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(453, 19, 'Konrad Laimer', 'Central Midfield', '1997-05-27', 'Austria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(454, 19, 'Bruma', 'Left Wing', '1994-10-24', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(455, 19, 'Federico Palacios', 'Centre-Forward', '1995-04-09', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(456, 20, 'Adama Traoré', 'Central Midfield', '1995-06-28', 'Mali', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(457, 20, 'Diego Benaglio', 'Keeper', '1983-09-08', 'Switzerland', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(458, 20, 'Danijel Subasic', 'Keeper', '1984-10-27', 'Croatia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(459, 20, 'Seydou Sy', 'Keeper', '1995-12-12', 'Senegal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(460, 20, 'Loïc Badiashile', 'Keeper', '1998-02-05', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(461, 20, 'Kamil Glik', 'Centre-Back', '1988-02-03', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(462, 20, 'Jemerson', 'Centre-Back', '1992-08-24', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(463, 20, 'Andrea Raggi', 'Centre-Back', '1984-06-24', 'Italy', '2018-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(464, 20, 'Jorge', 'Left-Back', '1996-03-28', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(465, 20, 'Djibril Sidibé', 'Right-Back', '1992-07-29', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(466, 20, 'Almamy Touré', 'Right-Back', '1996-04-28', 'Mali', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(467, 20, 'Fabinho', 'Defensive Midfield', '1993-10-23', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(468, 20, 'Kévin Doram', 'Defensive Midfield', '1996-01-22', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(469, 20, 'João Moutinho', 'Central Midfield', '1986-09-08', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(470, 20, 'Thomas Lemar', 'Left Wing', '1995-11-12', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(471, 20, 'Gabriel Boschilia', 'Left Wing', '1996-03-05', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(472, 20, 'Falcao', 'Centre-Forward', '1986-02-10', 'Colombia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(473, 20, 'Guido Carrillo', 'Centre-Forward', '1991-05-25', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(474, 20, 'Rony Lopes', 'Right Wing', '1995-12-28', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(475, 20, 'Rachid Ghezzal', 'Right Wing', '1992-05-09', 'Algeria', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(476, 20, 'Adama Diakhaby', 'Centre-Forward', '1996-07-05', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(477, 20, 'Stevan Jovetic', 'Centre-Forward', '1989-11-02', 'Montenegro', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(478, 20, 'Keita Baldé', 'Left Wing', '1995-03-08', 'Senegal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(479, 20, 'Terence Kongolo', 'Centre-Back', '1994-02-14', 'Netherlands', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(480, 20, 'Julien Serrano', 'Left-Back', '1998-02-13', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(481, 20, 'Soualiho Meïté', 'Defensive Midfield', '1994-03-17', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(482, 20, 'Youri Tielemans', 'Central Midfield', '1997-05-07', 'Belgium', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(483, 20, 'Jordi Mboula', 'Right Wing', '1999-03-16', 'Spain', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(484, 21, 'Felipe', 'Centre-Back', '1989-05-16', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(485, 21, 'Sérgio Oliveira', 'Central Midfield', '1992-06-02', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(486, 21, 'Ricardo Pereira', 'Right-Back', '1993-10-06', 'Portugal', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(487, 21, 'Diego Reyes', 'Centre-Back', '1992-09-19', 'Mexico', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(488, 21, 'Iker Casillas', 'Keeper', '1981-05-20', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(489, 21, 'José Sá', 'Keeper', '1993-01-17', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(490, 21, 'Iván Marcano', 'Centre-Back', '1987-06-23', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(491, 21, 'Alex Telles', 'Left-Back', '1992-12-15', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(492, 21, 'Miguel Layún', 'Left-Back', '1988-06-25', 'Mexico', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(493, 21, 'Maxi Pereira', 'Right-Back', '1984-06-08', 'Uruguay', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(494, 21, 'Danilo Pereira', 'Defensive Midfield', '1991-09-09', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(495, 21, 'Héctor Herrera', 'Central Midfield', '1990-04-19', 'Mexico', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(496, 21, 'André André', 'Central Midfield', '1989-08-26', 'Portugal', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(497, 21, 'Otávio', 'Left Wing', '1995-02-09', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(498, 21, 'Óliver Torres', 'Attacking Midfield', '1994-11-10', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(499, 21, 'Yacine Brahimi', 'Left Wing', '1990-02-08', 'Algeria', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(500, 21, 'Jesús Corona', 'Right Wing', '1993-01-06', 'Mexico', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(501, 21, 'Moussa Marega', 'Secondary Striker', '1991-04-14', 'Mali', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(502, 21, 'Hernâni', 'Right Wing', '1991-08-20', 'Portugal', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(503, 21, 'Fabiano', 'Keeper', '1988-02-29', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(504, 21, 'Vaná Alves', 'Keeper', '1991-04-25', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(505, 21, 'João Costa', 'Keeper', '1996-02-02', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(506, 21, 'Alberto Bueno', 'Secondary Striker', '1988-03-20', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(507, 21, 'Vincent Aboubakar', 'Centre-Forward', '1992-01-22', 'Cameroon', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(508, 21, 'Tiquinho Soares', 'Centre-Forward', '1991-01-17', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(509, 22, 'Tolga Zengin', 'Keeper', '1983-10-10', 'Turkey', '2019-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(510, 22, 'Günay Güvenc', 'Keeper', '1991-06-25', 'Turkey', '2017-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(511, 22, 'Emre Metin', 'Keeper', '1993-02-07', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(512, 22, 'Enes Fidayeo', 'Keeper', '1997-03-01', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(513, 22, 'Veysel Sapan', 'Keeper', '1996-01-11', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(514, 22, 'Tomás Sivok', 'Centre-Back', '1983-09-15', 'Czech Republic', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(515, 22, 'Ersan Gülüm', 'Centre-Back', '1987-05-17', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(516, 22, 'Pedro Franco', 'Centre-Back', '1991-04-23', 'Colombia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(517, 22, 'Alexander Milosevic', 'Centre-Back', '1992-01-30', 'Sweden', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(518, 22, 'Atinc Nukan', 'Centre-Back', '1993-07-20', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(519, 22, 'Ismail Köybasi', 'Left-Back', '1989-07-10', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(520, 22, 'Ramon Motta', 'Left-Back', '1988-05-06', 'Brazil', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(521, 22, 'Ümit Karaal', 'Left-Back', '1995-08-15', 'Turkey', '2017-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(522, 22, 'Serdar Kurtulus', 'Right-Back', '1987-07-23', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(523, 22, 'Tugay Kaya', 'Right-Back', '1995-01-27', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(524, 22, 'Necip Uysal', 'Defensive Midfield', '1991-01-24', 'Turkey', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(525, 22, 'Atiba Hutchinson', 'Defensive Midfield', '1983-02-08', 'Canada', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(526, 22, 'Oguz Aksoy', 'Defensive Midfield', '1996-03-12', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(527, 22, 'Eslem Öztürk', 'Defensive Midfield', '1997-12-01', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(528, 22, 'Veli Kavlak', 'Central Midfield', '1988-11-03', 'Austria', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(529, 22, 'Oguzhan Özyakup', 'Central Midfield', '1992-09-23', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(530, 22, 'Tolgay Arslan', 'Central Midfield', '1990-08-16', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(531, 22, 'Muhammed Rasit Sahingöz', 'Central Midfield', '1996-03-29', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(532, 22, 'Olcay Sahan', 'Right Midfield', '1987-05-26', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(533, 22, 'Kerim Frei', 'Left Midfield', '1993-11-19', 'Turkey', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(534, 22, 'Ugur Boral', 'Left Midfield', '1982-04-14', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(535, 22, 'José Sosa', 'Attacking Midfield', '1985-06-19', 'Argentina', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(536, 22, 'Muhammed Demirci', 'Attacking Midfield', '1995-01-03', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(537, 22, 'Gökhan Artun', 'Attacking Midfield', '1995-01-27', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(538, 22, 'Gökhan Töre', 'Right Wing', '1992-01-20', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(539, 22, 'Filip Holosko', 'Right Wing', '1984-01-17', 'Slovakia', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(540, 22, 'Muhammed Enes Durmus', 'Right Wing', '1997-01-08', 'Turkey', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(541, 22, 'Demba Ba', 'Centre-Forward', '1985-05-25', 'Senegal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(542, 22, 'Cenk Tosun', 'Centre-Forward', '1991-06-07', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(543, 22, 'Mustafa Pektemek', 'Centre-Forward', '1988-08-11', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(544, 22, 'Furkan Yaman', 'Centre-Forward', '1996-01-08', 'Turkey', '2017-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(545, 23, 'Andriy Pyatov', 'Keeper', '1984-06-28', 'Ukraine', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(546, 23, 'Mykyta Shevchenko', 'Keeper', '1993-01-26', 'Ukraine', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(547, 23, 'Yaroslav Rakitsky', 'Centre-Back', '1989-08-03', 'Ukraine', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(548, 23, 'Ivan Ordets', 'Centre-Back', '1992-07-08', 'Ukraine', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(549, 23, 'Sergiy Kryvtsov', 'Centre-Back', '1991-03-15', 'Ukraine', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(550, 23, 'Davit Khocholava', 'Centre-Back', '1993-02-08', 'Georgia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(551, 23, 'Ismaily', 'Left-Back', '1990-01-11', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(552, 23, 'Márcio Azevedo', 'Left-Back', '1986-02-05', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(553, 23, 'Darijo Srna', 'Right-Back', '1982-05-01', 'Croatia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(554, 23, 'Bogdan Butko', 'Right-Back', '1991-01-13', 'Ukraine', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(555, 23, 'Taras Stepanenko', 'Defensive Midfield', '1989-08-08', 'Ukraine', '2022-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(556, 23, 'Maksym Malyshev', 'Defensive Midfield', '1992-12-24', 'Ukraine', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(557, 23, 'Fred', 'Central Midfield', '1993-03-05', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(558, 23, 'Marlos', 'Right Midfield', '1988-06-07', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(559, 23, 'Ivan Petryak', 'Left Midfield', '1994-03-13', 'Ukraine', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(560, 23, 'Viktor Kovalenko', 'Attacking Midfield', '1996-02-14', 'Ukraine', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(561, 23, 'Dentinho', 'Attacking Midfield', '1989-01-19', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(562, 23, 'Alan Patrick', 'Attacking Midfield', '1991-05-13', 'Brazil', '2018-12-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(563, 23, 'Oleksandr Zubkov', 'Attacking Midfield', '1996-08-03', 'Ukraine', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(564, 23, 'Bernard', 'Left Wing', '1992-09-08', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(565, 23, 'Taison', 'Left Wing', '1988-01-13', 'Brazil', '2021-12-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(566, 23, 'Facundo Ferreyra', 'Centre-Forward', '1991-03-14', 'Argentina', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(567, 23, 'Blanco Leschuk', 'Centre-Forward', '1991-11-05', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(568, 24, 'Camilo Zúñiga', 'Left Midfield', '1985-12-14', 'Colombia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(569, 24, 'Allan', 'Central Midfield', '1991-01-08', 'Brazil', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(570, 24, 'Adam Ounas', 'Left Wing', '1996-11-11', 'Algeria', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(571, 24, 'Rafael', 'Keeper', '1990-05-20', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(572, 24, 'Mário Rui', 'Left-Back', '1991-05-27', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(573, 24, 'Pepe Reina', 'Keeper', '1982-08-31', 'Spain', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(574, 24, 'Luigi Sepe', 'Keeper', '1991-05-08', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(575, 24, 'Kalidou Koulibaly', 'Centre-Back', '1991-06-20', 'Senegal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(576, 24, 'Raúl Albiol', 'Centre-Back', '1985-09-04', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(577, 24, 'Lorenzo Tonelli', 'Centre-Back', '1990-01-17', 'Italy', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(578, 24, 'Vlad Chiriches', 'Centre-Back', '1989-11-14', 'Romania', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(579, 24, 'Faouzi Ghoulam', 'Left-Back', '1991-02-01', 'Algeria', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(580, 24, 'Elseid Hysaj', 'Right-Back', '1994-02-02', 'Albania', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(581, 24, 'Christian Maggio', 'Right-Back', '1982-02-11', 'Italy', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(582, 24, 'Amadou Diawara', 'Defensive Midfield', '1997-07-17', 'Guinea', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(583, 24, 'Marek Hamsik', 'Central Midfield', '1987-07-27', 'Slovakia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(584, 24, 'Piotr Zielinski', 'Central Midfield', '1994-05-20', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(585, 24, 'Marko Rog', 'Central Midfield', '1995-07-19', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(586, 24, 'Emanuele Giaccherini', 'Right Midfield', '1985-05-05', 'Italy', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(587, 24, 'Lorenzo Insigne', 'Left Wing', '1991-06-04', 'Italy', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(588, 24, 'Dries Mertens', 'Centre-Forward', '1987-05-06', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(589, 24, 'José Callejón', 'Right Wing', '1987-02-11', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(590, 24, 'Arkadiusz Milik', 'Centre-Forward', '1994-02-28', 'Poland', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(591, 24, 'Nikola Maksimovic', 'Centre-Back', '1991-11-25', 'Serbia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(592, 26, 'Kyle Walker', 'Right-Back', '1990-05-28', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(593, 26, 'Claudio Bravo', 'Keeper', '1983-04-13', 'Chile', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(594, 26, 'John Stones', 'Centre-Back', '1994-05-28', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(595, 26, 'Nicolás Otamendi', 'Centre-Back', '1988-02-12', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(596, 26, 'Vincent Kompany', 'Centre-Back', '1986-04-10', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(597, 26, 'Ilkay Gündogan', 'Central Midfield', '1990-10-24', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(598, 26, 'Fernandinho', 'Defensive Midfield', '1985-05-04', 'Brazil', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(599, 26, 'Yaya Touré', 'Central Midfield', '1983-05-13', 'Cote d Ivoire', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(600, 26, 'Fabian Delph', 'Central Midfield', '1989-11-21', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(601, 26, 'Kevin De Bruyne', 'Attacking Midfield', '1991-06-28', 'Belgium', '2021-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(602, 26, 'David Silva', 'Attacking Midfield', '1986-01-08', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(603, 26, 'Raheem Sterling', 'Left Wing', '1994-12-08', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(604, 26, 'Sergio Agüero', 'Centre-Forward', '1988-06-02', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(605, 26, 'Gabriel Jesus', 'Centre-Forward', '1997-04-03', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(606, 26, 'Oleksandr Zinchenko', 'Attacking Midfield', '1996-12-15', 'Ukraine', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(607, 26, 'Benjamin Mendy', 'Left-Back', '1994-07-17', 'France', '2023-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(608, 26, 'Bernardo Silva', 'Right Wing', '1994-08-10', 'Portugal', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(609, 26, 'Danilo', 'Right-Back', '1991-07-15', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(610, 26, 'Eliaquim Mangala', 'Centre-Back', '1991-02-13', 'France', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(611, 26, 'Ederson', 'Keeper', '1993-08-17', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(612, 26, 'Leroy Sané', 'Left Wing', '1996-01-11', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(613, 27, 'Matko Obradovic', 'Keeper', '1991-05-11', 'Croatia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(614, 27, 'Jasmin Handanovic', 'Keeper', '1978-01-28', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(615, 27, 'Aljaz Cotman', 'Keeper', '1994-04-26', 'Slovenia', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(616, 27, 'Denis Sme', 'Centre-Back', '1994-03-22', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(617, 27, 'Jean-Claude Billong', 'Centre-Back', '1993-12-28', 'France', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(618, 27, 'Aleksander Rajcevic', 'Centre-Back', '1986-11-17', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(619, 27, 'Marko Suler', 'Centre-Back', '1983-03-09', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(620, 27, 'Luka Uskokovi?', 'Centre-Back', '1996-04-10', 'Montenegro', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(621, 27, 'Mitja Viler', 'Left-Back', '1986-09-01', 'Slovenia', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(622, 27, 'Zan Kolmanic', 'Left-Back', '2000-03-03', 'Slovenia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(623, 27, 'Martin Milec', 'Right-Back', '1991-09-20', 'Slovenia', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(624, 27, 'Matej Palcic', 'Right-Back', '1993-06-21', 'Slovenia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(625, 27, 'Adis Hodzic', 'Right-Back', '1999-01-16', 'Slovenia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(626, 27, 'Marwan Kabha', 'Defensive Midfield', '1991-02-23', 'Israel', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(627, 27, 'Blaz Vrhovec', 'Defensive Midfield', '1992-02-20', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(628, 27, 'Aleks Pihler', 'Central Midfield', '1994-01-15', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(629, 27, 'Ales Mertelj', 'Central Midfield', '1987-03-22', 'Slovenia', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(630, 27, 'Amir Dervisevic', 'Central Midfield', '1992-07-04', 'Slovenia', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(631, 27, 'Sandi Ogrinec', 'Central Midfield', '1998-06-05', 'Slovenia', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(632, 27, 'Dino Hotic', 'Right Midfield', '1995-07-26', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(633, 27, 'Damjan Bohar', 'Left Midfield', '1991-10-18', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(634, 27, 'Valon Ahmedi', 'Attacking Midfield', '1994-10-07', 'Albania', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(635, 27, 'Dejan Vokic', 'Attacking Midfield', '1996-06-12', 'Slovenia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(636, 27, 'Lior Inbrum', 'Left Wing', '1996-01-12', 'Israel', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(637, 27, 'Gregor Bajde', 'Left Wing', '1994-04-29', 'Slovenia', '2018-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(638, 27, 'Martin Kramaric', 'Right Wing', '1997-11-14', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(639, 27, 'Marcos Tavares', 'Secondary Striker', '1984-03-30', 'Brazil', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(640, 27, 'Dare Vrsic', 'Secondary Striker', '1984-09-26', 'Slovenia', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(641, 27, 'Luka Zahovic', 'Centre-Forward', '1995-11-15', 'Slovenia', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(642, 27, 'Jasmin Mesanovic', 'Centre-Forward', '1992-01-06', 'Bosnia-Herzegovina', '2020-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(643, 27, 'Sunny Omoregie', 'Centre-Forward', '1989-01-02', 'Nigeria', '2019-05-31');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(644, 27, 'Luka Stor', 'Centre-Forward', '1998-07-05', 'Slovenia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(645, 28, 'Fernando', 'Defensive Midfield', '1992-03-03', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(646, 28, 'Mario Pasalic', 'Central Midfield', '1995-02-09', 'Croatia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(647, 28, 'Aleksandr Selikhov', 'Keeper', '1994-04-07', 'Russia', '2021-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(648, 28, 'Artem Rebrov', 'Keeper', '1984-03-04', 'Russia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(649, 28, 'Giorgi Jikia', 'Centre-Back', '1993-11-21', 'Russia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(650, 28, 'Salvatore Bocchetti', 'Centre-Back', '1986-11-30', 'Italy', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(651, 28, 'Ilya Kutepov', 'Centre-Back', '1993-07-29', 'Russia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(652, 28, 'Serdar Tasci', 'Centre-Back', '1987-04-24', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(653, 28, 'Georgi Tigiev', 'Left-Back', '1995-05-26', 'Russia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(654, 28, 'Marko Petkovic', 'Right-Back', '1992-09-03', 'Serbia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(655, 28, 'Andrey Eshchenko', 'Right-Back', '1984-02-09', 'Russia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(656, 28, 'Artem Timofeev', 'Defensive Midfield', '1994-01-12', 'Russia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(657, 28, 'Denis Glushakov', 'Central Midfield', '1987-01-27', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(658, 28, 'Roman Zobnin', 'Central Midfield', '1994-02-11', 'Russia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(659, 28, 'Aleksandr Samedov', 'Right Midfield', '1984-07-19', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(660, 28, 'Dmitri Kombarov', 'Left Midfield', '1987-01-22', 'Russia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(661, 28, 'Ivelin Popov', 'Attacking Midfield', '1987-10-26', 'Bulgaria', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(662, 28, 'Jano Ananidze', 'Attacking Midfield', '1992-10-10', 'Georgia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(663, 28, 'Lorenzo Melgarejo', 'Left Wing', '1990-08-10', 'Paraguay', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(664, 28, 'Pedro Rocha', 'Left Wing', '1994-10-01', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(665, 28, 'Quincy Promes', 'Right Wing', '1992-01-04', 'Netherlands', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(666, 28, 'Zelimkhan Bakaev', 'Right Wing', '1996-07-01', 'Russia', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(667, 28, 'Zé Luís', 'Centre-Forward', '1991-01-24', 'Cape Verde', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(668, 28, 'Luiz Adriano', 'Centre-Forward', '1987-04-12', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(669, 28, 'Denis Davydov', 'Centre-Forward', '1995-03-22', 'Russia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(670, 29, 'Andrew Robertson', 'Left-Back', '1994-03-11', 'Scotland', 'null');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(671, 29, 'Jon Flanagan', 'Right-Back', '1993-01-01', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(672, 29, 'Alex Oxlade-Chamberlain', 'Right Midfield', '1993-08-15', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(673, 29, 'Simon Mignolet', 'Keeper', '1988-03-06', 'Belgium', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(674, 29, 'Loris Karius', 'Keeper', '1993-06-22', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(675, 29, 'Ádám Bogdán', 'Keeper', '1987-09-27', 'Hungary', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(676, 29, 'Dejan Lovren', 'Centre-Back', '1989-07-05', 'Croatia', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(677, 29, 'Ragnar Klavan', 'Centre-Back', '1985-10-30', 'Estonia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(678, 29, 'Joe Gomez', 'Centre-Back', '1997-05-23', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(679, 29, 'Alberto Moreno', 'Left-Back', '1992-07-05', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(680, 29, 'Nathaniel Clyne', 'Right-Back', '1991-04-05', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(681, 29, 'Trent Alexander-Arnold', 'Right-Back', '1998-10-07', 'England', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(682, 29, 'Emre Can', 'Defensive Midfield', '1994-01-12', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(683, 29, 'Jordan Henderson', 'Central Midfield', '1990-06-17', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(684, 29, 'James Milner', 'Central Midfield', '1986-01-04', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(685, 29, 'Marko Grujic', 'Central Midfield', '1996-04-13', 'Serbia', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(686, 29, 'Philippe Coutinho', 'Attacking Midfield', '1992-06-12', 'Brazil', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(687, 29, 'Georginio Wijnaldum', 'Central Midfield', '1990-11-11', 'Netherlands', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(688, 29, 'Adam Lallana', 'Attacking Midfield', '1988-05-10', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(689, 29, 'Ben Woodburn', 'Left Wing', '1999-10-15', 'Wales', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(690, 29, 'Sadio Mané', 'Left Wing', '1992-04-10', 'Senegal', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(691, 29, 'Roberto Firmino', 'Centre-Forward', '1991-10-02', 'Brazil', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(692, 29, 'Daniel Sturridge', 'Centre-Forward', '1989-09-01', 'England', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(693, 29, 'Danny Ings', 'Centre-Forward', '1992-07-23', 'England', '2020-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(694, 29, 'Mohamed Salah', 'Right Wing', '1992-06-15', 'Egypt', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(695, 29, 'Danny Ward', 'Keeper', '1993-06-22', 'Wales', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(696, 29, 'Lazar Markovic', 'Right Wing', '1994-03-02', 'Serbia', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(697, 29, 'Dominic Solanke', 'Centre-Forward', '1997-09-14', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(698, 29, 'Joel Matip', 'Centre-Back', '1991-08-08', 'Cameroon', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(699, 30, 'Nolito', 'Left Wing', '1986-10-15', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(700, 30, 'Jesús Navas', 'Right Wing', '1985-11-21', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(701, 30, 'Sébastien Corchia', 'Right-Back', '1990-11-01', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(702, 30, 'Sergio Rico', 'Keeper', '1993-09-01', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(703, 30, 'David Soria', 'Keeper', '1993-04-04', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(704, 30, 'Clément Lenglet', 'Centre-Back', '1995-06-17', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(705, 30, 'Daniel Carriço', 'Centre-Back', '1988-08-04', 'Portugal', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(706, 30, 'Nicolás Pareja', 'Centre-Back', '1984-01-19', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(707, 30, 'Sergio Escudero', 'Left-Back', '1989-09-02', 'Spain', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(708, 30, 'Gabriel Mercado', 'Right-Back', '1987-03-18', 'Argentina', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(709, 30, 'Steven NZonzi', 'Defensive Midfield', '1988-12-15', 'France', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(710, 30, 'Walter Montoya', 'Right Wing', '1993-07-21', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(711, 30, 'Franco Vázquez', 'Attacking Midfield', '1989-02-22', 'Italy', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(712, 30, 'Pablo Sarabia', 'Left Wing', '1992-05-11', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(713, 30, 'Ganso', 'Attacking Midfield', '1989-10-12', 'Brazil', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(714, 30, 'Michael Krohn-Dehli', 'Central Midfield', '1983-06-06', 'Denmark', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(715, 30, 'Joaquín Correa', 'Left Wing', '1994-08-13', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(716, 30, 'Wissam Ben Yedder', 'Centre-Forward', '1990-08-12', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(717, 30, 'Éver Banega', 'Central Midfield', '1988-06-29', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(718, 30, 'Luis Muriel', 'Centre-Forward', '1991-04-16', 'Colombia', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(719, 30, 'Simon Kjaer', 'Centre-Back', '1989-03-26', 'Denmark', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(720, 30, 'Lionel Carole', 'Left-Back', '1991-04-12', 'France', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(721, 30, 'Johannes Geis', 'Defensive Midfield', '1993-08-17', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(722, 30, 'Guido Pizarro', 'Defensive Midfield', '1990-02-26', 'Argentina', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(723, 30, 'Borja Lasso', 'Left Wing', '1994-01-01', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(724, 31, 'Hugo Lloris', 'Keeper', '1986-12-26', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(725, 31, 'Michel Vorm', 'Keeper', '1983-10-20', 'Netherlands', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(726, 31, 'Toby Alderweireld', 'Centre-Back', '1989-03-02', 'Belgium', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(727, 31, 'Jan Vertonghen', 'Centre-Back', '1987-04-24', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(728, 31, 'Danny Rose', 'Left-Back', '1990-07-02', 'England', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(729, 31, 'Ben Davies', 'Left-Back', '1993-04-24', 'Wales', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(730, 31, 'Kieran Trippier', 'Right-Back', '1990-09-19', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(731, 31, 'Eric Dier', 'Defensive Midfield', '1994-01-15', 'England', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(732, 31, 'Victor Wanyama', 'Defensive Midfield', '1991-06-25', 'Kenya', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(733, 31, 'Dele Alli', 'Attacking Midfield', '1996-04-11', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(734, 31, 'Moussa Sissoko', 'Central Midfield', '1989-08-16', 'France', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(735, 31, 'Mousa Dembélé', 'Central Midfield', '1987-07-16', 'Belgium', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(736, 31, 'Harry Winks', 'Central Midfield', '1996-02-02', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(737, 31, 'Christian Eriksen', 'Attacking Midfield', '1992-02-14', 'Denmark', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(738, 31, 'Heung-Min Son', 'Left Wing', '1992-07-08', 'Korea, South', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(739, 31, 'Georges-Kevin NKoudou', 'Left Wing', '1995-02-13', 'France', '2021-06-30');

INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(740, 31, 'Érik Lamela', 'Right Wing', '1992-03-04', 'Argentina', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(741, 31, 'Harry Kane', 'Centre-Forward', '1993-07-28', 'England', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(742, 31, 'Fernando Llorente', 'Centre-Forward', '1985-02-26', 'Spain', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(743, 31, 'Davinson Sánchez', 'Centre-Back', '1996-06-12', 'Colombia', '2023-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(744, 31, 'Serge Aurier', 'Right-Back', '1992-12-24', 'Cote dIvoire', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(745, 31, 'Paulo Gazzaniga', 'Keeper', '1992-01-02', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(746, 31, 'Juan Foyth', 'Centre-Back', '1998-01-12', 'Argentina', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(747, 31, 'Kyle Walker-Peters', 'Right-Back', '1997-04-13', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(748, 32, 'Roman Bürki', 'Keeper', '1990-11-14', 'Switzerland', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(749, 32, 'Roman Weidenfeller', 'Keeper', '1980-08-06', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(750, 32, 'Sokratis', 'Centre-Back', '1988-06-09', 'Greece', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(751, 32, 'Marc Bartra', 'Centre-Back', '1991-01-15', 'Spain', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(752, 32, 'Raphaël Guerreiro', 'Left-Back', '1993-12-22', 'Portugal', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(753, 32, 'Marcel Schmelzer', 'Left-Back', '1988-01-22', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(754, 32, 'Lukasz Piszczek', 'Right-Back', '1985-06-03', 'Poland', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(755, 32, 'Erik Durm', 'Right-Back', '1992-05-12', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(756, 32, 'Julian Weigl', 'Defensive Midfield', '1995-09-08', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(757, 32, 'Gonzalo Castro', 'Central Midfield', '1987-06-11', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(758, 32, 'Sebastian Rode', 'Central Midfield', '1990-10-11', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(759, 32, 'Nuri Sahin', 'Defensive Midfield', '1988-09-05', 'Turkey', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(760, 32, 'Mario Götze', 'Attacking Midfield', '1992-06-03', 'Germany', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(761, 32, 'Shinji Kagawa', 'Attacking Midfield', '1989-03-17', 'Japan', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(762, 32, 'Marco Reus', 'Left Wing', '1989-05-31', 'Germany', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(763, 32, 'André Schürrle', 'Left Wing', '1990-11-06', 'Germany', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(764, 32, 'Christian Pulisic', 'Right Wing', '1998-09-18', 'United States', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(765, 32, 'Pierre-Emerick Aubameyang', 'Centre-Forward', '1989-06-18', 'Gabon', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(766, 32, 'Alexander Isak', 'Centre-Forward', '1999-09-21', 'Sweden', '2019-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(767, 32, 'Neven Subotic', 'Centre-Back', '1988-12-10', 'Serbia', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(768, 32, 'Mahmoud Dahoud', 'Central Midfield', '1996-01-01', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(769, 32, 'Ömer Toprak', 'Centre-Back', '1989-07-21', 'Turkey', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(770, 32, 'Maximilian Philipp', 'Secondary Striker', '1994-03-01', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(771, 32, 'Jeremy Toljan', 'Left-Back', '1994-08-08', 'Germany', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(772, 32, 'Dominik Reimann', 'Keeper', '1997-06-18', 'Germany', '2018-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(773, 32, 'Dan-Axel Zagadou', 'Centre-Back', '1999-06-03', 'France', '2022-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(774, 32, 'Jadon Sancho', 'Left Wing', '2000-03-25', 'England', '2020-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(775, 32, 'Jacob Bruun Larsen', 'Left Wing', '1998-09-19', 'Denmark', '2021-06-30');
INSERT INTO `tablaplayers` (`idPlayer`, `equipoId`, `name`, `position`, `dateOfBirth`, `nationality`, `contractUntil`) VALUES(776, 32, 'Andrey Yarmolenko', 'Right Wing', '1989-10-23', 'Ukraine', '2021-06-30');

INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(1, '2017-09-12T18:45:00Z', 'FINISHED', '1', 13, 14, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(2, '2017-09-12T18:45:00Z', 'FINISHED', '1', 9, 10, '6 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(3, '2017-09-12T18:45:00Z', 'FINISHED', '1', 7, 8, '0 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(4, '2017-09-12T18:45:00Z', 'FINISHED', '1', 5, 6, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(5, '2017-09-12T18:45:00Z', 'FINISHED', '1', 3, 4, '2 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(6, '2017-09-12T18:45:00Z', 'FINISHED', '1', 11, 12, '0 a 5');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(7, '2017-09-12T18:45:00Z', 'FINISHED', '1', 15, 16, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(8, '2017-09-12T18:45:00Z', 'FINISHED', '1', 1, 2, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(9, '2017-09-13T18:45:00Z', 'FINISHED', '1', 17, 18, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(10, '2017-09-13T18:45:00Z', 'FINISHED', '1', 19, 20, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(11, '2017-09-13T18:45:00Z', 'FINISHED', '1', 25, 26, '0 a 4');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(12, '2017-09-13T18:45:00Z', 'FINISHED', '1', 23, 24, '2 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(13, '2017-09-13T18:45:00Z', 'FINISHED', '1', 21, 22, '1 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(14, '2017-09-13T18:45:00Z', 'FINISHED', '1', 31, 32, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(15, '2017-09-13T18:45:00Z', 'FINISHED', '1', 27, 28, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(16, '2017-09-13T18:45:00Z', 'FINISHED', '1', 29, 30, '2 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(17, '2017-09-26T18:45:00Z', 'FINISHED', '2', 30, 27, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(18, '2017-09-26T18:45:00Z', 'FINISHED', '2', 24, 25, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(19, '2017-09-26T18:45:00Z', 'FINISHED', '2', 20, 21, '0 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(20, '2017-09-26T18:45:00Z', 'FINISHED', '2', 22, 19, '2 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(21, '2017-09-26T18:45:00Z', 'FINISHED', '2', 28, 29, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(22, '2017-09-26T18:45:00Z', 'FINISHED', '2', 18, 31, '0 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(23, '2017-09-26T18:45:00Z', 'FINISHED', '2', 26, 23, '2 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(24, '2017-09-26T18:45:00Z', 'FINISHED', '2', 32, 17, '1 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(25, '2017-09-27T16:00:00Z', 'FINISHED', '2', 10, 7, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(26, '2017-09-27T18:45:00Z', 'FINISHED', '2', 12, 13, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(27, '2017-09-27T18:45:00Z', 'FINISHED', '2', 16, 1, '5 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(28, '2017-09-27T18:45:00Z', 'FINISHED', '2', 2, 15, '1 a 4');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(29, '2017-09-27T18:45:00Z', 'FINISHED', '2', 8, 9, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(30, '2017-09-27T18:45:00Z', 'FINISHED', '2', 6, 3, '2 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(31, '2017-09-27T18:45:00Z', 'FINISHED', '2', 14, 11, '0 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(32, '2017-09-27T18:45:00Z', 'FINISHED', '2', 4, 5, '0 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(33, '2017-10-17T18:45:00Z', 'FINISHED', '3', 26, 24, '2 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(34, '2017-10-17T18:45:00Z', 'FINISHED', '3', 25, 23, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(35, '2017-10-17T18:45:00Z', 'FINISHED', '3', 28, 30, '5 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(36, '2017-10-17T18:45:00Z', 'FINISHED', '3', 27, 29, '0 a 7');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(37, '2017-10-17T18:45:00Z', 'FINISHED', '3', 18, 32, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(38, '2017-10-17T18:45:00Z', 'FINISHED', '3', 17, 31, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(39, '2017-10-17T18:45:00Z', 'FINISHED', '3', 20, 22, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(40, '2017-10-17T18:45:00Z', 'FINISHED', '3', 19, 21, '3 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(41, '2017-10-18T16:00:00Z', 'FINISHED', '3', 10, 8, '0 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(42, '2017-10-18T18:45:00Z', 'FINISHED', '3', 2, 16, '0 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(43, '2017-10-18T18:45:00Z', 'FINISHED', '3', 14, 12, '0 a 4');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(44, '2017-10-18T18:45:00Z', 'FINISHED', '3', 13, 11, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(45, '2017-10-18T18:45:00Z', 'FINISHED', '3', 9, 7, '3 a 3');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(46, '2017-10-18T18:45:00Z', 'FINISHED', '3', 6, 4, '2 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(47, '2017-10-18T18:45:00Z', 'FINISHED', '3', 5, 3, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(48, '2017-10-18T18:45:00Z', 'FINISHED', '3', 1, 15, '0 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(49, '2017-10-31T19:45:00Z', 'FINISHED', '4', 8, 10, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(50, '2017-10-31T19:45:00Z', 'FINISHED', '4', 16, 2, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(51, '2017-10-31T20:45:00Z', 'FINISHED', '4', 11, 13, '1 a 2');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(52, '2017-10-31T20:45:00Z', 'FINISHED', '4', 15, 1, '2 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(53, '2017-10-31T20:45:00Z', 'FINISHED', '4', 7, 9, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(54, '2017-10-31T20:45:00Z', 'FINISHED', '4', 3, 5, '0 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(55, '2017-10-31T20:45:00Z', 'FINISHED', '4', 4, 6, '1 a 1');

INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(56, '2017-10-31T20:45:00Z', 'FINISHED', '4', 12, 14, '5 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(57, '2017-11-01T18:00:00Z', 'FINISHED', '4', 22, 20, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(58, '2017-11-01T20:45:00Z', 'FINISHED', '4', 30, 28, '2 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(59, '2017-11-01T20:45:00Z', 'FINISHED', '4', 21, 19, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(60, '2017-11-01T20:45:00Z', 'FINISHED', '4', 23, 25, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(61, '2017-11-01T20:45:00Z', 'FINISHED', '4', 24, 26, '2 a 4');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(62, '2017-11-01T20:45:00Z', 'FINISHED', '4', 32, 18, '1 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(63, '2017-11-01T20:45:00Z', 'FINISHED', '4', 31, 17, '3 a 1');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(64, '2017-11-01T20:45:00Z', 'FINISHED', '4', 29, 27, '3 a 0');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(65, '2017-11-21T17:00:00Z', 'SCHEDULED', '5', 22, 21, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(66, '2017-11-21T17:00:00Z', 'SCHEDULED', '5', 28, 27, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(67, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 30, 29, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(68, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 26, 25, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(69, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 32, 31, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(70, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 18, 17, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(71, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 24, 23, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(72, '2017-11-21T19:45:00Z', 'SCHEDULED', '5', 20, 19, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(73, '2017-11-22T17:00:00Z', 'SCHEDULED', '5', 10, 9, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(74, '2017-11-22T17:00:00Z', 'SCHEDULED', '5', 2, 1, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(75, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 16, 15, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(76, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 6, 5, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(77, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 4, 3, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(78, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 12, 11, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(79, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 14, 13, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(80, '2017-11-22T19:45:00Z', 'SCHEDULED', '5', 8, 7, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(81, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 11, 14, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(82, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 7, 10, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(83, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 15, 2, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(84, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 5, 4, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(85, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 13, 12, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(86, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 9, 8, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(87, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 1, 16, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(88, '2017-12-05T19:45:00Z', 'SCHEDULED', '6', 3, 6, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(89, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 21, 20, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(90, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 31, 18, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(91, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 17, 32, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(92, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 19, 22, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(93, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 23, 26, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(94, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 25, 24, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(95, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 27, 30, 'null a null');
INSERT INTO `tablafixture` (`idFix`, `date`, `status`, `matchday`, `homeTeamNameId`, `awayTeamNameId`, `result`) VALUES(96, '2017-12-06T19:45:00Z', 'SCHEDULED', '6', 29, 28, 'null a null');

INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(1, 'A', 1, '1', '10', '-9');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(2, 'A', 2, '5', '8', '-3');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(3, 'A', 15, '10', '1', '9');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(4, 'A', 16, '8', '5', '3');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(5, 'B', 11, '4', '10', '-6');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(6, 'B', 12, '17', '0', '17');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(7, 'B', 13, '8', '4', '4');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(8, 'B', 14, '0', '15', '-15');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(9, 'C', 7, '8', '4', '4');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(10, 'C', 8, '2', '3', '-1');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(11, 'C', 9, '11', '7', '4');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(12, 'C', 10, '2', '9', '-7');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(13, 'D', 3, '3', '8', '-5');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(14, 'D', 4, '5', '6', '-1');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(15, 'D', 5, '7', '1', '6');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(16, 'D', 6, '5', '5', '0');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(17, 'E', 27, '1', '14', '-13');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(18, 'E', 28, '8', '5', '3');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(19, 'E', 29, '13', '3', '10');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(20, 'E', 30, '8', '8', '0');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(21, 'F', 23, '7', '5', '2');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(22, 'F', 24, '7', '9', '-2');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(23, 'F', 25, '3', '12', '-9');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(24, 'F', 26, '12', '3', '9');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(25, 'G', 19, '5', '8', '-3');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(26, 'G', 20, '3', '7', '-4');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(27, 'G', 21, '9', '7', '2');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(28, 'G', 22, '8', '3', '5');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(29, 'H', 17, '8', '5', '3');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(30, 'H', 18, '2', '8', '-6');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(31, 'H', 31, '10', '3', '7');
INSERT INTO `tablatable` (`idTable`, `Group`, `teamId`, `goals`, `goalsAgainst`, `goalDifference`) VALUES(32, 'H', 32, '4', '8', '-4');


ALTER TABLE `tablaequipo`
  ADD PRIMARY KEY (`idEquipo`),
  ADD KEY `fixtureId` (`tableId`);

--
-- Indices de la tabla `tablafixture`
--
ALTER TABLE `tablafixture`
  ADD PRIMARY KEY (`idFix`),
  ADD KEY `teamId` (`homeTeamNameId`,`awayTeamNameId`),
  ADD KEY `awayTeamNameId` (`awayTeamNameId`);

--
-- Indices de la tabla `tablaplayers`
--
ALTER TABLE `tablaplayers`
  ADD PRIMARY KEY (`idPlayer`),
  ADD KEY `equipoId` (`equipoId`);

--
-- Indices de la tabla `tablatable`
--
ALTER TABLE `tablatable`
  ADD PRIMARY KEY (`idTable`),
  ADD KEY `teamId` (`teamId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tablaequipo`
--
ALTER TABLE `tablaequipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `tablafixture`
--
ALTER TABLE `tablafixture`
  MODIFY `idFix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT de la tabla `tablaplayers`
--
ALTER TABLE `tablaplayers`
  MODIFY `idPlayer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;
--
-- AUTO_INCREMENT de la tabla `tablatable`
--
ALTER TABLE `tablatable`
  MODIFY `idTable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tablaequipo`
--
ALTER TABLE `tablaequipo`
  ADD CONSTRAINT `tablaequipo_ibfk_1` FOREIGN KEY (`tableId`) REFERENCES `tablatable` (`idTable`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `tablafixture`
--
ALTER TABLE `tablafixture`
  ADD CONSTRAINT `tablafixture_ibfk_1` FOREIGN KEY (`homeTeamNameId`) REFERENCES `tablaequipo` (`idEquipo`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tablafixture_ibfk_2` FOREIGN KEY (`awayTeamNameId`) REFERENCES `tablaequipo` (`idEquipo`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `tablaplayers`
--
ALTER TABLE `tablaplayers`
  ADD CONSTRAINT `tablaplayers_ibfk_1` FOREIGN KEY (`equipoId`) REFERENCES `tablaequipo` (`idEquipo`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `tablatable`
--
ALTER TABLE `tablatable`
  ADD CONSTRAINT `tablatable_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `tablaequipo` (`idEquipo`) ON DELETE SET NULL ON UPDATE SET NULL;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
