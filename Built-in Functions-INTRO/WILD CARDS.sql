
-- [FirstName] LIKE 'Sa%': This is the condition specified in the WHERE clause. 
	-- It filters the records so that only those with a first name starting with 'Sa' are included in the result set. 
	-- The '%' sign is a wildcard in SQL that matches any sequence of characters, 
	-- so 'Sa%' matches any first name that starts with 'Sa'.
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE [FirstName] LIKE 'Sa%'


-- % (Percent Sign):
-- The percent sign (%) represents zero, one, or multiple characters. It can be used before, after, or both before and after the pattern.
-- Example: If you use the pattern 'Sa%', it matches any string that starts with 'Sa'. 
	-- If you use '%sa', it matches any string that ends with 'sa'. If you use '%sa%', 
	-- it matches any string that contains 'sa' anywhere in the string.

-- _ (Underscore):
-- The underscore (_) represents a single character. It can be used to match a single character at a specific position.
	-- Example: If you use the pattern 'S_m', it matches any four-letter string that starts with 'S', ends with 'm', and has any character in the second position.

-- [ ] (Square Brackets):
-- Square brackets are used to specify a range of characters to match any single character within that range.
	-- Example: If you use the pattern '[abc]', it matches any string that contains either 'a', 'b', or 'c' in that position.

-- [^] (Square Brackets with Caret):
-- When the caret (^) is used within square brackets, it negates the character set. 
	--It matches any character not listed within the square brackets.
	-- Example: If you use the pattern '[^0-9]', it matches any character that is not a digit.


-- % (Percent Sign):
-- Pattern: 'Sa%'
-- Example: Selects all records where the first name starts with 'Sa'.
 SELECT * FROM Employees WHERE FirstName LIKE 'Sa%';

-- _ (Underscore):
-- Pattern: 'S_m'
-- Example: Selects all records where the first name starts with 'S', followed by any character, and ends with 'm'.
 SELECT * FROM Employees WHERE FirstName LIKE 'S_m';

-- [ ] (Square Brackets):-- 
-- Pattern: '[abc]'
-- Example: Selects all records where the first character of the first name is either 'a', 'b', or 'c'.
 SELECT * FROM Employees WHERE FirstName LIKE '[abc]%';

-- [^] (Square Brackets with Caret):
-- Pattern: '[^0-9]%'
-- Example: Selects all records where the first character of the first name is not a digit.
 SELECT * FROM Employees WHERE FirstName LIKE '[^0-9]%';
