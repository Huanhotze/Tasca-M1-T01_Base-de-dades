-- Exercici 2
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
-- Has d'obtenir el nom, el país i la data de naixement d'aquelles persones per les quals no consti una data de mort 
-- i ordenar les dades de la persona més vella a la persona més jove.

SELECT person_name, person_country, person_dob
FROM tb_person
WHERE person_dod  IS NULL
ORDER BY person_dob;