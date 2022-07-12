-- Exercici 6
-- Fes la següent operació sobre la base de dades acabada de crear:  
-- Elimina la pel·lícula "La Gran Familia Española" de la base de dades.


-- Comprueba que existe la pelicula y devuelve KEY para evitar el modo seguro Error Code: 1175
-- 13:14:24	DELETE  FROM tb_movie WHERE tb_movie.movie_title = "La Gran Familia Española"	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec
SELECT movie_id
FROM tb_movie
WHERE tb_movie.movie_title = "La Gran Familia Española"; 


-- Comando para eliminar la pelicula "La Gran Familia Española" - No permite la eliminación al estar referenciada en la tabla "tb_movie_person"
-- 13:14:24	DELETE  FROM tb_movie WHERE tb_movie.movie_title = "La Gran Familia Española"	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec
DELETE 
FROM tb_movie
WHERE tb_movie.movie_id = 11; 

-- Referencias de la pelicula "La Gran Familia Española" en la tabla "tb_movie_person" 
SELECT *
FROM tb_movie_person
WHERE tb_movie_person.movie_id = 11; 

-- Proceso para eliminar definitivamente la pelicula "La Gran Familia Española" de la base de datos.
DELETE 
FROM tb_movie_person
WHERE tb_movie_person.movie_id = 11; 

DELETE 
FROM tb_movie
WHERE tb_movie.movie_id = 11; 