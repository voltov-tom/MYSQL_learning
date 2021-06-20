-- 1.Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
-- добавляем заказы
INSERT INTO orders (user_id)
values
	(1), (2), (3), (4), (1), (2), (3);
 -- решение
select name
from users
	join orders on (user_id = users.id)
	group by users.name
	having count(orders.id) >= 1;

-- 2.Выведите список товаров products и разделов catalogs, который соответствует товару.
-- решение
select products.name as product, catalogs.name as catalog
from products 
	left join catalogs on (catalog_id = catalogs.id)
	group by products.id;