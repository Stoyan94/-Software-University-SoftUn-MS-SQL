

SELECT FirstName, LastName, Salary, d.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1
ORDER BY Salary DESC

--the person with the highest salary
SELECT TOP 1 FirstName, LastName, Salary, d.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1
ORDER BY Salary DESC