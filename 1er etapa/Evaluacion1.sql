CREATE DATABASE Veterinaria;
USE Veterinaria;
CREATE TABLE pacientes(
id INT AUTO_INCREMENT PRIMARY KEY,
cliente INT NOT NULL,
fecha_consulta DATE NOT NULL,
paciente VARCHAR(50) NOT NULL,
apodo_paciente VARCHAR(50) DEFAULT 'No tiene apodo',
precio_consulta DECIMAL(10,2) NOT NULL DEFAULT 8500.00,
raza_paciente VARCHAR(50) NOT NULL DEFAULT 'Gato'
);
insert into pacientes (id, cliente, fecha_consulta, paciente, apodo_paciente, precio_consulta, raza_paciente) value
(1, 33,'2024-04-21', 'Perro', 'Tito', 500.50, 'Perro'),
(2, 32, '2024-04-22', 'Codornis', DEFAULT, 340.54, 'Gorra'),
(3, 31, '2024-04-23', 'Fritz', 'Fish', DEFAULT, DEFAULT),
(4, 30, '2024-04-25', 'Tulio', 'Tulio', 324.12, 'Bravo');
select * from pacientes ;
DROP TABLE pacientes;
DROP DATABASE veterinaria;


