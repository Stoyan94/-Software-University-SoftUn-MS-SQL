SELECT 
	 DepositGroup
	 ,MagicWandCreator
	 ,DepositCharge
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator, DepositCharge
ORDER BY MagicWandCreator, DepositGroup