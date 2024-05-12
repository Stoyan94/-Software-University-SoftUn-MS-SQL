
SELECT [CustomerID]
	   ,[FirstName]
	   ,[LastName]
	   ,CONCAT(LEFT([PaymentNumber], 6), REPLICATE('*', LEN([PaymentNumber]) - 6)) AS PaymentID
FROM Customers
