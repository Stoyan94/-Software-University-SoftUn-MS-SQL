SELECT 
	COUNT(*) - COUNT(MiddleName) AS PeopleWithoutMidlleName
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID