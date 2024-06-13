SELECT *
FROM Trains

SELECT * FROM Tickets


CREATE OR ALTER FUNCTION udf_TownsWithTrains(@name VARCHAR (30))
RETURNS INT
AS
  BEGIN

	DECLARE @result INT;

	SELECT @result =
	COUNT(tr.Id) 
	FROM Trains AS tr
	JOIN Towns AS td ON tr.DepartureTownId = td.Id
	JOIN Towns AS ta ON tr.ArrivalTownId = ta.Id
	WHERE td.[Name] = @name OR ta.[Name] = @name

	RETURN @result;
  END;


  SELECT dbo.udf_TownsWithTrains('Paris')