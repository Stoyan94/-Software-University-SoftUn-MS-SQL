SELECT 
	DepartmentID
	,SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID
HAVING SUM(Salary) >=150000
ORDER BY DepartmentID

-- The HAVING clause is used to filter data based on
-- aggregate values
-- ▪ We cannot use it without grouping first
-- ▪ Aggregate functions (MIN, MAX, SUM etc.) are
-- executed only once
-- ▪ Unlike HAVING, WHERE filters rows before
-- aggregation