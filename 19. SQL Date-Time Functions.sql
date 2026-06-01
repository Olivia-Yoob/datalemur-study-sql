-- DataLemur Lesson 212: SQL Date-Time
-- Date: 2026-06-01

-- CURRENT_DATE : today's date
-- CURRENT_TIME : current time without the date
-- CURRENT_TIMESTAMP (OR NOW()) : returns the current date and time

-- Comparing Dates Using Comparison Operators in SQL
SELECT *
FROM messages
WHERE sent_date > '2022-08-10 00:00:00';

SELECT *
FROM messages
WHERE sent_date >= '2022-08-10 00:00:00';

SELECT *
FROM messages
WHERE sent_date = '2022-08-10 17:03:00';

-- EXTRACT() : extracts a specific component from a date or timestamp
-- DATE_PART()

SELECT 
  message_id, 
  sent_date,
  EXTRACT(YEAR FROM sent_date) AS extracted_year,
  DATE_PART('year', sent_date) AS part_year,
  EXTRACT(MONTH FROM sent_date) AS extracted_month,
  DATE_PART('month', sent_date) AS part_month,
  EXTRACT(DAY FROM sent_date) AS extracted_day,
  DATE_PART('day', sent_date) AS part_day,
  EXTRACT(HOUR FROM sent_date) AS extracted_hour,
  DATE_PART('hour', sent_date) AS part_hour,
  EXTRACT(MINUTE FROM sent_date) AS extracted_minute,
  DATE_PART('minute', sent_date) AS part_minute
FROM messages
LIMIT 3;

-- Average Post Hiatus (Part 1) : Facebook SQL Interview Question
SELECT 
  user_id, 
  MAX(post_date::DATE) - MIN(post_date::DATE)
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = '2021'
GROUP BY user_id
HAVING COUNT(post_id)>1;
;

-- DATE_TRUNC() : rounds down a date or timestamp to a specified unit of time. trims the finer details and retains the specified unit.
-- INTERVAL : used to handle date and time gaps by adding and subtracting intervals
-- ::DATE or TO_DATE() : Convert strings into dates
-- ::TIMESTAMP or TO_TIMESTAMP() : Convert strings into timestamps

-- Second Day Confirmation : TikTok SQL Interview Question
SELECT user_id 
FROM emails e
JOIN texts t
  ON e.email_id = t.email_id
WHERE e.signup_date::DATE + 1 = t.action_date::DATE;
--> ANSWER
SELECT *
FROM emails 
INNER JOIN texts
    ON emails.email_id = texts.email_id;

SELECT DISTINCT user_id
FROM emails
INNER JOIN texts
    ON emails.email_id = texts.email_id
WHERE texts.action_date = emails.signup_date + INTERVAL '1 day'
    AND texts.signup_action = 'Confirmed'