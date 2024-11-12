--1. Average Rental Rate
SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

-- 2. Films Starting with 'C'
SELECT COUNT(*) AS count_of_c_titles
FROM film
WHERE title LIKE 'C%';

-- 3. Longest Film with Rental Rate of 0.99
SELECT MAX(length) AS longest_length
FROM film
WHERE rental_rate = 0.99;

-- 4. Unique Replacement Cost Values for Long Films
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film
WHERE length > 150;