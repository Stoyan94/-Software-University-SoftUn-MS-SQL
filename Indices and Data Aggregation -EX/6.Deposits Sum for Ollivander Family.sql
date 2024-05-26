SELECT 
	 DepositGroup
	 ,SUM(DepositAmount)
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
HAVING MagicWandCreator IN ('Ollivander family')