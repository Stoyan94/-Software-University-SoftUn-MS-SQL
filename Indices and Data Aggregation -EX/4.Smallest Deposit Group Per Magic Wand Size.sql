-- Hard Solve
SELECT DepositGroup
FROM 
	( 
		  SELECT 
		  	 DepositGroup
		  	 ,AVG(MagicWandSize) AS Wand
		  	 ,RANK() OVER (ORDER BY DepositGroup DESC) AS [Rank]
		  	 FROM WizzardDeposits
		  GROUP BY DepositGroup
	) 
	AS DEP
	WHERE [Rank] < 3
	ORDER BY DepositGroup


-- Easy Solve
SELECT TOP 2 
	 DepositGroup
FROM WizzardDeposits
GROUP BY DepositGroup
ORDER BY AVG(MagicWandSize)