-- Deleting Database before running this is because.
-- To overcome overriding errors whenever the program is evoked...
DROP DATABASE IF EXISTS col;

--Creating Table col.
CREATE DATABASE col;
USE col;
CREATE TABLE student(
	reg_no INT PRIMARY KEY, -- Constraint: Primary Key is defined to make reg_no Unique and NOT NULL.
    age INT,
    name VARCHAR(30),
    email VARCHAR(50) UNIQUE, -- Constraint: Unique is used here to make the email Unique for Each student.
    Marks FLOAT DEFAULT 0, -- Constraint: Default is used to initialize the Mark variable with 0.
    cgpa FLOAT DEFAULT 0 -- Constraint: Default is used to initialize the cgpa variable with 0.
);

-- Inserting values to the student table.
-- One of the method to insert the values with respect to the column names.
INSERT INTO student
(reg_no,age, name, email, Marks, cgpa) -- Order of the data to be entered.
VALUES
(1,20,"Daisy","daisypotes93@gmail.com",90,8.8), -- Important to maintain the order of the data as mentioned earlier.
(2,22,"Joshua","joshua25@gmail.com",100,9.9),
(3,25,"Nobil Initha","iniini20@gmail.com",98,9.0),
(4,25,"Suhita","suhita34@gmail.com",97,9.7);


-- Aggregate Function : MAX() is used to find the Maximum mark in the student table.
SELECT MAX(Marks)
FROM student;

-- Aggregate Function : SUM() is used to find the Sum of the marks in the student table.
SELECT SUM(Marks)
FROM student;

-- Aggregate Function : AVG() is used to find the Average of the marks in the student table.
SELECT AVG(Marks)
FROM student;

-- Aggregate Function : -- COUNT(Marks) counts only non-NULL values in Marks column.
SELECT COUNT(Marks)
FROM student;

-- With WHERE CLAUSE
SELECT COUNT(Marks)
FROM student
WHERE Marks = 100;