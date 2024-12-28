USE testdb;
START TRANSACTION;
SELECT * FROM accounts WHERE name = 'Alice';
-- Должны увидеть незакоммиченные изменения