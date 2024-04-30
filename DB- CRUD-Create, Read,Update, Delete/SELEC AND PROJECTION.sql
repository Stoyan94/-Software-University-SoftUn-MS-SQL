SELECT * FROM Departments


--  The operation described by the SQL statement SELECT FirstName, LastName, Salary FROM Employees 
	--is indeed an example of projection in the context of relational databases and SQL.

-- After executing this query, the result will be a table (result set) containing only the selected columns (FirstName, LastName, and Salary) from the Employees table, 
	--effectively projecting these attributes from the table.

SELECT FirstName, LastName, Salary 
FROM Employees


--Projection: Projection refers to the operation of selecting specific columns from a table while ignoring the others. In your SQL query, 
	--the SELECT clause specifies the columns FirstName, LastName, and Salary from the Employees table. 
	--This means you are projecting these specific columns from the Employees table.
--Selection: Selection involves filtering rows from a table based on certain criteria. In your SQL query, 
	--the WHERE clause filters the rows from the Employees table based on the condition DepartmentID = 1. 
	--This means you are selecting only those rows where the DepartmentID column has a value of 1.

SELECT FirstName, LastName, Salary 
FROM Employees
WHERE DepartmentID = 1