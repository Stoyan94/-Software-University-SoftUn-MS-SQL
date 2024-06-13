CREATE PROC usp_SearchByTown(@townName VARCHAR (30))
 AS
	BEGIN

		SELECT ps.[Name] AS PassengerName,
	           tk.DateOfDeparture,
	           tr.HourOfDeparture
	   FROM Trains AS tr
	   JOIN Towns AS ta ON tr.ArrivalTownId = ta.Id
	   JOIN Tickets AS tk ON tr.Id = tk.TrainId
	   JOIN Passengers AS ps ON tk.PassengerId = ps.Id
	   WHERE ta.[Name]  = @townName
	   ORDER BY tk.DateOfDeparture DESC, ps.[Name]

	END

EXEC usp_SearchByTown 'Berlin'