USE Prime;

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city  VARCHAR(50)
);

INSERT INTO customers VALUES
(1,"Daisy Panimariyal J","Tuticorin"),
(2,"Jaya Potes M","Coimbatore"),
(3,"Alice Sagaya Mary J","Coimbatore"),
(4,"Nobil Initha J","Tuticorin");

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders VALUES
(101,1,500),
(102,1,900),
(103,4,800),
(104,3,700);

INSERT INTO orders VALUES
(105,7,1000);


SELECT * FROM customers;
SELECT * FROM orders;

-- Inner Join 
SELECT * FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.name, c.customer_id, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;