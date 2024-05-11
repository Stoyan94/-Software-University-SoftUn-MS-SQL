

-- The SUBSTRING function is used to extract a substring from a string. 
-- It takes three arguments: the string from which to extract the substring, the starting position (index) from where to begin extraction, and the length of the substring to extract. 

-- In SQL the count start index is from 1 not from 0 like in programming languages
SELECT SUBSTRING(FirstName, 1, 1) 
FROM [Employees] 
WHERE EmployeeID < 7

