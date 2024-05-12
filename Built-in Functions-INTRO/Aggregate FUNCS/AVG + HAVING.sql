SELECT 
	[DepartmentID],
	AVG(Salary)
FROM [Employees]
GROUP BY DepartmentID
HAVING AVG(Salary) > 24000