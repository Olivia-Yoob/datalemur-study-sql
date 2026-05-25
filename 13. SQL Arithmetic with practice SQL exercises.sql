-- DataLemur Lesson 206: SQL Arithmetic
-- Date: 2026-05-24

-- example
SELECT particle_speed / 10.0 + speed_offset
FROM particle_sensor_data
WHERE (particle_position ^ 2) + 10.0 > 500
AND sensor_type = 'photon'
AND measurement_day % 7 = 0;


-- + : adds two number
SELECT salary + bonus AS total_compensation FROM employees;

-- - : subtracts one column value from another
SELECT revenue - expenses AS profit FROM product_sales;

-- * : multiplies two numbers
SELECT units_sold * price AS revenue FROM ecomm_orders;

-- / : divides the first column value by the number in the 2nd column
-- always ensure to not dividing by zero, as it will cause an error.
SELECT country_gdp / population AS gpd_per_capita FROM econ_stats;

-- % 나머지 : modulus or remainder function, returns the remainder of a division operation
SELECT 23 % 6; -- 5
-- often used to find off and even values

-- ^ : power operator, raises a number to the power of another number
SELECT 10 ^ 2;

-- SQL Arithmetic Practice Exercises
-- Practice SQL Subtraction: CVS Pharmacy Interview Question
SELECT drug, (total_sales-cogs) AS profit
FROM pharmacy_sales
ORDER BY profit DESC LIMIT 3
-- total profit = total sales - cost of goods sold

-- Cards Issued Difference - JPMorgan SQL Interview Question
SELECT card_name , MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;

-- SQL Math Practice Exercise: Big-Mover Months
-- greater than 10% difference means ABS((close-open) / open) > 0.10

SELECT ticker, COUNT(ticker) AS count --> 여기 주의
FROM stock_prices
WHERE ABS((close-open) / open) > 0.10 --> 여기 주의
GROUP BY ticker
ORDER BY count DESC;--> 여기 주의