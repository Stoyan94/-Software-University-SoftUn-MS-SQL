SELECT 
	 w.DepositGroup
	 ,MAX(MagicWandSize) AS LongestMagicWand
FROM WizzardDeposits AS w
GROUP BY w.DepositGroup
