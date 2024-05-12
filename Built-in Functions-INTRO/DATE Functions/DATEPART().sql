-- Example: Extract the year from the current date
SELECT DATEPART(YEAR, GETDATE()) AS CurrentYear;

-- Example: Extract the month from '2024-05-12'
SELECT DATEPART(MONTH, '2024-05-12') AS MonthValue;

-- Example: Extract the day of the week from '2024-05-12'
SELECT DATEPART(WEEKDAY, '2024-05-12') AS DayOfWeek;

-- Example: Extract the hour from '2024-05-12 10:30:00'
SELECT DATEPART(HOUR, '2024-05-12 10:30:00') AS HourValue;

-- year, yyyy, yy: Year
-- quarter, qq, q: Quarter
-- month, mm, m: Month
-- dayofyear, dy, y: Day of the year
-- day, dd, d: Day of the month
-- week, wk, ww: Week
-- weekday, dw, w: Weekday (1 for Sunday, 2 for Monday, ..., 7 for Saturday)
-- hour, hh: Hour
-- minute, mi, n: Minute
-- second, ss, s: Second
-- millisecond, ms: Millisecond