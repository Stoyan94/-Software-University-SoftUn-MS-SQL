SELECT 
	ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Id 
	,[FirstName]
	,[LastName]
	,DENSE_RANK() OVER (ORDER BY Salary DESC) AS [DensRank]
	,RANK() OVER (ORDER BY Salary DESC) AS [Rank]
	,NTILE(5) OVER (ORDER BY Salary DESC) AS Quintile
FROM [Employees] WHERE DepartmentID = 5 


-- ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Id: This part of the query generates a unique row number 
	--for each row in the result set based on the order of the Salary column in descending order. The result is aliased as "Id".


-- DENSE_RANK() OVER (ORDER BY Salary DESC) AS [DensRank]: This part of the query calculates 
	-- the dense rank for each row based on the order of the Salary column in descending order. 
	-- The dense rank is a consecutive integer assigned to each row without any gaps. The result is aliased as "DensRank".

-- RANK() OVER (ORDER BY Salary DESC) AS [Rank]: This part of the query calculates 
	-- the rank for each row based on the order of the Salary column in descending order. 
	-- The rank is a unique integer assigned to each row, but if there are ties (i.e., rows with the same salary), 
	-- the same rank will be assigned to those rows. The result is aliased as "Rank".

-- NTILE(5): This function divides the result set into five tiles. 
	-- Each row in the result set will be assigned a tile number ranging from 1 to 5, depending on its order within the sorted result set.
	-- The purpose of using NTILE() in this query could be to divide employees into five groups based on their salaries, allowing for further analysis or comparison between these salary groups. 
	-- Each row will be assigned a tile number indicating its position within these groups.