SELECT 
	d.[Name] AS DepartName
	,MIN(e.Salary) AS MinSalary
	,MAX(e.Salary) AS MaxSalary
	,AVG(e.Salary) AS AvgSalary
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID, d.[Name]