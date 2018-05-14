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
