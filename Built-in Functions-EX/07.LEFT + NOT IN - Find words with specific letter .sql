
-- 7.Find Towns Not Starting With
-- Create a SQL query that finds all towns, which do not start with 'R', 'B' or 'D'. 
-- Order the result alphabetically by name. 

SELECT [TownID]
	   ,[Name]
FROM [Towns]
WHERE LEFT([Name], 1) NOT IN ('R', 'B', 'D')
ORDER BY [Name]