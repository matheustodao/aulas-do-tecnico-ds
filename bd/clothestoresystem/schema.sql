DROP DATABASE clothestoresystem;
CREATE DATABASE clothestoresystem;

USE clothestoresystem;

CREATE TABLE category (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO category(id, name) VALUES(UUID(), 'tênis');

CREATE TABLE clothe (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    genre ENUM('male', 'famale', 'unissex') NOT NULL,
    brand VARCHAR(255) NOT NULL,
    code INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    description VARCHAR(30),
    size ENUM('x-small', 'small', 'medium', 'large', 'x-large') NOT NULL,
    price FLOAT NOT NULL,
    image BLOB,
    category_id BINARY(16),
    FOREIGN KEY clothe(category_id) REFERENCES category(id)
);

CREATE TABLE coupon (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    name VARCHAR(255),
    value FLOAT NOT NULL,
    valid DATE NOT NULL
);


CREATE TABLE address (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    name VARCHAR(255),
    neighborhood VARCHAR(255),
    number INT NOT NULL,
    cep INT NOT NULL
);

CREATE TABLE client (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    address_id BINARY(16),
    FOREIGN KEY client(address_id) REFERENCES address(id)
);

CREATE TABLE checkout (
    id BINARY(16) NOT NULL UNIQUE PRIMARY KEY,
    client_id BINARY(16),
    clothe_id BINARY(16),
    cupoun_id BINARY(16),
    total FLOAT NOT NULL,
    FOREIGN KEY client_id REFERENCES client(id),
    FOREIGN KEY clothe_id REFERENCES clothe(id),
    FOREIGN KEY cupoun_id REFERENCES coupon(id)
);

