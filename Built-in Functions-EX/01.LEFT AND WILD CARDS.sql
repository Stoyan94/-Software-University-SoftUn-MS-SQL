
-- 01.Find Names of All Employees by First Name
-- Solve with LEFT
SELECT FirstName
	   ,[LastName]
FROM [Employees]
WHERE LEFT([FirstName], 2) = 'Sa'



-- Solve with WILD CARDS
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE [FirstName] LIKE 'Sa%'