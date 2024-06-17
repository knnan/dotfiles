START TRANSACTION;
SELECT * FROM users u  WHERE id = 1 FOR update;
INSERT INTO users (name) values("dddd");
COMMIT;


SELECT * FROM users WHERE id = 3;


INSERT INTO users (name) values("fasdfsad");


