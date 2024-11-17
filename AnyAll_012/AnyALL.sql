--1. Find the number of films longer than the average film length
SELECT COUNT(*) AS uzun_filmler_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. Count the films with the highest rental_rate
SELECT COUNT(*) AS en_yuksek_rental_rate_film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--3. List films with the lowest rental_rate and replacement_cost
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

--4. Rank customers with the highest number of transactions
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS musteri_adi,
    COUNT(p.payment_id) AS toplam_islem_sayisi
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY toplam_islem_sayisi DESC;

