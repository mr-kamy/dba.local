CREATE TABLE "cats" (
  "id"  SERIAL,
  "cat" VARCHAR(200),
  PRIMARY KEY ("id")
);

CREATE TABLE "brands" (
  "id"    SERIAL,
  "brand" VARCHAR(200),
  PRIMARY KEY ("id")
);

INSERT INTO "cats" ("cat")
VALUES
  ('Еда'),
  ('Посуда'),
  ('Обувь');

INSERT INTO "brands" ("brand") (
  VALUES
    ('Nestle'),
    ('Puma'),
    ('Siemens'),
    ('Shell'),
    ('Adidas')
);

ALTER TABLE "products"
  ADD COLUMN "cat_id" INTEGER DEFAULT NULL;
ALTER TABLE "products"
  ADD COLUMN "br_id" INTEGER DEFAULT NULL;


ALTER TABLE "products"
  ADD CONSTRAINT "cats"
FOREIGN KEY ("cat_id")
REFERENCES "cats" ("id")
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE "products"
  ADD CONSTRAINT "brands"
FOREIGN KEY ("br_id")
REFERENCES "brands" ("id")
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- Выборка всех товаров с указанием их категории и бренда
SELECT
  *,
  (SELECT cat
   FROM cats
   WHERE cats.id = products.cat_id),
  (SELECT brand
   FROM brands
   WHERE brands.id = products.br_id)
FROM products;

-- Все товары, бренд которых начинается на букву "А"
SELECT *
FROM products
  INNER JOIN brands
    ON products.br_id = brands.id
WHERE brand LIKE ('A%');

-- Список категорий и число товаров в каждой (используйте подзапросы и функцию COUNT(), использовать группировку нельзя)
SELECT
  cat,
  (SELECT COUNT(*)
   FROM products
   WHERE cat_id = cats.id)
FROM cats;

-- Выборка для каждой категории список брендов товаров, входящих в нее
SELECT DISTINCT
  cats.cat,
  brands.brand
FROM products
  INNER JOIN brands ON products.br_id = brands.id
  INNER JOIN cats ON products.cat_id = cats.id
ORDER BY cats.cat;
