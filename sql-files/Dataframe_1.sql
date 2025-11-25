-- Estas dos lineas de codigo no han afectao a ninguna linea por lo que no se encontraron registros con id null.
DELETE FROM payment
WHERE rental_id IS NULL
	OR payment_id IS NULL;
DELETE FROM rental
WHERE rental_id IS NULL;

-- Esta linea de comando ha afectado a 24 lineas por lo que habia 24 valores que no cumplia con las condiciones.
DELETE FROM payment
WHERE amount <= 0;

SELECT 
	r.rental_id,
    r.rental_date,
    r.return_date,
    LOWER(cus.first_name) AS first_name,
    LOWER(cus.last_name) AS last_name,
    LOWER(a.district) AS district,
    a.postal_code,
    LOWER(cit.city) AS city,
    LOWER(cou.country) AS country,
    p.amount
FROM 
	payment AS p
JOIN
	rental AS r ON p.rental_id = r.rental_id
JOIN 
	customer AS cus ON r.customer_id = cus.customer_id
JOIN
	address AS a ON cus.address_id = a.address_id
JOIN
	city AS cit ON a.city_id = cit.city_id
JOIN
	country AS cou ON cit.country_id = cou.country_id
WHERE
	r.return_date IS NOT NULL
    AND rental_date < return_date;