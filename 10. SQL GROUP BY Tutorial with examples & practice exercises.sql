-- DataLemur Lesson 203: SQL GROUP BY
-- Date: 2026-05-23

-- use GROUP BY if you want to aggregate only part of a table

SELECT CATEGORY, SUM(SPEND) -- 일반 컬럼도 같이 쓰는 경우 주의, 일반 컬럼에 무엇을 넣어야 할지 SQL은 모름
FROM PRODUCT_SPEND
GROUP BY CATEGORY; -- 집계할 기준을 명확하게 말해줘야 함

-- Example
SELECT TICKER,
        EXTRACT(YEAR FROM DATE) AS YEAR,
        ROUND(AVG(OPEN),2) AS AVG_OPEN
FROM STOCK_PRICES
GROUP BY 1, 2
ORDER BY YEAR DESC;

-- GROUP BY PRACTIVE EXERCISE
SELECT TICKER, MIN(OPEN) AS MIN
FROM STOCK_PRICES
GROUP BY TICKER --> 그룹으로 묶고 나서 그룹 결과만 남기 때문임
ORDER BY MIN DESC;
-- ORDER BY OPEN DESC - 오답 ! 개별값은 존재하지 않음
-- FROM -> GROUP BY -> SELECT -> ORDER BY 순서

-- While GROUP BY isn't exactly used for the purpose of finding duplicates, the command does allow you to collapse multiple rows with the same values into a single row.

SELECT browser, SUM(visits)
FROM google_analytics_data
GROUP BY browser

-- GROUP BY example 2
SELECT skill, COUNT(candidate_id) AS count
FROM candidates
GROUP BY skill
ORDER BY count DESC