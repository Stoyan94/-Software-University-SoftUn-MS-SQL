-- 2.Find All the Information About Departments
SELECT * 
FROM [Departments]



 --3.Find all Department Names
SELECT [Name] 
FROM [Departments]



 -- 4.Find Salary of Each Employee
SELECT 
	[FirstName] 
	,[LastName] 
	,[Salary] 
FROM [Employees]



--5.Find Full Name of Each Employee
SELECT 
	[FirstName]
	,[MiddleName]
	,[LastName]
FROM [Employees]


--6.Find Email Address of Each Employee
SELECT CONCAT_WS('', [FirstName], '.', [LastName], '@', 'softuni.bg')
AS [Full Email Address]
FROM [Employees]