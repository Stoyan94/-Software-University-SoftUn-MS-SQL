SELECT *
FROM Owners

SELECT * FROM Animals

SELECT * FROM AnimalTypes

SELECT * FROM AnimalsCages

SELECT CONCAT_WS('-', o.[Name], a.[Name]) AS OwnersAnimals
	  ,o.PhoneNumber
	  ,ac.CageId
FROM Owners AS o
JOIN Animals AS a ON o.Id = a.OwnerId
JOIN AnimalTypes AS aty ON a.AnimalTypeId = aty.Id
JOIN AnimalsCages AS ac ON a.Id = ac.AnimalId
WHERE aty.AnimalType = 'Mammals'
ORDER BY o.[Name], a.[Name] DESC