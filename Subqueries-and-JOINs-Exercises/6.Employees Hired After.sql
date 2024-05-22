SELECT 
	 e.[FirstName]
	,e.[LastName]
	,e.[HireDate]
	,d.[Name] AS [DeptName]
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
WHERE e.HireDate > '1.1.1991' AND d.[Name] IN ('Finance','Sales')
ORDER BY e.HireDate