CREATE TABLE actions(id SERIAL PRIMARY KEY, action_name varchar(255), user_id integer);
CREATE TABLE occurrences(id SERIAL PRIMARY KEY, action_id integer, datetime varchar(255), data varchar(255));
CREATE TABLE users(id SERIAL PRIMARY KEY, username varchar(255), email varchar(255), trello_id varchar(255), trello_webhookurl varchar(255));
