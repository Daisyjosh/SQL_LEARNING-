USE PRIME;

SET autocommit = 0;

START TRANSACTION;

UPDATE accounts SET balance = balance + 100 WHERE id = 1;
UPDATE accounts SET balance = balance - 100 WHERE id = 2;

COMMIT;

SELECT * FROM accounts;
