-- 1. Group Films by Rating
--This query groups films in the `film` table by their `rating` values.
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY rating;

--2. Find Replacement Costs with More Than 50 Films
--This query groups films by replacement_cost in the film table and filters for replacement_cost values with more than 50 films
SELECT replacement_cost, COUNT(replacement_cost) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(replacement_cost) > 50
ORDER BY film_count DESC;

-- 3. Count of Customers by Store ID
-- This query counts the number of customers associated with each store_id in the customer table.
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id
ORDER BY store_id;

-- 4. Country with the Most Cities
--This query finds the country_id with the highest number of cities, grouping cities by country_id in the city table.
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
