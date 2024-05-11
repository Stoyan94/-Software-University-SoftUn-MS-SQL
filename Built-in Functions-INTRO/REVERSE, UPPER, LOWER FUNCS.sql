SELECT UPPER(REVERSE(FirstName)) FROM Employees WHERE EmployeeID < 7

SELECT LOWER(REVERSE(FirstName)) FROM Employees WHERE EmployeeID < 7

-- REVERSE(FirstName): Reverses the characters in the FirstName column.
-- UPPER(...): Converts the result of REVERSE(FirstName) to uppercase.
-- LOWER(...): Converts the result of REVERSE(FirstName) to lowercase.
