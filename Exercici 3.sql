-- Exercici 3
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
-- Has d'obtenir el nom del gènere i el nombre total de pel·lícules d'aquest 
-- gènere i ordenar-ho per ordre descendent de nombre total de pel·lícules.  

SELECT tb_genre.genre_name,  COUNT(*) AS "Total"
FROM movies.tb_movie
LEFT JOIN movies.tb_genre
	ON movies.tb_genre.genre_id = movies.tb_movie.movie_genre_id
GROUP BY tb_movie.movie_genre_id
ORDER BY Total DESC;


