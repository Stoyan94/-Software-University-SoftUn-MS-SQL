SELECT 
	DepartmentID
	,SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID
HAVING SUM(Salary) >=150000
ORDER BY DepartmentID