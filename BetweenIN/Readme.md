# DVD Rental Database Queries

This README file provides an overview of the DVD Rental Database Queries project, which involves performing SQL queries on the `dvdrental` sample database. The project aims to demonstrate how to retrieve and sort data based on specified conditions using SQL commands such as `BETWEEN ... AND` and `IN`.

## Table of Contents

1. [About the Project](#about-the-project)
2. [Technologies Used](#technologies-used)
3. [Queries and Results](#queries-and-results)
   - [1. Filtering Films by Replacement Cost](#1-filtering-films-by-replacement-cost)
   - [2. Selecting Actors by First Name](#2-selecting-actors-by-first-name)
   - [3. Filtering Films by Rental Rate and Replacement Cost](#3-filtering-films-by-rental-rate-and-replacement-cost)
4. [License](#license)

## About the Project

This project demonstrates various SQL queries on the `dvdrental` database to retrieve data that meets certain conditions. These queries utilize SQL commands such as `BETWEEN ... AND` and `IN` to filter the results effectively.

## Technologies Used

- **PostgreSQL**: A powerful, open-source relational database system.
- **SQL**: The standard language used for querying and manipulating databases.

## Queries and Results

### 1. Filtering Films by Replacement Cost

**Query:**
```sql
SELECT *
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99
ORDER BY replacement_cost;
```

**Explanation:** This query retrieves all columns from the `film` table where the `replacement_cost` is between 12.99 and 16.99, inclusive. The `BETWEEN ... AND` operator is used to filter results within a specified range.

**Example Output:**

| film_id | title              | description          | release_year | language_id | rental_duration | rental_rate | length | replacement_cost | rating | special_features    | last_update          |
|---------|--------------------|----------------------|--------------|-------------|-----------------|-------------|--------|-------------------|--------|---------------------|-----------------------|
| 10      | ACADEMY DINOSAUR   | A Epic Drama...      | 2006         | 1           | 6               | 0.99        | 86     | 13.99             | PG     | Behind the Scenes    | 2024-11-01 12:00:00   |
| 25      | AFRICAN EGG        | A Fast-Paced Story...| 2006         | 1           | 5               | 4.99        | 130    | 15.99             | R      | Trailers             | 2024-11-01 12:00:00   |

### 2. Selecting Actors by First Name

**Query:**
```sql
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name;
```

**Explanation:** This query selects the `first_name` and `last_name` columns from the `actor` table where the `first_name` matches any of the specified names ('Penelope', 'Nick', 'Ed'). The `IN` operator simplifies filtering for multiple specific values.

**Example Output:**

| first_name | last_name |
|-------------|-----------|
| Penelope    | Guiness   |
| Nick        | Wahlberg  |
| Ed          | Chase     |

### 3. Filtering Films by Rental Rate and Replacement Cost

**Query:**
```sql
SELECT *
FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY rental_rate;
```

**Explanation:** This query retrieves all columns from the `film` table where the `rental_rate` is one of the specified values (0.99, 2.99, or 4.99) and the `replacement_cost` is also among the specified values (12.99, 15.99, or 28.99). The use of `IN` allows for efficient filtering of multiple conditions.

**Example Output:**

| film_id | title              | description          | release_year | language_id | rental_duration | rental_rate | length | replacement_cost | rating | special_features    | last_update          |
|---------|--------------------|----------------------|--------------|-------------|-----------------|-------------|--------|-------------------|--------|---------------------|-----------------------|
| 5       | ACADEMY DINOSAUR   | A Epic Drama...      | 2006         | 1           | 6               | 0.99        | 86     | 12.99             | PG     | Behind the Scenes    | 2024-11-01 12:00:00   |
| 25      | AFRICAN EGG        | A Fast-Paced Story...| 2006         | 1           | 5               | 2.99        | 130    | 15.99             | R      | Trailers             | 2024-11-01 12:00:00   |

## License

This project is licensed under the MIT License. For more information, see the LICENSE file.
