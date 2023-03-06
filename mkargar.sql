

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
-- Tabellenstruktur für Tabelle `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `username` varchar(24) CHARACTER SET utf8 NOT NULL,
  `password` varchar(24) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(2, 'Administrator', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Forename` varchar(50) NOT NULL,
  `Surename` varchar(50) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `employees`
--

INSERT INTO `employees` (`ID`, `Email`, `Forename`, `Surename`, `Birthday`, `Registered`) VALUES
(6, 'alex@kargar.gmail.com', 'kargar', 'Alex', '2019-02-12', '2020-10-22 08:48:18'),
(100, 'alex@hofer.gmail.com', 'Alexander', 'Hofer', '2019-07-10', '2020-10-22 08:42:10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Fahrzeugetype`
--

CREATE TABLE `Fahrzeugetype` (
  `Fahrzeugmodel` int(11) NOT NULL,
  `fabrik` int(11) DEFAULT NULL,
  `art` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `middlename` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8 NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contactno` varchar(13) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `middlename`, `lastname`, `address`, `contactno`) VALUES
(1, 'Fgf', '', 'Fuur', 'Agyu', '654'),
(2, 'mkargar', '', 'kargar', 'djeiwj', '099'),
(3, 'test', '', 'test', 'test', '09119284346'),
(4, 'test2', NULL, 'test2', 'test2', '0333333'),
(5, 'test2', NULL, 'test2', 'test2', '6666'),
(6, 'test2', NULL, 'test2', 'test2', '000000'),
(7, 'test2', NULL, 'test2', 'test2', '2121212'),
(8, 'maryam', NULL, 'kargar', 'Österreich', '000000'),
(9, 'test2', NULL, 'test2', 'test2', '0333333'),
(10, 'Maryam', NULL, 'Kargar', 'Marisch', '0669123456'),
(11, 'janet', NULL, 'rm,', 'dasasd@hjkfh', '34'),
(12, 'janet', NULL, 'gfhkik', 'dasasd@hjkfh', '54643'),
(13, 'janet', NULL, 'gfhkik', 'dasasd@hjkfh', '54643'),
(14, 'janet', NULL, 'gfhkik', 'dasasd@hjkfh', '54643'),
(15, 'janet', NULL, 'gfhkik', 'dasasd@hjkfh', '54643'),
(16, 'm', NULL, 'kargar', 'test', '999999999'),
(17, 'Herbert', NULL, 'könig', 'wexstraSe', '0660');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `patient_1`
--

CREATE TABLE `patient_1` (
  `id` int(11) NOT NULL,
  `vorname` varchar(20) DEFAULT NULL,
  `nachname` varchar(20) DEFAULT NULL,
  `geburt` date DEFAULT NULL,
  `gewicht` double DEFAULT NULL,
  `telefonnummer` int(255) NOT NULL,
  `blutgruppe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `patient_1`
--

INSERT INTO `patient_1` (`id`, `vorname`, `nachname`, `geburt`, `gewicht`, `telefonnummer`, `blutgruppe`) VALUES
(2, 'Aidin', 'Ezzatabadi', '1985-04-09', 85, 660, 'B+'),
(3, 'Ailin', 'Ezzatabadi', '2015-01-01', 25, 676, 'AB+'),
(4, 'Ilian', 'Ezzatabadi', '2018-01-18', 25, 676, 'AB+'),
(5, 'Leyly', 'Jamshidi', '1975-01-26', 65, 660, 'A+'),
(6, 'Aida', 'Ezzatabadi', '2000-01-02', 60, 676, 'O-'),
(8, 'Azar', 'Ezzatabadi', '1980-10-13', 75, 660, 'O+'),
(9, 'Negin', 'Ezzatabadi', '1980-09-12', 60, 660, 'A-'),
(10, 'Cgyg', 'Ddgh', '2021-12-12', 200, 312467, 'A'),
(11, 'wre', 'rq', '2008-09-16', 500, 234452578, 'ab+');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pa_besitzt`
--

CREATE TABLE `pa_besitzt` (
  `id_besitzt` int(11) NOT NULL,
  `person_fid` int(11) DEFAULT NULL,
  `krankheit_fid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pa_krankheit`
--

CREATE TABLE `pa_krankheit` (
  `id_krankheit` int(11) NOT NULL,
  `bezeichnung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `pa_krankheit`
--

INSERT INTO `pa_krankheit` (`id_krankheit`, `bezeichnung`) VALUES
(1, 'Herzkreislauferkrankungen'),
(2, 'Erkrankungen des Atmungssystems'),
(3, 'Diabetes mellitus'),
(4, 'Krebserkrankungen'),
(5, 'Nierenerkrankungen'),
(6, 'Lebererkrankungen'),
(7, 'Adipositas');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pa_person`
--

CREATE TABLE `pa_person` (
  `id_person` int(11) NOT NULL,
  `svnr` varchar(10) DEFAULT NULL COMMENT 'Sozialversicherungsnummer',
  `vorname` varchar(30) DEFAULT NULL,
  `nachname` varchar(30) DEFAULT NULL,
  `geschlecht` varchar(1) DEFAULT NULL COMMENT 'w m k',
  `gewicht` decimal(5,2) DEFAULT NULL COMMENT 'Gewicht in kg',
  `staatsbuerger` date DEFAULT NULL COMMENT 'Datum ab wann Österr. Staatsbürger',
  `zv` tinyint(1) DEFAULT NULL COMMENT 'Zusatzversicherung 1:ja und 0:nein',
  `essen` int(1) DEFAULT NULL COMMENT 'Zahl von 0 bis 7 als Summe von : 2^0:Abendessen / 2^1:Mittagessen / 2^2:Frühstück'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `artikelnummer` int(11) NOT NULL,
  `bezeichnung` varchar(50) NOT NULL,
  `herstell` varchar(50) NOT NULL,
  `preis` int(11) NOT NULL,
  `beschreibung` varchar(1000) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`artikelnummer`, `bezeichnung`, `herstell`, `preis`, `beschreibung`, `img`) VALUES
(1, 'Hypnitic poisen', 'Dior', 97, 'Das ist besste Duft', 'dior1.jpg'),
(2, 'Crystal Briet', 'Versace', 120, 'Das ist besste Duft in die  welt', 'versace2.jpeg'),
(3, 'Alien', 'Mugler ', 79, 'Das ist sehr gute Duft', 'alien1.jpg'),
(4, 'Black orchid', 'Tom ford', 80, 'das ist Tolle Duft', 'tomford1.jpg'),
(5, 'Mon Guerlain', 'GUERLAIN', 159, 'das ist Gute Duft', 'guerlain1.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` varchar(11) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(1, 'Standard', '200', '1.jpg'),
(2, 'Superior', '240', '3.jpg'),
(3, 'Super Deluxe', '280', '4.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) DEFAULT NULL,
  `extra_bed` int(11) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `days` int(2) DEFAULT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time DEFAULT current_timestamp(),
  `checkout` date NOT NULL,
  `checkout_time` time DEFAULT current_timestamp(),
  `bill` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(2, 8, 2, 2, 2, 'Check Out', 2, '2021-12-15', '13:02:35', '2021-12-17', '21:35:48', '2080'),
(3, 4, 2, 5, 5, 'Check Out', 1, '2021-12-17', '13:10:34', '2021-12-18', '21:22:06', '4240'),
(4, 10, 1, 1, 1, 'Check Out', 4, '2021-12-16', '15:43:01', '2021-12-20', '21:33:04', '1600'),
(5, 11, 1, NULL, NULL, 'Pending', NULL, '2021-12-02', '23:49:51', '2021-12-29', '23:49:51', NULL),
(6, 12, 5, NULL, NULL, 'Pending', NULL, '2022-01-01', '08:30:33', '2022-01-07', '08:30:33', NULL),
(7, 12, 1, NULL, NULL, 'Pending', NULL, '2022-01-01', '08:31:35', '2022-01-06', '08:31:35', NULL),
(8, 12, 1, NULL, NULL, 'Pending', NULL, '2021-12-25', '11:55:33', '2021-12-31', '11:55:33', NULL),
(9, 16, 1, NULL, NULL, 'Pending', NULL, '2021-12-18', '08:17:59', '2021-12-19', '08:17:59', NULL),
(10, 17, 3, 1, 1, 'Check Out', 2, '2022-01-14', '11:58:46', '2022-01-16', '12:10:11', '1360');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`, `registered`) VALUES
(1, 'mkaragar@yahoo.com', '123456', 'mary', '2021-03-18 10:04:02'),
(2, 'mkaragar@yahoo.com', 'e93d055e0f2ffcaebdc8883876b9c961f6f200a7fa529956ca', 'mary', '2021-03-18 10:20:13'),
(3, 'max@yahoo.com', '3a8b2cbc0a5b9d257b18427d852874f90bcdefe4032ffdd9f2', 'max', '2021-03-18 10:20:47'),
(4, 'ab@gmail.com', 'd2e57ef419592ae9a349082a6bc7921fcfa88758dd277f1b6b', 'ab', '2021-03-26 19:44:00'),
(5, 'mm@gmail.com', '25a756edcf698f632adf97eded201655fefbb67a76f802a20a', 'mm', '2021-03-26 20:03:35'),
(6, 'hallo@gmail.com', '105c0de209b1133e8aac8b31ede385f934532e21ee7bc7a31c', 'Hallo', '2021-04-07 21:22:45'),
(7, 'hallo@gmail.com', 'd9e098947c07f05e35bb8b6862623f6c6cf83936182516213a', 'hallo', '2021-04-08 17:44:45'),
(8, 'mary_kargar@yahoo.com', 'cad2f5251c87356a4c2301780fb430421992d47aa7b5223736', 'mkargar', '2021-04-09 10:14:51'),
(9, 'aidin@yahoo.com', '19dfa972c803b4fe138fc3a2045b1bd85f2c2dd39b75d6aa75', 'Aidin', '2021-04-10 19:14:30'),
(10, 'a@a.com', 'b9740f1400a24c7ccc85d9f95e1b6ff45651f43588f252e9db', 'a', '2021-04-12 08:11:28');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indizes für die Tabelle `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indizes für die Tabelle `Fahrzeugetype`
--
ALTER TABLE `Fahrzeugetype`
  ADD PRIMARY KEY (`Fahrzeugmodel`),
  ADD UNIQUE KEY `fabrik` (`fabrik`),
  ADD UNIQUE KEY `art` (`art`);

--
-- Indizes für die Tabelle `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indizes für die Tabelle `patient_1`
--
ALTER TABLE `patient_1`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `pa_besitzt`
--
ALTER TABLE `pa_besitzt`
  ADD PRIMARY KEY (`id_besitzt`),
  ADD KEY `krankheit_fid` (`krankheit_fid`),
  ADD KEY `patient_fid` (`person_fid`);

--
-- Indizes für die Tabelle `pa_krankheit`
--
ALTER TABLE `pa_krankheit`
  ADD PRIMARY KEY (`id_krankheit`);

--
-- Indizes für die Tabelle `pa_person`
--
ALTER TABLE `pa_person`
  ADD PRIMARY KEY (`id_person`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`artikelnummer`),
  ADD UNIQUE KEY `artikelnummer` (`artikelnummer`);

--
-- Indizes für die Tabelle `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indizes für die Tabelle `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT für Tabelle `Fahrzeugetype`
--
ALTER TABLE `Fahrzeugetype`
  MODIFY `Fahrzeugmodel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `patient_1`
--
ALTER TABLE `patient_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `pa_besitzt`
--
ALTER TABLE `pa_besitzt`
  MODIFY `id_besitzt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT für Tabelle `pa_krankheit`
--
ALTER TABLE `pa_krankheit`
  MODIFY `id_krankheit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `pa_person`
--
ALTER TABLE `pa_person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `artikelnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
