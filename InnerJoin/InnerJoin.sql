-- 1. City and Country INNER JOIN
SELECT 
    city.city AS City_Name,       -- Şehir adını alıyoruz
    country.country AS Country_Name -- Ülke adını alıyoruz
FROM 
    city
INNER JOIN 
    country 
ON 
    city.country_id = country.country_id; -- Şehir ve ülke tablosundaki ortak anahtar


-- 2. Customer and Payment INNER JOIN
-- Customer ve Payment tablolarını birleştirerek müşteri ad ve soyad bilgilerini ödeme ID'si ile listele
SELECT 
    payment.payment_id AS Payment_ID,  -- Ödeme kimliği
    customer.first_name AS First_Name, -- Müşteri adı
    customer.last_name AS Last_Name    -- Müşteri soyadı
FROM 
    customer
INNER JOIN 
    payment 
ON 
    customer.customer_id = payment.customer_id; -- Müşteri tablolarındaki ortak anahtar

--3. Customer ve Rental tablolarını birleştirerek müşteri ad ve soyad bilgilerini kiralama ID'si ile listele
SELECT 
    rental.rental_id AS Rental_ID,   -- Kiralama kimliği
    customer.first_name AS First_Name, -- Müşteri adı
    customer.last_name AS Last_Name    -- Müşteri soyadı
FROM 
    customer
INNER JOIN 
    rental 
ON 
    customer.customer_id = rental.customer_id; -- Müşteri tablolarındaki ortak anahtar