SELECT TOP 10
		e.[FirstName]
	   ,e.[LastName]
	   ,e.DepartmentID
FROM Employees AS [e]
WHERE Salary > 
				(
						SELECT AVG(Salary) AS AverageSalary
						FROM Employees AS [eSub]
						WHERE eSub.DepartmentID = e.DepartmentID
						GROUP BY DepartmentID
				)


