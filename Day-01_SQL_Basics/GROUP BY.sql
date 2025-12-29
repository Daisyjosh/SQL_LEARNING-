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
(4,25,"Suhita","suhita34@gmail.com",97,9.7),
(5,19,"Harrini","harrini2006@gmail.com",99,9.1),
(6,20,"Abinaya","abinaya2025@gmail.com",99,9.7),
(7,19,"Niranjana","niranjana0434@gmail.com",97,9.7),
(8,20,"Deephiksha","deepi89@gmail.com",90,9.0);  

-- Syntax for GROUP BY CLAUSE
-- GROUP BY CLAUSE IS USED TO CHECK ROW WISE INFORMATION INTO SUMMARY ROWS.
-- It collects data from multiple records and groups the result by one or more column.
SELECT age, COUNT(reg_no)
FROM student
GROUP BY age;


SELECT age, MAX(Marks)
FROM student
GROUP BY age;



