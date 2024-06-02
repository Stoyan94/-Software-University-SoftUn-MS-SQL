CREATE OR ALTER PROC usp_SelectEmployeesBySeniority
	(@minYearsAtWork int = 20)
AS
	SELECT FirstName
		  ,LastName
		  ,HireDate
		  ,DATEDIFF(YEAR, HireDate, GETDATE()) AS Years
	FROM Employees
	WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > @minYearsAtWork
	ORDER BY HireDate

GO

EXEC usp_SelectEmployeesBySeniority 20