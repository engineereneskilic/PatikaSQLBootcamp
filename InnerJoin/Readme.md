
# SQL Query Examples: dvdrental Database - Inner Join

This project demonstrates the use of SQL `INNER JOIN` statements on the **dvdrental** example database. The queries combine data from multiple tables to retrieve meaningful results.

## Table of Contents

- [Introduction](#introduction)
- [Technologies](#technologies)
- [Queries](#queries)
  - [City and Country INNER JOIN](#1-city-and-country-inner-join)
  - [Customer and Payment INNER JOIN](#2-customer-and-payment-inner-join)
  - [Customer and Rental INNER JOIN](#3-customer-and-rental-inner-join)
- [Usage](#usage)
- [Output](#output)
- [License](#license)

---

## Introduction

In this project, SQL queries demonstrate how to effectively utilize `INNER JOIN` to combine data from related tables in the **dvdrental** database. The database contains information on a DVD rental store, and the examples focus on retrieving and presenting related data across multiple tables.

---

## Technologies

The following technologies are used:
- PostgreSQL: For database management and executing SQL queries.
- dvdrental database: Example dataset used in the queries.

---

## Queries

### 1. City and Country INNER JOIN

This query retrieves city and country names by joining the **city** and **country** tables.

```sql
-- City ve Country tablolarını birleştirerek şehir ve ülke isimlerini listele
SELECT 
    city.city AS City_Name,       -- Şehir adını alıyoruz
    country.country AS Country_Name -- Ülke adını alıyoruz
FROM 
    city
INNER JOIN 
    country 
ON 
    city.country_id = country.country_id; -- Şehir ve ülke tablosundaki ortak anahtar
```

#### Explanation:
- **Tables Involved**: `city`, `country`
- **Join Condition**: `city.country_id = country.country_id`
- **Columns Selected**:
  - `city.city` as `City_Name`
  - `country.country` as `Country_Name`

---

### 2. Customer and Payment INNER JOIN

This query retrieves payment IDs along with customer names by joining the **customer** and **payment** tables.

```sql
-- Customer ve Payment tablolarını birleştirerek müşteri ad ve soyad bilgilerini ödeme ID'si ile listele
SELECT 
    payment.payment_id AS Payment_ID,  -- Ödeme kimliği
    customer.first_name AS First_Name, -- Müşteri adı
    customer.last_name AS Last_Name    -- Müşteri soyadı
FROM 
    customer
INNER JOIN 
    payment 
ON 
    customer.customer_id = payment.customer_id; -- Müşteri tablolarındaki ortak anahtar
```

#### Explanation:
- **Tables Involved**: `customer`, `payment`
- **Join Condition**: `customer.customer_id = payment.customer_id`
- **Columns Selected**:
  - `payment.payment_id` as `Payment_ID`
  - `customer.first_name` as `First_Name`
  - `customer.last_name` as `Last_Name`

---

### 3. Customer and Rental INNER JOIN

This query retrieves rental IDs along with customer names by joining the **customer** and **rental** tables.

```sql
-- Customer ve Rental tablolarını birleştirerek müşteri ad ve soyad bilgilerini kiralama ID'si ile listele
SELECT 
    rental.rental_id AS Rental_ID,   -- Kiralama kimliği
    customer.first_name AS First_Name, -- Müşteri adı
    customer.last_name AS Last_Name    -- Müşteri soyadı
FROM 
    customer
INNER JOIN 
    rental 
ON 
    customer.customer_id = rental.customer_id; -- Müşteri tablolarındaki ortak anahtar
```

#### Explanation:
- **Tables Involved**: `customer`, `rental`
- **Join Condition**: `customer.customer_id = rental.customer_id`
- **Columns Selected**:
  - `rental.rental_id` as `Rental_ID`
  - `customer.first_name` as `First_Name`
  - `customer.last_name` as `Last_Name`

---

## Usage

To execute the queries:
1. Install PostgreSQL and import the **dvdrental** database.
2. Run each SQL query in a PostgreSQL query tool.
3. Observe the output for each query in the result pane.

---

## Output

### Example Outputs:
#### Query 1:
| City_Name | Country_Name |
|-----------|--------------|
| Athenai   | Greece       |
| Berlin    | Germany      |

#### Query 2:
| Payment_ID | First_Name | Last_Name  |
|------------|------------|------------|
| 12345      | John       | Doe        |

#### Query 3:
| Rental_ID | First_Name | Last_Name  |
|-----------|------------|------------|
| 54321     | Jane       | Smith      |

---

## License

This project is licensed under the MIT License. For more details, see the [LICENSE](LICENSE) file.

