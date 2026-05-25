-- DataLemur Lesson 202: SQL SUM, AVG, COUNT
-- Date: 2026-05-23

-- SUM : adds together all the values in a particular column (numeric value)
-- MIN : returns the lowest value in a particular column
-- MAX : returns the highest value in a particular column
-- AVG : calculates the average of a group of selected values (numeric value)
-- COUNT : counts how many rows are in a particular column

-- COUNT
SELECT COUNT(user_id)
FROM product_spend;

SELECT COUNT(*)
FROM table_name;

-- 🏃🏻‍♀️ Exercise 
SELECT COUNT(*)
FROM pharmacy_sales;

-- SUM
SELECT SUM(spend)
FROM product_spend;

-- 🏃🏻‍♀️ Exercise 
SELECT COUNT(drug), SUM(total_sales)
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer';

-- AVG
SELECT AVG(spend)
FROM product_spend;

-- 🏃🏻‍♀️ Exercise 
SELECT AVG(open)
FROM stock_prices
WHERE ticker = 'GOOG';

-- MIN
SELECT MIN(spend)
FROM product_spend;

-- 🏃🏻‍♀️ Exercise 
SELECT MIN(open)
FROM stock_prices
WHERE ticker = 'MSFT';

-- MAX (retrieves the largest value in a column)
SELECT MAX(spend)
FROM product_spend;

-- 🏃🏻‍♀️ Exercise 
SELECT MAX(open)
FROM stock_prices
WHERE ticker = 'NFLX';