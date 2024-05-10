

-- Aggregate function, specifically the COUNT(*) function. 
	--Aggregate functions in SQL operate on sets of rows and return a single result based on those rows.

--In this case, COUNT(*) counts the number of rows that satisfy the specified conditions. 
	--When used with *, it counts all rows. So, the result of this query will be a single number representing
	--the count of rows in the "Employees" table where the value in the "DepartmentID" column is 7.

SELECT 
COUNT(*) 
FROM [Employees] 
WHERE DepartmentID = 7




-- This clause groups the rows based on the values in the "DepartmentID" column. Essentially, 
	--it divides the rows into groups where each group contains rows with the same "DepartmentID".
SELECT 
COUNT(*) 
FROM Employees 
GROUP BY DepartmentID



-- Selects two columns from the table. 
	-- The first column selected is "DepartmentID", and the second column is the result of the COUNT(*) function.

--So, this query returns a result set with two columns: "DepartmentID" and the count of how many rows belong to each department. 
	--Each row in the result set represents a unique "DepartmentID" along with its corresponding count.
SELECT DepartmentID,
	   COUNT(*) 
FROM Employees
GROUP BY DepartmentID


-- Order by number of employees in descending order
SELECT DepartmentID,
	   COUNT(*) 
FROM Employees
GROUP BY DepartmentID
ORDER BY COUNT(*) DESC

