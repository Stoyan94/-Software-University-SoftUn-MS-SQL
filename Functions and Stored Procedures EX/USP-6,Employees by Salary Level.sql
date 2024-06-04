CREATE OR ALTER PROC usp_EmployeesBySalaryLevel @salaryLevel VARCHAR(8)
	AS
	BEGIN
		  SELECT FirstName
				,LastName
		  FROM Employees
		  WHERE dbo.ufn_GetSalaryLevel(Salary) = @salaryLevel
	END

EXEC usp_EmployeesBySalaryLevel 'Low'