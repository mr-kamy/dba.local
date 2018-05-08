CREATE TABLE `products` (
  `id`    INTEGER PRIMARY KEY AUTOINCREMENT,
  `name`  TEXT,
  `art`   TEXT NOT NULL ,
  `img`   TEXT,
  `price` INTEGER,
  `date`  TEXT,
  `qt`    INTEGER
);

INSERT INTO `products`
(`name`, `art`, `img`, `price`, `date`, `qt`)
VALUES
  ('Зеркальный фотоаппарат Canon EOS 1300D Kit', 2569871539, '/img/1300.jpg', 1379400, '2018 - 03 - 10', 17),
  ('Зеркальный фотоаппарат Nikon D3400 Kit', 2566547231, '/img/3400.jpg', 1679400, '2017 - 12 - 05', 10),
  ('Зеркальный фотоаппарат Canon EOS 750D Kit', 2565574136, '/img/750d.jpg', 2106000, '2018 - 02 - 14', 2),
  ('Sony Alpha ILCE-6000 Kit', 2569871539, '/img/sony.jpg', 2058540, '2018 - 02 - 14', 5),
  ('Зеркальный фотоаппарат Nikon D5300 Kit', 2569871539, '/img/5300.jpg', 1950540, '2016 - 07 - 18', 1);


/*
Вставка отрицательной цены проходит успешно, т.к. нет UNSIGNED;
 */
INSERT INTO `products`
(`name`, `art`, `img`, `price`, `date`, `qt`)
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', 2569861539, '/img/200d.jpg', -2028000, '2018-03-10', 17);

/*
Количество на складе меньше нуля проходит успешно, т.к. нет UNSIGNED;
 */
INSERT INTO `products`
(`name`, `art`, `img`, `price`, `date`, `qt`)
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', 2569861539, '/img/200d.jpg', 2028000, '2018-03-10', -5);

/*
Пустой артикул;
[19] [SQLITE_CONSTRAINT_NOTNULL]  A NOT NULL constraint failed (NOT NULL constraint failed: products.art)
 */
INSERT INTO `products`
(`name`, `art`, `img`, `price`, `date`, `qt`)
VALUES
  ('Зеркальный фотоаппарат Canon EOS 200D Kit', NULL, '/img/200d.jpg', 2028000, '2018-03-10', 5);
