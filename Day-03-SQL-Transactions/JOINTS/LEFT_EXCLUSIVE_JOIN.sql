USE PRIME;

-- VISIT INNER JOIN FILE FOR FULL CODE
SELECT * FROM customers;
SELECT * FROM orders;

-- LEFT EXCLUSIVE JOIN
SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

