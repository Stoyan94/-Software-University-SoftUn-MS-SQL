SELECT e.DepartmentID
	,SUM(e.Salary) AS TotalSalary 
FROM Employees AS e
GROUP BY e.DepartmentID
ORDER BY e.DepartmentID DESC

-- After grouping every employee by its department, we can use
	-- an aggregate function to calculate the total amount of money per group