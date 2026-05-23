-- DataLemur Lesson 109: SQL ORDER BY
-- Date: 2026-05-23

-- Executing an identical SELECT * query twice on the same dataset doesn't ensure the results will come back in the same order.
-- ORDER BY : you explicitly specify the sort order for the resulting rows.

SELECT COLUMN1, COLUMN2
FROM TABLE_NAME
WHERE Condition(s)
ORDER BY column (ASC, DESC);

SELECT COLUMN1, COLUMN2
FROM TABLE_NAME
WHERE Condition(s)
ORDER BY column1 ASC, column2 DESC;

-- Default order : ASC (alphabetically from A to Z / from smallest number to biggest number)

-- we can substitute numbers for column names in the ORDER BY clause. The number correspond to the columns you specify in the SELECT clause.
-- we often use LIMIT in conjuction with ORDER BY, bc frequently, we're looking for the top X things.
-- additionally, we can control the results returned by specifying an offset using the SQL keyword OFFSET.