-- Dataset dividido en dos debido a que si los unifico puden duplicarse los datos.
SELECT 
    f.film_id,
    LOWER(TRIM(f.title)) AS title,
    COUNT(fa.actor_id) AS total_actors
FROM 
	film_actor fa
JOIN 
	film f ON fa.film_id = f.film_id
WHERE
	f.film_id IS NOT NULL
GROUP BY 
	f.film_id, f.title
ORDER BY 
	total_actors DESC;

SELECT
    a.actor_id,
    concat(LOWER(TRIM(a.first_name)), ' ', LOWER(TRIM(a.last_name))) AS full_name,
    COUNT(fa.film_id) AS film_participations
FROM 
	actor a
JOIN 
	film_actor fa ON a.actor_id = fa.actor_id
WHERE
	a.actor_id IS NOT null
GROUP BY 
	a.actor_id, a.first_name, a.last_name
ORDER BY 
	film_participations DESC, a.last_name;