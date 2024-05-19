SELECT 
MIN(avs.MinAVG) AS MinAverageSalary 
FROM
(
	SELECT AVG(Salary) AS MinAVG
	FROM Employees
	GROUP BY DepartmentID
) AS avs


-- Always the query in brackets is executed first

--When we use GROUP BY, we can use in SELECT only the column we use in GROUP BY, but if we want to use other columns in SELECT 
	-- ONLY WITH THE AGGREGATE FUNCTION, we can use other columns in SELECT