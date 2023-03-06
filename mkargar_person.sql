-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 28. Apr 2022 um 09:18
-- Server-Version: 10.3.31-MariaDB-0+deb10u1
-- PHP-Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mkargar`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mkargar_person`
--

CREATE TABLE `mkargar_person` (
  `id_person` int(11) NOT NULL,
  `svnr` varchar(10) DEFAULT NULL COMMENT 'Sozialversicherungsnummer',
  `vorname` varchar(30) DEFAULT NULL,
  `nachname` varchar(30) DEFAULT NULL,
  `geschlecht` varchar(1) DEFAULT NULL COMMENT 'w m k',
  `gewicht` decimal(5,2) DEFAULT NULL COMMENT 'Gewicht in kg',
  `staatsbuerger` date DEFAULT NULL COMMENT 'Datum ab wann Österr. Staatsbürger',
  `zv` tinyint(1) DEFAULT NULL COMMENT 'Zusatzversicherung 1:ja und 0:nein',
  `essen` int(1) DEFAULT NULL COMMENT 'Zahl von 0 bis 7 als Summe von : 2^0:Abendessen / 2^1:Mittagessen / 2^2:Frühstück',
  `email` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mkargar_person`
--

INSERT INTO `mkargar_person` (`id_person`, `svnr`, `vorname`, `nachname`, `geschlecht`, `gewicht`, `staatsbuerger`, `zv`, `essen`, `email`, `telefon`) VALUES
(54, '6377070974', 'fateme', 'aghilina', 'k', '60.00', '2017-08-12', 0, 7, 'f@aghili.gmail.com', '123456'),
(55, '6377070972', 'fatemeh', 'aghilinaa', 'k', '60.00', '2017-08-12', 0, 7, 'f@aghili.gmail.com', '1234567'),
(56, '6377070988', 'Mary', 'Kargar', 'k', '60.00', '2017-08-12', 0, 7, 'ff@aghili.gmail.com', '122222'),
(57, '6377070980', 'Aidin', 'Ezzatabadi', 'k', '60.00', '2017-08-12', 0, 7, 'aidin_ezzatabadi@yahoo.com', '660813595'),
(58, '6377070987', 'esraa', 'GuelenTuran', 'w', '60.00', '2017-08-12', 1, 7, 'eguelen@student.tgm.ac.at', '660813595'),
(60, '7344010116', 'ailinnn', 'ezzat', 'w', '30.00', '2016-02-02', 0, 7, 'a@e.com', '660813595'),
(62, '6377070986', 'fateme', 'aghili', 'k', '60.00', '2017-08-12', 0, 7, 'f@aghili.gmail.com', '+49496608135966'),
(63, '6377070983', 'Aidin', 'Ezzatabadi', 'm', '60.00', '2017-08-12', 0, 7, 'aidin_ezzatabadi@yahoo.com', '06608135955');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mkargar_person`
--
ALTER TABLE `mkargar_person`
  ADD PRIMARY KEY (`id_person`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `mkargar_person`
--
ALTER TABLE `mkargar_person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
