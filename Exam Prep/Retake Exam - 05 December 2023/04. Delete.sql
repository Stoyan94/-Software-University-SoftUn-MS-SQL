DECLARE @BerlinId INT;
SET @BerlinId = (SELECT Id FROM Towns WHERE Name = 'Berlin');

DECLARE @TrainId INT;
SET @TrainId = (SELECT Id FROM Trains WHERE DepartureTownId = @BerlinId);


DELETE FROM TrainsRailwayStations 
WHERE TrainId = @TrainId;

DELETE FROM MaintenanceRecords 
WHERE TrainId = @TrainId;

DELETE FROM Tickets 
WHERE TrainId = @TrainId;

DELETE FROM Trains 
WHERE Id = @TrainId;