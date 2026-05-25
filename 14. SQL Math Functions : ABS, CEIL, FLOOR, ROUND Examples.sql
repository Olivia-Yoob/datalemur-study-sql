-- DataLemur Lesson 207: SQL Math Functions
-- Date: 2026-05-25

-- ABS() : Calcuating Absolute Differences
SELECT date, ticker, (close-open) AS difference, ABS(close-open) AS abs_difference
FROM stock_prices
WHERE EXTRACT(YEAR FROM date) = 2023
    AND ticker = 'GOOG';

-- ROUND() : Rounding Numbers
-- it rounds a number to a specified number of decimal places.

SELECT ticker, AVG(close) AS avg_close, ROUND(AVG(close),2) AS rounded_avg_close
FROM stock_prices
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY ticker;

-- CEIL() and FLOOR() : Rounding UP and DOWN
-- functions to round up and round down to the lowest and the highest

-- POWER () : Calculating Squared Values
-- raises a number to a specified power, allowing us to perform exponential calculations.
-- In postgreSQL we can also just use ^ operator

-- MOD() or % : calculates the ramainder of division between two numbers
MODE(close, 5)
close%5

-- SQL CEIL Practice Exercise
SELECT drug, CEIL(total_sales / units_sold) AS unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost ASC;