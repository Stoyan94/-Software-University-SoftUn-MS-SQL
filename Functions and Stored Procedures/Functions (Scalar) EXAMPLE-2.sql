
				--Function name          Set parameters
CREATE FUNCTION udf_ProjectLenghtInWeeks(@Start DATETIME, @End DATETIME)
RETURNS INT -- Return Type
AS
BEGIN
	DECLARE @result INT --Set Variable
	IF(@End IS NULL ) -- If statement
	BEGIN
		SET @End = GETDATE()
	END
	SET @result = DATEDIFF(WEEK, @Start, @End)
	RETURN @result -- Return value
END