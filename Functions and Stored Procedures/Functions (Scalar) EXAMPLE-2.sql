CREATE FUNCTION udf_ProjectLenghtInWeeks(@Start DATETIME, @End DATETIME)
RETURNS INT
AS
BEGIN
	DECLARE @result INT
	IF(@End IS NULL )
		SET @End = GETDATE()
	SET @result = DATEDIFF(WEEK, @Start, @End)
	RETURN @Result
END