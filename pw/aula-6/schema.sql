CREATE DATABASE employees;

USE employees;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    gender VARCHAR(255),
    last_name VARCHAR(255),
    job VARCHAR(255),
    cpf VARCHAR(20),
    salary VARCHAR(255),
    shift VARCHAR(50),
    image BLOB,
    description_of_office VARCHAR(255),
    status VARCHAR(255)
);

INSERT INTO `employee` (`id`, `name`, `email`, `phone`, `gender`, `last_name`, `job`, `cpf`, `salary`, `shift`, `image`, `description_of_office`, `status`) VALUES (1, 'Dado', 'dado@mail.com', '19964126189', 'male', 'Ter', 'vaga', '11234565468485', '1800', 'h\\bjdsbuy', NULL, 'nascjnashjkcbnhjasbcjul', 'license');
INSERT INTO `employee` (`id`, `name`, `email`, `phone`, `gender`, `last_name`, `job`, `cpf`, `salary`, `shift`, `image`, `description_of_office`, `status`) VALUES (2, 'Caio', 'caio@mail.com', '123456', 'male', 'Tres', 'Engenheiro', '987654', '5000', 'h\\bjdsbuy', NULL, 'nascjnashjkcbnhjasbcjul', 'ferias');
INSERT INTO `employee` (`id`, `name`, `email`, `phone`, `gender`, `last_name`, `job`, `cpf`, `salary`, `shift`, `image`, `description_of_office`, `status`) VALUES (3, 'Heloisa', 'heloisa@mail.com', '885522', 'mulher', 'Duo', 'Dançarina', '456', '5000', 'h\\bjdsbuy', NULL, 'nascjnashjkcbnhjasbcjul', 'ativo');
