# DVD Rental Database Queries - Like ILike

This README file provides an overview of the DVD Rental Database Queries project, which involves performing SQL queries on the `dvdrental` sample database. The project aims to demonstrate how to retrieve and sort data based on specified conditions using SQL commands.

## Table of Contents

1. [About the Project](#about-the-project)
2. [Technologies Used](#technologies-used)
3. [Queries and Results](#queries-and-results)
   - [1. Countries Starting with 'A' and Ending with 'a'](#1-countries-starting-with-a-and-ending-with-a)
   - [2. Countries with Minimum 6 Characters Ending with 'n'](#2-countries-with-minimum-6-characters-ending-with-n)
   - [3. Films Containing 'T' in Title](#3-films-containing-t-in-title)
   - [4. Films Starting with 'C', Length Greater than 90, and Rental Rate of 2.99](#4-films-starting-with-c-length-greater-than-90-and-rental-rate-of-299)
4. [License](#license)

## About the Project

The DVD Rental Database Queries project involves executing a series of SQL queries on the dvdrental sample database to demonstrate effective data retrieval and filtering techniques. This project aims to provide insights into how SQL can be utilized to analyze and manipulate relational databases, focusing on specific conditions and patterns in the dat

## Technologies Used

- **PostgreSQL**: A powerful, open-source relational database system.
- **SQL**: The standard language used for querying and manipulating databases.

## Queries and Results

### 1. Countries Starting with 'A' and Ending with 'a'

**Query:**
```sql
SELECT country
FROM country
WHERE country LIKE 'A%a'
ORDER BY country;
```

**Explanation:** This query retrieves country names from the `country` table that start with 'A' and end with 'a', sorted in alphabetical order.

---

### 2. Countries with Minimum 6 Characters Ending with 'n'

**Query:**
```sql
SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n'
ORDER BY country;
```

**Explanation:** This query retrieves country names from the `country` table that have at least 6 characters and end with 'n', sorted in alphabetical order.

---

### 3. Films Containing 'T' in Title

**Query:**
```sql
SELECT title
FROM film
WHERE title ILIKE '%T%'
GROUP BY title
HAVING COUNT(title) >= 4
ORDER BY title;
```

**Explanation:** This query retrieves film titles from the `film` table that contain the character 'T' (case insensitive), ensuring at least 4 occurrences, sorted in alphabetical order.

---

### 4. Films Starting with 'C', Length Greater than 90, and Rental Rate of 2.99

**Query:**
```sql
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
ORDER BY title;
```

**Explanation:** This query retrieves all columns from the `film` table where the title starts with 'C', the length is greater than 90, and the rental rate is 2.99, sorted by title.

---

## License

This project is licensed under the MIT License. For more information, see the LICENSE file.
