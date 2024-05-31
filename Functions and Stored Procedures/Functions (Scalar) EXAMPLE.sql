CREATE FUNCTION udf_ProjectDurationWeeks (@StartDate DATETIME,
@EndDate DATETIME)
RETURNS INT
AS
BEGIN
	 DECLARE @projectWeeks INT;
	 IF(@EndDate IS NULL)
	 BEGIN
	 SET @EndDate = GETDATE()
	 END
	 SET @projectWeeks = DATEDIFF(WEEK, @StartDate, @EndDate)
	 RETURN @projectWeeks;
END