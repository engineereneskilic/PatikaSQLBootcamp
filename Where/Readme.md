
# dvdrental Where SQL Project

## Project Link
[GitHub Repository Link](https://github.com/yourusername/dvdrental-sql-project)

## Project Description
The dvdrental SQL project showcases a series of SQL queries designed for data retrieval, filtering, and conditional selection on the **dvdrental** PostgreSQL sample database. This project focuses on commonly used SQL operations and serves as a learning tool to practice SQL skills. Data is retrieved from tables like `film` and `customer`, highlighting various query techniques.

## Table of Contents
- [Project Description](#project-description)
- [Requirements](#requirements)
- [Installation](#installation)
- [SQL Queries](#sql-queries)
  - [1. Retrieve and sort film titles and descriptions](#1-retrieve-and-sort-film-titles-and-descriptions)
  - [2. Retrieve films with length greater than 60 and less than 75](#2-retrieve-films-with-length-greater-than-60-and-less-than-75)
  - [3. Retrieve films with rental rate of 0.99 and replacement cost of either 12.99 or 28.99](#3-retrieve-films-with-rental-rate-of-099-and-replacement-cost-of-either-1299-or-2899)
  - [4. Find the last name of the customer with first name 'Mary'](#4-find-the-last-name-of-the-customer-with-first-name-mary)
  - [5. Retrieve films with length not greater than 50 and rental rate not 2.99 or 4.99](#5-retrieve-films-with-length-not-greater-than-50-and-rental-rate-not-299-or-499)
- [Usage](#usage)
- [License](#license)

## Requirements
- **Database**: PostgreSQL
- **Sample Data**: dvdrental database (available from PostgreSQL sample datasets)

## Installation
1. **Clone the Repository**  
   Clone this project to your local machine:
   ```bash
   git clone https://github.com/yourusername/dvdrental-sql-project.git
   ```
2. **Load the dvdrental Sample Dataset**  
   Import the dvdrental sample dataset into your PostgreSQL database. Instructions for downloading and loading the sample data can be found in the PostgreSQL documentation or directly via the dvdrental sample database file.

## SQL Queries
Below are the SQL queries used in this project, each with a description of its function.

### 1. Retrieve and sort film titles and descriptions
This query selects the `title` and `description` columns from the `film` table and sorts the results alphabetically by `title`.

```sql
SELECT title, description
FROM film
ORDER BY title;
```

### 2. Retrieve films with length greater than 60 and less than 75
This query retrieves all columns from the `film` table where the film length is greater than 60 and less than 75, sorted by `length`.

```sql
SELECT *
FROM film
WHERE length > 60 AND length < 75
ORDER BY length;
```

### 3. Retrieve films with rental rate of 0.99 and replacement cost of either 12.99 or 28.99
This query selects all columns from the `film` table where the `rental_rate` is 0.99, and the `replacement_cost` is either 12.99 or 28.99, sorting results by `rental_rate`.

```sql
SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate;
```

### 4. Find the last name of the customer with first name 'Mary'
This query retrieves the `last_name` of the customer whose `first_name` is 'Mary'.

```sql
SELECT last_name
FROM customer
WHERE first_name = 'Mary';
```

### 5. Retrieve films with length not greater than 50 and rental rate not 2.99 or 4.99
This query selects all columns from the `film` table where the film `length` is 50 or less, and the `rental_rate` is neither 2.99 nor 4.99.

```sql
SELECT *
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length;
```

## Usage
To use these SQL queries, connect to the dvdrental database in PostgreSQL, and run each query individually to see the corresponding data output. Make sure to examine the results for each query to understand the retrieval process and the application of various SQL conditions.

## License
This project is open-source and available under the MIT License.
