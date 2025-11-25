SELECT 
    f.film_id,
    f.title,
    COUNT(fa.actor_id) AS total_actores
FROM 
	film_actor fa
JOIN 
	film f ON fa.film_id = f.film_id
GROUP BY 
	f.film_id, f.title
ORDER BY 
	total_actores DESC;

SELECT
    a.actor_id,
    a.first_name,
    a.last_name,
    COUNT(fa.film_id) AS numero_peliculas
FROM 
	actor a
JOIN 
	film_actor fa ON a.actor_id = fa.actor_id
GROUP BY 
	a.actor_id, a.first_name, a.last_name
ORDER BY 
	numero_peliculas DESC, a.last_name;