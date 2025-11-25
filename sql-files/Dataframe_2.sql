SELECT 
	f.film_id,
    f.title,
    f.length AS film_duration,
    f.description,
    f.special_features,
    f.release_year,
    f.rental_duration,
    f.rental_rate,
    f.replacement_cost,
    lang.name AS language,
    c.name AS category,
    COUNT(i.inventory_id) AS total_copias
FROM
	film AS f
JOIN
		film_category AS fcat ON f.film_id = fcat.film_id 
JOIN
	language AS lang ON f.language_id = lang.language_id
JOIN
	category AS c ON fcat.category_id = c.category_id
JOIN
	inventory AS i ON fcat.film_id = i.film_id
GROUP BY
    f.film_id,
    f.title,
    f.length,
    f.description,
    f.special_features,
    f.release_year,
    f.rental_duration,
    f.rental_rate,
    f.replacement_cost,
    lang.name,
    c.name;