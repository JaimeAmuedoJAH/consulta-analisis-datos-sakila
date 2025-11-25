SELECT 
	r.rental_id,
    r.rental_date,
    r.return_date,
    cus.customer_id,
    cus.first_name,
    cus.last_name,
    a.address_id,
    a.district,
    a.postal_code,
    cit.city_id,
    cit.city,
    cou.country_id,
    cou.country,
    p.payment_id,
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
	country AS cou ON cit.country_id = cou.country_id;
	