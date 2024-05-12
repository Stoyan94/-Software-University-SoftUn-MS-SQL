
-- These are string manipulation functions commonly used in SQL and other programming languages to remove leading, trailing, 
	-- or both leading and trailing spaces (or other specified characters) from a string.

SELECT LTRIM('   Hello, world!') AS Result

SELECT RTRIM('Hello, world!   ') AS Result

SELECT TRIM('   Hello, world!   ') AS Result


-- You can also specify additional characters to trim using the TRIM function. For example, to remove leading and trailing commas and spaces:


SELECT TRIM(', ' FROM '  ,Hello, world!,  ') AS Result;
Output:

-- Result
---------------
-- 'Hello, world!'