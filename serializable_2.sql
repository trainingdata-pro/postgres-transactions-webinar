-- 1. Отсутствие аномалий.

-- Шаг 1.2 =>
BEGIN ISOLATION LEVEL SERIALIZABLE;
SELECT sum(amount) FROM accounts WHERE client = 'bob';

-- Шаг 1.4 =>
UPDATE accounts SET amount = amount - 600.00 WHERE id = 3;
COMMIT;

------------------------------------------------------------------------------------------------------------------------

-- Шаг 2.2 => 3
BEGIN ISOLATION LEVEL SERIALIZABLE; -- 2
UPDATE accounts SET amount = amount - 100.00 WHERE id = 3;
COMMIT;