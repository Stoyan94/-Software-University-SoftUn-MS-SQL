
--EOMONTH() is useful for calculating deadlines, due dates, 
	--or any other scenario where you need to find the end of a month relative to a given date.
SELECT EOMONTH('2024-05-12') AS LastDayOfMonth;


SELECT EOMONTH('2024-05-12', -1) AS LastDayOfPreviousMonth,
       EOMONTH('2024-05-12', 1) AS LastDayOfNextMonth;