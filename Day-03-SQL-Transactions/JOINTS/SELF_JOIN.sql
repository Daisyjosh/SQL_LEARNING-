USE PRIME;

-- VISIT INNER JOIN FILE FOR FULL CODE
SELECT * FROM customers;
SELECT * FROM orders;

-- SELF JOIN 
SELECT * 
FROM customers AS A
JOIN customers AS  B
on A.customer_id = B.customer_id;

