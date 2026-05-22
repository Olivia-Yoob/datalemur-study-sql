-- DataLemur Lesson 106: SQL IN
-- Date: 2026-05-23

/* ============================================
   ✅ WHAT IT IS
   ============================================ */
   -- filter for categorical data
   -- IN operator allows us to specify multiple values in a single line's WHERE clause. and this command checks if a paticular column value matches anything in the list of values that specifyed in the IN operator.
SELECT ...
FROM ...
WHERE COLUMN IN (VALUE1, VALUE2, VALUE3, ...);


/* ============================================
    📝 PRACTICE: SQL IN Practice Exercise
   ============================================ */
SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE manufacturer IN ('Roche', 'Bayer', 'AstraZeneca')
  AND units_sold NOT BETWEEN 55000 AND 5500000 ;