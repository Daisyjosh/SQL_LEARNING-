USE PRIME;

SELECT * FROM customers;
SELECT * FROM orders;

CREATE VIEW view2 AS
SELECT c.customer_id, c.name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT * FROM view2;

-- DROP VIEW
DROP VIEW view2;