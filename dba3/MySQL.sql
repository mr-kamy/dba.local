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
)
