
--18.Distinct Job Titles
--Create a SQL query that finds all distinct job titles.
SELECT DISTINCT [JobTitle]
FROM [Employees]




--19.Find First 10 Started Projects
--Create a SQL query that finds the first 10 projects which were started, 
--select all the information about them and order the result by starting date, then by name.
SELECT 
TOP 10 *
FROM [Projects]
ORDER BY 
		[StartDate]
	   ,[Name]




--20.	Last 7 Hired Employees
--Create a SQL query that finds the last 7 hired employees, select their first, last name and hire date. 
--Order the result by hire date descending.
SELECT 
TOP 7 
   [FirstName]
   ,[LastName]
   ,[HireDate]
FROM [Employees]
ORDER BY [HireDate] DESC





