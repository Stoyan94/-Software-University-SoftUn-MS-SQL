
SELECT FORMAT(GETDATE(), 'dddd, MMMM d, yyyy') AS CustomFormattedDate;
-- This query formats the current date in a custom format, including the full day name ('dddd'), full month name ('MMMM'), day of the month ('d'), and year ('yyyy').
	--For example, it would return 'Saturday, May 14, 2024'.

SELECT FirstName, LastName, FORMAT(BirthDate, 'dd MMMM yyyy') AS FormattedBirthDate
FROM Employees;

-- This query formats the BirthDate of each employee to display the day of the month ('dd'), full month name ('MMMM'), and year ('yyyy'). For example, it would return:
-- 
-- FirstName | LastName | FormattedBirthDate
-- -----------------------------------------
-- John      | Smith    | 15 March 1980
-- Jane      | Doe      | 20 September 1975
-- Alice     | Johnson  | 05 December 1990
-- 
-- The FORMAT function allows for flexible formatting of various data types, making it easier to present data in a readable and user-friendly format.