SELECT 
* 
FROM Employees AS e
WHERE e.DepartmentID IN 
 (	
   SELECT d.DepartmentID 
	 FROM Departments AS d
	 WHERE d.[Name] = 'Finance'
 )