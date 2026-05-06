-- What are Set Operations? Set operations are used to combine results of multiple SELECT queries
-- Think like math sets: Combine data. Find common data. Find differences

CREATE DATABASE setops_db;
USE setops_db;

CREATE TABLE students_a (
    name VARCHAR(50)
);

CREATE TABLE students_b (
    name VARCHAR(50)
);

INSERT INTO students_a VALUES
('Adnan'),
('Ravi'),
('Ali'),
('John');

INSERT INTO students_b VALUES
('Ali'),
('Sara'),
('John'),
('David');

-- UNION: Combines results of two queries. Removes duplicates. 
SELECT name FROM students_a
UNION
SELECT name FROM students_b;

-- UNION ALL: Combines results of two queries. Keeps duplicates. 
SELECT name FROM students_a
UNION ALL
SELECT name FROM students_b;

-- INTERSECT: Returns only common values in both queries. 
SELECT name FROM students_a
INTERSECT
SELECT name FROM students_b;

-- EXCEPT: Returns values in first query but not in second. 
SELECT name FROM students_a
EXCEPT
SELECT name FROM students_b;
