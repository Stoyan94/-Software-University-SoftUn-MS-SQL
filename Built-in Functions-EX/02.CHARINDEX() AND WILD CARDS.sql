
--2.Find Names of All Employees by Last Name 

-- When CHARINDEX('ei', [LastName]) returns a value greater than 0, 
	-- it indicates that the substring 'ei' was found within the last name. 
	--	So, the condition > 0 ensures that only those records where 'ei' is found will be selected.

--If the condition were CHARINDEX('ei', [LastName]) = 0, then it would select the first name and last name of employees 
 --	where the substring 'ei' is not found within the last name.
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE CHARINDEX('ei', [LastName]) > 0


--WILD CARDS - '%ei%': This pattern means that 'ei' can appear at any position within the last name, 
	--including at the beginning, end, or middle of the string.
SELECT [FirstName]
	   ,[LastName]
FROM [Employees]
WHERE [LastName] LIKE '%ei%'