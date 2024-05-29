SELECT * 
INTO [EmpWithSalaryOver30000]
FROM Employees
WHERE Salary > 30000

DELETE 
FROM [EmpWithSalaryOver30000]
WHERE ManagerID = 42

UPDATE [EmpWithSalaryOver30000]
SET Salary += 5000
WHERE DepartmentID = 1

SELECT DepartmentID
	   ,AVG(Salary)
	FROM EmpWithSalaryOver30000
GROUP BY DepartmentID