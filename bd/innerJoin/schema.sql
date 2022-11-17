CREATE DATABASE loja;

USE loja;

CREATE TABLE cliente (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  rg VARCHAR(18) NOT NULL,
  cpf VARCHAR(18) NOT NULL
)

CREATE TABLE categoria (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
)

CREATE TABLE produto (
  id INT AUTO INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  preco_custo FLOAT NOT NULL,
  preco_venda FLOAT NOT NULL,
  categoria_id INT,
  FOREIGN KEY produto(categoria_id) REFERENCES categoria(id)
)

CREATE TABLE venda (
  id INT AUTO INCREMENT PRIMARY KEY,
  produto_id INT,
  cliente_id INT
  FOREIGN KEY venda(produto_id) REFERENCES produto(id),
  FOREIGN KEY venda(cliente_id) REFERENCES cliente(id)
)
