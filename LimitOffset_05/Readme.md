
# SQL Queries on DVD Rental Database

## Project Name
**SQL Queries on DVD Rental Database**

## Project Description
This project involves running a series of SQL queries on the `dvdrental` sample database to extract specific information from tables. The queries demonstrate data filtering, sorting, and limiting results using different SQL techniques.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Queries and Results](#queries-and-results)
   - [1. Longest 5 Films Ending with 'n'](#1-longest-5-films-ending-with-n)
   - [2. Shortest Films (6, 7, 8, 9, 10) Ending with 'n'](#2-shortest-films-678910-ending-with-n)
   - [3. First 4 Customers (store_id 1) Ordered by Last Name](#3-first-4-customers-store_id-1-ordered-by-last-name)
4. [License](#license)

## Project Overview

This project demonstrates SQL queries performed on the `dvdrental` database to retrieve and analyze specific datasets, such as films with specific characteristics and customers filtered by store ID.

## Technologies Used

- PostgreSQL
- SQL

## Queries and Results

### 1. Longest 5 Films Ending with 'n'

**Query:**
```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;
```

**Explanation:**
This query retrieves the top 5 longest films from the `film` table where the title ends with 'n'. It sorts the films by their length in descending order.

**Example Output:**
| title                  | length |
|------------------------|--------|
| The Godfather II        | 175    |
| The Godfather           | 175    |
| ...                    | ...    |

---

### 2. Shortest Films (6, 7, 8, 9, 10) Ending with 'n'

**Query:**
```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
AND length IN (6, 7, 8, 9, 10)
ORDER BY length ASC
LIMIT 5;
```

**Explanation:**
This query retrieves the top 5 shortest films where the title ends with 'n' and their length is either 6, 7, 8, 9, or 10. The results are sorted by film length in ascending order.

**Example Output:**
| title                  | length |
|------------------------|--------|
| Memento                | 6      |
| ...                    | ...    |

---

### 3. First 4 Customers (store_id 1) Ordered by Last Name

**Query:**
```sql
SELECT first_name, last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```

**Explanation:**
This query retrieves the first 4 customers with `store_id` 1, ordered by their last name in descending order.

**Example Output:**
| first_name | last_name | store_id |
|------------|-----------|----------|
| Mary       | Ziegler   | 1        |
| ...        | ...       | ...      |

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
