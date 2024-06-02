CREATE OR ALTER PROC usp_SelectEmployeesBySeniority -- CREATE OR ALTER PROC: This statement is used to create a new stored procedure or alter an existing one if it already exists.
	(@minYearsAtWork int = 20)                         -- usp_SelectEmployeesBySeniority: This is the name of the stored procedure being created or altered.
AS
	SELECT FirstName
		  ,LastName
		  ,HireDate
		  ,DATEDIFF(YEAR, HireDate, GETDATE()) AS Years
	FROM Employees
	WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > @minYearsAtWork
	ORDER BY HireDate

GO

EXEC usp_SelectEmployeesBySeniority 20  -- EXEC usp_SelectEmployeesBySeniority 20: This statement executes the stored procedure usp_SelectEmployeesBySeniority with the parameter value 20. 
										-- This means the stored procedure will use 20 as the value for @minYearsAtWork.


-- CREATE OR ALTER PROC: This statement is used to create a new stored procedure or alter an existing one if it already exists.
   -- usp_SelectEmployeesBySeniority: This is the name of the stored procedure being created or altered.

-- This defines a parameter named @minYearsAtWork for the stored procedure. It is of type int (integer).
--  = 20: This is the default value for the parameter.
--	If the procedure is called without passing a value for this parameter, it will default to 20.

-- DATEDIFF(YEAR, HireDate, GETDATE()) AS Years: 
 --This expression calculates the number of years between the HireDate and the current date (GETDATE()). 
 
 -- DATEDIFF(YEAR, HireDate, GETDATE()) > @minYearsAtWork: 
 -- This condition ensures that only employees whose difference in years between their hire date and the current date 
 -- is greater than the value of @minYearsAtWork are included in the results.

--  Summary
-- This stored procedure, usp_SelectEmployeesBySeniority, selects employees who have been with the company for more than a specified number of years (default is 20 years).
-- It calculates the number of years each employee has worked by comparing their hire date to the current date.
-- It orders the results by the hire date in ascending order.
-- The procedure can be executed with a different number of years by passing a value to the parameter @minYearsAtWork when calling it.