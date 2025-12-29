
CREATE TABLE user(
 id INT PRIMARY KEY,
 age INT,
 name VARCHAR(30) NOT NULL,
 email VARCHAR(50) UNIQUE,
 followers INT DEFAULT 0,
 following INT DEFAULT 0,
 CONSTRAINT CHECK (age >= 13)
);
-- Syntax for Inserting values in table.
-- Method I
INSERT INTO user
(id,age)
VALUES
(145,19);


CREATE TABLE posts(
 id INT PRIMARY KEY,
 content VARCHAR(100),
 user_id INT,
 FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Method II
INSERT INTO posts
VALUES
(234,"Hello",89);
