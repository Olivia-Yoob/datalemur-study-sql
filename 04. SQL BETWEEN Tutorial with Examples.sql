-- DataLemur Lesson 105: SQL BETWEEN
-- Date: 2026-05-23

/* ============================================
   ✅ WHAT IT IS
   ============================================ */
   -- BETWEEN is a logical operator that selects values within a given range.
    -- filter on a range of conditions
    
   SELECT COULMN_NAME
   FROM TABLE_NAME
   WHERE COLUMN_NAME BETWEEN VALUE1 AND VALUE2;

   -- BETWEEN operator's range is inclusive. That means both the start and end values of the range are included!

/* ============================================
    📝 PRACTICE: SQL BETWEEN Practice Exercise
   ============================================ */

   SELECT manufacturer, drug, units_sold
    FROM pharmacy_sales
    WHERE units_sold BETWEEN 100000 AND 105000
        AND (manufacturer = 'Biogen' OR manufacturer = 'AbbVie' OR manufacturer = 'Eli Lilly') ;