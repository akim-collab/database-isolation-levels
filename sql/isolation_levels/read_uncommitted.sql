SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- Транзакция 1
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';
-- Не делаем COMMIT

-- Транзакция 2
START TRANSACTION;
SELECT * FROM accounts WHERE name = 'Alice';
-- Должны увидеть незакоммиченные изменения из Т1