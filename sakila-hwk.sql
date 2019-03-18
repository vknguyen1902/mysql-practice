USE sakila;

-- 01-A First and last names of all actors
SELECT  first_name, last_name FROM actor;

-- 01-B Full name of all actors
SELECT  UCASE(CONCAT(first_name,' ',last_name)) 
AS      full_name 
FROM    actor;

-- 02-A ID, first name, and last name of Joe
SELECT  actor_id, first_name, last_name 
FROM    actor 	
WHERE   first_name = "Joe";

-- 02-B All actors with "GEN" in last name
SELECT  * 
FROM    actor
WHERE   last_name LIKE '%GEN%';

-- 02-C Find all actors with last name Li
SELECT      * 
FROM        actor
WHERE       last_name LIKE '%LI%'
ORDER BY    last_name, first_name;

-- 02-D Display country id and country for Afghanistan, Bangladesh, China
SELECT  country_id, country 
FROM    country 
WHERE   country IN ("Afghanistan", "Bangladesh", "China"); 

-- 03-A Add description column to actor
ALTER TABLE actor
ADD description BLOB;

-- 03-B Remove description column
ALTER TABLE actor
DROP description;

-- 04-A Last names of actors and the count of them
SELECT      last_name, COUNT(first_name) 
AS          last_name_count
FROM        actor 
GROUP BY    last_name;

-- 04-B Last names shared by at least two actors
SELECT      last_name, COUNT(first_name) 
AS          last_name_count
FROM        actor
GROUP BY    last_name
HAVING      last_name_count > 1;

-- 04-C Fix Harpo Williams's name (Groucho)
UPDATE  actor   
SET     first_name = "HARPO" 
WHERE   (first_name = "GROUCHO" AND last_name = "WILLIAMS");
-- Check if the name has been changed
SELECT  first_name FROM actor WHERE last_name = "WILLIAMS";

-- 04-D If the name is Harpo, change it to Groucho
UPDATE      actor 
SET         first_name = "GROUCHO"
WHERE IF    (first_name = "HARPO",1,0) = 1 
AND         last_name = "WILLIAMS";
-- Check if the name has been changed back to Groucho
SELECT      first_name FROM actor WHERE last_name = "WILLIAMS";

-- 05-A Re-create the schema of address table
SHOW CREATE TABLE address;

-- 06-A Use JOIN to get staffs profiles
SELECT	staff.first_name	AS first_name, 
	staff.last_name		AS last_name, 
	address.address		AS address
FROM	staff JOIN address 
ON	staff.address_id = address.address_id;

-- 06-B Total amount rung up by each staff member in August of 2005
SELECT DISTINCT	staff.staff_id		AS staff_id,
		staff.first_name	AS first_name,
		staff.last_name		AS last_name,
		SUM(payment.amount)	AS amount_paid
FROM		staff JOIN payment
ON		staff.staff_id = payment.staff_id
GROUP BY	staff.staff_id;

-- 06-C List films and number of actors each film
SELECT		film.title                  AS film_name, 
		COUNT(film_actor.actor_id)  AS num_of_actor
FROM		film INNER JOIN film_actor
ON		film.film_id = film_actor.film_id
GROUP BY	film_name;

-- 06-D Hunchback Impossible in inventory
SELECT	film.title	                AS title, 
	COUNT(inventory.film_id)	AS num_available
FROM	film INNER JOIN inventory
WHERE	title = "Hunchback Impossible";

-- 06-E Total paid by customers, sorted alphabetically by last name
SELECT	customer.first_name	AS first_name,
	customer.last_name	AS last_name,
	SUM(payment.amount)	AS total_paid
FROM	customer JOIN payment 
ON	customer.customer_id = payment.customer_id
GROUP BY	last_name;

-- 07-A Films start with letter K and Q in English
SELECT	film.title AS film_name, 
	language.name AS language
FROM	film JOIN language 
ON	film.language_id = language.language_id		
WHERE	language.name = "English" 
AND	(film.title LIKE "K%" OR film.title LIKE "Q%");

-- 07-B Display all actors in Alone Trip
SELECT	actor.first_name	AS first_name,
	actor.last_name		AS last_name,
	film.title		AS film_name
FROM 	film_actor
JOIN	actor	ON (actor.actor_id = film_actor.actor_id)
JOIN	film	ON (film.film_id = film_actor.film_id)
WHERE	film.title = "Alone Trip";    

-- 07-C Name and e-mail address of all Canadian customers
SELECT	customer.first_name	AS first_name,
        customer.last_name	AS last_name,
        customer.email		AS customer_email,
        country.country		AS country_name
FROM	customer 
JOIN	store	ON (store.store_id = customer.store_id)
JOIN	address	ON (address.address_id = customer.address_id)
JOIN	city	ON (city.city_id = address.city_id)
JOIN	country	ON (country.country_id = city.country_id)
WHERE	country.country = "Canada";
-- store.address_id, address.city_id, city.city_id, city.country_id, country.country

-- 07-D 

