-- **1. LEFT JOIN: City ve Country isimlerini birlikte listeleme**

-- Bu sorgu, city tablosundaki tüm şehirleri ve bu şehirlere bağlı country tablosundaki ülkeleri getirir.
-- Eğer bir şehre karşılık bir ülke yoksa, ülke bilgisi NULL olarak döner.
SELECT 
    city.city_id,
    city.city AS city_name,
    country.country_id,
    country.country AS country_name
FROM 
    city
LEFT JOIN 
    country
ON 
    city.country_id = country.country_id;

-- **2. RIGHT JOIN: Customer ve Payment bilgilerini listeleme**

-- Bu sorgu, payment tablosundaki tüm ödeme bilgilerini ve bu ödemelerle ilişkili customer tablosundaki müşteri bilgilerini getirir.
-- Eğer bir ödeme kaydına karşılık müşteri yoksa, müşteri bilgisi NULL olarak döner.
SELECT 
    payment.payment_id,
    customer.customer_id,
    customer.first_name,
    customer.last_name
FROM 
    customer
RIGHT JOIN 
    payment
ON 
    customer.customer_id = payment.customer_id;

-- **3. FULL JOIN: Customer ve Rental bilgilerini listeleme**

-- Bu sorgu, rental ve customer tablolarındaki tüm kayıtları ve varsa ilişkili müşteri bilgilerini döner.
-- Eğer bir müşteri kayıtlı bir rental kaydı yoksa veya bir rental kaydına karşılık müşteri kaydı yoksa NULL değerler döner.
SELECT 
    rental.rental_id,
    customer.customer_id,
    customer.first_name,
    customer.last_name
FROM 
    customer
FULL JOIN 
    rental
ON 
    customer.customer_id = rental.customer_id;
