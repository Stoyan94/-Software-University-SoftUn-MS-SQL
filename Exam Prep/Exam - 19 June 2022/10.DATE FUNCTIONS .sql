SELECT a.[Name]
	  ,DATEPART(YEAR, a.BirthDate) AS BirthYear
	  ,aty.AnimalType
FROM Animals AS a
JOIN AnimalTypes AS aty ON a.AnimalTypeId = aty.Id
WHERE OwnerId IS NULL AND
DATEDIFF(YEAR, a.BirthDate, '01/01/2022') < 5
AND aty.AnimalType <> 'Birds'
ORDER BY a.[Name]