
# DVDRental SQL Queries - Genel Tekrar

## Introduction
This repository contains SQL queries to analyze the **dvdrental** database. The queries cover various scenarios such as filtering, aggregations, and ranking based on specific criteria.

## Technologies
- **Database**: PostgreSQL
- **Language**: SQL

## Queries and Explanations

### 1. Find the number of films longer than the average film length
```sql
SELECT COUNT(*) AS uzun_filmler_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);
```
#### Explanation:
- The query calculates the **average film length** using `AVG(length)` and compares each film's length (`length`) to it.
- Counts the films (`COUNT(*)`) that exceed the average length.

#### Expected Output:
| uzun_filmler_sayisi |
|---------------------|
| 450                 |

---

### 2. Count the films with the highest `rental_rate`
```sql
SELECT COUNT(*) AS en_yuksek_rental_rate_film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
```
#### Explanation:
- The query finds the **maximum rental rate** using `MAX(rental_rate)` and filters films that match this rate.
- Counts the number of such films.

#### Expected Output:
| en_yuksek_rental_rate_film_sayisi |
|-----------------------------------|
| 12                                |

---

### 3. List films with the lowest `rental_rate` and `replacement_cost`
```sql
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;
```
#### Explanation:
- Finds the minimum values for `rental_rate` and `replacement_cost` using `MIN()`.
- Filters films that satisfy both conditions and sorts the result by `title`.

#### Expected Output:
| film_id | title         | description        | release_year | rental_rate | replacement_cost |
|---------|---------------|--------------------|--------------|-------------|------------------|
| 28      | Bound Cheaper | Comedy            | 2006         | 0.99        | 9.99             |
| 92      | Dinosaur Secretary | Drama        | 2006         | 0.99        | 9.99             |
| 473     | Question Wonderful | Sci-Fi       | 2006         | 0.99        | 9.99             |

---

### 4. Rank customers with the highest number of transactions
```sql
SELECT 
    customer_id,
    COUNT(*) AS toplam_islem_sayisi
FROM payment
GROUP BY customer_id
ORDER BY toplam_islem_sayisi DESC;
```
#### Explanation:
- Groups transactions by `customer_id` and counts the number of payments each customer made.
- Results are ordered in descending order by the transaction count.

#### Expected Output:
| customer_id | toplam_islem_sayisi |
|-------------|---------------------|
| 148         | 50                  |
| 526         | 47                  |
| 144         | 46                  |

---

### Extended Query: Include Customer Names
```sql
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS musteri_adi,
    COUNT(p.payment_id) AS toplam_islem_sayisi
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY toplam_islem_sayisi DESC;
```
#### Explanation:
- Joins `payment` and `customer` tables to include customer names (`first_name` and `last_name`) alongside transaction counts.

#### Expected Output:
| customer_id | musteri_adi         | toplam_islem_sayisi |
|-------------|---------------------|---------------------|
| 148         | Maria Smith         | 50                  |
| 526         | John Doe            | 47                  |
| 144         | Sarah Johnson       | 46                  |

---

## Usage
1. Open the **dvdrental** database in your PostgreSQL client.
2. Execute the queries provided above.
3. Compare the results with the expected outputs to verify accuracy.

## License
This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.

---

## Download
You can download this repository as a ZIP file to use locally.
