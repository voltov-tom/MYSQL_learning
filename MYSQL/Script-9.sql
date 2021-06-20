-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается
-- время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(45) NOT NULL,
	str_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;

-- создание триггеров

DROP TRIGGER IF exists users_logs;
CREATE TRIGGER users_logs AFTER INSERT ON users
	FOR EACH ROW
		BEGIN
		end;
	

-- Триггер ниже для users дублирует строки, хотя для catalogs и products не дублирует. Почему это происходит?
/*
DROP TRIGGER IF EXISTS users_logs;
delimiter //
CREATE TRIGGER users_logs AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
delimiter ;	
*/
	
DROP TRIGGER IF EXISTS catalogs_logs;
delimiter //
CREATE TRIGGER catalogs_logs AFTER INSERT ON catalogs
	FOR EACH ROW
		BEGIN
			INSERT INTO logs (created_at, table_name, str_id, name_value)
			VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
		END //
delimiter ;


DROP TRIGGER IF EXISTS products_logs;
delimiter //
CREATE TRIGGER products_logs AFTER INSERT ON products
	FOR EACH ROW
		BEGIN
			INSERT INTO logs (created_at, table_name, str_id, name_value)
			VALUES (NOW(), 'products', NEW.id, NEW.name);
		END //
delimiter ;

-- проверка
SELECT * FROM logs;

INSERT INTO users (name, birthday_at)
VALUES ('Марья Ивановна', '1999-01-01'),
		('Николай Дроздов', '1954-01-01');

INSERT INTO catalogs (name)
VALUES	('Куллеры'),
		('Ковры');
	
INSERT INTO products (name, description, price, catalog_id)
VALUES ('PSD34G13332', 'Оперативная память', 3000.00, 13),
		('SuperCoolingMasterProMax', 'Куллеры', 500.00, 14),
		('Коврик', 'Коврик для мыши', 150.00, 15);

	
	
-- Создайте SQL-запрос, который помещает в таблицу users миллион записей.
	
DROP TABLE IF EXISTS test_users; 
CREATE TABLE test_users (
	name VARCHAR(255)
);

DROP PROCEDURE IF EXISTS dowhile ;
DELIMITER //
CREATE PROCEDURE dowhile()
BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE j INT DEFAULT 0;
	while j < 1000 DO
		WHILE i < 10000 DO
	    insert into test_users(name) VALUES (concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10)),(concat('name_', i+1)),(concat('name_', i+2)),(concat('name_', i+3)),(concat('name_', i+4)),(concat('name_', i+5)),(concat('name_', i+6)),(concat('name_', i+7)),(concat('name_', i+8)),(concat('name_', i+9)),(concat('name_', i+10));
	    SET i = i + 1;
		END WHILE;
	set j = j + 1;
	end while;
end //
DELIMITER ;


-- тест занимает около минуты

call dowhile(); 
SELECT count(*) FROM test_users;

