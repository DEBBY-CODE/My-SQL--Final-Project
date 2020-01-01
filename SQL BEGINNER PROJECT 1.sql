USE mavenmovies;

SELECT 
  first_name,
  last_name,
  email,
  staff_id
FROM staff;

SELECT 
   store_id,
COUNT(inventory_id) 
   AS inventory_items
FROM inventory
   GROUP BY 
       store_id;
       
SELECT 
store_id,
COUNT(customer_id) 
AS Count_of_Active_Customers
FROM customer
WHERE active=1
GROUP BY
 store_id;
 
 SELECT
COUNT(email) AS ALL_Customer_email
FROM customer;

SELECT 
store_id,
COUNT(DISTINCT film_id) AS Unique_films
FROM inventory
GROUP BY store_id;

SELECT 
COUNT(DISTINCT name) AS Unique_categories
FROM category;

SELECT MIN(replacement_cost) AS 'least expensive to replace',
MAX(replacement_cost) AS 'most expensive to replace',
AVG(replacement_cost) AS 'Average replacement cost'
FROM film;

SELECT 
	AVG(amount) AS 'Average payemnt process',
	MAX(amount) AS 'Maximum payment process'
FROM payment;

SELECT 
customer_id,
COUNT(rental_id) AS 'Number of rentals'
FROM rental
GROUP BY customer_id
ORDER BY COUNT(rental_id) DESC;