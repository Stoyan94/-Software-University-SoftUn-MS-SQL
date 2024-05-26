SELECT 
	 DepositGroup
	 ,SUM(DepositAmount) AS TotalSum
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
HAVING MagicWandCreator IN ('Ollivander family') AND SUM(DepositAmount) < 150000
ORDER BY SUM(DepositAmount) DESC