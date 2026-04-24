/*Data Manipulation Language (DML)
DML is about working with actual data inside tables
You will master:
INSERT → add data
UPDATE → modify data
DELETE → remove data*/
CREATE DATABASE DAY3_DB;
USE DAY3_DB;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT
);
-- INSERT SINGLE ROW
INSERT INTO students VALUES (1, 'Adnan', 21);
-- insert INTO MULTIPLE ROWS
INSERT INTO students (id, name, age) VALUES
(2, 'Abdul', 22),
(3, 'Azzu', 20),
(4, 'Sony', 23);
-- verify data
SELECT * FROM students;

/*
UPDATE (Modify Data)
Used to change existing values*/
UPDATE students
SET age = 25
WHERE id = 2;
-- update multiple rows
SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET age = 30
WHERE age < 21;
-- verify data
SELECT * FROM students;
