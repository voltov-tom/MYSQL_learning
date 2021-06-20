-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
use sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	birthday_at DATE DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM users;

-- сама транзакция
START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM users;


-- Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

use shop;
CREATE OR REPLACE VIEW prods_view(prod_id, prod_name, cat_name) AS
	SELECT p.id AS prod_id, p.name, cat.name
		FROM products p
		LEFT JOIN catalogs cat 
		ON p.catalog_id = cat.id;

SELECT * FROM prods_view;


-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP PROCEDURE IF EXISTS hello;
delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день!';
		WHEN CURTIME() BETWEEN '18:00:00' AND '24:00:00' THEN
			SELECT 'Добрый вечер!';
		ELSE
			SELECT 'Доброй ночи!';
	END CASE;
END //
delimiter ;

CALL hello();


-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TRIGGER IF EXISTS null_trigger;
delimiter //
CREATE TRIGGER null_trigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'null_error: fields "name" and "description" no must be "null"';
	END IF;
END //
delimiter ;

-- проверка
INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 5000, 2);

INSERT INTO products (name, description, price, catalog_id)
VALUES ("GeForce GTX 3080Ti", NULL, 16000, 110);

INSERT INTO products (name, description, price, catalog_id)
VALUES ("GeForce GTX 3080Ti", "Топовая карточка", 160000, 12);

