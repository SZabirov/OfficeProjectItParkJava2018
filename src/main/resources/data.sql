INSERT INTO users (username, password, role, slack_id)
VALUES ('admin', '{noop}admin', 'ADMIN', 'UAD5LG6KY');
INSERT INTO users (username, password, role, slack_id)
VALUES ('Salavat', '{noop}salavat', 'USER', 'UAD5LG6KY');

INSERT INTO groups (name)
VALUES ('testgroup');

INSERT into users_groups (users_id, groups_id) VALUES (1, 1);
INSERT into users_groups (users_id, groups_id) VALUES (2, 1);