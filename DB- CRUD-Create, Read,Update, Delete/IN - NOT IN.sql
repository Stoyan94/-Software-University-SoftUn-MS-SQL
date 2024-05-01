
--The IN operator allows you to specify a list of values, and it returns rows where the value of a column matches any value in that list.
	--For example, WHERE column_name IN (value1, value2, ...) 
	--will return rows where the value of column_name matches value1, value2, or any other value in the list.
SELECT 
	[FirstName] 
	,[LastName]
	,[ManagerID]
FROM [Employees]
WHERE [ManagerID] IN (109, 3, 16)

--The NOT IN operator is similar to IN, but it negates the condition. 
	--It returns rows where the value of a column does not match any value in the specified list.
--For example, WHERE column_name NOT IN (value1, value2, ...) 
	--will return rows where the value of column_name does not match value1, value2, or any other value in the list.

SELECT 
	[FirstName] 
	,[LastName]
	,[ManagerID]
FROM [Employees]
WHERE [ManagerID] NOT IN (109, 3, 16)