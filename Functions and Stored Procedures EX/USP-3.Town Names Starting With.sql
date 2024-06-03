CREATE PROC usp_GetTownsStartingWith @startWith VARCHAR = 'b'
AS
	BEGIN
		SELECT [Name]
		FROM Towns
		WHERE LOWER(SUBSTRING([Name], 1, 1)) = 'b'
	END


EXEC usp_GetTownsStartingWith