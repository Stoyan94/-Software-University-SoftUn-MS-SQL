SELECT a.[Name]
	  ,t.AnimalType
	  ,FORMAT(a.BirthDate, 'dd.MM.yyyy')
FROM Animals AS a
JOIN AnimalTypes AS t ON a.AnimalTypeId = t.Id
ORDER BY a.[Name]