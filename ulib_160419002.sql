-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2022 at 08:01 AM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `native_160419002`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`user_id`, `book_id`) VALUES
(1, 14),
(2, 5),
(3, 10),
(3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `book_no` varchar(45) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `cover_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `subtitle`, `book_no`, `pages`, `language`, `author`, `publisher`, `description`, `rating`, `cover_url`) VALUES
(1, 'Elektra: A Novel of the House of Atreus', NULL, '9781250773616', 320, 'English', 'Jennifer Saint', 'Flatiron Books', 'The House of Atreus is cursed. A bloodline tainted by a generational cycle of violence and vengeance. This is the story of three women, their fates inextricably tied to this curse, and the fickle nature of men and gods.\r\n\r\nClytemnestra\r\nThe sister of Helen, wife of Agamemnon - her hopes of averting the curse are dashed when her sister is taken to Troy by the feckless Paris. Her husband raises a great army against them, and determines to win, whatever the cost.\r\n\r\nCassandra\r\nPrincess of Troy, and cursed by Apollo to see the future but never to be believed when she speaks of it. She is powerless in her knowledge that the city will fall.\r\n\r\nElektra\r\nThe youngest daughter of Clytemnestra and Agamemnon, Elektra is horrified by the bloodletting of her kin. But, can she escape the curse, or is her own destiny also bound by violence?\r\n\r\nPraise for Jennifer Saint and ARIADNE:\r\n\r\n\'A lyrical, insightful re-telling\' Daily Mail\r\n\r\n\'Relevant and revelatory\' Stylist\r\n\r\n\'Energetic and compelling\' Times\r\n\r\n\'An illuminating read\' Woman & Home\r\n\r\n\'A story that\'s impossible to forget\' Culturefly', '4.1', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1639951176l/58725016.jpg'),
(2, 'Dating Dr. Dil', 'If Shakespeare was an Auntie #1', '9780063001107', 352, 'English', 'Nisha Sharma', 'Avon', 'Kareena Mann dreams of having a love story like her parents, but she prefers restoring her classic car to swiping right on dating apps. When her father announces he’s selling her mother’s home, Kareena makes a deal with him: he’ll gift her the house if she can get engaged in four months. Her search for her soulmate becomes impossible when her argument with Dr. Prem Verma, host of The Dr. Dil Show, goes viral. Now the only man in her life is the one she doesn’t want.\r\n\r\nDr. Prem Verma is dedicated to building a local community health center, but he needs to get donors with deep pockets. The Dr. Dil Show was doing just that, until his argument with Kareena went viral, and he’s left short changed. That’s when Kareena’s meddling aunties presented him with a solution: convince Kareena he’s her soulmate and they’ll fund his clinic.  \r\n\r\nEven though they have conflicting views on love-matches and arranged-matches, the more time Prem spends with Kareena, the more he begins to believe she’s the woman he wants to spend the rest of his life with. But for Prem and Kareena to find their happily ever after, they must admit that hate has turned into fate.', '3.9', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1642405300l/57007401.jpg'),
(3, 'The Book of Cold Cases', NULL, '9780440000211', 352, 'English', 'Simone St. James', 'Berkley', 'In 1977, Claire Lake, Oregon, was shaken by the Lady Killer Murders: Two men, seemingly randomly, were murdered with the same gun, with strange notes left behind. Beth Greer was the perfect suspect--a rich, eccentric twenty-three-year-old woman, seen fleeing one of the crimes. But she was acquitted, and she retreated to the isolation of her mansion.\r\n\r\nOregon, 2017. Shea Collins is a receptionist, but by night, she runs a true crime website, the Book of Cold Cases--a passion fueled by the attempted abduction she escaped as a child. When she meets Beth by chance, Shea asks her for an interview. To Shea\'s surprise, Beth says yes.\r\n\r\nThey meet regularly at Beth\'s mansion, though Shea is never comfortable there. Items move when she\'s not looking, and she could swear she\'s seen a girl outside the window. The allure of learning the truth about the case from the smart, charming Beth is too much to resist, but even as they grow closer, Shea senses something isn\'t right. Is she making friends with a manipulative murderer, or are there other dangers lurking in the darkness of the Greer house?\r\n\r\nA true crime blogger gets more than she bargained for while interviewing the woman acquitted of two cold case slayings in this chilling new novel from the New York Times bestselling author of The Sun Down Motel.', '4.0', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1624553583l/58371432.jpg'),
(4, 'Things We Never Got Over', NULL, 'B09PNM8FFN', 570, 'English', 'Lucy Score', 'That\'s What She Said Publishing', 'Naomi wasn’t just running away from her wedding. She was riding to the rescue of her estranged twin to Knockemout, Virginia, a rough-around-the-edges town where disputes are settled the old-fashioned way…with fists and beer. Usually in that order.\r\n\r\nToo bad for Naomi her evil twin hasn’t changed at all. After helping herself to Naomi’s car and cash, Tina leaves her with something unexpected. The niece Naomi didn’t know she had. Now she’s stuck in town with no car, no job, no plan, and no home with an 11-year-old going on thirty to take care of.\r\n\r\nThere’s a reason Knox doesn’t do complications or high-maintenance women, especially not the romantic ones. But since Naomi’s life imploded right in front of him, the least he can do is help her out of her jam. And just as soon as she stops getting into new trouble he can leave her alone and get back to his peaceful, solitary life.\r\n\r\nAt least, that’s the plan until the trouble turns to real danger.', '4.4', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1641629293l/60060431._SY475_.jpg'),
(5, 'This Time Tomorrow', NULL, '9780525539001', 320, 'English', 'Emma Straub', 'Riverhead Books', 'Named a Most Anticipated Book of 2022 by Harper\'s Bazaar, Oprah Daily, Glamour, Entertainment Weekly, Good Housekeeping, Parade, Bustle, Marie Claire, PopSugar, Thrillist, Lit Hub and more!\r\n\r\nWhat if you could take a vacation to your past?\r\n\r\nWith her celebrated humor, insight, and heart, beloved New York Times bestseller Emma Straub offers her own twist on traditional time travel tropes, and a different kind of love story.\r\n\r\nOn the eve of her 40th birthday, Alice\'s life isn\'t terrible. She likes her job, even if it isn\'t exactly the one she expected. She\'s happy with her apartment, her romantic status, her independence, and she adores her lifelong best friend. But her father is ailing, and it feels to her as if something is missing. When she wakes up the next morning she finds herself back in 1996, reliving her 16th birthday. But it isn\'t just her adolescent body that shocks her, or seeing her high school crush, it\'s her dad: the vital, charming, 40-something version of her father with whom she is reunited. Now armed with a new perspective on her own life and his, some past events take on new meaning. Is there anything that she would change if she could? ', '4.3', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1635860014l/59089704.jpg'),
(6, 'A Magic Steeped in Poison', 'The Book of Tea #1', '9781250767080', 384, 'English', 'Judy I. Lin', 'Feiwel and Friends', 'I used to look at my hands with pride. Now all I can think is, \"These are the hands that buried my mother.\"\r\n\r\nFor Ning, the only thing worse than losing her mother is knowing that it\'s her own fault. She was the one who unknowingly brewed the poison tea that killed her—the poison tea that now threatens to also take her sister, Shu.\r\n\r\nWhen Ning hears of a competition to find the kingdom\'s greatest shennong-shi—masters of the ancient and magical art of tea-making—she travels to the imperial city to compete. The winner will receive a favor from the princess, which may be Ning\'s only chance to save her sister\'s life.\r\n\r\nBut between the backstabbing competitors, bloody court politics, and a mysterious (and handsome) boy with a shocking secret, Ning might actually be the one in more danger.', '4.2', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1620317227l/56978089.jpg'),
(7, 'The Diamond Eye', NULL, '9780062943514', 448, 'English', 'Kate Quinn', 'William Morrow & Company', 'The New York Times bestselling author of The Rose Code returns with an unforgettable World War II tale of a quiet bookworm who becomes history\'s deadliest female sniper. Based on a true story.\r\n\r\nIn 1937 in the snowbound city of Kiev (now known as Kyiv), wry and bookish history student Mila Pavlichenko organizes her life around her library job and her young son--but Hitler\'s invasion of Ukraine and Russia sends her on a different path. Given a rifle and sent to join the fight, Mila must forge herself from studious girl to deadly sniper--a lethal hunter of Nazis known as Lady Death. When news of her three hundredth kill makes her a national heroine, Mila finds herself torn from the bloody battlefields of the eastern front and sent to America on a goodwill tour.\r\n\r\nStill reeling from war wounds and devastated by loss, Mila finds herself isolated and lonely in the glittering world of Washington, DC--until an unexpected friendship with First Lady Eleanor Roosevelt and an even more unexpected connection with a silent fellow sniper offer the possibility of happiness. But when an old enemy from Mila\'s past joins forces with a deadly new foe lurking in the shadows, Lady Death finds herself battling her own demons and enemy bullets in the deadliest duel of her life.\r\n\r\nBased on a true story, The Diamond Eye is a haunting novel of heroism born of desperation, of a mother who became a soldier, of a woman who found her place in the world and changed the course of history forever.', '4.3', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1641777418l/58490567.jpg'),
(8, 'In My Dreams I Hold a Knife', NULL, '9781728229881', 368, 'English', 'Ashley Winstead', 'Sourcebooks Landmark', 'A college reunion turns dark and deadly in this chilling and propulsive suspense novel about six friends, one unsolved murder, and the dark secrets they’ve been hiding from each other—and themselves—for a decade.\r\n\r\nTen years after graduation, Jessica Miller has planned her triumphant return to southern, elite Duquette University, down to the envious whispers that are sure to follow in her wake. Everyone is going to see the girl she wants them to see—confident, beautiful, indifferent—not the girl she was when she left campus, back when Heather’s murder fractured everything, including the tight bond linking the six friends she’d been closest to since freshman year. Ten years ago, everything fell apart, including the dreams she worked for her whole life—and her relationship with the one person she wasn’t supposed to love.\r\n\r\nBut not everyone is ready to move on. Not everyone left Duquette ten years ago, and not everyone can let Heather’s murder go unsolved. Someone is determined to trap the real killer, to make the guilty pay. When the six friends are reunited, they will be forced to confront what happened that night—and the years’ worth of secrets each of them would do anything to keep hidden.\r\n\r\nTold in racing dual timelines, with a dark campus setting and a darker look at friendship, love, obsession, and ambition, In My Dreams I Hold A Knife is an addictive, propulsive read you won’t be able to put down.', '4.0', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1607370819l/50485649.jpg'),
(9, 'Hook, Line, and Sinker', 'It Happened One Summer #2', '9780063045699', 400, 'English', 'Tessa Bailey', 'Avon Books', 'King crab fisherman Fox Thornton has a reputation as a sexy, carefree flirt. Everyone knows he\'s a guaranteed good time--in bed and out--and that\'s exactly how he prefers it. Until he meets Hannah Bellinger. She\'s immune to his charm and looks, but she seems to enjoy his... personality? And wants to be friends? Bizarre. But he likes her too much to risk a fling, so platonic pals it is.\r\n\r\nNow, Hannah\'s in town for work, crashing in Fox\'s spare bedroom. She knows he\'s a notorious ladies\' man, but they\'re definitely just friends. In fact, she\'s nursing a hopeless crush on a colleague and Fox is just the person to help with her lackluster love life. Armed with a few tips from Westport\'s resident Casanova, Hannah sets out to catch her coworker\'s eye... yet the more time she spends with Fox, the more she wants him instead. As the line between friendship and flirtation begins to blur, Hannah can\'t deny she loves everything about Fox, but she refuses to be another notch on his bedpost.\r\n\r\nLiving with his best friend should have been easy. Except now she\'s walking around in a towel, sleeping right across the hall, and Fox is fantasizing about waking up next to her for the rest of his life and... and... man overboard! He\'s fallen for her, hook, line, and sinker. Helping her flirt with another guy is pure torture, but maybe if Fox can tackle his inner demons and show Hannah he\'s all in, she\'ll choose him instead?\r\n\r\nIn the follow-up to It Happened One Summer, Tessa Bailey delivers another deliciously fun rom-com about a former player who accidentally falls for his best friend while trying to help her land a different man...', '4.2', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1627068858l/58283080.jpg'),
(10, 'The Cartographers', NULL, '9780062910691', 400, 'English', 'Peng Shepherd', 'William Morrow', 'What is the purpose of a map?\r\n\r\nNell Young’s whole life and greatest passion is cartography. Her father, Dr. Daniel Young, is a legend in the field and Nell’s personal hero. But she hasn’t seen or spoken to him ever since he cruelly fired her and destroyed her reputation after an argument over an old, cheap gas station highway map.\r\n\r\nBut when Dr. Young is found dead in his office at the New York Public Library, with the very same seemingly worthless map hidden in his desk, Nell can’t resist investigating. To her surprise, she soon discovers that the map is incredibly valuable and exceedingly rare. In fact, she may now have the only copy left in existence... because a mysterious collector has been hunting down and destroying every last one—along with anyone who gets in the way.\r\n\r\nBut why?\r\n\r\nTo answer that question, Nell embarks on a dangerous journey to reveal a dark family secret and discovers the true power that lies in maps...\r\n\r\nFrom the critically acclaimed author of The Book of M, a highly imaginative thriller about a young woman who discovers that a strange map in her deceased father’s belongings holds an incredible, deadly secret—one that will lead her on an extraordinary adventure and to the truth about her family’s dark history.', '3.8', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1634915484l/55004093.jpg'),
(11, 'Perahu Kertas', NULL, '9789791227780', 456, 'Indonesia', 'Dee Lestari', 'Bentang Pustaka & Truedee', 'Namanya Kugy. Mungil, pengkhayal, dan berantakan. Dari benaknya, mengalir untaian dongeng indah. Keenan belum pernah bertemu manusia seaneh itu.\r\n\r\n...\r\n\r\nNamanya Keenan. Cerdas, artistik, dan penuh kejutan. Dari tangannya, mewujud lukisan-lukisan magis. Kugy belum pernah bertemu manusia seajaib itu.\r\n\r\n...\r\n\r\nDan kini mereka berhadapan di antara hamparan misteri dan rintangan. Akankah dongeng dan lukisan itu bersatu?\r\n\r\nAkankah hati dan impian mereka bertemu?', '3.9', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1356225544l/6765740.jpg'),
(12, 'Laskar Pelangi', 'Tetralogi Laskar Pelangi #1', '9789793062792', 534, 'Indonesia', 'Andrea Hirata', 'Bentang Pustaka', 'Begitu banyak hal menakjubkan yang terjadi dalam masa kecil para anggota Laskar Pelangi. Sebelas orang anak Melayu Belitong yang luar biasa ini tak menyerah walau keadaan tak bersimpati pada mereka. Tengoklah Lintang, seorang kuli kopra cilik yang genius dan dengan senang hati bersepeda 80 kilometer pulang pergi untuk memuaskan dahaganya akan ilmu—bahkan terkadang hanya untuk menyanyikan Padamu Negeri di akhir jam sekolah. Atau Mahar, seorang pesuruh tukang parut kelapa sekaligus seniman dadakan yang imajinatif, tak logis, kreatif, dan sering diremehkan sahabat-sahabatnya, namun berhasil mengangkat derajat sekolah kampung mereka dalam karnaval 17 Agustus. Dan juga sembilan orang Laskar Pelangi lain yang begitu bersemangat dalam menjalani hidup dan berjuang meraih cita-cita. Selami ironisnya kehidupan mereka, kejujuran pemikiran mereka, indahnya petualangan mereka, dan temukan diri Anda tertawa, menangis, dan tersentuh saat membaca setiap lembarnya. Buku ini dipersembahkan buat mereka yang meyakini the magic of childhood memories, dan khususnya juga buat siapa saja yang masih meyakini adanya pintu keajaiban lain untuk mengubah dunia: pendidikan.', '4.2', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1489732961l/1362193._SY475_.jpg'),
(13, 'Negeri Para Bedebah', 'Negeri Para Bedebah #1', '9789792285529', 440, 'Indonesia', 'Tere Liye', 'Gramedia Pustaka Utama', 'Di negeri para bedebah, kisah fiksi kalah seru dibanding kisah nyata.\r\n\r\nDi negeri para bedebah, musang berbulu domba berkeliaran di halaman rumah.\r\n\r\nTetapi setidaknya, Kawan, di negeri para bedebah, petarung sejati tidak akan pernah berkhianat.', '4.3', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1340606900l/15721334.jpg'),
(14, 'Hujan', NULL, '9786020324784', 320, 'Indonesia', 'Tere Liye', 'Gramedia Pustaka Utama', 'Tentang persahabatan\r\nTentang cinta\r\nTentang perpisahan\r\nTentang melupakan\r\nTentang hujan', '4.4', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1451905281l/28446637._SY475_.jpg'),
(15, 'Dilan: Dia Adalah Dilanku Tahun 1990', 'Dilan #1', '9786027870413', 332, 'Indonesia', 'Pidi Baiq', 'Pastel Books (Mizan Group)', '\"Milea, kamu cantik, tapi aku belum mencintaimu. Enggak tahu kalau sore. Tunggu aja\" (Dilan 1990)\r\n\r\n\"Milea, jangan pernah bilang ke aku ada yang menyakitimu, nanti, besoknya, orang itu akan hilang.\" (Dilan 1990)\r\n\r\n\"Cinta sejati adalah kenyamanan, kepercayaan, dan dukungan. Kalau kamu tidak setuju, aku tidak peduli.\" (Milea 1990)', '4.1', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1442310576l/22037542._SX318_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `reserved_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_paid` tinyint(4) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `reserved_date`, `end_date`, `is_paid`, `user_id`, `book_id`) VALUES
(1, '2022-03-29 20:50:11', '2022-04-08 20:50:11', 0, 1, 3),
(2, '2022-03-16 11:00:11', '2022-03-23 11:00:11', 1, 1, 4),
(3, '2022-03-14 20:51:20', '2022-03-21 20:51:20', 1, 1, 10),
(4, '2022-03-25 08:00:00', '2022-04-07 08:00:00', 1, 1, 13),
(5, '2022-03-17 20:52:39', '2022-04-12 13:25:20', 1, 2, 14),
(6, '2022-03-23 18:30:39', '2022-04-10 18:30:39', 1, 2, 4),
(7, '2022-03-28 15:45:38', '2022-04-04 15:45:38', 0, 2, 10),
(8, '2022-03-30 20:53:38', '2022-04-06 20:53:38', 0, 3, 9),
(9, '2022-03-30 20:55:08', '2022-04-16 20:55:08', 0, 3, 1),
(10, '2022-03-31 07:20:08', '2022-04-07 07:20:08', 0, 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `photo_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `gender`, `phone`, `photo_url`) VALUES
(1, 'daniel123', 'daniel123', 'Daniel Zeys', 'Male', '081237485913', 'https://randomuser.me/api/portraits/men/13.jpg'),
(2, 'sharline123', 'sharline123', 'Sharline Mayer', 'Female', '081374185913', 'https://randomuser.me/api/portraits/women/12.jpg'),
(3, 'john123', 'john123', 'John Mendis', 'Male', '085777930501', 'https://randomuser.me/api/portraits/men/11.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`user_id`,`book_id`),
  ADD KEY `fk_user_has_book_book1_idx` (`book_id`),
  ADD KEY `fk_user_has_book_user_idx` (`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_checkout_book1_idx` (`book_id`),
  ADD KEY `fk_checkout_user1_idx` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `fk_user_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_book_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_checkout_book1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_checkout_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
