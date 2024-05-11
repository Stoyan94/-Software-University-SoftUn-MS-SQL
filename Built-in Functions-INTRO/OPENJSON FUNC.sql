
SELECT * FROM OPENJSON ('{"FirstName": "Stoqn", "LastName": "Stosov", "Age": 9999}')



SELECT [value] FROM OPENJSON ('{"FirstName": "Stoqn", "LastName": "Stosov", "Age": 9999, "Hobby": {"Name": "programming"}}')
WHERE [type] = 5

--OPENJSON ('{"FirstName": "Stoqn", "LastName": "Stosov", "Age": 9999, "Hobby": {"Name": "programming"}}'): 
	-- This function parses JSON text and returns objects and arrays in the JSON as rows and columns. 
	-- In this case, it's parsing a JSON object with keys "FirstName", "LastName", "Age", and "Hobby", where "Hobby" is another nested JSON object with a single key "Name".

-- WHERE [type] = 5: This clause filters the rows returned by OPENJSON where the [type] column equals 5. In the context of OPENJSON, 
	-- the [type] column represents the type of the JSON element (0 for null, 1 for string, 2 for int, 3 for boolean, 4 for array, and 5 for object).



SELECT * FROM OPENJSON ((SELECT [value] FROM OPENJSON ('{"FirstName": "Stoqn", "LastName": "Stosov", "Age": 9999, "Hobby": {"Name": "programming"}}')
WHERE [type] = 5))

--SELECT * FROM OPENJSON (...): This part selects all the properties (keys) and values from the JSON object returned by the inner query.

--So, the result of this query would be:  [key => Name] [value => programming]
	
-- It extracts the key-value pairs from the "Hobby" object within the original JSON object.
