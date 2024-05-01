
--JOIN Addresses AS a ON e.AddressID = a.AddressID:
	--This line performs another inner join, this time between the Employees table (aliased as e) and the Addresses table (aliased as a), based on the AddressID column.
		--It links rows from both tables where the AddressID values match.

--JOIN Towns AS t ON a.TownID = t.TownID:
	--This line performs yet another inner join, this time between the Addresses table (aliased as a) and the Towns table (aliased as t), based on the TownID column.
		--It links rows from both tables where the TownID values match.

--Overall, these lines of code establish a series of joins between the Employees, Departments, Addresses, and Towns tables, 
	--allowing the query to retrieve data from multiple related tables simultaneously.

SELECT CONCAT_WS(' ',FirstName, MiddleName, LastName),
Salary, 
d.[Name],
t.[Name]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Addresses AS a ON e.AddressID = a.AddressID
JOIN Towns AS t ON a.TownID = t.TownID
WHERE e.DepartmentID = 1
ORDER BY Salary DESC