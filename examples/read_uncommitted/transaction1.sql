USE testdb;
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE name = 'Alice';
-- Не делаем COMMIT для демонстрации грязного чтения