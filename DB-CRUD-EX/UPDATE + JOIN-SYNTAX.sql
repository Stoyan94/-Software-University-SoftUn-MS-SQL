
--21.Increase Salaries
--Create a SQL query that increases salaries by 12% for all employees that work in one of the following departments – 
--Engineering, Tool Design, Marketing or Information Services. As a result, select and display only the "Salaries" column from the Employees table. 
--After this, you should restore the database to the original data.
UPDATE e
SET e.Salary = e.Salary * 1.12 
FROM [Employees] AS e
JOIN [Departments] AS d ON e.DepartmentID = d.DepartmentID
WHERE d.Name IN ('Engineering', 'Tool Design', 'Marketing', 'Information Services')

SELECT Salary
FROM Employees;