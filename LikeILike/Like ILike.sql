-- 1. Countries Starting with 'A' and Ending with 'a'
SELECT country
FROM country
WHERE country LIKE 'A%a'
ORDER BY country;

-- 2. Countries with Minimum 6 Characters Ending with 'n'
SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n'
ORDER BY country;

-- 3. Films Containing 'T' in Title
SELECT title
FROM film
WHERE title LIKE '%T%'
GROUP BY title
HAVING COUNT(title) >= 4
ORDER BY title;

-- 4. Films Starting with 'C', Length Greater than 90, and Rental Rate of 2.99
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
ORDER BY title;