
--d.[Name] refers to the Name column from the Departments table (aliased as d).
--FROM Employees AS 'e' JOIN Departments 'd' ON e.DepartmentID = d.DepartmentID:
	--This line specifies the tables from which the data will be retrieved and how they are joined.
	--Employees AS e specifies the Employees table with an alias e.
	--Departments d specifies the Departments table with an alias d.
--ON e.DepartmentID = d.DepartmentID specifies the condition for joining the two tables. 
	--It matches rows where the DepartmentID column in the Employees table matches the DepartmentID column in the Departments table.

--WHERE e.DepartmentID = 1:
	--This line specifies a condition to filter the rows in the result set.
	--e.DepartmentID = 1 specifies that only rows where the DepartmentID column in the Employees table equals 1 will be included in the result set.

SELECT FirstName, LastName, Salary, d.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1

SELECT FirstName, LastName, Salary, d.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1
ORDER BY Salary DESC
