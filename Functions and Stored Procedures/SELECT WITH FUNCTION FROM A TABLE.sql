SELECT 
	[Name]
	,[Description]
	,dbo.udf_ProjectLenghtInWeeks(StartDate, EndDate) AS Duration
FROM Projects