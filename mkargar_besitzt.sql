-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 28. Apr 2022 um 09:17
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
-- Tabellenstruktur für Tabelle `mkargar_besitzt`
--

CREATE TABLE `mkargar_besitzt` (
  `id_besitzt` int(11) NOT NULL,
  `person_fid` int(11) DEFAULT NULL,
  `krankheit_fid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mkargar_besitzt`
--
ALTER TABLE `mkargar_besitzt`
  ADD PRIMARY KEY (`id_besitzt`),
  ADD KEY `krankheit_fid` (`krankheit_fid`),
  ADD KEY `patient_fid` (`person_fid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `mkargar_besitzt`
--
ALTER TABLE `mkargar_besitzt`
  MODIFY `id_besitzt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `mkargar_besitzt`
--
ALTER TABLE `mkargar_besitzt`
  ADD CONSTRAINT `mkargar_besitzt_ibfk_1` FOREIGN KEY (`krankheit_fid`) REFERENCES `mkargar_krankheit` (`id_krankheit`),
  ADD CONSTRAINT `mkargar_besitzt_ibfk_2` FOREIGN KEY (`person_fid`) REFERENCES `mkargar_person` (`id_person`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
