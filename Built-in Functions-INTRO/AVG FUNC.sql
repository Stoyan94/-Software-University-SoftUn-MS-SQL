SELECT 
	DepartmentID,
	AVG(Salary)
FROM [Employees]
GROUP BY DepartmentID