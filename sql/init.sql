DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;

CREATE TABLE accounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL
);

INSERT INTO accounts (name, balance) VALUES
('Alice', 1000.00),
('Bob', 1000.00),
('Charlie', 1000.00);
