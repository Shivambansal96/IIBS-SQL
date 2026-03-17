-- DAY 2

CREATE DATABASE day2;

DROP DATABASE day2;  

USE day2;

CREATE DATABASE IF NOT EXISTS nothing;

DROP DATABASE IF EXISTS nothing;

SHOW DATABASES;

SHOW TABLES;

CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

SELECT id, name, age FROM students;
SELECT * FROM students;

INSERT INTO students
VALUES
(1, "Shivam", 26),
(2, "Sejal", 24);


INSERT INTO students
(id, age)
VALUES
(3, 28);


-- PRACTICE QUESTION 1

CREATE DATABASE xyz_ltd;

USE xyz_ltd;

CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

INSERT INTO employee_info
(id, name, salary)
VALUES
(1, "Shivam", 9000),
(2, "MOhini", 99000),
(3, "Sejal", 92000);

SELECT * FROM employee_info;

CREATE TABLE demo(
id INT PRIMARY KEY,
name VARCHAR(50),
Salary INT DEFAULT 25000
);

INSERT INTO demo
VALUES
(1, "Shivam", 39000),
(2, "Sejal", 53000);

INSERT INTO demo
(id, name)
VALUES
(3, "Mohini");

SELECT * FROM demo;


CREATE TABLE temp(
id INT PRIMARY KEY,
age INT NOT NULL,
city VARCHAR(50),
CONSTRAINT city_check CHECK ( age >= 18 AND city="Delhi"));

INSERT INTO temp
(id, age, city)
VALUES
(1, 38, "Delhi");

SELECT * FROM temp;


-- PRACTICE SET 2

CREATE DATABASE IF NOT EXISTS College;

USE College;

CREATE TABLE students(
rollNum INT PRIMARY KEY,
name VARCHAR(50),
grade CHAR(1),
marks INT
);

INSERT INTO students
(rollNum, name, grade, marks)
VALUES
(1, "aaa", "A", 99),
(2, "abcd", "F", 23),
(3, "efg", "B", 84),
(4, "hij", "D", 65),
(5, "xyz", "F", 9);


INSERT INTO students
VALUES
(7, "aaa", "F", 24);

SELECT DISTINCT name, marks FROM students;

SELECT DISTINCT rollNum, name, grade, marks FROM students;

SELECT * FROM students WHERE marks >= 40;

SELECT * FROM students WHERE marks >= 80 AND grade="A";
SELECT * FROM students WHERE marks >= 80 OR grade="A";

SELECT * FROM students LIMIT 3;

SELECT * FROM students
ORDER BY marks ASC;

SELECT * FROM students
ORDER BY marks DESC;

-- PRACTICE SET 3

SELECT * FROM students
ORDER BY marks DESC LIMIT 3;

SELECT count(name) FROM students;
SELECT min(marks) FROM students;
SELECT max(marks) FROM students;
SELECT sum(marks) FROM students;
SELECT avg(marks) FROM students;

DROP TABLE demo_students;

CREATE TABLE demo_students(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
city VARCHAR(30)
);

INSERT INTO demo_students
(id, name, marks, city)
VALUES
(1, "Shivam", 99, "Hyd"),
(2, "Anil", 65, "Bangalore"),
(3, "Abhi", 33, "Karnataka"),
(4, "Shiv", 22, "Hyd"),
(5, "hi", 87, "Hyd"),
(6, "Shivam", 22, "Bangalore"),
(7, "Abhishek", 91, "Bangalore"),
(8, "abcd", 45, "Karnataka");


SELECT city, max(marks)
FROM demo_students
GROUP BY city;

 