-- DataLemur Lesson 107: SQL LIKE
-- Date: 2026-05-23

/* ============================================
   ✅ WHAT IT IS
   ============================================ */
-- LIKE & NOT LIKE allow you to filter row based on whether a string matched a certain pattern.

SELECT ...
FROM ...
WHERE COLUMN LIKE ..
    AND/OR  COLUMN NOT LIKE...;

-- LIKE is often accompanied with wildcards (%, _) / '%' = zero or multiple characters, and '_' = a single character.


/* ============================================
    📝 PRACTICE: SQL LIKE Practice Exercise
   ============================================ */
SELECT *
FROM customers
WHERE customer_name LIKE 'F%ck';

SELECT *
FROM customers
WHERE customer_name LIKE '_ee%';