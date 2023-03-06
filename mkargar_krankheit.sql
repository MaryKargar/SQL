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
-- Tabellenstruktur für Tabelle `mkargar_krankheit`
--

CREATE TABLE `mkargar_krankheit` (
  `id_krankheit` int(11) NOT NULL,
  `bezeichnung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mkargar_krankheit`
--

INSERT INTO `mkargar_krankheit` (`id_krankheit`, `bezeichnung`) VALUES
(1, 'Herzkreislauferkrankungen'),
(2, 'Erkrankungen des Atmungssystems'),
(3, 'Diabetes mellitus'),
(4, 'Krebserkrankungen'),
(5, 'Nierenerkrankungen'),
(6, 'Lebererkrankungen'),
(7, 'Adipositas');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mkargar_krankheit`
--
ALTER TABLE `mkargar_krankheit`
  ADD PRIMARY KEY (`id_krankheit`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `mkargar_krankheit`
--
ALTER TABLE `mkargar_krankheit`
  MODIFY `id_krankheit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
