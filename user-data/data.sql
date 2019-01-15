create user 'guillermo'@'%' IDENTIFIED BY '123456';
grant all privileges on * . * to 'guillermo'@'%';
create database bdprueba;
use bdprueba;
create table usuario(id_user int, user varchar(15), password varchar(15));
insert into usuario values(1,'guillermo','123456');
insert into usuario values(1,'mostafa','123456');
