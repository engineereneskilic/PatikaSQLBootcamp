# dvdrental SQL Project

## Project Link

[GitHub Repository
Link](https://github.com/yourusername/dvdrental-sql-project)

## Project Description

This project consists of SQL queries executed on the `dvdrental`
PostgreSQL sample database. These queries perform data retrieval,
filtering, and conditional selection on tables such as `film` and
`customer`. This project is intended to demonstrate various SQL
operations and provide examples for practice.

## Table of Contents

-   [Project Description](#project-description)
-   [Requirements](#requirements)
-   [Installation](#installation)
-   [SQL Queries](#sql-queries)
    -   [1. Retrieve and sort film titles and
        descriptions](#1-retrieve-and-sort-film-titles-and-descriptions)
    -   [2. Retrieve films with length greater than 60 and less than
        75](#2-retrieve-films-with-length-greater-than-60-and-less-than-75)
    -   [3. Retrieve films with rental rate of 0.99 and replacement cost
        of either 12.99 or
        28.99](#3-retrieve-films-with-rental-rate-of-099-and-replacement-cost-of-either-1299-or-2899)
    -   [4. Find the last name of the customer with first name
        'Mary'](#4-find-the-last-name-of-the-customer-with-first-name-mary)
    -   [5. Retrieve films with length not greater than 50 and rental
        rate not 2.99 or
        4.99](#5-retrieve-films-with-length-not-greater-than-50-and-rental-rate-not-299-or-499)
-   [Image](#image)
-   [Usage](#usage)
-   [License](#license)

## Requirements

-   **Database**: PostgreSQL
-   **Sample Data**: dvdrental database (available from PostgreSQL
    sample datasets)

## Installation

1.  Clone this repository to your local machine using: \`\`\`bash git
    clone https://github.com/yourusername/dvdrental-sql-project.git Load
    the dvdrental sample dataset in your PostgreSQL database. SQL
    Queries Below are the SQL queries used in this project along with
    their descriptions:

2.  Retrieve and sort film titles and descriptions This query selects
    the title and description columns from the film table and sorts the
    results by the title column.

sql Kodu kopyala SELECT title, description FROM film ORDER BY title; 2.
Retrieve films with length greater than 60 and less than 75 This query
retrieves all columns from the film table where the film length is
greater than 60 and less than 75, sorted by the length column.

sql Kodu kopyala SELECT \* FROM film WHERE length \> 60 AND length \< 75
ORDER BY length; 3. Retrieve films with rental rate of 0.99 and
replacement cost of either 12.99 or 28.99 This query selects all columns
from the film table where the rental_rate is 0.99 and the
replacement_cost is either 12.99 or 28.99, sorted by the rental_rate.

sql Kodu kopyala SELECT \* FROM film WHERE rental_rate = 0.99 AND
(replacement_cost = 12.99 OR replacement_cost = 28.99) ORDER BY
rental_rate; 4. Find the last name of the customer with first name
'Mary' This query retrieves the last_name of the customer whose
first_name is 'Mary'.

sql Kodu kopyala SELECT last_name FROM customer WHERE first_name =
'Mary'; 5. Retrieve films with length not greater than 50 and rental
rate not 2.99 or 4.99 This query selects all columns from the film table
where the length is not greater than 50 and the rental rate is not 2.99
or 4.99.

sql Kodu kopyala SELECT \* FROM film WHERE length \<= 50 AND rental_rate
NOT IN (2.99, 4.99) ORDER BY length; Usage To execute the SQL queries,
connect to the dvdrental database in PostgreSQL and run each query
individually.

License This project is open-source and available under the MIT License.
