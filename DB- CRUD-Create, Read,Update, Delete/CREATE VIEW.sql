
--The SQL statement CREATE VIEW is used to create a virtual table in a database. A view is essentially a saved SQL query that behaves like a table, 
	--allowing you to retrieve and manipulate data as if it were a table, 
	--without actually storing the data physically. Here's an explanation of the CREATE VIEW statement:

		--CREATE VIEW: This part of the statement indicates that a new view named v_EngineeringEmployeesBySalary is being created.
		--v_EngineeringEmployeesBySalary: This is the name assigned to the view.
		--AS: This keyword introduces the SQL query that defines the view.

CREATE VIEW v_EngineeringEmployeesBySalary AS SELECT 
	FirstName AS [Име]
	,LastName AS [Фамилия]
	,Salary AS [Заплата]
	,d.[Name] AS [Отдел]
FROM Employees AS e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID = 1

SELECT * FROM v_EngineeringEmployeesBySalary ORDER BY [Заплата] DESC 