-- Aggregate Functions: perform calculations on multiple rows and return one result

create database day5;
use day5;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    age INT,
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Adnan', 30000, 25, 'IT'),
(2, 'Ravi', 40000, 28, 'HR'),
(3, 'Ali', 35000, 24, 'IT'),
(4, 'John', 50000, 30, 'Finance'),
(5, 'Sara', 45000, 27, 'HR');

-- COUNT()Counts number of rows
SELECT COUNT(*) FROM employees;

-- With condition  Count only IT employees
SELECT COUNT(*) FROM employees WHERE department = 'IT';

-- SUM() Total salary of all employees, Adds values
SELECT SUM(salary) FROM employees;

-- AVG() Finds average
SELECT AVG(salary) FROM employees;

-- MIN() Finds smallest value
SELECT MIN(salary) FROM employees;

-- MAX() Finds largest value
SELECT MAX(salary) FROM employees;

SELECT 
    COUNT(CASE WHEN department = 'HR' THEN 1 END) AS hr_count,
    SUM(CASE WHEN department = 'IT' THEN salary END) AS total_it_salary,
    AVG(age) AS avg_age,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees;