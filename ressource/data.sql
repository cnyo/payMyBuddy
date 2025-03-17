CREATE DATABASE pay_my_buddy;
\c pay_my_buddy

CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(250) NOT NULL
);

CREATE TABLE connections_users (
   id SERIAL NOT NULL PRIMARY KEY,
   main_user_id INTEGER NOT NULL,
   connected_user_id INTEGER NOT NULL
);

CREATE TABLE transaction (
    id SERIAL NOT NULL PRIMARY KEY,
    sender_user_id INTEGER NOT NULL,
    receiver_user_id INTEGER NOT NULL,
    description TEXT null,
    amount DECIMAL NOT NULL
);

INSERT INTO users (username, email, password)
VALUES
    ('jdoe', 'jdoe@email.com', 'xxx'),
    ('janedoe', 'janedoe@email.com', 'xxx');

INSERT INTO connections_users (main_user_id, connected_user_id)
VALUES (1, 2);

INSERT INTO transaction (sender_user_id, receiver_user_id, description, amount)
VALUES (1, 2, 'Ma description', '2400.69');