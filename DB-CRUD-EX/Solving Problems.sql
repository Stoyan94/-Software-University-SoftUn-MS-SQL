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



--7.Find All Different Employees' Salaries
SELECT DISTINCT [Salary]
FROM [Employees]



--8.Find All Information About Employees
--Create a SQL query that finds all information about the employees whose job title is "Sales Representative".
SELECT * 
FROM [Employees] 
WHERE [JobTitle] = 'Sales Representative'



--9.Find Names of All Employees by Salary in Range
--Create a SQL query to find the first name, last name and job title for all employees 
	--whose salary is in a range between 20000 and 30000.
SELECT 
	[FirstName]
	,[LastName]
	,[JobTitle]
FROM [Employees]
WHERE [Salary] BETWEEN 20000 AND 30000



--10.Find Names of All Employees
--Create a SQL query that finds the full name of all employees whose salary is exactly 25000, 14000, 12500 or 23600. 
--The result should be displayed in a column, named "Full Name", which is a combination of the first, middle and last names, separated by a single space
SELECT CONCAT_WS(' ', [FirstName], [MiddleName], [LastName])
AS [Full Name]
FROM [Employees]
WHERE [Salary] IN (25000, 14000, 12500, 23600)
