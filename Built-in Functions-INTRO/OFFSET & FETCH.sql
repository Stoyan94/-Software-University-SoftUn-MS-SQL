
-- OFFSET & FETCH – get only specific rows from the result set
-- Used in combination with ORDER BY for pagination

SELECT ID, FirstName, LastName
FROM Employees
ORDER BY ID
OFFSET 10 ROWS -- Rows to skip
FETCH NEXT 5 ROWS ONLY -- Rows to include

