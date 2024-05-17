-- 17.	 Show All Games with Duration and Part of the Day
-- Find all games with part of the day and duration. Sort them by game name alphabetically, 
	--	then by duration (alphabetically, not by the timespan) and part of the day (all ascending). 

-- Part of the Day should be Morning (time is >= 0 and < 12), Afternoon (time is >= 12 and < 18), Evening (time is >= 18 and < 24). 

-- Duration should be Extra Short (smaller or equal to 3), Short (between 4 and 6 including), Long (greater than 6) and Extra Long (without duration). 
SELECT [Name]
	AS [Game],
	   CASE 
		  WHEN DATEPART(HOUR, [Start]) >= 0 AND DATEPART(HOUR, [Start]) < 12 THEN 'Moning'
		  WHEN DATEPART(HOUR, [Start]) >= 12 AND DATEPART(HOUR, [Start]) < 18 THEN 'Afternoon'
FROM [Games]