
-- The YEAR() function is typically used when you want to extract the year part from a datetime column 
	-- to perform comparisons or calculations based on the year alone.
SELECT FirstName
FROM Employees
WHERE DepartmentID IN (3, 10)
AND YEAR(HireDate) BETWEEN 1995 AND 2005;


-- This query achieves the same result by comparing the hire date directly with the specified date range.
-- Without using the YEAR() function
SELECT FirstName
FROM Employees
WHERE DepartmentID IN (3, 10)
AND HireDate BETWEEN '1995-01-01' AND '2005-12-31';