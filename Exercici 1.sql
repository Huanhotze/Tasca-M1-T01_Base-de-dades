-- Exercici 1
-- A partir dels documents adjunts (estructura i dades), crea una base de dades amb MySQL. 
-- Mostra les característiques principals de l'esquema creat i explica les diferents taules i variables que hi ha.

USE movies;
SHOW tables; -- La base de datos consta de 5 tablas diferentes


SHOW COLUMNS FROM tb_genre; -- Con el comando SHOW vemos las diferentes variables de la tabla, su tipo y que la Key primaria es "genre_id". 5 variables diferentes
SELECT * from tb_genre; -- La tabla consta de 11 entradas

DESCRIBE tb_movie; -- Con el comando DESCRIBE es equivalente a SHOW COLUMNS la Key primaria es "movie_id" y tiene 8 variables diferentes
SELECT * from tb_movie; -- La tabla consta de 16 entradas

-- Lo mismo hacemos con el resto de tablas. También podemos apreciar que la tabla "tb_movie_person" tiene relaciones con otras tablas
DESCRIBE tb_movie_person;
SELECT * from tb_movie_person;

DESCRIBE tb_person; 
SELECT * from tb_person;

DESCRIBE tb_role; 
SELECT * from tb_role;
