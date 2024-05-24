SELECT 
MIN(avs.MinAVG) AS MinAverageSalary 
FROM
(
	SELECT AVG(Salary) AS MinAVG
	FROM Employees
	GROUP BY DepartmentID
) AS avs