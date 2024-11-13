
# DVD Rental Database Queries - Group By Having

## Table of Contents
1. [Project Overview](#project-overview)
2. [Requirements](#requirements)
3. [Queries and Results](#queries-and-results)
   - [1. Group Films by Rating](#1-group-films-by-rating)
   - [2. Find Replacement Costs with More Than 50 Films](#2-find-replacement-costs-with-more-than-50-films)
   - [3. Count of Customers by Store ID](#3-count-of-customers-by-store-id)
   - [4. Country with the Most Cities](#4-country-with-the-most-cities)
4. [License](#license)

## Project Overview
This project contains SQL queries based on the `dvdrental` sample database. The queries are designed to extract information about films, customers, and cities by grouping data according to various criteria.

## Requirements
- PostgreSQL
- `dvdrental` sample database

## Queries and Results

### 1. Group Films by Rating
This query groups films in the `film` table by their `rating` values.

```sql
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY rating;
```

**Example Result:**
| Rating | Film Count |
|--------|------------|
| G      | 178        |
| PG     | 194        |
| PG-13  | 223        |
| R      | 195        |
| NC-17  | 210        |

---

### 2. Find Replacement Costs with More Than 50 Films
This query groups films by `replacement_cost` in the `film` table and filters for `replacement_cost` values with more than 50 films.

```sql
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;
```

**Example Result:**
| Replacement Cost | Film Count |
|------------------|------------|
| 19.99            | 60         |
| 21.99            | 55         |
| 17.99            | 54         |

---

### 3. Count of Customers by Store ID - Group By, Having
This query counts the number of customers associated with each `store_id` in the `customer` table.

```sql
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id
ORDER BY store_id;
```

**Example Result:**
| Store ID | Customer Count |
|----------|----------------|
| 1        | 326            |
| 2        | 273            |

---

### 4. Country with the Most Cities
This query finds the `country_id` with the highest number of cities, grouping cities by `country_id` in the `city` table.

```sql
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
```

**Example Result:**
| Country ID | City Count |
|------------|------------|
| 44         | 64         |

## License
This project is licensed under the MIT License.
