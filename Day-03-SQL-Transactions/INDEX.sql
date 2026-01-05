USE PRIME;

SELECT * FROM accounts;

ALTER TABLE accounts
ADD COLUMN branch VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;
UPDATE accounts
SET branch = CASE
    WHEN id IN (1, 2) THEN 'DHARMAPURI'
    WHEN id = 3 THEN 'KARAIKAAL'
END;

CREATE INDEX id_branch ON accounts(branch);

SHOW INDEX FROM accounts;

-- COMPOSITE INDEX
CREATE INDEX id2 ON accounts(branch,balance);