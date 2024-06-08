CREATE PROC usp_CalculateFutureValueForAccount 
	@accountId INT,  @annualRate FLOAT
AS
	SELECT h.Id AS [Account Id]
		  ,FirstName AS [First Name]
		  ,LastName AS [Last Name]
		  ,ac.Balance AS [Current Balance ]
		  ,dbo.ufn_CalculateFutureValue(ac.Balance, @annualRate, 5) AS [Balance in 5 years]
	FROM AccountHolders AS h
	JOIN Accounts AS ac ON ac.AccountHolderId = h.Id
	WHERE ac.Id = @accountId

EXEC usp_CalculateFutureValueForAccount 3, 0.5