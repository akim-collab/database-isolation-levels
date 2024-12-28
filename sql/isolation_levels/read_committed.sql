SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Транзакция 1
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';
-- COMMIT

-- Транзакция 2
START TRANSACTION;
SELECT * FROM accounts WHERE name = 'Alice';
-- Увидим только зафиксированные изменения