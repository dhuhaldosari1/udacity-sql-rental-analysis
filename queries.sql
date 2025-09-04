-- Query 1: Top 20 Customers by Rental Count
SELECT c.first_name || ' ' || c.last_name AS customer_name, 
       COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 20;

-- Query 2: Top 8 Countries by Number of Customers
SELECT country,
       COUNT(*) AS number_of_customers
FROM (
    SELECT *
    FROM customer AS c
    JOIN address AS a ON c.address_id = a.address_id 
    JOIN city AS cty ON cty.city_id = a.city_id 
    JOIN country AS ct ON ct.country_id = cty.country_id
) q2
GROUP BY 1
ORDER BY 2 DESC
LIMIT 8;

-- Query 3: Total Revenue by Country
SELECT country,
       SUM(amount) AS total_revenue
FROM (
    SELECT *
    FROM customer AS c
    JOIN address AS a ON c.address_id = a.address_id 
    JOIN city AS cty ON cty.city_id = a.city_id 
    JOIN country AS ct ON ct.country_id = cty.country_id
    JOIN payment AS p ON p.customer_id = c.customer_id
) q3
GROUP BY 1
ORDER BY 2 DESC;

-- Query 4: Rental Distribution by Film Categories
SELECT category_name, 
       SUM(rental_rate) AS total_rental_rate
FROM (
    SELECT DISTINCT (title) AS film_title,
           name AS category_name,
           COUNT(title) OVER (PARTITION BY title) AS rental_rate
    FROM category AS Cate
    JOIN film_category AS FilmCat ON Cate.category_id = FilmCat.category_id
    JOIN film AS F ON F.film_id = FilmCat.film_id
    JOIN inventory AS inv ON inv.film_id = F.film_id
    JOIN rental AS ren ON ren.inventory_id = inv.inventory_id
) film_rentals
GROUP BY 1
ORDER BY 2 DESC;
