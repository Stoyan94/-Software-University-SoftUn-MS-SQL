SELECT [JobTitle]
	   ,AVG(Salary) AS [Average Salary]
	   ,COUNT(EmployeeID) AS [Workers Count]
FROM Employees
WHERE [JobTitle] = 'Accountant'
GROUP BY [JobTitle]


SELECT [JobTitle]
	   ,AVG(Salary) AS [Average Salary]
	   ,COUNT(EmployeeID) AS [Workers Count]
FROM Employees
GROUP BY [JobTitle]
HAVING AVG(Salary) > 25000