-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2023 at 04:37 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `releaseDate` date NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `genre` varchar(20) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `runtime` int(11) NOT NULL,
  `poster` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `releaseDate`, `rating`, `description`, `genre`, `cast`, `runtime`, `poster`, `created_at`, `updated_at`) VALUES
(1, 'Avengers Infinity War', '2018-04-27', '8.40', 'The Avengers must stop Thanos, an intergalactic warlord, from getting his hands on all the infinity stones. However, Thanos is prepared to go to any lengths to carry out his insane plan.', 'Action/Sci-fi', 'Robert Downey Jr.,Chris Hemsworth,Chris Evans,Benedict Cumberbatch,Chadwick Boseman,Tom Holland', 149, 'https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg', '2023-02-10 06:25:36', '2023-02-13 16:06:43'),
(2, 'Avengers End Game', '2019-04-26', '8.40', 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.', 'Action/Sci-fi', 'Robert Downey Jr.,Chris Evans,Chris Hemsworth,Scarlett Johansson,Jeremy Renner,Paul Rudd', 181, 'https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg', '2023-02-13 15:46:33', '2023-02-13 15:46:33'),
(3, 'Spider-Man: Far From Home', '2019-07-06', '7.40', 'Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.', 'Action/Sci-fi', 'Tom Holland,Samuel L. Jackson,Zendaya,Cobie Smulders,Jon Favreau,J. B. Smoove,Jacob Batalon,Martin Starr,Tony Revolori,Marisa Tomei,and Jake Gyllenhaal.', 129, 'https://upload.wikimedia.org/wikipedia/en/b/bd/Spider-Man_Far_From_Home_poster.jpg', '2023-02-13 15:50:14', '2023-02-13 15:50:14'),
(4, 'Loki', '2021-06-19', '8.20', 'Loki, the God of Mischief, steps out of his brother\'s shadow to embark on an adventure that takes place after the events of Avengers: Endgame.', 'Adventure', 'Tom Hiddleston,Gugu Mbatha-Raw,Wunmi Mosaku, Eugene Cordero,Tara Strong,Owen Wilson, Sophia Di Martino,Sasha Lane,Jack Veal, DeObia Oparei,Richard E. Grant,and Jonathan Majors', 300, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTFCumqCVMfau0D5190VoNjQnaibQoc-ksyHQhYA5uiboLYCglm', '2023-02-13 16:39:04', '2023-02-13 16:39:04'),
(5, 'Spider-Man: No Way Home', '2021-12-17', '8.20', 'Spider-Man seeks the help of Doctor Strange to forget his exposed secret identity as Peter Parker. However, Strange\'s spell goes horribly wrong, leading to unwanted guests entering their universe.', 'Action/Sci-fi', ' Tom Holland,Zendaya,Benedict Cumberbatch, Jacob Batalon,Jon Favreau,Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong,Andrew Garfield, and Tobey Maguire.', 148, 'https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg', '2023-02-13 15:53:04', '2023-02-13 16:36:01'),
(6, 'Doctor Strange in the Multiverse of Madness', '2022-05-06', '6.90', 'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.', 'Action/Sci-fi', 'Benedict Cumberbatch,Elizabeth Olsen,Chiwetel Ejiofor,Benedict Wong, Xochitl Gomez,Michael Stuhlbarg, and Rachel McAdams.', 126, 'https://upload.wikimedia.org/wikipedia/en/1/17/Doctor_Strange_in_the_Multiverse_of_Madness_poster.jpg', '2023-02-13 16:25:18', '2023-02-13 16:35:59'),
(7, 'Thor: Love and Thunder', '2022-07-06', '6.30', 'Thor embarks on a journey unlike anything he\'s ever faced -- a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster.', 'Action/Adventure', 'Chris Hemsworth as Thor alongside Christian Bale,Tessa Thompson,Jaimie Alexander,Waititi,Russell Crowe,and Natalie Portman.', 119, 'https://upload.wikimedia.org/wikipedia/en/8/88/Thor_Love_and_Thunder_poster.jpeg', '2023-02-13 16:28:12', '2023-02-13 16:35:56'),
(8, 'Black Panther: Wakanda Forever', '2022-11-11', '6.90', 'Queen Ramonda, Shuri, M\'Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T\'Challa\'s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with Nakia and Everett Ross to forge a new path for their beloved kingdom.', 'Action/Adventure', 'Letitia Wright,Lupita Nyong,Danai Gurira, Winston Duke,Florence Kasumba,Dominique Thorne,Michaela Coel,Mabel Cadena,Tenoch Huerta Mejía,Martin Freeman,Julia Louis-Dreyfus,and Angela Bassett.', 161, 'https://upload.wikimedia.org/wikipedia/en/3/3b/Black_Panther_Wakanda_Forever_poster.jpg', '2023-02-13 16:34:02', '2023-02-13 16:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `review` text NOT NULL,
  `rating` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `mid`, `email`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 'temp@gmail.com', 'Amazing movie', 4, '2023-02-13 06:24:46', '2023-02-14 17:53:37'),
(3, 3, 'cha@dheeraj.in', 'great movie', 4, '2023-02-13 12:43:39', '2023-02-14 17:53:41'),
(4, 3, 'cha1@dheeraj.in', 'great movie', 3, '2023-02-13 12:47:02', '2023-02-14 17:53:44'),
(5, 1, 'hi@gmail.com', 'Worth every penny', 5, '2023-02-14 17:32:42', '2023-02-14 17:56:40'),
(8, 1, 'megajylit@mailinator.com', 'Good and entertaining', 3, '2023-02-14 18:03:57', '2023-02-14 18:03:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
