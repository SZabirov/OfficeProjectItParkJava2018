INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('admin', '{noop}admin', 'ADMIN', 'UAD5LG6KY', 'Иван', 'Иванов', 'm', '31.01.1991', '3328111', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('Salavat', '{noop}salavat', 'USER', 'UAD5LG6KY', 'Салават', 'Забиров', 'm', '20.07.1996', '2233223', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('Andrey', '{noop}andrey', 'USER', 'UAMSMQS2D', 'Андрей', 'Неманов', 'm', '06.05.1991', '3328111', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('Nick', '{noop}nick', 'USER', 'UADA6JZ9V', 'Никита', 'Ширманов', 'm', '17.04.1991', '3328111', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('RookAndPawn', '{noop}rookandpawn', 'USER', 'UAND7TH8S', 'Иван', 'Иванов', 'm', '31.01.1991', '3328111', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('Kamilya', '{noop}kamilya', 'USER', 'UABHLB4QG', 'Камиля', 'Хайруллина', 'm', '11.03.1991', '3328111', 'abc@mail.com');
INSERT INTO users (username, password, role, slack_id, firstname, lastname, gender, birthdate, phone, email)
VALUES ('Peter', '{noop}peter', 'USER', 'UANJ1D4HK', 'Иван', 'Иванов', 'm', '31.01.1991', '3328111', 'abc@mail.com');


INSERT INTO groups (name)
VALUES ('Отдел1');
INSERT INTO groups (name)
VALUES ('Отдел2');
INSERT INTO groups (name)
VALUES ('Отдел3');

INSERT into users_groups (users_id, groups_id) VALUES (1, 1);
INSERT into users_groups (users_id, groups_id) VALUES (2, 1);
INSERT into users_groups (users_id, groups_id) VALUES (3, 1);
INSERT into users_groups (users_id, groups_id) VALUES (4, 2);
INSERT into users_groups (users_id, groups_id) VALUES (5, 2);
INSERT into users_groups (users_id, groups_id) VALUES (6, 3);
INSERT into users_groups (users_id, groups_id) VALUES (7, 3);

INSERT INTO poll (title, is_published) VALUES ('Купить ли кодциционер?', true);
INSERT INTO poll (title, is_published) VALUES ('Когда устроить корпоратив?', false);

INSERT INTO answer (text, poll_id, votes_count) VALUES ('Да', 1, 0);
INSERT INTO answer (text, poll_id, votes_count) VALUES ('Нет', 1, 0);

INSERT INTO answer (text, poll_id, votes_count) VALUES ('В конце декабря', 2, 0);
INSERT INTO answer (text, poll_id, votes_count) VALUES ('В январе', 2, 0);
INSERT INTO answer (text, poll_id, votes_count) VALUES ('Не отмечать', 2, 0);

-- INSERT INTO users (username, password, role, slack_id)
-- VALUES ('admin', '{noop}admin', 'ADMIN', 'UAD5LG6KY');
-- INSERT INTO users (username, password, role, slack_id)
-- VALUES ('Salavat', '{noop}salavat', 'USER', 'UAD5LG6KY');
--
-- INSERT INTO groups (name)
-- VALUES ('testgroup');
--
-- INSERT into users_groups (users_id, groups_id) VALUES (1, 1);
-- INSERT into users_groups (users_id, groups_id) VALUES (2, 1);