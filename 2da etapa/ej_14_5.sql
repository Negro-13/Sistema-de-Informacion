create database car_store;
use car_store;
create table cars(
id int primary key auto_increment,
brand varchar(50),
_4x4 boolean,
salida year, 
price int 
);
insert into cars(brand,_4x4, salida, price)value
('chevrolet', false, 2014, 5000),
('fiat', true, 2020, 1000),
('renault', true, 2019, 9000),
('mercedes', false, 2021, 20000),
('generico', false, 2023, 3000);
select * from cars;
-- acts
select * from cars where _4x4 = true;
select * from cars where price > 5000;
update cars set salida = 2015, price = 5500 where brand = 'chevrolet';
update cars set brand ='chino' where brand = 'generico';
delete from cars where brand = 'chino';
update cars set price = 25000 where brand = 'mercedes';
select * from cars;
select * from cars where salida < 2019;
delete from cars;
drop table cars;
drop database car_store;
