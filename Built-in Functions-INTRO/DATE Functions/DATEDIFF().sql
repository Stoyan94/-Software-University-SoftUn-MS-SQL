-- Example: Calculate the difference in days between two dates
SELECT DATEDIFF(DAY, '2024-05-10', '2024-05-15') AS DayDifference;

-- Example: Calculate the difference in months between two dates
SELECT DATEDIFF(MONTH, '2024-01-01', '2024-05-01') AS MonthDifference;

-- Example: Calculate the difference in days from today
SELECT DATEDIFF(DAY, GETDATE(), '2025-01-01') AS DaysUntil2025;

-- The DATEDIFF() function in SQL Server calculates the difference between two dates, 
	--and it returns the result in the specified date part (such as years, months, days, etc.).