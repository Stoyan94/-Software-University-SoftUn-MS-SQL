SELECT 
	DepartmentID
	,STRING_AGG(CONCAT(' ', FirstName, LastName), ',') WITHIN GROUP (ORDER BY FirstName, LastName)
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID

-- STRING_AGG - Concatenates the values of string expressions
	-- and places separator values between them.