SET autocommit = 0;
DROP DATABASE IF EXISTS PRIME;
CREATE DATABASE PRIME;

USE PRIME;

CREATE TABLE accounts (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts (name, balance) VALUES
("Rebbeca",1500.00),
("Issac",2500.00),
("Rachel",3500.00);

SELECT * FROM accounts;



