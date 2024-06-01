CREATE OR ALTER FUNCTION udf_GetSalaryLevel(@Salary MONEY)
RETURNS NVARCHAR(10) AS
BEGIN
	DECLARE @salaryLevel VARCHAR(10)
	IF (@Salary < 30000)
		SET @salaryLevel = 'Low'
	ELSE IF(@Salary <= 50000)
		SET @salaryLevel = 'Average'
	ELSE
		SET @salaryLevel = 'High'

	RETURN @salaryLevel
END

------------
SELECT FirstName
	  ,LastName
	  ,Salary
	  ,dbo.ufn_GetSalaryLevel(Salary) AS SalaryLevel
FROM Employees
ORDER BY SalaryLevel 