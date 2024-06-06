CREATE OR ALTER PROC usp_GetHoldersFullName
AS
	SELECT
		CONCAT([FirstName], ' ', [LastName]) AS FullName
	FROM [AccountHolders]