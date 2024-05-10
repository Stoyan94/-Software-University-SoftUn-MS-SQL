
-- The HAVING clause in SQL is used to filter the results of a GROUP BY clause based on specified conditions. 
-- It is similar to the WHERE clause, but while the WHERE clause is used to filter rows before grouping, 
-- the HAVING clause is used to filter groups after they have been formed by the GROUP BY clause.

SELECT 
	  [DepartmentID],
	  COUNT(*) AS Cnt
FROM [Employees]
GROUP BY DepartmentID
HAVING COUNT(*) > 8
ORDER BY COUNT(*) DESC


SELECT DepartmentID, COUNT(*)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 8
ORDER BY COUNT(*) DESC

-- In summary, the HAVING clause is used with the GROUP BY clause to filter grouped data based on aggregate conditions. 
	--It operates on groups of rows rather than individual rows like the WHERE clause does.
