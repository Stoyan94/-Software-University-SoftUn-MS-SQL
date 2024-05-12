SELECT ID, FirstName, LastName,
 DATEDIFF(YEAR, HireDate, '2017/01/25')
 AS [Years In Service]
 FROM Employees