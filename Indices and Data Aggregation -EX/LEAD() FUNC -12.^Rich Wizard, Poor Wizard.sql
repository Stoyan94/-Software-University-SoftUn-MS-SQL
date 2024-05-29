SELECT SUM([Difference]) AS SumDifference
FROM 
	(
		SELECT FirstName AS [Host Wizard]
		   ,DepositAmount
		   ,LEAD(FirstName) OVER (ORDER BY Id) AS [Host Wizard Deposit]
		   ,LEAD(DepositAmount) OVER (ORDER BY Id) AS [Guest Wizard Deposit]
		   ,DepositAmount - LEAD(DepositAmount) OVER (ORDER BY Id) AS [Difference]
		FROM WizzardDeposits
	) AS DepositCalc

