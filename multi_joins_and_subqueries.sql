SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM film_actor;


-- Join the actor table to the film_actor table
SELECT *
FROM actor 
JOIN film_actor 
ON actor.actor_id = film_actor.actor_id;

-- Join the film table to the film_actor table
SELECT *
FROM film 
JOIN film_actor 
ON film.film_id = film_actor.film_id
ORDER BY film.film_id;

-- Join the film table to actor table thruogh the film_actor
SELECT f.title, f.description, f.film_id, fa.film_id, fa.actor_id, a.actor_id, a.first_name, a.last_name 
FROM film f
JOIN film_actor fa 
ON f.film_id = fa.film_id
JOIN actor a 
ON a.actor_id = fa.actor_id;












