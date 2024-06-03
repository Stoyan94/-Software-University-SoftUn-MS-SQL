CREATE OR ALTER PROC usp_GetTownsStartingWith @startWith VARCHAR(50)
AS
	BEGIN
		SELECT [Name] AS [Towns]
		FROM Towns
		WHERE SUBSTRING([Name], 1, LEN(@startWith)) = @startWith
	END


EXEC usp_GetTownsStartingWith b