SELECT e.[EmployeeID]
	  ,e.[FirstName]
	  ,e.[LastName]
	  ,e.[Salary]	
	  ,d.[Name] AS DepartmentName
FROM Employees AS e
JOIN [Departments] AS d ON e.DepartmentID = d.DepartmentID
WHERE d.[Name] = 'Sales'
ORDER BY Salary DESC