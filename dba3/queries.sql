-- Выбирают 10 самых новых товаров
SELECT * FROM `products`
ORDER BY `date` DESC LIMIT 10;

-- Выбирают 10 самых дешевых товаров
SELECT * FROM `products`
ORDER BY `price` LIMIT 10;

-- Выбирают 10 товаров, цена на которых была максимально снижена (в абсолютном или относительном смысле)
SELECT * FROM `products`
  WHERE `oldprice` IS NOT NULL
ORDER BY `oldprice` - `price` DESC
LIMIT 10;

-- Выбирают те товары, чей артикул начинается с символов "TEST" (такие товары должны быть в таблице!), используя оператор LIKE

SELECT * FROM `products`
WHERE `art` LIKE 'TEST%';
