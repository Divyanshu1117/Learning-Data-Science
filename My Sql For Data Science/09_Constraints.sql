CREATE DATABASE divyanshu;
USE divyanshu;
SELECT * FROM students;
SELECT * FROM accounts;

CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE products (
    name VARCHAR(100),
    status VARCHAR(20) DEFAULT 'in_stock'
);

CREATE TABLE accounts (
    id INT,
    balance DECIMAL(10,2) CHECK (balance >= 0)
);
INSERT INTO accounts VALUES (1, 2);

CREATE TABLE college_students (
    roll_no INT PRIMARY KEY,
    age INT CONSTRAINT chk_age CHECK (age >= 5),
    email VARCHAR(100) UNIQUE
);
INSERT INTO college_students VALUES (1, 56, "divyanshu@gmail.com");
SELECT * FROM college_students;