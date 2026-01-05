USE PRIME;

-- Refer Inner Joints For Full Code... 
SELECT * FROM customers;
SELECT * FROM orders;

-- Left Join
SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

