USE PRIME;

SELECT * FROM customers;
SELECT * FROM orders;

-- OUTER JOIN, FULL JOIN, UNION
-- UNION => LEFT JOIN union RIGHT JOIN

SELECT * FROM customers as c
LEFT JOIN orders as o
ON c.customer_id = o.customer_id
UNION
SELECT * FROM customers as c
RIGHT JOIN orders as o
ON c.customer_id = o.customer_id;