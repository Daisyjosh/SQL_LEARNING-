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

-- Order to Execute Multiple Clauses
SELECT age, MAX(Marks)
From student
GROUP BY age
HAVING Max(Marks) > 95
ORDER BY age ASC;