-- DataLemur Lesson 208: SQL DIVISION
-- Date: 2026-05-25

SELECT expression1 / expression2
FROM table;

-- Unlike excel output, / operator in SQL discards the remainder from the output, providing only the integer part of the result.
-- To retrieve decimal output, use CAST() function or multiplying by 1.0 or being explicit with types using ::

-- Divide Intergers using CAST()
-- converts one or both operands into decimal or floating-point data types. By casting the operands, you explicitly instruct SQL to consider the division with a different data type, resulting in the desired output.
SELECT 
    CAST(10 AS DECIMAL)/4,
    CAST(10 AS FLOAT)/4,
    10/CAST(10 AS DECIMAL),
    10/CAST(10 AS FLOAT);

-- Divide Integers Using Multiplication by 1.0

SELECT 10/6*1.0

-- Divide Integers using ::DECIMAL/::FLOAT
-- :: notation is a versatile tool to cast data types explicitly.

-- Calculate percentages
SELECT (part_column / total_column) * 100 AS percentage
FROM table;

-- Calculate percentages with rounding
SELECT ROUND((part_column / total_column) * 100, n) AS percentage
FROM table;

-- ,n : optional operator that specifies the number of decimal places to round the result to.
