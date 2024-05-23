SELECT [JobTitle]
	   ,AVG(Salary) AS [Average Salary]
	   ,COUNT(EmployeeID) AS [Workers Count]
FROM Employees
WHERE [JobTitle] = 'Accountant'
GROUP BY [JobTitle]