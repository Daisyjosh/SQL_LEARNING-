DROP DATABASE IF EXISTS col;

CREATE DATABASE col;
USE col;
CREATE TABLE student(
	reg_no INT PRIMARY KEY,
    age INT,
    name VARCHAR(30),
    email VARCHAR(50) UNIQUE,
    Marks FLOAT DEFAULT 0,
    cgpa FLOAT DEFAULT 0
);

INSERT INTO student
(reg_no,age, name, email, Marks, cgpa)
VALUES
(1,20,"Daisy","daisypotes93@gmail.com",90,8.8),
(2,22,"Joshua","joshua25@gmail.com",100,9.9),
(3,25,"Nobil Initha","iniini20@gmail.com",98,9.0),
(4,25,"Suhita","suhita34@gmail.com",97,9.7);

-- WHERE IS USED IN SELECT TO CHECK CONSTRAINT BEFORE DISPLAYING.
SELECT name, email
FROM student
WHERE Marks >= 95;

-- BETWEEN IS ONE OF THE OPERATION USED WITH WHERE CLAUSE.
SELECT name, email
FROM student
WHERE Marks BETWEEN 90 AND 100;

-- NOT EQUAL RELATIONAL OPEARATOR USE CASE IN WHERE CLAUSE.
SELECT name, email 
FROM student
WHERE Marks != 100;

-- ANOTHER EXAMPLE.
SELECT name, email
FROM student
WHERE Marks >= 90 OR Marks = 100;

-- IN OPERATOR
SELECT name, reg_no, email
FROM student
WHERE email IN ("daisypotes93@gmail.com","iniini20@gmail.com","abs@gmail.com"); -- LIST

-- NOT IN OPERATOR
SELECT name, reg_no, email
FROM student
WHERE email NOT IN ("daisypotes93@gmail.com","iniini20@gmail.com","abs@gmail.com");