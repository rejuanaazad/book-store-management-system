-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 08:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(2, 'Ahmed', 'ahmed@gmail.com', '$2y$10$u/W24AYSQKGujJ1Lqr3wRO5X3/un9LyvWnZtqZBhMYP02HSYjfvJy');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Aron Murphy'),
(2, 'Jack Williamson'),
(4, 'Thorne Smith'),
(5, 'E. Phillips Oppenheim'),
(6, 'Janie Owens'),
(7, 'Edmond Hamilton'),
(9, 'Arnold Bennett'),
(10, 'Penelope Fletcher'),
(11, 'Carlo Collodi');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `category_id`, `cover`, `file`, `author_id`) VALUES
(4, 'Master Your Mind', 'Master Your Mind offers a bit of perspective and a lot of insight for anyone seeking long-term success. Success in business is spelled M-O-R-E: better results, faster growth, more revenue, greater efficiency. Do more. Make more. Achieve more. And do it now. Eventually, ambition turns to stress, then to frenzy, then to emptiness as once-ambitious workers endlessly trudge the hamster wheel chasing the next promotion. ', 1, '66391a385b27d3.89712868.jpg', '66391a385b8999.08456132.pdf', 2),
(5, 'The Green Witch', '“For covens who prefer meeting outdoors, perhaps in a garden or a deep forest clearing, The Green Witch is a delightful guide to nature magic. It’s filled with practical recipes for herbal blends and potions, the properties of essential oils, and lots of ideas for healing and relaxation.” —Bustle  Discover the power of natural magic and healing through herbs, flowers, and essential oils in this guide to green witchcraft.', 1, '663a193f74e7a4.51145355.jpg', '663a193f751562.94015342.pdf', 1),
(6, 'Biltmore Oswald', '\"Buddy\" is the \"Dere Mable\" of the navy, with a little more knowledge of spelling and even poetic aspirations, but positively no comprehension of naval affairs. Amusing, but will probably not be as popular as its army parallel.', 3, '663a1e8f8d0495.57114622.jpg', '663a1e8f8d75f0.74279399.pdf', 4),
(7, 'Nobody\'s Man', 'In this new novel Mr. Oppenheim\'s genius for creating tangles and then unravelling them brings surprise after surprise to the reader.', 4, '663a1f8e612465.27986371.jpg', '663a1f8e616ab7.67295168.pdf', 5),
(8, 'The Murder', 'Sometimes life is about trust and love. And occasionally, murder.  When Rachel and Joe retired to a 50-Plus Condo, they did not anticipate encountering amusing and eccentric residents - or the murder of Rachel’s friend, who owned an animal shelter. The suspects are many: the shelter caretaker, an abusive husband, a mistaken hitman and a strange man in a top hat.  While investigations of the murder ensue, trouble erupts for the couple who seemingly have the perfect marriage. But what will it take to convince them both that trust and love conquers all?', 4, '663a201b428515.01086583.jpg', '663a201b42c2e2.22370357.pdf', 6),
(9, 'City at World\'s End', 'The pleasant little American city of Middletown is the first target in an atomic war - but instead of blowing Middletown to smithereens, the super-hydrogen bomb blows it right off the map - to somewhere else! First there is the new thin coldness of the air, the blazing corona and dullness of the sun, the visibility of the stars in high daylight.', 5, '663a24c4ef61c1.42893333.jpg', '663a24c4efca65.71539461.pdf', 7),
(11, 'The Ghost', 'When Carl Foster, a young doctor, sees beautiful Rosetta Rosa at a London opera he is instantly captivated -- and almost as rapidly finds himself plagued by mysterious occurances. When another of Rosa\'s paramours un-expectedly dies, Carl begins to wonder if her glamour carries a deadly curse', 6, '663cf92854b687.35590465.jpg', '663cf92854ef60.56218891.pdf', 9),
(12, 'The Demon Girl', 'Rae Wilder has problems. Plunged into a world of dark magic, fierce creatures and ritual sacrifice, she is charged with a guarding a magical amulet. Rae finds herself beaten up, repeatedly, and forced to make a choice: to live and die human, or embrace her birth-right and wield magics that could turn her into something wicked, a force of nature nothing can control', 7, '66464c3ccc7e62.00409814.jpg', '66464c3ccca7d5.19873135.pdf', 10),
(13, 'Adventures of Pinocchio', 'rionette and, what is much worse, you have a wooden head.\" At these last words, Pinocchio jumped up in a fury, took a hammer from the bench, and threw it with all his strength at the Talking Cricket.  Perhaps he did not think he would strike it. But, sad to relate, my dear children, he did hit the Cricket, straight on its head.', 3, '66464d56b0f6a8.87473435.jpg', '66464d56b12e75.66725500.pdf', 11),
(14, 'Aladdin and the Magic Lamp', 'Classic children\'s stories from the Middle East.', 3, '66464db044c906.44250711.jpg', '66464db04516f4.15048201.pdf', 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Novel'),
(3, 'Adventure'),
(4, 'Thriller'),
(5, 'Science Fiction'),
(6, 'Horror'),
(7, 'Fantasy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
