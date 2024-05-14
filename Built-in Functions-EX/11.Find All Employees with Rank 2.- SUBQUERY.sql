


-- When we use nested queries, we cannot use ORDER BY in the nested query.
-- Most often we need to use nested queries if we want to use something from SELECT or another clause that is executed before WHERE
SELECT *
FROM
   (
      SELECT [EmployeeID]
      	     ,[FirstName]
      	     ,[LastName]
      	     ,[Salary]
      	     ,DENSE_RANK() OVER (PARTITION BY [Salary] ORDER BY [EmployeeID]) 
      	    AS [Rank]
      FROM [Employees]
      WHERE [Salary] BETWEEN 10000 AND 50000      
   ) AS [RankingSubquery]
   WHERE [Rank] = 2 
   ORDER BY Salary DESC