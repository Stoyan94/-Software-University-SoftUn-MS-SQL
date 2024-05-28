SELECT SUBSTRING(FirstName,1, 1) AS FirstLetter
FROM WizzardDeposits
GROUP BY DepositGroup, FirstName
HAVING DepositGroup = 'Troll Chest'