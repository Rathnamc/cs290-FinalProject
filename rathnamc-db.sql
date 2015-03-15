-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2015 at 07:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rathnamc-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie_db`
--

CREATE TABLE IF NOT EXISTS `movie_db` (
  `rank` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `movieId` varchar(10) NOT NULL,
  `imdbRating` decimal(2,1) NOT NULL,
  `averageRating` int(11) DEFAULT NULL,
  `imdbUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_db`
--

INSERT INTO `movie_db` (`rank`, `title`, `year`, `movieId`, `imdbRating`, `averageRating`, `imdbUrl`) VALUES
(125, 'The Kid', 1921, 'tt0012349', '8.2', NULL, 'http://www.imdb.com/title/tt0012349'),
(135, 'The Gold Rush', 1925, 'tt0015864', '8.2', NULL, 'http://www.imdb.com/title/tt0015864'),
(87, 'Metropolis', 1927, 'tt0017136', '8.3', NULL, 'http://www.imdb.com/title/tt0017136'),
(119, 'The General', 1926, 'tt0017925', '8.2', NULL, 'http://www.imdb.com/title/tt0017925'),
(221, 'All Quiet on the Western Front', 1930, 'tt0020629', '8.0', NULL, 'http://www.imdb.com/title/tt0020629'),
(38, 'City Lights', 1931, 'tt0021749', '8.5', NULL, 'http://www.imdb.com/title/tt0021749'),
(50, 'M', 1931, 'tt0022100', '8.4', NULL, 'http://www.imdb.com/title/tt0022100'),
(138, 'It Happened One Night', 1934, 'tt0025316', '8.1', NULL, 'http://www.imdb.com/title/tt0025316'),
(42, 'Modern Times', 1936, 'tt0027977', '8.5', NULL, 'http://www.imdb.com/title/tt0027977'),
(243, 'Bringing Up Baby', 1938, 'tt0029947', '7.9', NULL, 'http://www.imdb.com/title/tt0029947'),
(156, 'Gone with the Wind', 1939, 'tt0031381', '8.1', NULL, 'http://www.imdb.com/title/tt0031381'),
(113, 'Mr. Smith Goes to Washington', 1939, 'tt0031679', '8.2', NULL, 'http://www.imdb.com/title/tt0031679'),
(148, 'The Wizard of Oz', 1939, 'tt0032138', '8.1', NULL, 'http://www.imdb.com/title/tt0032138'),
(153, 'The Grapes of Wrath', 1940, 'tt0032551', '8.1', NULL, 'http://www.imdb.com/title/tt0032551'),
(66, 'The Great Dictator', 1940, 'tt0032553', '8.4', NULL, 'http://www.imdb.com/title/tt0032553'),
(128, 'Rebecca', 1940, 'tt0032976', '8.2', NULL, 'http://www.imdb.com/title/tt0032976'),
(48, 'Citizen Kane', 1941, 'tt0033467', '8.4', NULL, 'http://www.imdb.com/title/tt0033467'),
(123, 'The Maltese Falcon', 1941, 'tt0033870', '8.2', NULL, 'http://www.imdb.com/title/tt0033870'),
(25, 'Casablanca', 1942, 'tt0034583', '8.6', NULL, 'http://www.imdb.com/title/tt0034583'),
(250, 'Arsenic and Old Lace', 1944, 'tt0036613', '7.9', NULL, 'http://www.imdb.com/title/tt0036613'),
(59, 'Double Indemnity', 1944, 'tt0036775', '8.4', NULL, 'http://www.imdb.com/title/tt0036775'),
(172, 'The Best Years of Our Lives', 1946, 'tt0036868', '8.1', NULL, 'http://www.imdb.com/title/tt0036868'),
(181, 'The Big Sleep', 1946, 'tt0038355', '8.1', NULL, 'http://www.imdb.com/title/tt0038355'),
(29, 'It&#x27;s a Wonderful Life', 1946, 'tt0038650', '8.6', NULL, 'http://www.imdb.com/title/tt0038650'),
(168, 'Notorious', 1946, 'tt0038787', '8.1', NULL, 'http://www.imdb.com/title/tt0038787'),
(91, 'Bicycle Thieves', 1948, 'tt0040522', '8.3', NULL, 'http://www.imdb.com/title/tt0040522'),
(211, 'Rope', 1948, 'tt0040746', '8.0', NULL, 'http://www.imdb.com/title/tt0040746'),
(76, 'The Treasure of the Sierra Madre', 1948, 'tt0040897', '8.3', NULL, 'http://www.imdb.com/title/tt0040897'),
(77, 'The Third Man', 1949, 'tt0041959', '8.3', NULL, 'http://www.imdb.com/title/tt0041959'),
(93, 'All About Eve', 1950, 'tt0042192', '8.3', NULL, 'http://www.imdb.com/title/tt0042192'),
(90, 'Rashomon', 1950, 'tt0042876', '8.3', NULL, 'http://www.imdb.com/title/tt0042876'),
(32, 'Sunset Blvd.', 1950, 'tt0043014', '8.5', NULL, 'http://www.imdb.com/title/tt0043014'),
(147, 'Strangers on a Train', 1951, 'tt0044079', '8.1', NULL, 'http://www.imdb.com/title/tt0044079'),
(229, 'A Streetcar Named Desire', 1951, 'tt0044081', '8.0', NULL, 'http://www.imdb.com/title/tt0044081'),
(160, 'High Noon', 1952, 'tt0044706', '8.1', NULL, 'http://www.imdb.com/title/tt0044706'),
(129, 'Ikiru', 1952, 'tt0044741', '8.2', NULL, 'http://www.imdb.com/title/tt0044741'),
(86, 'Singin&#x27; in the Rain', 1952, 'tt0045152', '8.3', NULL, 'http://www.imdb.com/title/tt0045152'),
(220, 'Roman Holiday', 1953, 'tt0046250', '8.0', NULL, 'http://www.imdb.com/title/tt0046250'),
(213, 'Stalag 17', 1953, 'tt0046359', '8.0', NULL, 'http://www.imdb.com/title/tt0046359'),
(139, 'Diabolique', 1955, 'tt0046911', '8.1', NULL, 'http://www.imdb.com/title/tt0046911'),
(166, 'Dial M for Murder', 1954, 'tt0046912', '8.1', NULL, 'http://www.imdb.com/title/tt0046912'),
(114, 'On the Waterfront', 1954, 'tt0047296', '8.2', NULL, 'http://www.imdb.com/title/tt0047296'),
(28, 'Rear Window', 1954, 'tt0047396', '8.6', NULL, 'http://www.imdb.com/title/tt0047396'),
(16, 'Seven Samurai', 1954, 'tt0047478', '8.7', NULL, 'http://www.imdb.com/title/tt0047478'),
(203, 'La Strada', 1954, 'tt0047528', '8.0', NULL, 'http://www.imdb.com/title/tt0047528'),
(178, 'The Night of the Hunter', 1955, 'tt0048424', '8.1', NULL, 'http://www.imdb.com/title/tt0048424'),
(194, 'The Killing', 1956, 'tt0049406', '8.0', NULL, 'http://www.imdb.com/title/tt0049406'),
(7, '12 Angry Men', 1957, 'tt0050083', '8.9', NULL, 'http://www.imdb.com/title/tt0050083'),
(104, 'The Bridge on the River Kwai', 1957, 'tt0050212', '8.3', NULL, 'http://www.imdb.com/title/tt0050212'),
(52, 'Paths of Glory', 1957, 'tt0050825', '8.4', NULL, 'http://www.imdb.com/title/tt0050825'),
(120, 'The Seventh Seal', 1957, 'tt0050976', '8.2', NULL, 'http://www.imdb.com/title/tt0050976'),
(126, 'Wild Strawberries', 1957, 'tt0050986', '8.2', NULL, 'http://www.imdb.com/title/tt0050986'),
(97, 'Witness for the Prosecution', 1957, 'tt0051201', '8.3', NULL, 'http://www.imdb.com/title/tt0051201'),
(134, 'Touch of Evil', 1958, 'tt0052311', '8.2', NULL, 'http://www.imdb.com/title/tt0052311'),
(53, 'Vertigo', 1958, 'tt0052357', '8.4', NULL, 'http://www.imdb.com/title/tt0052357'),
(202, 'Anatomy of a Murder', 1959, 'tt0052561', '8.0', NULL, 'http://www.imdb.com/title/tt0052561'),
(177, 'Ben-Hur', 1959, 'tt0052618', '8.1', NULL, 'http://www.imdb.com/title/tt0052618'),
(44, 'North by Northwest', 1959, 'tt0053125', '8.5', NULL, 'http://www.imdb.com/title/tt0053125'),
(184, 'The 400 Blows', 1959, 'tt0053198', '8.1', NULL, 'http://www.imdb.com/title/tt0053198'),
(89, 'Some Like It Hot', 1959, 'tt0053291', '8.3', NULL, 'http://www.imdb.com/title/tt0053291'),
(99, 'The Apartment', 1960, 'tt0053604', '8.3', NULL, 'http://www.imdb.com/title/tt0053604'),
(30, 'Psycho', 1960, 'tt0054215', '8.6', NULL, 'http://www.imdb.com/title/tt0054215'),
(199, 'The Hustler', 1961, 'tt0054997', '8.0', NULL, 'http://www.imdb.com/title/tt0054997'),
(146, 'Judgment at Nuremberg', 1961, 'tt0055031', '8.1', NULL, 'http://www.imdb.com/title/tt0055031'),
(106, 'Yojimbo', 1961, 'tt0055630', '8.3', NULL, 'http://www.imdb.com/title/tt0055630'),
(70, 'Lawrence of Arabia', 1962, 'tt0056172', '8.4', NULL, 'http://www.imdb.com/title/tt0056172'),
(201, 'The Man Who Shot Liberty Valance', 1962, 'tt0056217', '8.0', NULL, 'http://www.imdb.com/title/tt0056217'),
(204, 'The Manchurian Candidate', 1962, 'tt0056218', '8.0', NULL, 'http://www.imdb.com/title/tt0056218'),
(71, 'To Kill a Mockingbird', 1962, 'tt0056592', '8.4', NULL, 'http://www.imdb.com/title/tt0056592'),
(206, '8&#xBD;', 1963, 'tt0056801', '8.0', NULL, 'http://www.imdb.com/title/tt0056801'),
(40, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 1964, 'tt0057012', '8.5', NULL, 'http://www.imdb.com/title/tt0057012'),
(115, 'The Great Escape', 1963, 'tt0057115', '8.2', NULL, 'http://www.imdb.com/title/tt0057115'),
(230, 'A Fistful of Dollars', 1964, 'tt0058461', '8.0', NULL, 'http://www.imdb.com/title/tt0058461'),
(111, 'For a Few Dollars More', 1965, 'tt0059578', '8.2', NULL, 'http://www.imdb.com/title/tt0059578'),
(5, 'The Good, the Bad and the Ugly', 1966, 'tt0060196', '8.9', NULL, 'http://www.imdb.com/title/tt0060196'),
(196, 'Persona', 1966, 'tt0060827', '8.0', NULL, 'http://www.imdb.com/title/tt0060827'),
(200, 'Who&#x27;s Afraid of Virginia Woolf?', 1966, 'tt0061184', '8.0', NULL, 'http://www.imdb.com/title/tt0061184'),
(137, 'Cool Hand Luke', 1967, 'tt0061512', '8.1', NULL, 'http://www.imdb.com/title/tt0061512'),
(195, 'The Graduate', 1967, 'tt0061722', '8.0', NULL, 'http://www.imdb.com/title/tt0061722'),
(249, 'In the Heat of the Night', 1967, 'tt0061811', '7.9', NULL, 'http://www.imdb.com/title/tt0061811'),
(96, '2001: A Space Odyssey', 1968, 'tt0062622', '8.3', NULL, 'http://www.imdb.com/title/tt0062622'),
(239, 'Rosemary&#x27;s Baby', 1968, 'tt0063522', '8.0', NULL, 'http://www.imdb.com/title/tt0063522'),
(149, 'Butch Cassidy and the Sundance Kid', 1969, 'tt0064115', '8.1', NULL, 'http://www.imdb.com/title/tt0064115'),
(23, 'Once Upon a Time in the West', 1968, 'tt0064116', '8.6', NULL, 'http://www.imdb.com/title/tt0064116'),
(215, 'The Wild Bunch', 1969, 'tt0065214', '8.0', NULL, 'http://www.imdb.com/title/tt0065214'),
(68, 'A Clockwork Orange', 1971, 'tt0066921', '8.4', NULL, 'http://www.imdb.com/title/tt0066921'),
(2, 'The Godfather', 1972, 'tt0068646', '9.2', NULL, 'http://www.imdb.com/title/tt0068646'),
(224, 'Sleuth', 1972, 'tt0069281', '8.0', NULL, 'http://www.imdb.com/title/tt0069281'),
(207, 'The Exorcist', 1973, 'tt0070047', '8.0', NULL, 'http://www.imdb.com/title/tt0070047'),
(248, 'Papillon', 1973, 'tt0070511', '7.9', NULL, 'http://www.imdb.com/title/tt0070511'),
(98, 'The Sting', 1973, 'tt0070735', '8.3', NULL, 'http://www.imdb.com/title/tt0070735'),
(88, 'Chinatown', 1974, 'tt0071315', '8.3', NULL, 'http://www.imdb.com/title/tt0071315'),
(3, 'The Godfather: Part II', 1974, 'tt0071562', '9.0', NULL, 'http://www.imdb.com/title/tt0071562'),
(94, 'Monty Python and the Holy Grail', 1975, 'tt0071853', '8.3', NULL, 'http://www.imdb.com/title/tt0071853'),
(214, 'Barry Lyndon', 1975, 'tt0072684', '8.0', NULL, 'http://www.imdb.com/title/tt0072684'),
(187, 'Dog Day Afternoon', 1975, 'tt0072890', '8.0', NULL, 'http://www.imdb.com/title/tt0072890'),
(145, 'Jaws', 1975, 'tt0073195', '8.1', NULL, 'http://www.imdb.com/title/tt0073195'),
(13, 'One Flew Over the Cuckoo&#x27;s Nest', 1975, 'tt0073486', '8.7', NULL, 'http://www.imdb.com/title/tt0073486'),
(173, 'Network', 1976, 'tt0074958', '8.1', NULL, 'http://www.imdb.com/title/tt0074958'),
(205, 'Rocky', 1976, 'tt0075148', '8.0', NULL, 'http://www.imdb.com/title/tt0075148'),
(58, 'Taxi Driver', 1976, 'tt0075314', '8.4', NULL, 'http://www.imdb.com/title/tt0075314'),
(158, 'Annie Hall', 1977, 'tt0075686', '8.1', NULL, 'http://www.imdb.com/title/tt0075686'),
(17, 'Star Wars', 1977, 'tt0076759', '8.7', NULL, 'http://www.imdb.com/title/tt0076759'),
(136, 'The Deer Hunter', 1978, 'tt0077416', '8.2', NULL, 'http://www.imdb.com/title/tt0077416'),
(41, 'Alien', 1979, 'tt0078748', '8.5', NULL, 'http://www.imdb.com/title/tt0078748'),
(35, 'Apocalypse Now', 1979, 'tt0078788', '8.5', NULL, 'http://www.imdb.com/title/tt0078788'),
(171, 'Life of Brian', 1979, 'tt0079470', '8.1', NULL, 'http://www.imdb.com/title/tt0079470'),
(226, 'Stalker', 1979, 'tt0079944', '8.0', NULL, 'http://www.imdb.com/title/tt0079944'),
(122, 'The Elephant Man', 1980, 'tt0080678', '8.2', NULL, 'http://www.imdb.com/title/tt0080678'),
(11, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 'tt0080684', '8.8', NULL, 'http://www.imdb.com/title/tt0080684'),
(103, 'Raging Bull', 1980, 'tt0081398', '8.3', NULL, 'http://www.imdb.com/title/tt0081398'),
(49, 'The Shining', 1980, 'tt0081505', '8.4', NULL, 'http://www.imdb.com/title/tt0081505'),
(73, 'Das Boot', 1981, 'tt0082096', '8.4', NULL, 'http://www.imdb.com/title/tt0082096'),
(27, 'Raiders of the Lost Ark', 1981, 'tt0082971', '8.6', NULL, 'http://www.imdb.com/title/tt0082971'),
(124, 'Blade Runner', 1982, 'tt0083658', '8.2', NULL, 'http://www.imdb.com/title/tt0083658'),
(210, 'Fanny and Alexander', 1982, 'tt0083922', '8.0', NULL, 'http://www.imdb.com/title/tt0083922'),
(190, 'Gandhi', 1982, 'tt0083987', '8.0', NULL, 'http://www.imdb.com/title/tt0083987'),
(157, 'The Thing', 1982, 'tt0084787', '8.1', NULL, 'http://www.imdb.com/title/tt0084787'),
(80, 'Star Wars: Episode VI - Return of the Jedi', 1983, 'tt0086190', '8.3', NULL, 'http://www.imdb.com/title/tt0086190'),
(127, 'Scarface', 1983, 'tt0086250', '8.2', NULL, 'http://www.imdb.com/title/tt0086250'),
(95, 'Amadeus', 1984, 'tt0086879', '8.3', NULL, 'http://www.imdb.com/title/tt0086879'),
(240, 'Nausica&#xE4; of the Valley of the Wind', 1984, 'tt0087544', '8.0', NULL, 'http://www.imdb.com/title/tt0087544'),
(78, 'Once Upon a Time in America', 1984, 'tt0087843', '8.3', NULL, 'http://www.imdb.com/title/tt0087843'),
(174, 'The Terminator', 1984, 'tt0088247', '8.1', NULL, 'http://www.imdb.com/title/tt0088247'),
(45, 'Back to the Future', 1985, 'tt0088763', '8.5', NULL, 'http://www.imdb.com/title/tt0088763'),
(132, 'Ran', 1985, 'tt0089881', '8.2', NULL, 'http://www.imdb.com/title/tt0089881'),
(57, 'Aliens', 1986, 'tt0090605', '8.4', NULL, 'http://www.imdb.com/title/tt0090605'),
(151, 'Platoon', 1986, 'tt0091763', '8.1', NULL, 'http://www.imdb.com/title/tt0091763'),
(180, 'Stand by Me', 1986, 'tt0092005', '8.1', NULL, 'http://www.imdb.com/title/tt0092005'),
(82, 'Full Metal Jacket', 1987, 'tt0093058', '8.3', NULL, 'http://www.imdb.com/title/tt0093058'),
(198, 'The Princess Bride', 1987, 'tt0093779', '8.0', NULL, 'http://www.imdb.com/title/tt0093779'),
(105, 'Die Hard', 1988, 'tt0095016', '8.3', NULL, 'http://www.imdb.com/title/tt0095016'),
(101, 'Grave of the Fireflies', 1988, 'tt0095327', '8.3', NULL, 'http://www.imdb.com/title/tt0095327'),
(74, 'Cinema Paradiso', 1988, 'tt0095765', '8.3', NULL, 'http://www.imdb.com/title/tt0095765'),
(236, 'Rain Man', 1988, 'tt0095953', '8.0', NULL, 'http://www.imdb.com/title/tt0095953'),
(164, 'My Neighbor Totoro', 1988, 'tt0096283', '8.1', NULL, 'http://www.imdb.com/title/tt0096283'),
(102, 'Indiana Jones and the Last Crusade', 1989, 'tt0097576', '8.3', NULL, 'http://www.imdb.com/title/tt0097576'),
(14, 'Goodfellas', 1990, 'tt0099685', '8.7', NULL, 'http://www.imdb.com/title/tt0099685'),
(242, 'Beauty and the Beast', 1991, 'tt0101414', '7.9', NULL, 'http://www.imdb.com/title/tt0101414'),
(22, 'The Silence of the Lambs', 1991, 'tt0102926', '8.6', NULL, 'http://www.imdb.com/title/tt0102926'),
(34, 'Terminator 2: Judgment Day', 1991, 'tt0103064', '8.5', NULL, 'http://www.imdb.com/title/tt0103064'),
(72, 'Reservoir Dogs', 1992, 'tt0105236', '8.4', NULL, 'http://www.imdb.com/title/tt0105236'),
(100, 'Unforgiven', 1992, 'tt0105695', '8.3', NULL, 'http://www.imdb.com/title/tt0105695'),
(183, 'Groundhog Day', 1993, 'tt0107048', '8.1', NULL, 'http://www.imdb.com/title/tt0107048'),
(209, 'In the Name of the Father', 1993, 'tt0107207', '8.0', NULL, 'http://www.imdb.com/title/tt0107207'),
(225, 'Jurassic Park', 1993, 'tt0107290', '8.0', NULL, 'http://www.imdb.com/title/tt0107290'),
(8, 'Schindler&#x27;s List', 1993, 'tt0108052', '8.9', NULL, 'http://www.imdb.com/title/tt0108052'),
(18, 'Forrest Gump', 1994, 'tt0109830', '8.7', NULL, 'http://www.imdb.com/title/tt0109830'),
(75, 'The Lion King', 1994, 'tt0110357', '8.3', NULL, 'http://www.imdb.com/title/tt0110357'),
(31, 'L&#xE9;on: The Professional', 1994, 'tt0110413', '8.6', NULL, 'http://www.imdb.com/title/tt0110413'),
(4, 'Pulp Fiction', 1994, 'tt0110912', '8.9', NULL, 'http://www.imdb.com/title/tt0110912'),
(1, 'The Shawshank Redemption', 1994, 'tt0111161', '9.2', NULL, 'http://www.imdb.com/title/tt0111161'),
(247, 'Three Colors: Red', 1994, 'tt0111495', '7.9', NULL, 'http://www.imdb.com/title/tt0111495'),
(245, 'Before Sunrise', 1995, 'tt0112471', '7.9', NULL, 'http://www.imdb.com/title/tt0112471'),
(83, 'Braveheart', 1995, 'tt0112573', '8.3', NULL, 'http://www.imdb.com/title/tt0112573'),
(144, 'Casino', 1995, 'tt0112641', '8.1', NULL, 'http://www.imdb.com/title/tt0112641'),
(238, 'La Haine', 1995, 'tt0113247', '8.0', NULL, 'http://www.imdb.com/title/tt0113247'),
(121, 'Heat', 1995, 'tt0113277', '8.2', NULL, 'http://www.imdb.com/title/tt0113277'),
(24, 'Se7en', 1995, 'tt0114369', '8.6', NULL, 'http://www.imdb.com/title/tt0114369'),
(112, 'Toy Story', 1995, 'tt0114709', '8.2', NULL, 'http://www.imdb.com/title/tt0114709'),
(182, 'Twelve Monkeys', 1995, 'tt0114746', '8.1', NULL, 'http://www.imdb.com/title/tt0114746'),
(26, 'The Usual Suspects', 1995, 'tt0114814', '8.6', NULL, 'http://www.imdb.com/title/tt0114814'),
(130, 'Fargo', 1996, 'tt0116282', '8.2', NULL, 'http://www.imdb.com/title/tt0116282'),
(155, 'Trainspotting', 1996, 'tt0117951', '8.1', NULL, 'http://www.imdb.com/title/tt0117951'),
(133, 'The Big Lebowski', 1998, 'tt0118715', '8.2', NULL, 'http://www.imdb.com/title/tt0118715'),
(47, 'Life Is Beautiful', 1997, 'tt0118799', '8.4', NULL, 'http://www.imdb.com/title/tt0118799'),
(143, 'Good Will Hunting', 1997, 'tt0119217', '8.1', NULL, 'http://www.imdb.com/title/tt0119217'),
(84, 'L.A. Confidential', 1997, 'tt0119488', '8.3', NULL, 'http://www.imdb.com/title/tt0119488'),
(92, 'Princess Mononoke', 1997, 'tt0119698', '8.3', NULL, 'http://www.imdb.com/title/tt0119698'),
(217, 'The Truman Show', 1998, 'tt0120382', '8.0', NULL, 'http://www.imdb.com/title/tt0120382'),
(33, 'American History X', 1998, 'tt0120586', '8.5', NULL, 'http://www.imdb.com/title/tt0120586'),
(61, 'The Green Mile', 1999, 'tt0120689', '8.4', NULL, 'http://www.imdb.com/title/tt0120689'),
(140, 'Lock, Stock and Two Smoking Barrels', 1998, 'tt0120735', '8.1', NULL, 'http://www.imdb.com/title/tt0120735'),
(12, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'tt0120737', '8.8', NULL, 'http://www.imdb.com/title/tt0120737'),
(37, 'Saving Private Ryan', 1998, 'tt0120815', '8.5', NULL, 'http://www.imdb.com/title/tt0120815'),
(19, 'The Matrix', 1999, 'tt0133093', '8.7', NULL, 'http://www.imdb.com/title/tt0133093'),
(10, 'Fight Club', 1999, 'tt0137523', '8.8', NULL, 'http://www.imdb.com/title/tt0137523'),
(9, 'The Lord of the Rings: The Return of the King', 2003, 'tt0167260', '8.8', NULL, 'http://www.imdb.com/title/tt0167260'),
(20, 'The Lord of the Rings: The Two Towers', 2002, 'tt0167261', '8.7', NULL, 'http://www.imdb.com/title/tt0167261'),
(142, 'The Sixth Sense', 1999, 'tt0167404', '8.1', NULL, 'http://www.imdb.com/title/tt0167404'),
(54, 'American Beauty', 1999, 'tt0169547', '8.4', NULL, 'http://www.imdb.com/title/tt0169547'),
(62, 'Gladiator', 2000, 'tt0172495', '8.4', NULL, 'http://www.imdb.com/title/tt0172495'),
(79, 'Requiem for a Dream', 2000, 'tt0180093', '8.3', NULL, 'http://www.imdb.com/title/tt0180093'),
(212, 'Monsters, Inc.', 2001, 'tt0198781', '8.0', NULL, 'http://www.imdb.com/title/tt0198781'),
(110, 'Snatch.', 2000, 'tt0208092', '8.2', NULL, 'http://www.imdb.com/title/tt0208092'),
(36, 'Memento', 2000, 'tt0209144', '8.5', NULL, 'http://www.imdb.com/title/tt0209144'),
(69, 'Am&#xE9;lie', 2001, 'tt0211915', '8.4', NULL, 'http://www.imdb.com/title/tt0211915'),
(43, 'Spirited Away', 2001, 'tt0245429', '8.5', NULL, 'http://www.imdb.com/title/tt0245429'),
(188, 'Amores Perros', 2000, 'tt0245712', '8.0', NULL, 'http://www.imdb.com/title/tt0245712'),
(185, 'Donnie Darko', 2001, 'tt0246578', '8.0', NULL, 'http://www.imdb.com/title/tt0246578'),
(46, 'The Pianist', 2002, 'tt0253474', '8.4', NULL, 'http://www.imdb.com/title/tt0253474'),
(163, 'Finding Nemo', 2003, 'tt0266543', '8.1', NULL, 'http://www.imdb.com/title/tt0266543'),
(154, 'Kill Bill: Vol. 1', 2003, 'tt0266697', '8.1', NULL, 'http://www.imdb.com/title/tt0266697'),
(193, 'A Beautiful Mind', 2001, 'tt0268978', '8.0', NULL, 'http://www.imdb.com/title/tt0268978'),
(21, 'City of God', 2002, 'tt0317248', '8.6', NULL, 'http://www.imdb.com/title/tt0317248'),
(219, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'tt0325980', '8.0', NULL, 'http://www.imdb.com/title/tt0325980'),
(246, 'Mystic River', 2003, 'tt0327056', '7.9', NULL, 'http://www.imdb.com/title/tt0327056'),
(81, 'Eternal Sunshine of the Spotless Mind', 2004, 'tt0338013', '8.3', NULL, 'http://www.imdb.com/title/tt0338013'),
(216, 'Infernal Affairs', 2002, 'tt0338564', '8.0', NULL, 'http://www.imdb.com/title/tt0338564'),
(189, 'Howl&#x27;s Moving Castle', 2004, 'tt0347149', '8.0', NULL, 'http://www.imdb.com/title/tt0347149'),
(223, 'Memories of Murder', 2003, 'tt0353969', '8.0', NULL, 'http://www.imdb.com/title/tt0353969'),
(109, 'Inglourious Basterds', 2009, 'tt0361748', '8.2', NULL, 'http://www.imdb.com/title/tt0361748'),
(116, 'Downfall', 2004, 'tt0363163', '8.2', NULL, 'http://www.imdb.com/title/tt0363163'),
(85, 'Oldboy', 2003, 'tt0364569', '8.3', NULL, 'http://www.imdb.com/title/tt0364569'),
(107, 'Batman Begins', 2005, 'tt0372784', '8.3', NULL, 'http://www.imdb.com/title/tt0372784'),
(228, 'Ratatouille', 2007, 'tt0382932', '8.0', NULL, 'http://www.imdb.com/title/tt0382932'),
(159, 'Hotel Rwanda', 2004, 'tt0395169', '8.1', NULL, 'http://www.imdb.com/title/tt0395169'),
(232, 'The Diving Bell and the Butterfly', 2007, 'tt0401383', '8.0', NULL, 'http://www.imdb.com/title/tt0401383'),
(152, 'Sin City', 2005, 'tt0401792', '8.1', NULL, 'http://www.imdb.com/title/tt0401792'),
(64, 'The Lives of Others', 2006, 'tt0405094', '8.4', NULL, 'http://www.imdb.com/title/tt0405094'),
(175, 'Million Dollar Baby', 2004, 'tt0405159', '8.1', NULL, 'http://www.imdb.com/title/tt0405159'),
(51, 'The Departed', 2006, 'tt0407887', '8.4', NULL, 'http://www.imdb.com/title/tt0407887'),
(165, 'V for Vendetta', 2005, 'tt0434409', '8.1', NULL, 'http://www.imdb.com/title/tt0434409'),
(65, 'Toy Story 3', 2010, 'tt0435761', '8.4', NULL, 'http://www.imdb.com/title/tt0435761'),
(192, 'The Bourne Ultimatum', 2007, 'tt0440963', '8.0', NULL, 'http://www.imdb.com/title/tt0440963'),
(218, 'Life of Pi', 2012, 'tt0454876', '8.0', NULL, 'http://www.imdb.com/title/tt0454876'),
(117, 'Pan&#x27;s Labyrinth', 2006, 'tt0457430', '8.2', NULL, 'http://www.imdb.com/title/tt0457430'),
(6, 'The Dark Knight', 2008, 'tt0468569', '8.9', NULL, 'http://www.imdb.com/title/tt0468569'),
(176, 'There Will Be Blood', 2007, 'tt0469494', '8.1', NULL, 'http://www.imdb.com/title/tt0469494'),
(141, 'No Country for Old Men', 2007, 'tt0477348', '8.1', NULL, 'http://www.imdb.com/title/tt0477348'),
(67, 'The Prestige', 2006, 'tt0482571', '8.4', NULL, 'http://www.imdb.com/title/tt0482571'),
(170, 'Into the Wild', 2007, 'tt0758758', '8.1', NULL, 'http://www.imdb.com/title/tt0758758'),
(227, 'Star Trek', 2009, 'tt0796366', '8.0', NULL, 'http://www.imdb.com/title/tt0796366'),
(167, 'The Avengers', 2012, 'tt0848228', '8.1', NULL, 'http://www.imdb.com/title/tt0848228'),
(169, 'How to Train Your Dragon', 2010, 'tt0892769', '8.1', NULL, 'http://www.imdb.com/title/tt0892769'),
(233, 'The Hobbit: An Unexpected Journey', 2012, 'tt0903624', '8.0', NULL, 'http://www.imdb.com/title/tt0903624'),
(63, 'WALL&#xB7;E', 2008, 'tt0910970', '8.4', NULL, 'http://www.imdb.com/title/tt0910970'),
(197, 'Black Swan', 2010, 'tt0947798', '8.0', NULL, 'http://www.imdb.com/title/tt0947798'),
(191, 'Mary and Max', 2009, 'tt0978762', '8.0', NULL, 'http://www.imdb.com/title/tt0978762'),
(208, 'Slumdog Millionaire', 2008, 'tt1010048', '8.0', NULL, 'http://www.imdb.com/title/tt1010048'),
(118, 'Up', 2009, 'tt1049413', '8.2', NULL, 'http://www.imdb.com/title/tt1049413'),
(234, 'Shutter Island', 2010, 'tt1130884', '8.0', NULL, 'http://www.imdb.com/title/tt1130884'),
(235, 'District 9', 2009, 'tt1136608', '8.0', NULL, 'http://www.imdb.com/title/tt1136608'),
(244, '3 Idiots', 2009, 'tt1187043', '7.9', NULL, 'http://www.imdb.com/title/tt1187043'),
(222, 'Harry Potter and the Deathly Hallows: Part 2', 2011, 'tt1201607', '8.0', NULL, 'http://www.imdb.com/title/tt1201607'),
(131, 'Gran Torino', 2008, 'tt1205489', '8.2', NULL, 'http://www.imdb.com/title/tt1205489'),
(231, 'Ip Man', 2008, 'tt1220719', '8.0', NULL, 'http://www.imdb.com/title/tt1220719'),
(237, 'Incendies', 2010, 'tt1255953', '8.0', NULL, 'http://www.imdb.com/title/tt1255953'),
(161, 'Warrior', 2011, 'tt1291584', '8.1', NULL, 'http://www.imdb.com/title/tt1291584'),
(162, 'The Secret in Their Eyes', 2009, 'tt1305806', '8.1', NULL, 'http://www.imdb.com/title/tt1305806'),
(56, 'The Dark Knight Rises', 2012, 'tt1345836', '8.4', NULL, 'http://www.imdb.com/title/tt1345836'),
(15, 'Inception', 2010, 'tt1375666', '8.7', NULL, 'http://www.imdb.com/title/tt1375666'),
(39, 'Gravity', 2013, 'tt1454468', '8.5', NULL, 'http://www.imdb.com/title/tt1454468'),
(179, 'The King&#x27;s Speech', 2010, 'tt1504320', '8.1', NULL, 'http://www.imdb.com/title/tt1504320'),
(241, 'The Artist', 2011, 'tt1655442', '7.9', NULL, 'http://www.imdb.com/title/tt1655442'),
(60, 'The Intouchables', 2011, 'tt1675434', '8.4', NULL, 'http://www.imdb.com/title/tt1675434'),
(108, 'A Separation', 2011, 'tt1832382', '8.3', NULL, 'http://www.imdb.com/title/tt1832382'),
(55, 'Django Unchained', 2012, 'tt1853728', '8.4', NULL, 'http://www.imdb.com/title/tt1853728'),
(186, 'Rush', 2013, 'tt1979320', '8.0', NULL, 'http://www.imdb.com/title/tt1979320'),
(150, 'The Hunt', 2012, 'tt2106476', '8.1', NULL, 'http://www.imdb.com/title/tt2106476');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE IF NOT EXISTS `recommendations` (
  `recommenderId` int(11) NOT NULL,
  `recommendeeId` int(11) NOT NULL,
  `movieId` varchar(30) NOT NULL,
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`recommenderId`, `recommendeeId`, `movieId`, `line_id`) VALUES
(37, 36, 'tt0111161', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `seen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstName`, `lastName`, `username`, `password`, `userId`, `seen`) VALUES
('Chris', 'Rathnam', 'chris', 'chris', 36, 30),
('Joe', 'Root', 'joe', 'joe', 37, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user_lines`
--

CREATE TABLE IF NOT EXISTS `user_lines` (
  `userId` int(11) NOT NULL,
  `movieId` varchar(30) NOT NULL,
  `rating` int(11) NOT NULL,
  UNIQUE KEY `userId` (`userId`,`movieId`,`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_lines`
--

INSERT INTO `user_lines` (`userId`, `movieId`, `rating`) VALUES
(36, 'tt0021749', 0),
(36, 'tt0027977', 0),
(36, 'tt0043014', 0),
(36, 'tt0047478', 0),
(36, 'tt0050083', 6),
(36, 'tt0057012', 0),
(36, 'tt0060196', 8),
(36, 'tt0068646', 9),
(36, 'tt0071562', 9),
(36, 'tt0073486', 0),
(36, 'tt0076759', 0),
(36, 'tt0078788', 0),
(36, 'tt0080684', 6),
(36, 'tt0099685', 0),
(36, 'tt0102926', 0),
(36, 'tt0103064', 0),
(36, 'tt0108052', 0),
(36, 'tt0109830', 0),
(36, 'tt0110912', 0),
(36, 'tt0111161', 9),
(36, 'tt0120586', 0),
(36, 'tt0120737', 0),
(36, 'tt0137523', 8),
(36, 'tt0167260', 9),
(36, 'tt0167261', 0),
(36, 'tt0209144', 0),
(36, 'tt0317248', 0),
(36, 'tt0468569', 7),
(36, 'tt1375666', 0),
(36, 'tt1454468', 0),
(37, 'tt0047478', 0),
(37, 'tt0050083', 0),
(37, 'tt0060196', 8),
(37, 'tt0068646', 8),
(37, 'tt0071562', 8),
(37, 'tt0073486', 0),
(37, 'tt0076759', 0),
(37, 'tt0080684', 0),
(37, 'tt0099685', 0),
(37, 'tt0108052', 0),
(37, 'tt0109830', 0),
(37, 'tt0110912', 8),
(37, 'tt0111161', 8),
(37, 'tt0120737', 0),
(37, 'tt0133093', 0),
(37, 'tt0137523', 0),
(37, 'tt0167260', 0),
(37, 'tt0167261', 0),
(37, 'tt0468569', 10),
(37, 'tt1375666', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
