CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT
);

INSERT INTO students VALUES
(1, 'Adnan', 80),
(2, 'Abdul', 60),
(3, 'Azzu', 75),
(4, 'Akash', 90),
(5, 'Sony', 50);

SELECT * FROM students;

-- What is a Subquery? A subquery is a query inside another query.
-- Single-Row Subquery Returns only one value.
SELECT * FROM students 
WHERE marks > (  -- then this (outer query)
    SELECT AVG(marks) FROM students  -- it runs first(inner query)
);

-- Multi-Row Subquery: Returns multiple values
-- Key Operators for Multi-row
-- IN → match any value
-- ANY → compare with any value
-- ALL → compare with all values

-- Condition	Think as
-- > ANY	> minimum value
-- > ALL	> maximum value

SELECT * FROM students
WHERE marks IN (
    SELECT marks FROM students WHERE marks > 70
);

SELECT * FROM students
WHERE marks > ANY (
    SELECT marks FROM students WHERE marks < 80  --  here we get 3 values 60,75,50 we choose 50 because atleast one value should be satisy
);

SELECT * FROM students
WHERE marks > ALL (
    SELECT marks FROM students WHERE marks < 80
);

-- Correlated Subquery: Inner query depends on outer query. Runs for each row
SELECT s1.name, s1.marks
FROM students s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM students s2
    WHERE s2.id != s1.id   -- Why s2.id != s1.id? To exclude the current student from average
);