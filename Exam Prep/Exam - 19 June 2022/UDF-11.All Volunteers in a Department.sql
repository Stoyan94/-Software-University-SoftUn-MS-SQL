CREATE OR ALTER FUNCTION udf_GetVolunteersCountFromADepartment (@VolunteersDepartment VARCHAR(30)) 
RETURNS INT
AS
	BEGIN
			DECLARE @departId INT;
			SET @departId =	(
								SELECT Id 
								FROM VolunteersDepartments
								WHERE DepartmentName = @VolunteersDepartment
							)

			DECLARE @departmentVolCount INT;
			SET @departmentVolCount = (
									  	SELECT COUNT(*)
									  	FROM Volunteers
									  	WHERE DepartmentId = @departId
									  )

			RETURN @departmentVolCount
			
	END


	SELECT dbo.udf_GetVolunteersCountFromADepartment ('Education program assistant')