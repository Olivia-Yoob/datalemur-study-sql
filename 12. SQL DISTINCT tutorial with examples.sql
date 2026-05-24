-- DataLemur Lesson 204: SQL DISTINCT
-- Date: 2026-05-24

-- DISTINCT is used in conjunction with the SELECT statement to return only distinct values.
-- finds and returns only unique values in the column, and removed all the duplicate names.

SELECT DISTINCT manufacturer
FROM pharmacy_sales;

-- Helpful when exploring a new dataset : to figure out what data I have access too, and how I might want to group or filter the data.
-- You only need to include DISTINCT once in the SELECT clause

-- Cities With Completed Trades - Robinhood SQL Interview Question

-- Assume you're given the tables containing completed trade orders and user details in a Robinhood trading system.
-- Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. Output the city name and the corresponding number of completed trade orders.

SELECT DISTINCT city, COUNT(quantity) AS count_order
FROM trades
JOIN users
  ON trades.user_id = users.user_id
WHERE status = 'Completed'
GROUP BY city
ORDER BY count_order DESC LIMIT 3;

SELECT 
    USERS.CITY, 
    COUNT(TRADES.ORDER_ID) AS TOTAL_ORDERS
FROM TRADES
INNER JOIN USERS
    ON TRADES.USER_ID = USERS.USER_ID
WHERE TRADES.STATUS = 'COMPLETED'
GROUP BY USERS.CITY
ORDER BY TOTAL_ORDERS DESC
LIMIT 3;

/*
1. filter status = 'Completed'
2. JOIN table and bring city column
3. COUNT number by each city
4. ORDER BY number of counts and limit 3
*/

SELECT u.city, COUNT(*) AS total_orders
FROM table t
JOIN users u 
    ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3

-- FROM -> JOIN -> WHERE -> GROUP BY -> COUNT -> ORDER BY -> LIMIT
-- Also can use DISTINCT with aggregate functions like COUNT 종류를 세고 싶을 떄!


-- SQL COUNT DISTINCT Practice Exercise
SELECT category, COUNT(DISTINCT(product))
FROM product_spend
GROUP BY category;
