
SELECT t.[Name],
	   s.[Name] 
FROM RailwayStations AS s
JOIN Towns AS t ON t.Id = s.TownId
WHERE s.Id NOT IN (
					SELECT RailwayStationId FROM TrainsRailwayStations
				  )
ORDER BY s.[Name], t.[Name]