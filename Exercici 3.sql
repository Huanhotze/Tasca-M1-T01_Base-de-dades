-- Exercici 3
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
-- Has d'obtenir el nom del gènere i el nombre total de pel·lícules d'aquest 
-- gènere i ordenar-ho per ordre descendent de nombre total de pel·lícules.  

SELECT movie_genre_id, COUNT(*) AS "Total"
FROM movies.tb_movie
GROUP BY movie_genre_id
ORDER BY Total DESC;