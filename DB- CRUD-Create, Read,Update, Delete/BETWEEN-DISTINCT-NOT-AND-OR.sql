
-- The DISTINCT keyword in SQL is used to eliminate duplicate rows from the result set. 
	--When you use DISTINCT in a SELECT statement, it instructs the database to return only unique values for the specified column or columns.
SELECT DISTINCT
DepartmentID
FROM [Employees]


-- NOT (ManagerID = 3 OR ManagerID = 4): The NOT operator negates the result of the condition. 
	--So, it retrieves rows where the condition is FALSE, i.e., where the ManagerID is not equal to 3 and not equal to 4.
SELECT 
	[LastName] 
FROM [Employees]
WHERE NOT(ManagerID = 3 OR ManagerID = 4)

--The BETWEEN operator in SQL is used to filter rows based on a range of values. 
	--It allows you to specify a lower and an upper bound for a column, 
	--and it retrieves rows where the column value falls within that range, inclusive of the bounds.
SELECT 
	[LastName]
	,[Salary]
FROM [Employees]
WHERE [Salary] BETWEEN 20000 AND 22000 