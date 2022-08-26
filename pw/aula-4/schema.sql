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
    salary FLOAT,
    shift VARCHAR(50),
    image BLOB,
    description_of_office VARCHAR(255),
    status VARCHAR(255)
);
