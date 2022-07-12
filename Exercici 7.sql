-- Exercici 7
-- Realitza la següent operació sobre la base de dades acabada de crear: 
-- Canvia el gènere de la pel·lícula "Ocho apellidos catalanes" perquè consti com a comèdia i no com a romàntica.

UPDATE tb_movie 
SET movie_genre_id = 	
						(SELECT genre_id 
						FROM tb_genre
						WHERE genre_name = "Comedia")
WHERE movie_title = 'Ocho apellidos catalanes';
