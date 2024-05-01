
--This line introduces the CONCAT_WS function, which concatenates its arguments into a single string, separated by a specified separator.

--In this case, the function concatenates the FirstName, MiddleName, and LastName columns from the Employees table, separated by a space (' '), to create a full name.

--The AS FullName part aliases the result of this concatenation as FullName, making it more readable in the result set.

SELECT CONCAT_WS(' ',FirstName, MiddleName, LastName),
Salary, 
d.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1
ORDER BY Salary DESC
