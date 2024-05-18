
SELECT * FROM [Employees] AS e
LEFT JOIN [Departments] AS d
ON e.DepartmentID = d.DepartmentID


-- Left Table: The table mentioned before the LEFT JOIN keyword.
-- Right Table: The table mentioned after the LEFT JOIN keyword.
-- Join Condition: The condition specified in the ON clause, which determines how the tables are related.

-- In SQL, LEFT JOIN is commonly used without the OUTER keyword, and it is understood to mean LEFT OUTER JOIN. 
-- Both forms are correct, but LEFT JOIN is more commonly used for simplicity.