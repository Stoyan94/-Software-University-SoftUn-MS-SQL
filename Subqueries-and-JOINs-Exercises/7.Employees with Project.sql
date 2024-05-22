SELECT TOP 5
	 e.[EmployeeID]
	,e.[FirstName]
	,p.[Name]
FROM EmployeesProjects AS ep
JOIN Employees AS e ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects AS p ON ep.ProjectID = p.ProjectID
WHERE p.StartDate > '2002-08-13'
ORDER BY e.[EmployeeID]