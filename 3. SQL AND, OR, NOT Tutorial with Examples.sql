-- DataLemur Lesson 104: SQL AND, OR, NOT
-- Date: 2026-05-22

/* ============================================
   ✅ WHAT IT IS
   ============================================ */
   -- SQL AND and OR operators are used to filter records based on more than one condition.
   -- AND : displays a record if all the conditions separated by AND are TRUE.
   -- > AND is a logical operator in SQL that allows you to select only rows that satisfy two conditions.
      
   -- OR : displays a record if any of the conditions separated by OR is TRUE.
   -- > OR is a logical operator in SQL that allows you to select rows that satisfy at least one of two conditions.   

   -- NOT : displays a record if the condition(s) is NOT TRUE.
   -- > There are also some filtering SQL keywords that don't have a complement, so to negate the condition, we use NOT. For example, NOT IN, NOT LIKE, NOT EXISTS, IS NOT NULL, NOT BETWEEN  etc.
   SELECT * FROM reviews
   WHERE NOT rating = 5; 
   -- rating != 5;
   -- rating <> 5;


/* ============================================
   📝 PRACTICE: SQL WHERE AND Practice Exercise
   ============================================ */
-- AND OPERATOR EXMPLE 
SELECT *
FROM reviews
WHERE stars >= 4 
AND review_id < 6000
AND review_id > 2000
AND user_id <> 142;

-- AND OR OPERATOR EXAMPLE
SELECT * 
FROM reviews
WHERE stars > 2
AND (stars < 4 OR stars = 4)
AND (user_id = 123 OR user_id = 265 OR user_id = 362);