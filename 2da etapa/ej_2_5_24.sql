create database school;
use school;
create table students(
id int auto_increment primary key,
Nombre varchar(50) not null,
TP1 boolean,
TP2 boolean,
Total int
 
);
insert into students(Nombre, TP1, TP2, Total)values
('Pepe', True, True, 100),
('Juan', True, False, 50),
('Jhon', False, True, 50),
('Exe', False, False, 0);
-- Todas las notas
select * from students;
-- Aptobados
select * from students where TP1 = True and TP2 = True;
-- Notas mayor o igual a 50
select * from students where Total >= 50;
-- actu Jhon
update students set TP1 = True where Nombre = 'Jhon';
select * from students;
-- chau 0
delete from students where Total = 0;
select * from students;
-- Hola juana
update students set Nombre = 'Juana' where Nombre = 'Jhon';
-- Pepe 99
update students set Total = 99 where Nombre = 'Pepe';
select * from students;
drop table students;
drop database school;

