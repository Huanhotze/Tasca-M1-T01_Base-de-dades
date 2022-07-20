-- Exercici 4
-- Realitza la següent consulta sobre la base de dades acabada de crear: 

-- Has d'obtenir, per a cada persona, el seu nom i el nombre màxim de rols 
-- diferents que ha tingut en una mateixa pel·lícula. 

SELECT tb_person.person_name, COUNT(*) AS Maximo_num_Roles
FROM tb_movie_person
LEFT JOIN tb_person
	ON tb_movie_person.person_id = tb_person.person_id
GROUP BY tb_person.person_name, tb_movie_person.movie_id;

-- Posteriorment, mostra únicament aquelles persones que hagin assumit més
-- d'un rol en una mateixa pel·lícula.

SELECT tb_person.person_name, COUNT(*) AS Maximo_num_Roles
FROM tb_movie_person
LEFT JOIN tb_person
	ON tb_movie_person.person_id = tb_person.person_id
GROUP BY tb_person.person_name, tb_movie_person.movie_id
		HAVING Maximo_num_Roles > 1;
        









-- SELECT tb_person.person_name, tb_movie_person.movie_id
-- FROM tb_movie_person
-- LEFT JOIN tb_person
-- 	ON tb_movie_person.person_id = tb_person.person_id
-- WHERE tb_person.person_name = 'Steven Spielberg';
