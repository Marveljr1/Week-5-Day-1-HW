-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2
-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(*)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Answer: 5607
-- 3. What films have exactly 7 copies? (search in inventory)
SELECT COUNT(inventory_id)
FROM inventory
GROUP BY film_id
HAVING COUNT(inventory_id) = 7
-- Answer: 116
-- 4. How many customers have the first name ‘Willie’?
SELECT COUNT(*)
FROM customer
WHERE first_name = 'Willie';
-- Answer: 2
-- 5. What store employee (get the id) sold the most rentals (use the rental table)?
SELECT max(staff_id)
FROM rental;
-- Answer: 2
-- 6. How many unique district names are there?
SELECT count(DISTINCT district)
FROM address;
--Answer: 378
-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id;
-- Answer: Lambs Cincinatti
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id , last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--Answer: 13
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE customer_id  BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(customer_id)  > 250
ORDER BY COUNT(customer_id)DESC;
--Answer: 3
-- 10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating, count(*) AS duplicates
FROM film
GROUP BY rating
ORDER BY duplicates DESC
--Answer: 5 Categories; PG-13 with 223