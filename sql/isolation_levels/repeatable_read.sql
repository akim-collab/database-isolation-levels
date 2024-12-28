SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- Транзакция 1
START TRANSACTION;
SELECT * FROM accounts WHERE name = 'Alice';
-- Транзакция 2 пытается обновить ту же запись
-- START TRANSACTION;
-- UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';
-- COMMIT

-- Транзакция 1 продолжает
SELECT * FROM accounts WHERE name = 'Alice';
-- Повторное чтение показывает те же данные