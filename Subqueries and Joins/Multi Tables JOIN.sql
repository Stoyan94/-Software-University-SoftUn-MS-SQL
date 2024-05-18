SELECT d.[Name] AS Department
	  ,CONCAT_WS(' ', e.FirstName, e.MiddleName, e.LastName) AS FullName
	  ,e.JobTitle, e.Salary
	  ,a.AddressText
	  ,t.[Name] AS Town
FROM [Departments] AS d
JOIN Employees AS e ON d.DepartmentID = e.DepartmentID
JOIN Addresses AS a ON e.AddressID = a.AddressID
JOIN Towns AS t ON a.TownID = t.TownID