

--The phrase "IS NOT NULL" in SQL is a condition used to filter rows where a particular column contains a non-null value. 
	--Conversely, the condition "IS NULL" is used to filter rows where the column contains a null value.

SELECT 
[MiddleName] 
FROM [Employees] 
WHERE [MiddleName] IS NOT NULL

SELECT 
[MiddleName] 
FROM [Employees] 
WHERE [MiddleName] IS NULL