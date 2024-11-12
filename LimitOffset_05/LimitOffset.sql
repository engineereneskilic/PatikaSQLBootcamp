-- 1. Unique Replacement Cost Values
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. Counting Unique Replacement Costs
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film;

-- 3. Titles Starting with 'T' and 'G' Rating
SELECT COUNT(*) AS title_starting_with_T_and_G_rating
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. Countries with 5 Characters
SELECT COUNT(*) AS five_character_countries
FROM country
WHERE LENGTH(country) = 5;

-- 5. Cities Ending with 'R' or 'r'
SELECT COUNT(*) AS cities_ending_with_R_or_r
FROM city
WHERE city LIKE '%R' OR city LIKE '%r';