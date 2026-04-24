CREATE DATABASE adnan_db1;

use adnan_db1;
-- Constraints are rules applied to columns to ensure data accuracy and integrity
/* PRIMARY KEY
Uniquely identifies each row
Cannot be NULL
Cannot repeat
*/
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

/*UNIQUE
No duplicate values allowed
*/
CREATE TABLE users (
    email VARCHAR(100) UNIQUE
);

/*NOT NULL
Column must have a value
*/
CREATE TABLE teachers (
    name VARCHAR(50) NOT NULL
);

/*DEFAULT
Sets a default value if none is provided
*/
CREATE TABLE employees (
    salary INT DEFAULT 10000
);

/*CHECK
Restricts values based on a condition
*/
CREATE TABLE voters(
    age INT CHECK (age >= 18)
);
