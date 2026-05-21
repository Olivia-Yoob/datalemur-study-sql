-- DataLemur Lesson 103: SQL WHERE
-- Date: 2026-05-22

/* ============================================
   ✅ WHAT IT IS
   ============================================ */
-- The SQL WHERE clause is used to filter output data based on specific conditions.


/* ============================================
   ✅ SYNTAX
   ============================================ */
SELECT COLUMN1, COLUMN2, ...
FROM TABLE_NAME
WHERE CONDITION;

/* ============================================
   ✅ Using logical operators in the WHERE clause
   ============================================ */
-- =, !=, <>, <, >, <=, >= 


/* ============================================
   ✅ WHEN TO USE *
   ============================================ */
-- SQL WHERE with multiple conditions
SELECT *
FROM TABLE
WHERE CONDITION 1
    AND/OR CONDITION 2
    AND/OR CONDITION 3;

-- Besides narrowing down the results, the WHERE clause is important because it speeds up a query, by avoiding the processing of extra data.


/* ============================================
   📝 PRACTICE: SQL WHERE Practice Exercise
   ============================================ */
SELECT user_id, stars 
FROM reviews
WHERE stars = 3;