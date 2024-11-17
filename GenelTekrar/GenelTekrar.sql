-- 1. List the top 4 films (starting with 'K') with the longest length and the lowest `replacement_cost`
SELECT *
FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 4;

-- 2. Find the rating category with the highest number of films
SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating
ORDER BY film_sayisi DESC
LIMIT 1;

-- 3. Find the name of the customer with the highest number of transactions
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS musteri_adi,
    COUNT(p.payment_id) AS toplam_islem_sayisi
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY toplam_islem_sayisi DESC
LIMIT 1;

-- 4. List category names and the number of films in each category
SELECT 
    c.name AS kategori_adi,
    COUNT(fc.film_id) AS film_sayisi
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name
ORDER BY film_sayisi DESC;


-- 5. Find the number of films with at least 4 occurrences of 'e' or 'E' in their title
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE LENGTH(title) - LENGTH(REPLACE(LOWER(title), 'e', '')) >= 4;

