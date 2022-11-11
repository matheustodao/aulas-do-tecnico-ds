CREATE DATABASE heros;

USE heros;

CREATE TABLE hero (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    image BLOB,
    role VARCHAR(255)
);

INSERT INTO hero (name, role, image) VALUES('Ahri', 'Mage', null);
INSERT INTO hero (name, role, image) VALUES('Bard', 'Support', null);
INSERT INTO hero (name, role, image) VALUES('Galio', 'Tank', null);
INSERT INTO hero (name, role, image) VALUES('Garen', 'Fighter', null);
