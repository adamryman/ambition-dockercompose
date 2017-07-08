CREATE DATABASE IF NOT EXISTS users;
CREATE DATABASE IF NOT EXISTS model;
CREATE DATABASE IF NOT EXISTS rello;

GRANT ALL PRIVILEGES ON users.* TO 'ambition'@'%';
GRANT ALL PRIVILEGES ON model.* TO 'ambition'@'%';
GRANT ALL PRIVILEGES ON rello.* TO 'ambition'@'%';
flush privileges;

CREATE TABLE IF NOT EXISTS model.actions(id SERIAL PRIMARY KEY, action_name varchar(255), user_id integer);
INSERT INTO `model`.`actions` (`id`, `action_name`, `user_id`) VALUES (1, 'Brush Teeth', 1);
INSERT INTO `model`.`actions` (`id`, `action_name`, `user_id`) VALUES (2, 'Play Ukulele', 1);
INSERT INTO `model`.`actions` (`id`, `action_name`, `user_id`) VALUES (3, 'Meditiate', 1);

CREATE TABLE IF NOT EXISTS model.occurrences(id SERIAL PRIMARY KEY, action_id integer, datetime datetime, data varchar(255));
-- Brush Teeth
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (1, 1, '2017-06-26 08:51:48');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (2, 1, '2017-06-26 08:51:48');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (3, 1, '2017-06-26 21:52:17');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (4, 1, '2017-06-27 09:52:44');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (5, 1, '2017-06-27 21:53:09');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (6, 1, '2017-06-28 09:54:14');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (7, 1, '2017-06-28 21:54:24');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (8, 1, '2017-06-29 09:54:39');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (9, 1, '2017-06-29 21:54:45');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (10, 1, '2017-06-30 09:54:56');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (11, 1, '2017-06-30 20:55:08');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (12, 1, '2017-07-01 08:55:19');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (13, 1, '2017-07-01 20:55:27');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (14, 1, '2017-07-02 08:55:41');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (15, 1, '2017-07-02 20:55:47');

-- Uke
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (16, 2, '2017-06-26 03:51:48');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (17, 2, '2017-06-27 03:52:44');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (18, 2, '2017-06-28 03:54:14');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (19, 2, '2017-06-29 03:54:39');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (20, 2, '2017-06-30 03:54:56');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (21, 2, '2017-07-01 03:55:19');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (22, 2, '2017-07-02 03:55:41');

-- Meditate
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (23, 3, '2017-06-26 10:51:48');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (24, 3, '2017-06-27 10:52:44');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (25, 3, '2017-06-28 10:54:14');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (26, 3, '2017-06-29 10:54:39');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (27, 3, '2017-06-30 10:54:56');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (28, 3, '2017-07-01 11:55:19');
INSERT INTO `model`.`occurrences` (`id`, `action_id`, `datetime`) VALUES (29, 3, '2017-07-02 10:55:41');

CREATE TABLE IF NOT EXISTS users.users(id SERIAL PRIMARY KEY, username varchar(255), email varchar(255), trello_id varchar(255), trello_webhookurl varchar(255));

CREATE TABLE IF NOT EXISTS rello.rello_users(id SERIAL PRIMARY KEY, trello_id varchar(255), users_id varchar(255), trello_webhookurl text);
