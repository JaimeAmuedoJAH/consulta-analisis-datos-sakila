SELECT 
    f.film_id,
    LOWER(TRIM(f.title)) AS title,
    f.length AS film_duration,
    LOWER(TRIM(f.description)) AS description,
    LOWER(TRIM(f.special_features)) AS special_features,
    f.rating,
    f.rental_duration,
    f.rental_rate,
    f.replacement_cost,
    LOWER(TRIM(lang.name)) AS language,
    LOWER(TRIM(c.name)) AS category,
    COUNT(i.inventory_id) AS total_copias,
    CASE
		WHEN f.length >= 120 THEN 'yes'
        ELSE 'no'
	END AS is_long_film
FROM
    film AS f
JOIN
    film_category AS fcat ON f.film_id = fcat.film_id 
JOIN
    language AS lang ON f.language_id = lang.language_id
JOIN
    category AS c ON fcat.category_id = c.category_id
JOIN
    inventory AS i ON f.film_id = i.film_id
WHERE
    f.length > 0
    AND f.rating IS NOT NULL
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
    language,
    category;