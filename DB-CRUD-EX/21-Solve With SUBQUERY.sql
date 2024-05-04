

--21.Increase Salaries
--Create a SQL query that increases salaries by 12% for all employees that work in one of the following departments – 
--Engineering, Tool Design, Marketing or Information Services. As a result, select and display only the "Salaries" column from the Employees table. 
--After this, you should restore the database to the original data.
UPDATE [Employees]
SET [Salary] *= 1.2
WHERE [DepartmentID] IN 
						( -- a subquery allows you to use the result of one query as a condition or filter in another query, 
							--enabling you to perform more complex data retrieval and manipulation tasks.
							SELECT [DepartmentID]
							FROM [Departments]
							WHERE [Name] IN ('Engineering', 'Tool Design', 'Marketing', 'Information Services')
						)


SELECT [Salary]
FROM [Employees]