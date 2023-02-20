
-- How many actors are there with the last name 'Wahlberg'? 
-- There are two actors with the last name 'Wahlberg'


SELECT COUNT(last_name)
FROM actor 
WHERE last_name = 'Wahlberg';

-- How many payments were made between $3.99 and $5.99?
-- There were 4,794 payments between 3.99 and 5.99

SELECT COUNT(amount)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

-- What filM does the store have the most of?
-- There are 72 films that the store has the most of (each of which has 8 copies) such as Crossroads Casualties, Shock Cabin, Ridgemont Submarine, and so on.

SELECT film_id, COUNT(inventory_id)
FROM inventory
GROUP BY film_id 
ORDER BY count(inventory_id) DESC;


-- How many customers have the last name 'William'?
-- 0 customers have the last name William

SELECT COUNT(last_name)
FROM customer 
WHERE last_name LIKE 'William';


-- What store employee sold the most rentals?
-- Mike sold the most rentals

SELECT count(rental_id), staff_id
FROM rental 
GROUP BY staff_id
ORDER BY count(rental_id) DESC;



-- How many district names are there?
--  There are 378 district names

SELECT count(district)
FROM address 
GROUP BY district;


--What film has the most actors in it? 
-- The film Lambs Cincinatti has the most actors
SELECT film_id, count(actor_id)
FROM film_actor 
GROUP BY film_id 
ORDER BY count(actor_id)DESC;

-- From store_id 1, how many customers have a last name ending with 'es'?
-- There are 13 customers with the last name ending in 'es' from store_id 1

SELECT count(last_name), store_id 
FROM customer 
WHERE last_name LIKE '%es'
GROUP BY store_id;


-- How many payments amounts had a number of rentals above 250 for customers between 380 and 430?
-- There are 3 payment amounts that had a number of rentals above 250 for customers between 380 and 430. Those were
-- 2.99, 4.99, and 6.99

SELECT amount, count(amount)
FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY amount
HAVING	count(amount) > 250;


--Within in the film table, how many rating categories are there? And what rating has the most movies total?
--  There are 5 rating categories with PG-13 having the most movies

SELECT rating, count(film_id)
FROM film
GROUP BY rating 
ORDER BY count(film_id) DESC; 


