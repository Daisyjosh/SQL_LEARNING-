USE PRIME;

SET autocommit = 0;

START TRANSACTION;

UPDATE accounts SET balance = balance + 100 WHERE id = 1;
COMMIT;
UPDATE accounts SET balance = balance - 100 WHERE id = 3;
ROLLBACK;

SELECT * FROM accounts;