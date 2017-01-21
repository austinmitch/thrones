-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2017 at 11:39 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thrones`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_01_17_232808_create_character_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_char`
--

CREATE TABLE `tbl_char` (
  `id` int(10) UNSIGNED NOT NULL,
  `char_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `char_actor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `char_description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `char_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `char_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_char`
--

INSERT INTO `tbl_char` (`id`, `char_name`, `char_actor`, `char_description`, `char_photo`, `char_banner`) VALUES
(1, 'Jon Snow', 'Kit Harington', 'Kit Harington was born Christopher Catesby Harington in Acton, London, to Deborah Jane (Catesby), a former playwright, and David Richard Harington, a businessman. His mother named him after 16th century British playwright and poet Christopher Marlowe, whose first name was shortened to Kit, a name Harington prefers. Harington\'s uncle is Sir Nicholas John Harington, the 14th Baronet Harington, and his paternal great-grandfather was Sir Richard Harington, the 12th Baronet Harington. Through his paternal grandmother, Lavender Cecilia Denny, Kit\'s eight times great-grandfather was King Charles II of England.', 'jon.jpg', 'stark.png'),
(2, 'Eddard ""Ned Stark', 'Sean Bean', 'Sean Bean\'s 20 year career spans theater, radio, television and movies. Bean was born in Handsworth, Sheffield, West Riding of Yorkshire, to Rita (Tuckwood) and Brian Bean. He worked for his father\'s welding firm before he decided to become an actor. He attended RADA in London and appeared in a number of West End stage productions including RSC\'s "Fair Maid of the West" (Spencer), (1986) and "Romeo and Juliet" (1987) (Romeo) , as well as "Deathwatch" (Lederer) (1985) at the Young Vic and "Killing the Cat" (Danny) (1990) at the Theatre Upstairs.', 'ned.jpg', 'stark.png'),
(3, 'Tyrion Lannister', 'Peter Dinklage', 'Peter Hayden Dinklage was born in Morristown, New Jersey, to Diane (Hayden), an elementary school teacher, and John Carl Dinklage, an insurance salesman. He is of German, Irish, and English descent. In 1991, he received a degree in drama from Bennington College and began his career. He continues to work in the theatre with roles in "The Killing Act", "Imperfect Love", and "Richard III".', 'tyrion.jpg', 'lannister.png'),
(4, 'Arya Stark', 'Margarate "Maisie" Williams', 'Margaret Constance "Maisie" Williams (born 15 April 1997) is an English actress. She made her professional acting debut as Arya Stark in the HBO fantasy television series Game of Thrones, for which she won the EWwy Award for Best Supporting Actress in a Drama, the Portal Award for Best Supporting Actress - Television and Best Young Actor, and the Saturn Award for Best Performance by a Younger Actor. Williams has also had a recurring role in Doctor Who as Ashildr in 2015. In addition to television, she made her feature film debut in the mystery The Falling, for which she won the London Film Critics\' Circle Award for Young Performer of the Year.', 'arya.jpg', 'stark.png'),
(5, 'Daenerys Targaryen', 'Emilia Clarke', 'Emilia Clarke is a British actress. She was born in London and grew up in Berkshire, England. Her father is a theatre sound engineer and her mother is a businesswoman. Her father was working on a theatre production of "Show Boat" and her mother took her along to the performance. This is when, at the age of 3, her passion for drama began. From 2000 to 2005, she attended St. Edward\'s School of Oxford, where she appeared in two school plays. She went on to study at the prestigious Drama Centre London, where she took part in 10 plays. During this time Emilia first appeared on television with a guest role in the BBC\'s Doctors (2000).', 'daenerys.jpg', 'targaryen.png'),
(6, 'Sansa Stark', 'Sophie Turner', 'Sophie Turner (born 21 February 1996) is an English actress. Turner made her professional acting debut as Sansa Stark on the HBO fantasy television series Game of Thrones (2011-present), which brought her international recognition and critical praise. For her performance, she has received four nominations for Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Drama Series, as well as a Young Artist Award nomination for Best Supporting Young Actress in a TV Series.', 'sansa.jpg', 'stark.png'),
(7, 'Khal Drogo', 'Jason Momoa', 'Joseph Jason Namakaeha Momoa was born on August 1, 1979 in Honolulu, Hawaii. He is the son of Coni (Lemke), a photographer, and Joseph Momoa, a painter. His father is of Hawaiian descent and his mother, who is from Iowa, is of mostly German ancestry. Jason was raised in Norwalk, Iowa by his mother. After high school, he moved to Hawaii where he landed a lead role out of thousands of hopefuls in the T.V. series, Baywatch (1989) (known as "Baywatch Hawaii" in its tenth season). When the show ended, he spent the next couple of years traveling around the world. In 2001, he moved to Los Angeles where he continued to pursue an acting career.', 'drogo.jpg', ''),
(8, 'Margaery Tyrell', 'Natalie Dormer', 'Natalie Dormer born 11 February 1982 is an English actress. She is best known for her roles as Anne Boleyn on the Showtime series The Tudors (2007-10), as Margaery Tyrell on the HBO series Game of Thrones (2012-present), Irene Adler on the CBS series Elementary (2013-15), and as Cressida in the science-fiction adventure films The Hunger Games: Mockingjay - Part 1 (2014) and Part 2 (2015). She has been nominated for Best Performance at the Gemini Awards for her work in The Tudors. She has also been nominated for a Screen Actor\'s Guild Award for her performance in Game of Thrones.', 'margaery.jpg', 'tyrell.png'),
(9, 'Oberyn Martell', 'Pedro Pascal', 'Pedro Pascal is a Chilean-born American actor. He is best known for portraying the roles of Oberyn Martell in the fourth season of the HBO series Game of Thrones and Javier Peña in the Netflix series Narcos. In 2016 he starred in the American-Chinese film The Great Wall alongside Matt Damon.', 'oberyn.jpg', 'martell.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_char`
--
ALTER TABLE `tbl_char`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_char`
--
ALTER TABLE `tbl_char`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
