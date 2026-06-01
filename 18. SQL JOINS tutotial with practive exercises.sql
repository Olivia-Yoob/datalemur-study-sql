-- DataLemur Lesson 211: SQL JOIN
-- Date: 2026-06-01

-- ON : explains to the RDBMS how the two tables relate to each other.

-- Easy SQL JOIN Practice Exercise
SELECT * 
FROM trades
JOIN users
 ON trades.user_id = users.user_id;

-- Cities With Completed Trades : Robinhood SQL Interview Question
SELECT city, COUNT(order_id) AS total_orders
FROM trades
JOIN users
  ON trades.user_id = users.user_id
WHERE status = 'Completed'
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;

-- INNER JOIN : rows with matching values from both tables
-- ex. how many books & who the buyers are
SELECT 
    orders.order_id, 
    orders.customer_id,
    goodreads.book_title,
    orders.quantity
FROM goodreads
INNER JOIN orders
    ON goodreads.book_id = orders.book_id
WHERE goodreads.price >= 20;

-- LEFT JOIN : all the rows from the left table & matching rows from the right table
-- ex. if want to retrieve all the rows in one table 

-- RIGHT JOIN : all the rows from the right table & matching rows from the left table
-- FULL OUTER JOIN : all rows that match in either the left or the right table, if there's no match, NULL values are returned for columns from the table without a match

-- Example 1: Joining goodreads and orders table with a condition on quantity
SELECT 
  g.book_title, 
  o.quantity
FROM goodreads AS g
INNER JOIN orders AS o 
  ON g.book_id = o.book_id
    AND o.quantity > 2;

-- Example 2: Joining orders and deliveries tables with a condition on delivery_status
SELECT 
  o.order_id, 
  d.delivery_status
FROM orders AS o
INNER JOIN deliveries AS d 
  ON o.order_id = d.order_id
    AND d.delivery_status IN ('Delivered', 'Shipped');

-- Example 3: Joining goodreads and orders with multiple conditions
SELECT 
  g.book_title, 
  g.author, 
  o.order_date
FROM goodreads AS g
INNER JOIN orders AS o 
  ON g.book_id = o.book_id
    AND g.year_released > 2015
    AND o.quantity > 1;

-- Example 4: Joining all three tables with a condition on book_rating and delivery_status
SELECT 
  g.book_title, 
  g.book_rating, 
  o.order_date, 
  d.delivery_status
FROM goodreads g
JOIN orders o 
  ON g.book_id = o.book_id
    AND g.book_rating > 4.0
INNER JOIN deliveries d 
  ON o.order_id = d.order_id
    AND d.delivery_status = 'Delivered';


-- Page With No Likes : Facebook SQL Interview Question
SELECT p.page_id
FROM pages p 
LEFT JOIN page_likes pl
  ON p.page_id = pl.page_id
WHERE pl.liked_date IS NULL
ORDER BY p.page_id ASC;

-- Advertiser Status : Facebook SQL Interview Question
