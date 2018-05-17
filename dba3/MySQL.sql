CREATE TABLE `products` (
  `id`       SERIAL,
  `art`      CHAR(10) UNIQUE NOT NULL,
  `name`     VARCHAR(250),
  `price`    DECIMAL(8, 2) UNSIGNED,
  `oldprice` DECIMAL(8, 2) UNSIGNED DEFAULT NULL,
  `img`      VARCHAR(250),
  `date`     DATE,
  `qt`       INT UNSIGNED,
  PRIMARY KEY (`id`)
);

-- 10 самых новых товаров
EXPLAIN SELECT * FROM `products`
ORDER BY `date` DESC LIMIT 10;
/*
Запрос выполнялся 45ms
Для нахождения результата используется сканирование всей таблицы
 */


-- 10 самых дешевых товаров
EXPLAIN SELECT * FROM `products`
ORDER BY `price` LIMIT 10;
/*
Запрос выполнялся 69ms
Для нахождения результата используется сканирование всей таблицы
 */

--  10 товаров, цена на которых была максимально снижена
EXPLAIN SELECT * FROM `products`
ORDER BY `oldprice` - `price` DESC LIMIT 10;
/*
Запрос выполнялся 49ms
Для нахождения результата используется сканирование всей таблицы
 */

-- Выбирают те товары, чей артикул начинается с символов "TEST"
EXPLAIN SELECT * FROM `products`
WHERE `art` LIKE 'TEST%';
/*
Запрос выполнялся 109ms
Для нахождения результата используется сканирование всей таблицы
Добавим индекс полю артикул
Запрос выполнялся 58ms
Сканировалась вся таблица
Добавленный индекс показывается в поле possible keys.
 */
ALTER TABLE `products` ADD INDEX `art_index` (`art`);
