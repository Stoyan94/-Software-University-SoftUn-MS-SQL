SELECT [CountryName]
	   ,[IsoCode]
FROM [Countries]
WHERE [CountryName] LIKE '%a%a%a%'
ORDER BY IsoCode


-- REPLACE(LOWER([CountryName]), 'a', ''): This function replaces all occurrences of the letter 'a' 
 -- in the lowercase CountryName string with an empty string, effectively removing all 'a's from the string.

-- LEN(REPLACE(LOWER([CountryName]), 'a', '')): This calculates the length of the modified string without 'a's.

-- LEN([CountryName]) - LEN(REPLACE(LOWER([CountryName]), 'a', '')): This calculates the difference 
	-- in length between the original CountryName and the modified CountryName without 'a's, effectively counting the number of 'a's in the original string.

-->= 3: This condition ensures that there are at least three 'a's in the original CountryName string.

-- So, the overall condition filters rows where the CountryName has at least three occurrences of the letter 'a'. 
-- This query provides another way to achieve the same result as the previous pattern matching %a%a%a%.


SELECT [CountryName]
	   ,[IsoCode]
FROM [Countries]
WHERE LEN([CountryName]) - LEN(REPLACE(LOWER([CountryName]), 'a', '')) >= 3 
ORDER BY IsoCode