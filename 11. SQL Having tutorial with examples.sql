-- DataLemur Lesson 203: SQL HAVING
-- Date: 2026-05-24

-- ERROR. Aggregate function is not allowed in WHERE clause, because WHERE runs before grouping and aggregation happen.
-- WHERE filters individual rows, while functions like SUM or COUNT need grouped data to calculate a result.

-- HAVING allows you to filter data based on values from aggregate functions.

SELECT ticker, AVG(open) 
FROM stock_prices
GROUP BY ticker
HAVING AVG(open) > 200;

-- ERROR
SELECT ticker
FROM stock_prices
WHERE AVG(open) > 200 --> 티커별로 그룹이 되어야 계산이 되는 평균인데 그룹 만들기 전에는 나올 수 없음
GROUP BY ticker

-- Difference between WHERE and HAVING
-- WHERE filters on values in individual rows, HAVING filters values aggregated from groups of rows.

-- SQL HAVING practice exercise 1
-- "was always greater than $100" <- MIN(open) > 100
SELECT ticker, MIN(open) AS min
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100

-- SQL HAVING practice exercise 2
SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(skill) > 2;

-- Data Science Skills LinkedIn SQL Interview Question
SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING count(skill) = 3 -- <- candidates who possess all of the required skills for the job
-- HAVING COUNT(DISTINCT skill) = 3 <- duplicate data 방지 / 근데 문제에서는 no duplicates in the table
ORDER BY candidate_id ASC;

-- Can HAVING be used without GROUP BY?
-- It's technically possible to have HAVING without GROUP BY in SQL, and in this case HAVING operates the same as WHERE.
-- But it is more common to use WHERE if trying to filter non-aggregated values.

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY