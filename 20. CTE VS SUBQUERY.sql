-- DataLemur Lesson 301: SQL CTE vs SUBQUERY
-- Date: 2026-06-01


-- Common Table Expressions (CTE) : query within a query. with the WITH statement, can create temporary tables to store results, making complext queries more readable and maintainable.
-- Subquery : embed one query within another

-- ✅ Advantages of using a CTE
-- 1. Break Down Complex Queries : enhance code readability, enabling a clearer grasp of analysis logic
-- foster effortless code maintanence and enhance comprehension

-- Start of a CTE
WITH genre_revenue_cte AS(
    SELECT
        genre,
        SUM(concert_revenue) AS total_revenue
    FROM concerts
    GROUP BY genre
)
-- END of a CTE
SELECT
    g.genre,
    g.total_revenue,
    AVG(c.concert_revenue) AS AVG_concert_revenue
FROM genre_revenue_cte AS g
INNER JOIN concerts AS c
    ON g.genre = c.genre
WHERE c.concert_revenue > g.total_revenue * 0.5
GROUP BY g.genre, g.total_revenue;  

-- 2. Reusing subquery results
-- 3. Recursive Queries