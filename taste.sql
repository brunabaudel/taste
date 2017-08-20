# Dump of table comments
# ------------------------------------------------------------

CREATE TABLE `comments` (
  `comment_id` char(36) NOT NULL DEFAULT '',
  `post_id` char(36) NOT NULL DEFAULT '',
  `post_user_id` char(36) NOT NULL DEFAULT '',
  `comment_of_user_id` char(36) NOT NULL DEFAULT '',
  `status` enum('active','banned') NOT NULL DEFAULT 'active',
  `location` varchar(100) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table favorites
# ------------------------------------------------------------

CREATE TABLE `favorites` (
  `favorite_id` char(36) NOT NULL DEFAULT '',
  `post_id` char(36) NOT NULL DEFAULT '',
  `post_user_id` char(36) NOT NULL DEFAULT '',
  `favorite_of_user_id` char(36) NOT NULL DEFAULT '',
  `status` enum('active','banned') NOT NULL DEFAULT 'active',
  `location` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table posts
# ------------------------------------------------------------

CREATE TABLE `posts` (
  `post_id` char(36) NOT NULL DEFAULT '',
  `user_id` char(36) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `geolocation` varchar(100) NOT NULL DEFAULT '',
  `restaurant` varchar(120) NOT NULL DEFAULT '',
  `status` enum('active','banned') NOT NULL DEFAULT 'active',
  `image_path` varchar(30) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ratings
# ------------------------------------------------------------

CREATE TABLE `ratings` (
  `rating_id` char(36) NOT NULL DEFAULT '',
  `post_id` char(36) NOT NULL DEFAULT '',
  `post_user_id` char(36) NOT NULL DEFAULT '',
  `rate_of_user_id` char(36) NOT NULL DEFAULT '',
  `like` tinyint(1) NOT NULL,
  `hate` tinyint(1) NOT NULL,
  `status` enum('active','banned') NOT NULL DEFAULT 'active',
  `location` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `user_id` char(36) NOT NULL DEFAULT '',
  `facebook_id` char(36) NOT NULL DEFAULT '',
  `username` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `profile_image_path` varchar(30) NOT NULL DEFAULT '',
  `status` enum('active','banned') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table views
# ------------------------------------------------------------

CREATE TABLE `views` (
  `view_id` char(36) NOT NULL DEFAULT '',
  `post_id` char(36) NOT NULL DEFAULT '',
  `user_id` char(36) NOT NULL DEFAULT '',
  `view_of_user_id` char(36) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
