/*1. path ��������, my.cnf ������, ������� � WINDOWS, ������������ ��� �����
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
 /* � ������� ����� :
 * mysqldump example > dump.sql
 * mysql sample < dump.sql
 */ 
