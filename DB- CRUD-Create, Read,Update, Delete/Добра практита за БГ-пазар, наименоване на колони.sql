SELECT 
	FirstName AS [Име]
	,LastName AS [Фамилия]
	,Salary AS [Заплата]
	,d.[Name] AS [Отдел]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1