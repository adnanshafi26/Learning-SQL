-- Why Do We Need JOIN? In real databases, data is split into multiple tables
-- Foreign Key .student_id in Courses is a Foreign Key.  It refers to id in Students. This is how tables are connected
CREATE DATABASE school_db;
USE school_db;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students VALUES
(1, 'Adnan'),
(2, 'Ravi');

INSERT INTO courses VALUES
(101, 1, 'DBMS'),
(102, 2, 'Java');

-- INNER JOIN  Returns only matching rows from both tables.  (Only matched data is shown)
SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.id = courses.student_id;

-- LEFT JOIN Returns: All rows from LEFT table. Matching rows from RIGHT table
SELECT students.name, courses.course
FROM students
LEFT JOIN courses
ON students.id = courses.student_id;

-- RIGHT JOIN Returns: All rows from RIGHT table.  Matching rows from LEFT table
SELECT students.name, courses.course
FROM students
RIGHT JOIN courses
ON students.id = courses.student_id;

-- FULL JOIN Returns: All rows from both tables. Matching where possible.  In MySQL:FULL JOIN is not directly supported
SELECT * FROM students
LEFT JOIN courses ON students.id = courses.student_id
UNION
SELECT * FROM students
RIGHT JOIN courses ON students.id = courses.student_id;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

INSERT INTO employees (id, name, manager_id) VALUES
(1, 'A', NULL),
(2, 'B', 1),
(3, 'C', 1),
(4, 'D', 2);

SELECT * FROM employees;

-- SELF JOIN  A table joins with itself
SELECT e.name AS employee, m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.id;