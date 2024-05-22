create database cars_store_db;
use cars_store_db;
create table cars(
car_id int primary key auto_increment,
brand varchar(50),
color varchar(50),
_4x4 boolean,
price int,
from_year year 
);
insert into cars(brand, color, _4x4, price, from_year)value
('Fiat', 'white', false, 5000, 2010),
('Renault', 'green', false, 15000, 2023),
('Mercedes', 'black', false, 7000, 2014),
('Toyota', 'blue', true, 35000, 2020),
('Ford', 'pink', false, 8000, 2015),
('Volkswagen', 'red', true, 5500, 2019),
('Audi', 'white', false, 18000, 2020),
('Chevrolet', 'blue', false, 15000, 2021),
-- act 2
('Fiat', 'purple', false, 4000, 2008 );
select * from cars;
-- act 3
select brand, color, from_year from cars;
-- act 4
select * from cars where from_year = 2019;
-- act 5
update cars set color = 'blue', from_year = 2014 where brand = 'Fiat';
-- act 6
update cars set price = 20000 where brand = 'Audi';
-- act 7
update cars set color = 'black' where brand = 'Chevrolet';

select * from cars;
-- act8
delete from cars where from_year = 2014;
-- act9
delete from cars where _4x4 = true;
-- act 10
delete from cars where price > 20000;
drop table cars;
drop database cars_store_db;