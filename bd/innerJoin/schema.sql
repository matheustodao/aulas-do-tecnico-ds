CREATE DATABASE loja;

USE loja;

CREATE TABLE clientes (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  rg VARCHAR(18) NOT NULL,
  cpf VARCHAR(18) NOT NULL
)

CREATE TABLE categorias (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
)

CREATE TABLE produtos (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  preco_custo FLOAT NOT NULL,
  preco_venda FLOAT NOT NULL,
  categoria_id INT,
  FOREIGN KEY produto(categoria_id) REFERENCES categoria(id)
)

CREATE TABLE vendas (
  id INT AUTO INCREMENT PRIMARY KEY,
  produto_id INT,
  FOREIGN KEY venda(produto_id) REFERENCES produto(id)
)

SELECT vendas.*, produtos.*
FROM vendas
INNER JOIN produtos ON vendas.produto_id = produtos.id
