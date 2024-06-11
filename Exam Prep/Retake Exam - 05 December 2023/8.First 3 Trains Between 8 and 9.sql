-- Trains, Tickets, Towns

SELECT TOP 3
		tr.Id,
	   tr.HourOfDeparture,
	   t.Price,
	   tw.[Name] 
FROM Trains AS tr
JOIN Tickets AS t ON t.TrainId = tr.Id
JOIN Towns AS tw ON tw.Id = tr.ArrivalTownId
WHERE  CAST(tr.HourOfDeparture AS TIME) BETWEEN '8:00' and '08:59' AND t.Price > 50
ORDER BY t.Price