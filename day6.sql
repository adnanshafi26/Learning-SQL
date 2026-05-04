-- What is GROUP BY?  GROUP BY is used to group rows that have the same values .  Then we apply aggregate functions on each group  
-- Think: “Divide data into categories, then calculate”

create database day6;
use day6;

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

-- GROUP BY Example Count employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
-- It groups rows by department  Then counts each group

-- WHERE vs HAVING
-- WHERE Filters rows before grouping
SELECT department, COUNT(*) 
FROM employees
WHERE salary > 30000
GROUP BY department;
-- First filter → then group

-- HAVING  Filters groups after grouping
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

-- WHERE → filters rows
-- HAVING → filters groups



