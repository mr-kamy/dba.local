CREATE TABLE "products" (
  "id"    SERIAL,
  "name"  VARCHAR(250),
  "art"   CHAR(10) NOT NULL,
  "img"   VARCHAR(250),
  "price" NUMERIC(8, 2),
  "date"  DATE,
  "qt"    SMALLINT
);

INSERT INTO "products"
("name", "art", "img", "price", "date", "qt")
VALUES
  ('Зеркальный фотоаппарат Canon EOS 1300D Kit', 2569871539, '/img/1300.jpg', 22990, '2018-03-10', 17),
  ('Зеркальный фотоаппарат Nikon D3400 Kit', 2566547231, '/img/3400.jpg', 27990, '2017-12-05', 10),
  ('Зеркальный фотоаппарат Canon EOS 750D Kit', 2565574136, '/img/750d.jpg', 35100, '2018-02-14', 2),
  ('Sony Alpha ILCE-6000 Kit', 2569871539, '/img/sony.jpg', 34309, '2018-02-14', 5),
  ('Зеркальный фотоаппарат Nikon D5300 Kit', 2569871539, '/img/5300.jpg', 32509, '2016-07-18', 1);


/*
Вставка отрицательной цены проходит успешно, т.к. нет UNSIGNED;
 */
INSERT INTO "products"
("name", "art", "img", "price", "date", "qt")
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', 2569861539, '/img/200d.jpg', -33800, '2018-03-10', 17);

/*
Количество на складе меньше нуля проходит успешно, т.к. нет UNSIGNED;
 */
INSERT INTO "products"
("name", "art", "img", "price", "date", "qt")
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', 2569861539, '/img/200d.jpg', 33800, '2018-03-10', -5);

/*
Пустой артикул;
[23502] ERROR: null value in column "art" violates not-null constraint
 */
INSERT INTO "products"
("name", "art", "img", "price", "date", "qt")
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', NULL, '/img/200d.jpg', 33800, '2018-03-10', 5);
