USE PRIME;

SELECT * FROM customers;
SELECT * FROM orders;

-- WITH FROM
SELECT 
summary.customer_id,
summary.avg_amount
FROM
(
	SELECT customer_id, AVG(amount) AS avg_amount 
    FROM orders
    GROUP BY customer_id
)AS summary;