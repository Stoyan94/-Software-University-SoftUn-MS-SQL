
SELECT * FROM [Employees] AS e
INNER JOIN [Departments] AS d
ON e.DepartmentID = d.DepartmentID

-- INNER JOIN [Departments] AS d: This specifies that you are performing an INNER JOIN operation 
	-- between the [Employees] table (aliased as e) and the [Departments] table (aliased as d). 
	-- An INNER JOIN returns only the rows that have matching values in both tables.

-- ON e.DepartmentID = d.DepartmentID: 
    -- 	This defines the condition for the join. The query joins rows from [Employees] and [Departments] 
    -- 	where the value of DepartmentID in the [Employees] table matches the value of DepartmentID in the [Departments] table.

-- What Happens During Execution

-- The database engine first performs a Cartesian product of the [Employees] and [Departments] tables, 
	-- which means it combines every row in [Employees] with every row in [Departments].

-- The ON clause then filters this combined dataset to include only those rows where e.DepartmentID equals d.DepartmentID.
	-- Only the rows that meet this condition are included in the final result set.

-- The SELECT * part indicates that all columns from both tables should be included in the result.
-- Example Scenario