SELECT e.EmployeeID
	  ,e.FirstName
	  ,m.EmployeeID
	  ,m.FirstName
FROM Employees AS e
JOIN Employees AS m ON e.ManagerID = m.EmployeeID
WHERE e.ManagerID IN (3,7)
ORDER BY e.EmployeeID 

-- This performs an inner join on the Employees table.
-- The table is joined with itself but given an alias m for the second instance.

-- The join condition ON e.ManagerID = m.EmployeeID ensures that each employee (e) is matched with their manager (m), 
-- based on the ManagerID of the employee matching the EmployeeID of the manager.

-- Important Points to Remember

-- In SQL, a self-join is a type of join that allows a table to be joined with itself. 
-- This is particularly useful when dealing with hierarchical data structures such as organizational charts, 
	-- where employees can be managers of other employees. The concept of self-reference comes into play when a column in a table refers to another row within the same table.

-- Aliases are essential: Without aliases, the SQL engine cannot differentiate between multiple instances of the same table.

-- Self-reference relies on foreign key relationships: 
	--The ManagerID should ideally be a foreign key referencing the EmployeeID within the same table, ensuring referential integrity.
-- By using self-joins, you can effectively manage and query hierarchical data structures within relational databases.

-- In a self-referential scenario, the ManagerID column in the Employees table references the EmployeeID in the same table. 
	-- This means each employee's ManagerID points to another employee's EmployeeID.