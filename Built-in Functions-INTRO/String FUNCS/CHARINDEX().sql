
-- The CHARINDEX function is used to search for a substring within a string 
	-- and returns the starting position of the substring within the string. 
	-- If the substring is not found, it returns 0.

DECLARE @string VARCHAR(50) = 'Hello, World!';
DECLARE @substring VARCHAR(10) = 'World';

SELECT CHARINDEX(@substring, @string) AS Position;

-- In this example, the CHARINDEX function searches for the substring "World" within the string "Hello, World!". 
-- Since "World" is found starting at position 8 within the string, the function returns 8.