DROP DATABASE drivethru;
CREATE DATABASE drivethru;
USE drivethru;

CREATE TABLE pratos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    valor INT NOT NULL
);

CREATE TABLE pedidos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT NOT NULL,
    prato_id INT,
    FOREIGN KEY pedidos(prato_id) REFERENCES pratos(id)
);

-- Adicionando um dado na tabela de pedido
ALTER TABLE pedidos
ADD codigo INT;

-- Adicionando tipo a mais na coluna codigo de pedidos
ALTER TABLE pedidos
MODIFY COLUMN codigo INT NOT NULL;

-- Inserindo dados na tabela de prato
INSERT INTO pratos(nome, descricao, valor) VALUES('Spicy X-Bacon', 'Bacon, hamburguer, pimenta', 14.99);
INSERT INTO pratos(nome, valor) VALUES('X-Bacon', 15);
INSERT INTO pratos(nome, valor) VALUES('X-Egg', 15);
INSERT INTO pratos(nome, valor) VALUES('X-Salada', 17);
INSERT INTO pratos(nome, valor) VALUES('MC Colosso', 6);
INSERT INTO pratos(nome, valor) VALUES('MC Flurry', 11.99);
INSERT INTO pratos(nome, valor) VALUES('Mc Nuggets', 10);
INSERT INTO pratos(nome, valor) VALUES('Batata frita pequena', 8);
INSERT INTO pratos(nome, valor) VALUES('Batata frita media', 10);
INSERT INTO pratos(nome, valor) VALUES('Batata frita grande', 16);

-- Inserindo dados na tabela de pedido
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(1, 000, 4);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(2, 002, 1);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(3, 003, 2);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(4, 004, 1);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(5, 005, 3);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(6, 006, 4);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(7, 007, 2);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(8, 008, 1);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(9, 009, 6);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(10, 010, 3);

UPDATE pedidos SET quantidade = 3 WHERE codigo = 002;
UPDATE pedidos SET quantidade = 2 WHERE codigo = 005;
UPDATE pedidos SET quantidade = 1 WHERE codigo = 007;

-- Deletando um pedido pelo id
DELETE FROM pedidos WHERE id = 1;
DELETE FROM pedidos WHERE id = 2;
DELETE FROM pedidos WHERE id = 8;

