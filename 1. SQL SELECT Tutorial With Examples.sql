-- DataLemur Lesson 102: SQL SELECT
-- Date: 2026-05-22


/* ============================================
   ✅ WHAT IT IS
   ============================================ */
-- We use the SQL SELECT query to fetch and display 
-- the data from a database.


/* ============================================
   ✅ SYNTAX
   ============================================ */
-- SELECT tells the database that you want to output data, 
-- and is followed by the specific names of the columns 
-- you want to have the database print out.
--
-- FROM tells the database which table contains 
-- that data we want to output.

SELECT column1, column2, ...
FROM table_name;


/* ============================================
   ✅ COMMON MISTAKES
   ============================================ */
-- When you select multiple columns, they must be separated by commas,
-- but you should NOT include a trailing comma after the last column name.


/* ============================================
   ✅ WHEN TO USE *
   ============================================ */
-- Use * when you want to output all the columns in one go.
-- We usually run a SELECT * query to quickly inspect 
-- the data in a table and get our bearings.


/* ============================================
   📝 PRACTICE: Microsoft SQL SELECT Exercise
   ============================================ */
SELECT *
FROM products;