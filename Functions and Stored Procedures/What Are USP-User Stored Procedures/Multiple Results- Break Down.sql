CREATE OR ALTER PROC usp_MultipleResults
AS
SELECT FirstName, LastName FROM Employees
SELECT FirstName, LastName, d.[Name] AS Department
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID;
GO
EXEC usp_MultipleResults-- Summary
-- The stored procedure usp_MultipleResults contains two SELECT statements.

-- The first SELECT statement retrieves the first name and last name of all employees from the Employees table.

-- The second SELECT statement retrieves the first name, last name, and department name of all employees 
	-- by performing an inner join between the Employees table and the Departments table on the DepartmentID column.

-- When the stored procedure is executed using EXEC usp_MultipleResults, it returns two result sets:
-- The first result set contains first names and last names of all employees.

-- The second result set contains first names, last names, and department names of all employees.




