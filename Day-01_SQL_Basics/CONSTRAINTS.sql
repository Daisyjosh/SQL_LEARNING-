-- CONSTRAINTS Covered here: UNIQUE, NOT NULL, DEFAULT.
CREATE TABLE example_constraints(
 id INT UNIQUE, -- UNIQUE: Unique and Not NULL.
 age INT,
 name VARCHAR(30) NOT NULL, -- NOT NULL: Should be filled.
 email VARCHAR(50) UNIQUE,
 Marks FLOAT DEFAULT 0, -- DEFAULT: initializinig Variables with default values.
 cgpa FLOAT DEFAULT 0,
 CONSTRAINT CHECK (age >= 18) -- CHECK: Condition to check before adding to the table.
);