USE PRIME;

-- Refer Inner Joints For Full Code... 
SELECT * FROM customers;
SELECT * FROM orders;

-- RIGHT JOIN
SELECT * 
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;