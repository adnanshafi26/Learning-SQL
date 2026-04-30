CREATE database DAY4;
USE DAY4;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Adnan', 21, 'Hyderabad'),
(2, 'Ravi', 22, 'Chennai'),
(3, 'Ali', 20, 'Delhi'),
(4, 'John', 23, 'Mumbai'),
(5, 'Sara', NULL, 'Delhi');

-- ORDER BY (Sorting Data)
-- Used to sort results BY DEFAULT ASCENDING
SELECT * FROM students ORDER BY age; 

SELECT * FROM students ORDER BY age DESC;

-- Sort by multiple columns
SELECT * FROM students ORDER BY city, age; 

-- LIKE (Pattern Matching) Used for searching text
-- STARTS WITH A
SELECT * FROM students WHERE name LIKE 'A%';

-- ENDS WITH N
SELECT * FROM students WHERE name LIKE '%n';

-- CONTAINS A
SELECT * FROM students WHERE name LIKE '%a%';

-- SINGLE CHARACTER(_) NOT FIRST CHARACTER, IT SHOULD BE SECOND CHARACTER
SELECT * FROM students WHERE name LIKE '_a%';

-- BETWEEN Used for range values
SELECT * FROM students WHERE age BETWEEN 20 AND 22;

-- IN (Multiple Values)  Used instead of multiple OR conditions
SELECT * FROM students WHERE city IN ('Delhi', 'Mumbai');

-- IS NULL Used to find missing values
SELECT * FROM students WHERE age IS NULL;

--  NOT NULL VALUES
SELECT * FROM students WHERE age IS NOT NULL;

