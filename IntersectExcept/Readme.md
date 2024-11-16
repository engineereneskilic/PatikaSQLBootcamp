
# DVDRental SQL Query Examples - Intersect Except

This repository contains advanced SQL queries designed for the **DVDRental** sample database. The queries demonstrate the use of set operations like `UNION`, `INTERSECT`, and `EXCEPT` to compare and manipulate data between the `actor` and `customer` tables.

---

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Database Schema Overview](#database-schema-overview)
4. [SQL Queries](#sql-queries)
   - [1. All Names from Both Tables](#1-all-names-from-both-tables)
   - [2. Common Names Between Tables](#2-common-names-between-tables)
   - [3. Names in Actor Only](#3-names-in-actor-only)
   - [4. All Names Including Duplicates](#4-all-names-including-duplicates)
   - [5. Common Names Including Duplicates](#5-common-names-including-duplicates)
   - [6. Names in Actor Only Including Duplicates](#6-names-in-actor-only-including-duplicates)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [License](#license)

---

## Introduction
The **DVDRental** database provides a rich set of data for practicing SQL. This document focuses on set operations to solve real-world scenarios such as finding common or distinct data between two tables.

---

## Prerequisites
- PostgreSQL database installed and running.
- The DVDRental database imported into your PostgreSQL instance.
- A SQL client such as pgAdmin or DBeaver.

---

## Database Schema Overview
Key tables used in the queries:
- **actor**: Stores actor information, including `first_name`.
- **customer**: Stores customer information, including `first_name`.

---

## SQL Queries

### 1. All Names from Both Tables
This query retrieves all unique names from the `actor` and `customer` tables.

```sql
SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Alice      |
| Bob        |
| Mary       |

---

### 2. Common Names Between Tables
This query retrieves names that exist in both the `actor` and `customer` tables.

```sql
SELECT first_name
FROM actor
INTERSECT
SELECT first_name
FROM customer
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Alice      |
| Bob        |

---

### 3. Names in Actor Only
This query retrieves names that are in the `actor` table but not in the `customer` table.

```sql
SELECT first_name
FROM actor
EXCEPT
SELECT first_name
FROM customer
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Mary       |

---

### 4. All Names Including Duplicates
This query retrieves all names from both tables, including duplicates.

```sql
SELECT first_name
FROM actor
UNION ALL
SELECT first_name
FROM customer
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Alice      |
| Alice      |
| Bob        |
| Mary       |

---

### 5. Common Names Including Duplicates
This query retrieves common names between both tables, including duplicates.

```sql
SELECT first_name
FROM actor
INNER JOIN customer
ON actor.first_name = customer.first_name
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Alice      |
| Alice      |
| Bob        |

---

### 6. Names in Actor Only Including Duplicates
This query retrieves names from the `actor` table that are not in the `customer` table, including duplicates.

```sql
SELECT first_name
FROM actor
LEFT JOIN customer
ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL
ORDER BY first_name;
```

#### Output:
| first_name |
|------------|
| Mary       |
| Mary       |

---

## Usage
1. Open your SQL client tool.
2. Connect to the PostgreSQL database containing the DVDRental schema.
3. Execute the queries to understand the relationships between the `actor` and `customer` tables.

---

## Contributing
Contributions are welcome! Please submit a pull request with additional queries or optimizations.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
