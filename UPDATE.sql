
UPDATE [Employees]
SET [LastName] = 'Brown'
WHERE EmployeeID = 1


-- UPDATE [Employees]: This part of the statement specifies the table that will be updated. 
	--In this case, it's the [Employees] table.

--SET Salary = Salary * 1.10: This part of the statement specifies the columns and the values they will be updated to. 
	--It increases the Salary column by 10% for the records that meet the condition.

--JobTitle = 'Senior' + JobTitle: This part of the statement appends the string 'Senior' to the beginning of the values in the JobTitle column. For example, 
	--if the JobTitle was 'Engineer', it would become 'SeniorEngineer'.

--In summary, this UPDATE statement increases the Salary by 10% and adds the prefix 'Senior' to the JobTitle for employees in department 3 in the [Employees] table.

--NEVER FORGET CLAUSE 'WHERE'  

UPDATE [Employees]
SET Salary = Salary *1.10,
	JobTitle = 'Senior ' + JobTitle
WHERE DepartmentID = 3


SELECT [Salary], [JobTitle]
FROM [Employees]
WHERE DepartmentID = 3

UPDATE [Projects]
SET [EndDate] = GETDATE()
WHERE [EndDate] IS NULL

SELECT [EndDate]
FROM  [Projects]