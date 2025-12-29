USE COLLEGE;

CREATE TABLE student(
	roll_no INT PRIMARY KEY,
    stud_name VARCHAR(50),
    email_id VARCHAR(100),
    department VARCHAR(10),
    gender VARCHAR(10)
);

CREATE TABLE staff(
	staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    email_id VARCHAR(100),
    department VARCHAR(10)
);

INSERT INTO student
VALUES
(1,"Aron Josh","aronjosh2030@gmail.com","CSE","Male"),
(2,"Riya Josh","riyajosh2028@gmail.com","IT","Female"),
(3,"Suzhina Josh","aronjosh2032@gmail.com","CSE","Female"),
(4,"Diya Josh","diyajosh2034@gmail.com","AIML","Female");

INSERT INTO staff
VALUES
(1,"Usha","usha@college.ac.in","CSE"),
(2,"Deva Priya","devapriya@college.ac.in","CSE"),
(3,"Navamnai","Navamani@college.ac.in","AIML"),
(4,"Teresa Moncy","teresamoncy@college.ac.in","ENGLISH"),
(5,"Cactus Lily","cactuslily@college.ac.in","EEE");

-- ORDER BY CLAUSE is used to sort the result-set in ascending or descending order.

SELECT staff_id, staff_name, email_id FROM staff
ORDER BY staff_name ASC;
 
SELECT staff_id, staff_name, email_id FROM staff
ORDER BY staff_name DESC;