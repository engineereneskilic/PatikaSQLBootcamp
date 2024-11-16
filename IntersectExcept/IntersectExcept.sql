-- 1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;

-- 2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT first_name
FROM actor
INTERSECT
SELECT first_name
FROM customer
ORDER BY first_name;

-- 3. actor ve customer tablolarında bulunan first_name sütunları için 
-- ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name
FROM actor
EXCEPT
SELECT first_name
FROM customer
ORDER BY first_name;

-- 4. Tekrar eden verilerle birlikte tüm verileri sıralayalım.
SELECT first_name
FROM actor
UNION ALL
SELECT first_name
FROM customer
ORDER BY first_name;

-- 5. Tekrar eden verilerle birlikte kesişen verileri sıralayalım.
SELECT first_name
FROM actor
INNER JOIN customer
ON actor.first_name = customer.first_name
ORDER BY first_name;

-- 6. Tekrar eden verilerle birlikte ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name
FROM actor
LEFT JOIN customer
ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL
ORDER BY first_name;
