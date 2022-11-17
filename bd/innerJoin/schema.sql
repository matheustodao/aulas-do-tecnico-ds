DROP DATABASE loja;
CREATE DATABASE loja;

USE loja;

CREATE TABLE clientes (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  rg VARCHAR(18) NOT NULL,
  cpf VARCHAR(18) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE categorias (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE produtos (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  preco_custo FLOAT NOT NULL,
  preco_venda FLOAT NOT NULL,
  categoria_id INT REFERENCES categoria(id),
  PRIMARY KEY(id)
);

CREATE TABLE vendas (
  id INT NOT NULL AUTO_INCREMENT,
  produto_id INT REFERENCES produtos(id),
  cliente_id INT REFERENCES clientes(id),
  total FLOAT NOT NULL,
  PRIMARY KEY(id)
);

-- Clientes

INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (1, 'Carol', 'sbo', '0000000', '827364783567275', '723874032');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (2, 'Bia', 'americana', '3785437', '87937=874', '2857892374');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (3, 'Felipe', 'americana', '37854374', '87937=87478', '28578923748');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (4, 'Sarah', 'americana', '3785437', '87937=874', '2857892374');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (5, 'Carol Souza', 'sbo', '0000000', '827364783567275', '723874032');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (6, 'Felipe Ferrari', 'americana', '37854374', '87937=87478', '28578923748');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (7, 'Felipe Lambo', 'americana', '37854374', '87937=87478', '28578923748');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (8, 'Bia Gen', 'americana', '3785437', '87937=874', '2857892374');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (9, 'Bia Parolin', 'americana', '3785437', '87937=874', '2857892374');
INSERT INTO `clientes` (`id`, `name`, `endereco`, `telefone`, `rg`, `cpf`) VALUES (10, 'Sarah Silva', 'americana', '37854374', '87937=87478', '28578923748');

-- Categorias

INSERT INTO `categorias` (`id`, `name`) VALUES (4, 'Acessorios');
INSERT INTO `categorias` (`id`, `name`) VALUES (6, 'Calças');
INSERT INTO `categorias` (`id`, `name`) VALUES (3, 'Camisetas');
INSERT INTO `categorias` (`id`, `name`) VALUES (2, 'Celular');
INSERT INTO `categorias` (`id`, `name`) VALUES (9, 'Legs');
INSERT INTO `categorias` (`id`, `name`) VALUES (8, 'Moletom');
INSERT INTO `categorias` (`id`, `name`) VALUES (1, 'Notebook');
INSERT INTO `categorias` (`id`, `name`) VALUES (10, 'Regatas');
INSERT INTO `categorias` (`id`, `name`) VALUES (7, 'Roupa intima');
INSERT INTO `categorias` (`id`, `name`) VALUES (5, 'Tenis');


-- Produtos

INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (1, 'Produto 1 ', 1, 213, 1425, 1);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (10, 'Produto 10', 2, 213, 325, 9);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (2, 'Produto 2', 1, 213, 1425, 2);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (3, 'Produto 3', 4, 113, 125, 6);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (4, 'Produto 4', 2, 213, 325, 7);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (5, 'Produto 5', 2, 213, 325, 8);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (6, 'Produto 6', 2, 213, 325, 5);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (7, 'Produto 7', 2, 213, 325, 4);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (8, 'Produto 8', 2, 213, 325, 3);
INSERT INTO `produtos` (`id`, `name`, `quantidade`, `preco_custo`, `preco_venda`, `categoria_id`) VALUES (9, 'Produto 9', 2, 213, 325, 10);

-- Vendas

INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (1, 1, 1);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (2, 2, 2);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (3, 3, 3);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (4, 4, 4);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (5, 5, 5);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (6, 6, 6);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (7, 7, 7);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (8, 8, 8);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (9, 9, 9);
INSERT INTO `vendas` (`id`, `produto_id`, `cliente_id`) VALUES (10, 10, 0);

SELECT vendas.*, produtos.*, clientes.name AS cliente_name, clientes.rg AS cliente_rg, categorias.name AS categoria_name
FROM vendas
INNER JOIN produtos ON vendas.produto_id = produtos.id
INNER JOIN categorias ON vendas.produto_id = categorias.id
INNER JOIN clientes ON vendas.produto_id = clientes.id;