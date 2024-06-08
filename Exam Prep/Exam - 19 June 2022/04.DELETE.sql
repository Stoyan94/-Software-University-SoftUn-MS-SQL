SELECT *
FROM VolunteersDepartments -- 2

SELECT * FROM Volunteers WHERE DepartmentId = 2

DELETE FROM Volunteers
WHERE DepartmentId = 2

DELETE FROM VolunteersDepartments
WHERE DepartmentName = 'Education program assistant'