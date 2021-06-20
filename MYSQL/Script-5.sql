use shop;

-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

update users
	set
 	created_at = now(),
	updated_at = now();
	

/* Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
 * и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

-- имитация строкового формата записи
alter table users change created_at created_at varchar(60);
alter table users change updated_at updated_at varchar(60);
update users 
	set
	created_at = replace (created_at, '-', '.'),
	updated_at = replace (created_at, '-', '.');

-- преобразование в дату
update users 
	set 
	created_at = replace (created_at, '.', '-'),
	updated_at = replace (created_at, '.', '-');

ALTER TABLE users modify created_at datetime;  
ALTER TABLE users modify updated_at datetime;

 /* В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
  * 0, если товар закончился и выше нуля, если на складе имеются запасы. 
  * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
  * Однако нулевые запасы должны выводиться в конце, после всех записей.*/

-- вставляю рандомные числа
insert into storehouses_products (value)
	values (FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0)),(FLOOR(RAND()*(100-5+1)+0));
-- сортирую с нулями в конце
SELECT value      
	FROM storehouses_products
	ORDER BY value = 0, value;

-- Подсчитайте средний возраст пользователей в таблице users.
SELECT
	avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))
	FROM users;

 /* Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
  * Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/
select
	DATE_FORMAT(date(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total
	from users
	group by day
	order by total desc;
	