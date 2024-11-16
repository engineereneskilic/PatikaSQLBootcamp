
# DVDRental SQL Query Examples - Left Right Join

This repository contains SQL queries designed for the **DVDRental** sample database. The queries demonstrate the use of different SQL joins, such as `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN`, to solve real-world database scenarios.

---

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Database Schema Overview](#database-schema-overview)
4. [SQL Queries](#sql-queries)
   - [1. LEFT JOIN: City and Country Names](#1-left-join-city-and-country-names)
   - [2. RIGHT JOIN: Customer and Payment Information](#2-right-join-customer-and-payment-information)
   - [3. FULL JOIN: Customer and Rental Information](#3-full-join-customer-and-rental-information)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [License](#license)

---

## Introduction
The **DVDRental** sample database is commonly used for practicing SQL queries. This repository includes examples of `JOIN` operations that combine data from multiple tables to retrieve meaningful insights.

---

## Prerequisites
- A PostgreSQL database instance installed on your system.
- The DVDRental sample database imported into PostgreSQL. You can download it from [PostgreSQL Sample Databases](https://www.postgresqltutorial.com/postgresql-sample-database/).
- A SQL client tool such as pgAdmin or DBeaver.

---

## Database Schema Overview
Key tables used in the queries:
- **city**: Contains city information with a reference to its associated country.
- **country**: Contains country information.
- **customer**: Stores customer details.
- **payment**: Records payment transactions.
- **rental**: Tracks rental transactions.

---

## SQL Queries

### 1. LEFT JOIN: City and Country Names
This query retrieves all cities from the `city` table and matches them with their corresponding countries in the `country` table. If a city does not have a corresponding country, the country field will show `NULL`.

```sql
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
```

#### Output:
| city_id | city_name       | country_id | country_name  |
|---------|-----------------|------------|---------------|
| 1       | Athenai         | 1          | Greece        |
| 2       | Albuquerque     | NULL       | NULL          |
| 3       | Berlin          | 2          | Germany       |

---

### 2. RIGHT JOIN: Customer and Payment Information
This query retrieves all payments from the `payment` table and matches them with the `customer` table. If a payment does not have a corresponding customer, the customer fields will show `NULL`.

```sql
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
```

#### Output:
| payment_id | customer_id | first_name | last_name |
|------------|-------------|------------|-----------|
| 1          | 1           | Mary       | Smith     |
| 2          | 2           | John       | Doe       |
| 3          | NULL        | NULL       | NULL      |

---

### 3. FULL JOIN: Customer and Rental Information
This query retrieves all records from the `customer` and `rental` tables, including customers without rentals and rentals without associated customers.

```sql
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
```

#### Output:
| rental_id | customer_id | first_name | last_name  |
|-----------|-------------|------------|------------|
| 1         | 1           | Mary       | Smith      |
| 2         | NULL        | NULL       | NULL       |
| NULL      | 3           | Anna       | Johnson    |

---

## Usage
To execute the queries:
1. Open your SQL client tool.
2. Connect to the PostgreSQL database where the **DVDRental** database is imported.
3. Copy and paste the queries into the query editor and execute them.
4. Review the results to understand the relationship between the tables.

---

## Contributing
Contributions are welcome! Feel free to submit a pull request if you have optimized queries or additional examples.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
