SELECT 
	FirstName AS [���]
	,LastName AS [�������]
	,Salary AS [�������]
	,d.[Name] AS [�����]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1