DROP DATABASE clothestoresystem;
CREATE DATABASE clothestoresystem;

-- ATIVIDADE FEITA POR:
-- Caio Filipe Scheer Ferreira;
-- Matheus Jeronimo Todao;

USE clothestoresystem;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE clothe (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    genre ENUM('male', 'famale', 'unissex') NOT NULL,
    brand VARCHAR(255) NOT NULL,
    code INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    description VARCHAR(30),
    size VARCHAR(10) NOT NULL,
    price FLOAT NOT NULL,
    image BLOB,
    category_id INT,
    FOREIGN KEY clothe(category_id) REFERENCES category(id)
);

CREATE TABLE coupon (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    value FLOAT NOT NULL,
    valid DATE NOT NULL
);


CREATE TABLE address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    neighborhood VARCHAR(255),
    number INT NOT NULL,
    cep INT NOT NULL
);

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    address_id INT,
    FOREIGN KEY client(address_id) REFERENCES address(id)
);

CREATE TABLE checkout (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT REFERENCES client(id),
    clothe_id INT REFERENCES clothe(id),
    cupoun_id INT REFERENCES coupon(id),
    total FLOAT NOT NULL
);

-- Category
INSERT INTO category(name) VALUES("Tenis");
INSERT INTO category(name) VALUES("Calça");
INSERT INTO category(name) VALUES("Acessorio");
INSERT INTO category(name) VALUES("bermuda");
INSERT INTO category(name) VALUES("Camiseta");

-- Coupon
INSERT INTO coupon(name, value, valid) VALUES("Desconto Total DE JUNHO", 20.99, '2022-6-30');
INSERT INTO coupon(name, value, valid) VALUES("Desconto Total DE JULHO", 10.99, '2022-7-31');
INSERT INTO coupon(name, value, valid) VALUES("Desconto Total DE AGOSTO", 20.99, '2022-8-30');
INSERT INTO coupon(name, value, valid) VALUES("Desconto Total DE SETEMBRO", 20.99, '2022-9-30');
INSERT INTO coupon(name, value, valid) VALUES("Desconto Total DE OUTUBRO", 20.99, '2022-10-30');

-- Address
INSERT INTO address(name, neighborhood, number, cep) VALUES("Av. São Paulo", "JD Perola", 285, 125648);
INSERT INTO address(name, neighborhood, number, cep) VALUES("Av. Paulista", "JD Perola", 205, 125348);
INSERT INTO address(name, neighborhood, number, cep) VALUES("Av. Brasil", "JD Esmeralda", 255, 123248);
INSERT INTO address(name, neighborhood, number, cep) VALUES("Av. Ipiranga", "JD Esmeralda", 298, 166568);
INSERT INTO address(name, neighborhood, number, cep) VALUES("Av. SEM CEP", "JD Desconhecido", 588, 852568);

-- Client
INSERT INTO client(first_name, last_name, birth, cpf, address_id) VALUES("Matheus", "Todao", "2004-6-21", "12548698756", 1);
INSERT INTO client(first_name, last_name, birth, cpf, address_id) VALUES("Matheus", "Jeronimo", "2004-6-21", "12569698756", 2);
INSERT INTO client(first_name, last_name, birth, cpf, address_id) VALUES("Caio", "Scheer", "2004-2-3", "56548698756", 3);
INSERT INTO client(first_name, last_name, birth, cpf, address_id) VALUES("Caio", "Ferreira", "2004-6-3", "89548698756", 4);
INSERT INTO client(first_name, last_name, birth, cpf, address_id) VALUES("Eduardo", "Henrique", "2005-8-11", "15948698756", 5);

-- Clothe
INSERT INTO clothe(name, genre, brand, code, color, size, price, category_id) VALUES("Air Jordan", "male", "Nike", 45261, "white", "37", 800.56, 1);
INSERT INTO clothe(name, genre, brand, code, color, size, price, category_id) VALUES("Jordan", "famale", "Nike", 45891, "white", "37", 800.56, 1);
INSERT INTO clothe(name, genre, brand, code, color, size, price, category_id) VALUES("Bermuda camuflada", "male", "Nike", "camuflada", 4851, "Medium", 80, 4);
INSERT INTO clothe(name, genre, brand, code, color, size, price, category_id) VALUES("Bermuda lisa", "male", "Nike", 45121, "white", "G", 90, 4);
INSERT INTO clothe(name, genre, brand, code, color, size, price, category_id) VALUES("Calça Jogger", "unissex", "Nike", 78451, "white", "large", 200.56, 2);

-- Checkout
INSERT INTO checkout(client_id, clothe_id, coupon_id, total) VALUES(1, 2, 3, 1589);
INSERT INTO checkout(client_id, clothe_id, total) VALUES(2, 5, 352);
INSERT INTO checkout(client_id, clothe_id, coupon_id, total) VALUES(4, 3, 3, 500);
INSERT INTO checkout(client_id, clothe_id, total) VALUES(3, 2, 1289);
INSERT INTO checkout(client_id, clothe_id, total) VALUES(1, 2, 1589);

-- Select category
SELECT * FROM category;

-- Select clothe
SELECT * FROM clothe;

-- Select coupon
SELECT * FROM coupon;

-- Select address
SELECT * FROM address;

-- Select client
SELECT * FROM client;

-- Select checkout
SELECT * FROM checkout;
