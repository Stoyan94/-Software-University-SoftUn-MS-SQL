

--10.Rank Employees by Salary
-- Write a query that ranks all employees using DENSE_RANK. In the DENSE_RANK function, 
	-- employees need to be partitioned by Salary and ordered by EmployeeID. 
-- You need to find only the employees, whose Salary is between 10000 and 50000 and order them by Salary in descending order.

SELECT [EmployeeID]
	   ,[FirstName]
	   ,[LastName]
	   ,[Salary]
	   ,DENSE_RANK() OVER (PARTITION BY [Salary] ORDER BY [EmployeeID]) 
		AS [Rank]
FROM [Employees]
WHERE [Salary] BETWEEN 10000 AND 50000
ORDER BY Salary DESC