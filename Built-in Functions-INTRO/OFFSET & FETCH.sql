
-- OFFSET & FETCH – get only specific rows from the result set
-- Used in combination with ORDER BY for pagination

SELECT [Employeeid], FirstName, LastName
FROM Employees
ORDER BY [Employeeid]
OFFSET 10 ROWS -- Rows to skip
FETCH NEXT 5 ROWS ONLY -- Rows to include