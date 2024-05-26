SELECT 
	 DepositGroup
	 ,SUM(DepositAmount) AS TotalSum
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
HAVING MagicWandCreator IN ('Ollivander family')