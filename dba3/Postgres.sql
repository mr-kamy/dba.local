CREATE TABLE "products" (
  "id"       SERIAL,
  "art"      CHAR(10) UNIQUE NOT NULL,
  "name"     VARCHAR(250),
  "price"    NUMERIC(8, 2),
  "oldprice" NUMERIC(8, 2) DEFAULT NULL,
  "img"      VARCHAR(250),
  "date"     DATE,
  "qt"       INT,
  PRIMARY KEY ("id")
);


-- 10 самых новых товаров
EXPLAIN SELECT *
        FROM "products"
        ORDER BY "date" DESC
        LIMIT 10;
/*
выборка проходит по всей таблице в 45ms
Limit  (cost=44.61..44.63 rows=10 width=74)
 */
CREATE INDEX date_index
  ON products (date);
/*
  Используется индекс
  Limit  (cost=0.28..1.14 rows=10 width=74)
 */


-- 10 самых дешевых товаров
EXPLAIN SELECT *
        FROM "products"
        ORDER BY "price"
        LIMIT 10;
/*
выборка по всей таблице в 38ms
Limit  (cost=44.61..44.63 rows=10 width=74)
 */
CREATE INDEX "price_index"
  ON "products" ("price");
/*
Limit  (cost=0.28..1.14 rows=10 width=74)
 */

-- 10 товаров, цена на которые максимально снижена
EXPLAIN SELECT *
        FROM "products"
        WHERE "oldprice" IS NOT NULL
        ORDER BY "oldprice" - "price" DESC
        LIMIT 10;
/*
сканирование идет по всей таблице
Limit  (cost=34.74..34.77 rows=10 width=106)
 */
CREATE INDEX "oldprice_index"
  ON "products" ("oldprice");
/*
индекс не используется
 */


-- Выбирают те товары, чей артикул начинается с символов "TEST"
EXPLAIN SELECT *
        FROM "products"
        WHERE "art" LIKE 'TEST%';
/*
Seq Scan on products  (cost=0.00..25.50 rows=505 width=74)
 */
CREATE INDEX "art_index"
  ON "products" ("art");
/*
Индекс не используется
 */
