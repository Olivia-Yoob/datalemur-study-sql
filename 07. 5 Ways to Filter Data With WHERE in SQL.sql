-- DataLemur Lesson 108: 5 ways to filter data with WHERE in SQL
-- Date: 2026-05-23

* WHERE 
-- allows us to filter rows based on specified conditions

* AND and OR
-- allows us to combine multiple filtering conditions

* BETWEEN 
-- allows us to filter on a range of values

* IN
-- allows us to specify a list of values that you'd like to filter on

* LIKE
-- allows us to match a value against a pattern


-- Exercise
SELECT *
FROM customers
WHERE age BETWEEN 18 AND 22
  AND state IN ('Victoria', 'Tasmania', 'Queensland')
  AND gender NOT LIKE 'n/a'
  AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%')

SELECT * FROM customers
WHERE age BETWEEN 18 AND 22
    AND state IN ('Victoria', 'Tasmania', 'Queensland')
    AND gender != 'n/a'
    AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%');

-- ERROR : LIKE expects a single pattern string!! So, we need to write down LIKE condition separately.