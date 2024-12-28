SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Транзакция 1
START TRANSACTION;
SELECT * FROM accounts WHERE name = 'Alice';

-- Транзакция 2 пытается обновить ту же запись
-- START TRANSACTION;
-- UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';
-- COMMIT

-- Транзакция 1 продолжает
SELECT * FROM accounts WHERE name = 'Alice';
-- Появится блокировка до завершения транзакции 1