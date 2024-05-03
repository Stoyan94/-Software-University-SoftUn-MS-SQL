--16.	Create View Employees with Salaries
--Create a SQL query that creates a view "V_EmployeesSalaries" with first name, last name and salary for each employee.
CREATE VIEW V_EmployeesSalaries AS SELECT
	[FirstName]
   ,[LastName]
   ,[Salary]
FROM [Employees]

SELECT * FROM V_EmployeesSalaries