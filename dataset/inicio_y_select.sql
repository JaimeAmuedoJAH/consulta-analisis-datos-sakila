use sakila;

-- (DATAFRAME 1) Los selects estan ordenados de forma que se unen las tablas a traves de los JOIN
SELECT * FROM rental;
SELECT * FROM customer;
SELECT * FROM address;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM payment;

-- (DATAFRAME 2) Los selects estan ordenados de forma que se unen las tablas a traves de los JOIN

SELECT DISTINCT * FROM film;
SELECT DISTINCT * FROM film_category;
SELECT DISTINCT * FROM category;
SELECT DISTINCT * FROM language;
SELECT DISTINCT * FROM inventory;