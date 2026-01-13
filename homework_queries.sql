-- Домашнє завдання 3: SQL DQL команди
-- goit-rdb-hw-03

-- Завдання 1.1: Вибрати всі стовпчики з таблиці products
SELECT * 
FROM products;

-- Завдання 1.2: Вибрати name, phone з таблиці shippers
SELECT name, phone 
FROM shippers;

-- Завдання 2: Середнє, максимальне та мінімальне значення price
SELECT 
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;

-- Завдання 3: Унікальні category_id та price, топ 10 за спаданням ціни
SELECT DISTINCT 
    category_id, 
    price
FROM products
ORDER BY price DESC
LIMIT 10;

-- Завдання 4: Кількість продуктів з ціною від 20 до 100
SELECT 
    COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- Завдання 5: Кількість продуктів та середня ціна по кожному постачальнику
SELECT 
    supplier_id,
    COUNT(*) AS product_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;
