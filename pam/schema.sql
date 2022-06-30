CREATE DATABASE login;

USE login;

CREATE TABLE user (
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL
);

INSERT INTO user(email, password) VALUES('matheus@mail.com', '123456');
