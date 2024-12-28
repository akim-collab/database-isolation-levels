USE testdb;
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';