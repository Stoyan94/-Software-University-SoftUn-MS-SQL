
--17.	Create View Employees with Job Titles
--Create a SQL query that creates a view "V_EmployeeNameJobTitle" with a full employee name and a job title. 
--When the middle name is NULL replace it with an empty string ('').

CREATE VIEW V_EmployeeNameJobTitle AS SELECT CONCAT_WS(
	' ',
	[FirstName], 
	ISNULL(MiddleName, ''),
	[LastName])
	AS [Full Name]
	,[JobTitle]
FROM [Employees]