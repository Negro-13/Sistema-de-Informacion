create database school;
use school;
create table subjets(
id int primary key auto_increment,
nombre varchar(50),
hours int,
course varchar(50),
num_students int
);
insert into subjets (nombre, hours, course, num_students)values
('Sistemas', 6, '5P', 2),
('Ingles', 6, '4P', 40),
('Historia', 4, '3', 50),
('Fisisca', 5, '2', 4),
('Quimica', 2, '1', 5);
select * from subjets;
update subjets set num_students = 10 where nombre = 'Historia';
update subjets set hours = 4 where nombre = 'Fisica';
delete from subjets where nombre = 'Quimica';
insert into subjets (id, nombre, hours, course, num_students)value
(5,'Politica', null, null, 0);
update subjets set nombre = 'Sistemas de Informacion' where nombre = 'Sistemas';
select * from subjets;
drop table subjets;
drop database school;