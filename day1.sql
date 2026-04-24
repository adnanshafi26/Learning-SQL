CREATE DATABASE college_db;

USE college_db;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Students VALUES (1, 'Adnan');

SELECT * FROM Students;

SELECT * FROM Students WHERE id = 1;

UPDATE Students SET name = 'Abdul' WHERE id = 1;

DELETE FROM Students WHERE id = 1;

SELECT * FROM Students;

SHOW DATABASES;

DROP DATABASE college_db;

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    salary INT
);

ALTER TABLE employees
ADD age INT;

SELECT * FROM employees;

ALTER TABLE employees
MODIFY salary FLOAT;

ALTER TABLE employees
DROP COLUMN age;

SELECT * FROM employees;

TRUNCATE TABLE employees;

SELECT * FROM employees;

DROP TABLE employees;

