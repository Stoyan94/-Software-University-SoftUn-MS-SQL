-- With WILD CARDS
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE JobTitle NOT LIKE '%engineer%';


-- Witch CHARINDEX()
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE CHARINDEX('engineer', [JobTitle]) = 0