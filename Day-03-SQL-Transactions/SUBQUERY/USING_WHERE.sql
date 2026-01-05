USE PRIME;

SELECT * FROM customers;
SELECT * FROM orders;

-- SUBQUERY WITH WHERE
SELECT * 
FROM orders
WHERE amount > (
	SELECT AVG(amount)
    FROM orders
);



