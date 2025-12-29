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


-- SELECT IS USED TO DISPLAY THE CONTENT OF A TABLE.
 -- * => ALL
SELECT * FROM student;

-- SELECT SPECIFIC COLUMNS FROM A TABLE.
SELECT reg_no, name FROM student;

-- SELECT COLUMNS WITH DISTINCT AGE IN STUDENT TABLE.
SELECT DISTINCT age FROM Student;

