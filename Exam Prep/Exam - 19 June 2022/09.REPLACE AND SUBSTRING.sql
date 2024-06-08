SELECT v.[Name]
	  ,v.PhoneNumber
	  , REPLACE(REPLACE(v.[Address], 'Sofia', ''), ',', '') --SUBSTRING(v.Address, CHARINDEX('Sofia', v.Address) + 7, LEN(v.Address) - CHARINDEX(' ', v.Address))
FROM Volunteers AS v
JOIN VolunteersDepartments AS vd ON v.DepartmentId = vd.Id
WHERE vd.DepartmentName = 'Education program assistant' 
AND v.[Address] LIKE '%Sofia%'
ORDER BY v.[Name]