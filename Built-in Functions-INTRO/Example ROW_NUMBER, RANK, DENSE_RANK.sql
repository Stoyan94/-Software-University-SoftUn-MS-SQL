SELECT 
	ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Id 
	,[FirstName]
	,[LastName]
	,DENSE_RANK() OVER (ORDER BY Salary DESC) AS [DensRank]
	,RANK() OVER (ORDER BY Salary DESC) AS [Rank]
FROM [Employees] WHERE DepartmentID = 5 