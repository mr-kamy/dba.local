CREATE TABLE `books` (
  `id`     INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `title`  TEXT,
  `year`   INTEGER,
  `author` TEXT,
  `price`  INTEGER
);

CREATE TABLE `publishers` (
  `id`      INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `title`   TEXT,
  `adress`  TEXT,
  `founded` INTEGER
);

INSERT INTO `books` (`title`, `year`, `author`, `price`)
VALUES
  ('Понедельник начинается в субботу', 2015, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 8280),
  ('Последнее желание', 2014, 'Сапковский Анджей', 15060),
  ('Марсианские хроники', 2016, 'Брэдбери Рэй', 18120),
  ('Приемы объектно-ориентированного проектирования', 2017, 'Гамма Э., Хелм Р., Джонсон Р', 37320),
  ('Essential Grammar in Use', 2017, 'Murphy Raymond', 73860),
  ('Обитаемый остров', 2015, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 13920),
  ('Жук в муравейнике', 2016, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 11940),
  ('Кладбище домашних животных', 1998, 'Кинг С', 15000),
  ('Зеленая миля', 1999, 'Кинг С', 12000);

INSERT INTO `publishers` (`title`, `adress`, `founded`)
VALUES
  ('АСТ', 'www.ast.ru', 1990),
  ('Cambridge', 'cambridge.org', 1584),
  ('Питер', 'www.piter.com', 1991),
  ('Эксмо', 'www.eksmo.ru', 1991);

SELECT *
FROM `books`
WHERE author = 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович';

SELECT *
FROM `books`
WHERE `price` <= 30000;

SELECT
  `title`,
  `year`
FROM books
WHERE `author` = 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович'
ORDER BY `year`;

SELECT
  `author`
FROM `books`
WHERE year BETWEEN 1990 AND 1999;
