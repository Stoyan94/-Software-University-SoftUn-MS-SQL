CREATE OR ALTER PROC usp_GetEmployeesFromTown @townName VARCHAR(50)
AS
	BEGIN
		 SELECT FirstName
				,LastName
		 FROM Employees AS e
		 JOIN Addresses AS a ON e.AddressID = a.AddressID
		 JOIN Towns AS t ON a.TownID = t.TownID
		 WHERE t.[Name] = @townName
	END



EXEC usp_GetEmployeesFromTown 'Sofia'