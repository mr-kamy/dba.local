CREATE TABLE "books" (
  "id"     SERIAL,
  "title"  VARCHAR(250),
  "year"   INT,
  "author" VARCHAR(250),
  "price"  DECIMAL(6, 2)
);

CREATE TABLE "publishers" (
  "id"      SERIAL,
  "title"   VARCHAR(250),
  "adress"  VARCHAR(250),
  "founded" INT
);

INSERT INTO "books" ("title", "year", "author", "price")
VALUES
  ('Понедельник начинается в субботу', 2015, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 138),
  ('Последнее желание', 2014, 'Сапковский Анджей', 251),
  ('Марсианские хроники', 2016, 'Брэдбери Рэй', 302),
  ('Приемы объектно-ориентированного проектирования', 2017, 'Гамма Э., Хелм Р., Джонсон Р', 622),
  ('Essential Grammar in Use', 2017, 'Murphy Raymond', 1231),
  ('Обитаемый остров', 2015, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 232),
  ('Жук в муравейнике', 2016, 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович', 199),
  ('Кладбище домашних животных', 1998, 'Кинг С', 250),
  ('Зеленая миля', 1999, 'Кинг С', 200);

INSERT INTO "publishers" ("title", "adress", "founded")
VALUES
  ('АСТ', 'www.ast.ru', 1990),
  ('Cambridge', 'cambridge.org', 1584),
  ('Питер', 'www.piter.com', 1991),
  ('Эксмо', 'www.eksmo.ru', 1991);

SELECT *
FROM "books"
WHERE author = 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович';

SELECT *
FROM "books"
WHERE "price" <= 500;

SELECT
  "title",
  "year"
FROM books
WHERE "author" = 'Стругацкий Аркадий Натанович, Стругацкий Борис Натанович'
ORDER BY "year";

SELECT
  "author"
FROM "books"
WHERE year BETWEEN 1990 AND 1999;
