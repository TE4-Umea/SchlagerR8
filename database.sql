CREATE TABLE `vote` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `song_id` int,
  `score` int,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `song` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(24),
  `description` varchar(192),
  `country` varchar(2)
);

ALTER TABLE `vote` ADD FOREIGN KEY (`song_id`) REFERENCES `song` (`id`);