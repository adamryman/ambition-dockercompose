
CREATE TABLE IF NOT EXISTS actions(id SERIAL PRIMARY KEY, action_name varchar(255), user_id integer);
INSERT INTO `actions` (`id`, `action_name`, `user_id`) VALUES (1, 'Brush Teeth', 1)
INSERT INTO `actions` (`id`, `action_name`, `user_id`) VALUES (2, 'Play Ukulele', 1)
INSERT INTO `actions` (`id`, `action_name`, `user_id`) VALUES (3, 'Meditiate', 1)

CREATE TABLE IF NOT EXISTS occurrences(id SERIAL PRIMARY KEY, action_id integer, datetime varchar(255), data varchar(255));
-- Brush Teeth
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (1, 1, '2017-06-26 08:51:48')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (2, 1, '2017-06-26 08:51:48')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (3, 1, '2017-06-26 21:52:17')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (4, 1, '2017-06-27 09:52:44')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (5, 1, '2017-06-27 21:53:09')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (6, 1, '2017-06-28 09:54:14')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (7, 1, '2017-06-28 21:54:24')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (8, 1, '2017-06-29 09:54:39')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (9, 1, '2017-06-29 21:54:45')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (10, 1, '2017-06-30 09:54:56')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (11, 1, '2017-06-30 20:55:08')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (12, 1, '2017-07-01 08:55:19')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (13, 1, '2017-07-01 20:55:27')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (14, 1, '2017-07-02 08:55:41')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (15, 1, '2017-07-02 20:55:47')

-- Uke
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (16, 2, '2017-06-26 03:51:48')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (17, 2, '2017-06-27 03:52:44')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (18, 2, '2017-06-28 03:54:14')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (19, 2, '2017-06-29 03:54:39')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (20, 2, '2017-06-30 03:54:56')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (21, 2, '2017-07-01 03:55:19')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (22, 2, '2017-07-02 03:55:41')

-- Meditate
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (23, 3, '2017-06-26 10:51:48')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (24, 3, '2017-06-27 10:52:44')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (25, 3, '2017-06-28 10:54:14')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (26, 3, '2017-06-29 10:54:39')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (27, 3, '2017-06-30 10:54:56')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (28, 3, '2017-07-01 11:55:19')
INSERT INTO `occurrences` (`id`, `action_id`, `datatime`) VALUES (29, 3, '2017-07-02 10:55:41')

CREATE TABLE IF NOT EXISTS users(id SERIAL PRIMARY KEY, username varchar(255), email varchar(255), trello_id varchar(255), trello_webhookurl varchar(255));
