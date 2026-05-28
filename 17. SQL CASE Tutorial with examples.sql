-- DataLemur Lesson 210: SQL CASE
-- Date: 2026-05-29

-- CASE statement (conditional expression tool) : shape, transform, manipulate, and filter data based on specific conditions
-- customize query results, create new categories, apply conditional logic.

-- 1. Using CASE statement in SELECT statement
-- to create new columns, categorize data, perform calculations

SELECT column_1, column_2,
    CASE -- column_3
        WHEN condition_1 THEN result_1
        WHEN condition_2 THEN result_2
        ..
        ELSE result_3
    END AS column_3_name -- column_3 name
FROM table1;

-- CASE statement evaluates the conditions sequentially and returns value when it encounters the first true condition.
-- IF none of the conditions are met, the ELSE clause provides a default value.


-- 2. Using CASE statement in WHERE clause
-- filter rows based on specified conditions within the datasets.

SELECT column_1, column_2
FROM table1
WHERE CASE
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    ...
    ELSE result_3
END;

-- evaluated conditions for each row, determining whether it meets the filtering criteria.

-- (1) Assigning Categories with CASE statement in SELECT statement
SELECT character, superhero_alias, platform,
    CASE
        WHEN followers >= 50000 THEN 'Popular'
    END AS popularity_category -- alias
FROM marvel_avengers;

-- (2) Handling multiple conditions with CASE statement in SELECT statement
SELECT actor, character, 
    CASE
        WHEN engagement_rate >= 8.0 THEN 'High Engagement'
        WHEN engagement_rate BETWEEN 6.0 AND 7.9 THEN 'Moderate Engagement'
        WHEN engagememt_rate < 6.0 THEN 'Low Engagement'
    END AS engagement_category
FROM marvel_avengers
WHERE platform IN ('Tiktok', 'Instagram');

-- (3) Using CASE-ELSE clause with CASE statement in SELECT statement
-- when none of the previous conditions match, we can use the ELSE clause to provide a default value.
SELECT character, superhero_alias, platform,
    CASE
        WHEN followers >= 700000 THEN 'Highly Popular'
        WHEN followers BETWEEN 300000 AND 699999 THEN 'Moderately Popular'
        ELSE 'Less Popular'
    END AS popularity_category
FROM marvel_avengers;

-- SQL Tutorial Lesson: Superheroes' Likes : Marvel's Avengers SQL Interview Question
-- Indentation !!!
SELECT actor, character, platform, avg_likes,
  CASE
    WHEN avg_likes >= 15000 THEN 'Super Likes'
    WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
    WHEN avg_likes < 5000 THEN 'Low Likes'
  END AS avglikes_category
FROM marvel_avengers
ORDER BY avg_likes DESC

-- (4) Filtering 'conditions' with CASE statement in WHERE clause
SELECT actor, character, platform
FROM marvel_avengers
WHERE
    CASE
        WHEN platform = 'Instagram' THEN followers >= 500000
        WHEN platform = 'Twitter' THEN followers >= 200000
        ELSE followers >= 1000000
    END;


-- 3. Counting results using SQL COUNT() in CASE statement
-- used to count occurrences based on various conditions within the dataset.

SELECT 
    platform,
    COUNT(CASE
        WHEN followers >= 500000 THEN 1
        ELSE NULL
    END) AS popular_actor_count,
    COUNT(CASE
        WHEN followers < 500000 THEN 1
        ELSE NULL
    END) AS less_popular_actor_count
FROM marvel_avengers
GROUP BY platform;



-- 4. Adding results using SQL SUM() in CASE statement
-- add values based on specific conditions within the dataset, providing a cumulative value.

SELECT 
    platform,
    SUM(CASE
        WHEN engagement_rate >= 8.0 THEN followers
        ELSE 0
    END) AS high_engagement_followers_sum,
    SUM(CASE
        WHEN engagement_rate < 8.0 THEN followers
        ELSE 0
    END) AS low_engagement_followers_sum
FROM marvel_avengers
GROUP BY platform;

-- NYT SQL Interview Question: Laptop vs. Mobile Viewership
-- THEN 다음에 , 쓰지 말기
SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_reviews,
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_reviews
FROM viewership;

-- 5. Averaging results using SQL AVG() in CASE statement
-- calculates avergagee based on specific conditions within the dataset, providing an average value.
SELECT
    platform,
    AVG(CASE WHEN engagement_rate >= 8.0 THEN followers ELSE NULL END) AS avg_high_engagement_followers,
    AVG(CASE WHEN engagement_rate < 8.0 THEN followers ELSE NULL END) AS avg_low_engagement_followers
FROM marvel_avengers
GROUP BY platform;