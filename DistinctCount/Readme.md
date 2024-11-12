
# DVD Rental Database Queries - Distinct Count

This project contains SQL queries executed on the `dvdrental` sample database. The goal is to retrieve specific information from various tables in the database, including unique values, counts, and pattern matching.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Queries and Results](#queries-and-results)
   - [1. Unique Replacement Cost Values](#1-unique-replacement-cost-values)
   - [2. Counting Unique Replacement Costs](#2-counting-unique-replacement-costs)
   - [3. Titles Starting with 'T' and 'G' Rating](#3-titles-starting-with-t-and-g-rating)
   - [4. Countries with 5 Characters](#4-countries-with-5-characters)
   - [5. Cities Ending with 'R' or 'r'](#5-cities-ending-with-r-or-r)
4. [License](#license)

## Project Overview

This project demonstrates the use of SQL queries on the `dvdrental` database, highlighting concepts such as distinct values, counting, and string pattern matching.

## Technologies Used

- PostgreSQL
- SQL

## Queries and Results

### 1. Unique Replacement Cost Values

**Query:**
```sql
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;
```

**Explanation:** Retrieves distinct values from the `replacement_cost` column in the `film` table, sorted in ascending order.

**Example Output:**
| replacement_cost |
|------------------|
| 9.99             |
| 12.99            |
| 14.99            |
| ...              |

---

### 2. Counting Unique Replacement Costs

**Query:**
```sql
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film;
```

**Explanation:** Counts the number of unique values in the `replacement_cost` column in the `film` table.

**Example Output:**
| unique_replacement_cost_count |
|-------------------------------|
| 21                            |

---

### 3. Titles Starting with 'T' and 'G' Rating

**Query:**
```sql
SELECT COUNT(*) AS title_starting_with_T_and_G_rating
FROM film
WHERE title LIKE 'T%' AND rating = 'G';
```

**Explanation:** Counts the number of titles that start with the letter 'T' and have a rating of 'G'.

**Example Output:**
| title_starting_with_T_and_G_rating |
|------------------------------------|
| 7                                  |

---

### 4. Countries with 5 Characters

**Query:**
```sql
SELECT COUNT(*) AS five_character_countries
FROM country
WHERE LENGTH(country) = 5;
```

**Explanation:** Counts the number of countries in the `country` table that have exactly 5 characters.

**Example Output:**
| five_character_countries |
|--------------------------|
| 6                        |

---

### 5. Cities Ending with 'R' or 'r'

**Query:**
```sql
SELECT COUNT(*) AS cities_ending_with_R_or_r
FROM city
WHERE city LIKE '%R' OR city LIKE '%r';
```

**Explanation:** Counts the number of cities in the `city` table that end with either an uppercase or lowercase 'R'.

**Example Output:**
| cities_ending_with_R_or_r |
|---------------------------|
| 15                        |

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
