
--6.Find Towns Starting With
-- Create a SQL query that finds all towns with names starting with 
	-- 'M', 'K', 'B' or 'E'. Order the result alphabetically by town name. 

SELECT [TownID]
	   ,[Name]
FROM[Towns]
WHERE LEFT([Name], 1) IN ('M', 'K', 'B', 'E')
ORDER BY [Name]