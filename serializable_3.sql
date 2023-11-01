-- Шаг 2.3 => 1
-- Третью транзакцию явно объявляем только читающий (READ ONLY) и откладываемой (DEFERRABLE):
BEGIN ISOLATION LEVEL SERIALIZABLE READ ONLY DEFERRABLE; -- 3
SELECT * FROM accounts WHERE client = 'alice';
-- При попытке выполнить запрос транзакция блокируется, потому что иначе она приведет к аномалии.

-- Шаг 2.4 => 1
SELECT * FROM accounts WHERE client = 'bob';
COMMIT;