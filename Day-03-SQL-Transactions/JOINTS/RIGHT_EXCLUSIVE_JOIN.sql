USE PRIME;

-- VISIT INNER JOIN FILE FOR FULL CODE
SELECT * FROM customers;
SELECT * FROM orders;

-- RIGHT EXCLUSIVE JOIN
SELECT * FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;
