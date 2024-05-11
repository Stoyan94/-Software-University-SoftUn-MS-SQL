SELECT REPLICATE('*', 
	   LEN(FirstName)) 
FROM Employees 
WHERE EmployeeID < 7

--REPLICATE('*', LEN(FirstName)): The REPLICATE function is used to repeat a string a specified number of times. 
	--In this case, it repeats the asterisk character '*' a number of times equal to the length of the FirstName field. 
	--The length of the FirstName field is obtained using the LEN function, which returns the number of characters in the string.