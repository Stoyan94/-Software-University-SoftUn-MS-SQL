WITH AvgSalaryByDep (DepartmentID, AvgSalary)
AS
(
	SELECT DepartmentID, AVG(Salary)
	FROM Employees
	GROUP BY DepartmentID
) 

SELECT MIN(AvgSalary) AS AvgSalary
FROM AvgSalaryByDep

-- Common Table Expression (CTE)
-- The WITH clause defines a Common Table Expression (CTE) named AvgSalaryByDep. 
	-- A CTE is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement.

-- Step 1: The CTE AvgSalaryByDep is created, containing the average salary for each department.
-- Step 2: The main SELECT statement queries this CTE to find the minimum average salary across all departments.