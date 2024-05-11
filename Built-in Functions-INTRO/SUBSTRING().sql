
-- In SQL the count start index is from 1 not from 0 like in programming languages
SELECT SUBSTRING(FirstName, 1, 1) 
FROM [Employees] 
WHERE EmployeeID < 7

