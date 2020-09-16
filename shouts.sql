-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Wrz 2020, 12:22
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shoutit`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Brad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean facilisis ullamcorper', '11:23:00'),
(2, 'John', 'Proin finibus, quam a tincidunt eleifend, tortor nibh vehicula urna, vel semper ipsum tellus eu erat.', '11:24:00'),
(3, 'Sam', 'Pellentesque id turpis elit. Vivamus ac massa justo. Curabitur vulputate nibh nulla, ut scelerisque neque tincidunt vel.', '11:30:00'),
(4, 'Jen', 'Quisque ut mi id turpis sagittis ultrices nec vitae nisl. Suspendisse potenti.', '11:50:00'),
(9, 'Oliwier', 'testowy message do bazy', '09:58:32');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
