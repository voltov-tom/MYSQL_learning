/*1. path прописан, my.cnf создан, помещен в WINDOWS, подключается без ключа
*
2.*/
create database if not exists example;
use example;
create table if not exists users (
	id serial,
	name varchar(255)
	);

/*3.*/
 * create database sample; 
 /* В консоли пишем :
 * mysqldump example > dump.sql
 * mysql sample < dump.sql
 */ 
