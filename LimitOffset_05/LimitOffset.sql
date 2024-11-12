-- 1.Longest 5 Films Ending with 'n'
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 2. Shortest Films (6, 7, 8, 9, 10) Ending with 'n'
SELECT title, length
FROM film
WHERE title LIKE '%n'
AND length IN (6, 7, 8, 9, 10)
ORDER BY length ASC
LIMIT 5;



-- 3. First 4 Customers (store_id 1) Ordered by Last Name
SELECT first_name, last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;