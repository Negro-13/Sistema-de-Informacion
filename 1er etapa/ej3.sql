CREATE DATABASE shirts_db;
USE shirts_db;
CREATE TABLE shirts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    shirt_size VARCHAR(50) NOT NULL,
    last_worn INT
);

INSERT INTO shirts (id, article, color, shirt_size, last_worn) VALUES
(1, 't-shirt', 'white', 'S', 10), 
(2, 't-shirt', 'green', 'S', 200),
(3, 'polo shirt', 'black', 'M', 10),
(4, 'tank top', 'blue', 'S', 50),
(5, 't-shirt', 'pink', 'S', 0),
(6, 'polo shirt', 'red', 'M', 5),
(7, 'tank top', 'white', 'S', 200),
(8, 'tank top', 'blue', 'M', 15),
-- act2
(9, 'polo shirt', 'purple', 'M', 50);

-- tabla de la act 3
SELECT article, color FROM shirts;
-- tabla act 4
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';
-- act5
UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';
-- act6
UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;
-- act7
UPDATE shirts SET shirt_size = 'XS', color = 'off white' WHERE color = 'white';
-- act8 
DELETE FROM shirts WHERE last_worn >= 200;
-- act9
DELETE FROM shirts WHERE article = 'tank top';
-- act10
DELETE FROM shirts;
-- muestra con las actualizaciones
SELECT * FROM shirts;

DROP TABLE shirts;
DROP DATABASE shirts_db;