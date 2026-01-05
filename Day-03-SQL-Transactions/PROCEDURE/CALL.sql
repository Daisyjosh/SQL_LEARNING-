USE PRIME;
DROP PROCEDURE IF EXISTS check_balance;
DELIMITER $$
CREATE PROCEDURE check_balance(IN acc_id INT )
BEGIN 
	SELECT balance
    FROM accounts
    WHERE account_id = acc_id;
END $$

DELIMITER ;

CALL check_balance(1);