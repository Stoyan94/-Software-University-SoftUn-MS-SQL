-- Example: Get the name of the month for a given date
SELECT DATENAME(MONTH, '2024-05-12') AS MonthName;

-- Example: Add 3 days to a given date
SELECT DATEADD(DAY, 3, '2024-05-12') AS NewDate;

-- Get Current Date 
SELECT GETDATE() AS CurrentDateTime;