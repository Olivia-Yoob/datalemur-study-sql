-- DataLemur Lesson 209: SQL NULL
-- Date: 2026-05-25

-- NULL indicates the absence of a value
-- IS NULL ond IS NOT NULL
-- COALESCE() : returns the first non-null value from a list of arguments.
-- IFNULL() : substitutes null value with a specified value.

-- Why it is important to handle NULL values?
-- NULL values in SQL are like flexible placeholders that cater to the uncertainties and variations in real-world data.
-- They allow databses to accommodate missing or pending info without resorting to assumptions or default values.
-- NULL means missing, unknown, not empty.
= NULL 은 불가능

IS NULL 
IS NOT NULL
-- NULL takes a special place as the smallest value.

-- Unfinished Parts - Tesla SQL Interview Question
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;

-- Refining data with SQL COALESCE()
-- takes multiple inputs and returns the first non-null values. 
COALESCE (column_name, 'expression')
-- WHEN column_name IS NULL it returns/replaces the specified 'expression', otherwise, it returns the value of the column_name/ unchanged.


-- Handling gaps with SQL IFNULL()
-- fill in the gaps with default values
IFNULL(column_name, value_if_null)


-- Difference between COALESCE() and IFNULL()
-- COALESCE() is versatile for multiple arguments and it returns the first non-null value among them. However IFNULL() handles two arguments, returning the second if the first is null; else it returns the first.
-- COALESCE() offers more flexibility (multiple values) / IFNULL() is a more concise option (2 values)

