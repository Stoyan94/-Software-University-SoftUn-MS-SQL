CREATE PROC usp_ErrorTest
AS
BEGIN TRY
	-- Generate a divide-by-zero error.
	SELECT 1/0
END TRY
BEGIN CATCH
	SELECT
	ERROR_NUMBER() AS ErrorNumber
	,ERROR_SEVERITY() AS ErrorSeverity
	,ERROR_STATE() AS ErrorState
	,ERROR_PROCEDURE() AS ErrorProcedure
	,ERROR_LINE() AS ErrorLine
	,ERROR_MESSAGE() AS ErrorMessage;
END CATCH


EXEC usp_ErrorTest


-- Summary
-- This stored procedure, usp_ErrorTest, demonstrates error handling in SQL Server using TRY...CATCH blocks.
-- Within the BEGIN TRY block, a divide-by-zero error is intentionally generated with SELECT 1/0.
-- When the divide-by-zero error occurs, control is passed to the BEGIN CATCH block.

-- The BEGIN CATCH block then executes a SELECT statement that retrieves and displays detailed information about the error using several error-related functions.
-- These functions provide information such as the error number, severity, state, procedure name, line number, and error message.
-- When this stored procedure is executed, it will produce a result set containing details about the divide-by-zero error.