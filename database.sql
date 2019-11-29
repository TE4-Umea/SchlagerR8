DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(24) DEFAULT NULL,
  `artist` varchar(192) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
​
INSERT INTO `songs` (`id`, `title`, `artist`, `country`) VALUES
	(1, 'Chameleon', 'Michaela', 'mt'),
	(2, 'Ktheju tokës', 'Jonida Maliqi', 'al'),
	(3, 'Friend of a Friend', 'Lake Malawi', 'cz'),
	(4, 'Sister', 'S!sters', 'de'),
	(5, 'Scream', 'Sergey Lazarev', 'ru'),
	(6, 'Love is Forever', 'Leonora', 'dk'),
	(7, 'Say Na Na Na', 'Serhat', 'sm'),
	(8, 'Proud', 'Tamara Todevska', 'mk'),
	(9, 'Too Late for Love', 'John Lundvik', 'se'),
	(10, 'Sebi', 'Zala Kralj & Gašper Šantl', 'si'),
	(11, 'Replay', 'Tamta', 'cy'),
	(12, 'Arcade', 'Duncan Laurence', 'nl'),
	(13, 'Better Love', 'Katerine Duska', 'gr'),
	(14, 'Home', 'Kobi Marimi', 'il'),
	(15, 'Spirit in the Sky', 'KEiiNO', 'no'),
	(16, 'Bigger than Us', 'Michael Rice', 'gb'),
	(17, 'Hatrið mun sigra', 'Hatari', 'is'),
	(18, 'Storm', 'Victor Crone', 'ee'),
	(19, 'Like it', 'ZENA', 'by'),
	(20, 'Truth', 'Chingiz', 'az'),
	(21, 'Roi', 'Bilal Hassani', 'fr'),
	(22, 'Soldi', 'Mahmood', 'it'),
	(23, 'Kruna', 'Nevena Božovic', 'rs'),
	(24, 'She Got Me', 'Luca Hänni', 'ch'),
	(25, 'Zero Gravity', 'Kate Miller-Heidke', 'au'),
	(26, 'La Venda', 'Miki', 'es');

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
​