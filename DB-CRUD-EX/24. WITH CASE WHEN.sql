
--24.	*Countries and Currency (Euro / Not Euro)
--Find all the countries with information about their currency. Display the "CountryName", "CountryCode", 
--and information about its "Currency": either "Euro" or "Not Euro". 
--Sort the results by country name alphabetically.
--
--Hint: Use CASE … WHEN. -- This is like 'Switch' or 'If' statement in C#
SELECT 
	[CountryName]
   ,[CountryCode] 
   ,CASE [CurrencyCode]
   WHEN 'EUR' THEN 'Euro'
   ELSE 'Not Euro'
   END
   AS [Currency]
FROM Countries
ORDER BY [CountryName]