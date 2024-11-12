
# SQL Query Project: DVD Rental Database Analysis 06 - Min Max Sum AVG

This project provides SQL queries and corresponding results for analyzing the `dvdrental` sample database. The focus is on retrieving specific information from the `film` and `customer` tables based on different filtering conditions.

## Table of Contents

1. [Project Description](#project-description)
2. [Database Schema](#database-schema)
3. [Queries and Explanations](#queries-and-explanations)
    - [1. Average Rental Rate](#1-average-rental-rate)
    - [2. Films Starting with 'C'](#2-films-starting-with-c)
    - [3. Longest Film with Rental Rate of 0.99](#3-longest-film-with-rental-rate-of-099)
    - [4. Unique Replacement Cost Values for Long Films](#4-unique-replacement-cost-values-for-long-films)
4. [License](#license)

---

## Project Description

This project demonstrates various SQL queries designed to explore the `dvdrental` database. Each query targets specific data within the `film` table, retrieving averages, counts, and filtering data based on string patterns and numerical ranges. This README includes explanations for each query and example outputs based on the results from the `dvdrental` dataset.

## Database Schema

The `dvdrental` database contains multiple tables, including `film` and `customer`. This project primarily queries the following tables:

- **film**: Contains information about movies, including `title`, `rental_rate`, `replacement_cost`, and `length`.
- **customer**: Contains information about customers.

---

## Queries and Explanations

### 1. Average Rental Rate

**Query:**
```sql
SELECT AVG(rental_rate) AS average_rental_rate
FROM film;
```

**Explanation:**  
This query calculates the average rental rate from all records in the `film` table.

**Example Result:**
| average_rental_rate |
|---------------------|
| 3.02                |

---

### 2. Films Starting with 'C'

**Query:**
```sql
SELECT COUNT(*) AS count_of_c_titles
FROM film
WHERE title LIKE 'C%';
```

**Explanation:**  
Counts the number of films where the `title` begins with the letter 'C', using the `LIKE` operator to filter by pattern.

**Example Result:**
| count_of_c_titles |
|-------------------|
| 60                |

---

### 3. Longest Film with Rental Rate of 0.99

**Query:**
```sql
SELECT MAX(length) AS longest_length
FROM film
WHERE rental_rate = 0.99;
```

**Explanation:**  
Finds the length of the longest film with a rental rate of 0.99 by retrieving the maximum `length` value under this condition.

**Example Result:**
| longest_length |
|----------------|
| 184            |

---

### 4. Unique Replacement Cost Values for Long Films

**Query:**
```sql
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film
WHERE length > 150;
```

**Explanation:**  
Counts the unique values of `replacement_cost` for films with a length greater than 150 minutes.

**Example Result:**
| unique_replacement_cost_count |
|-------------------------------|
| 12                            |

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
