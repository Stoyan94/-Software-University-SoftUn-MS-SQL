CREATE TABLE Passengers (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(80) NOT NULL
);

CREATE TABLE Towns (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(30) NOT NULL
);

CREATE TABLE RailwayStations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    TownId INT NOT NULL,
    FOREIGN KEY (TownId) REFERENCES Towns(Id)
);

CREATE TABLE Trains (
    Id INT PRIMARY KEY IDENTITY(1,1),
    HourOfDeparture NVARCHAR(5) NOT NULL,
    HourOfArrival NVARCHAR(5) NOT NULL,
    DepartureTownId INT NOT NULL,
    ArrivalTownId INT NOT NULL,
    FOREIGN KEY (DepartureTownId) REFERENCES Towns(Id),
    FOREIGN KEY (ArrivalTownId) REFERENCES Towns(Id)
);

CREATE TABLE TrainsRailwayStations (
    TrainId INT NOT NULL,
    RailwayStationId INT NOT NULL,
    PRIMARY KEY (TrainId, RailwayStationId),
    FOREIGN KEY (TrainId) REFERENCES Trains(Id),
    FOREIGN KEY (RailwayStationId) REFERENCES RailwayStations(Id)
);

CREATE TABLE MaintenanceRecords (
    Id INT PRIMARY KEY IDENTITY(1,1),
    DateOfMaintenance DATE NOT NULL,
    Details NVARCHAR(2000) NOT NULL,
    TrainId INT NOT NULL,
    FOREIGN KEY (TrainId) REFERENCES Trains(Id)
);

CREATE TABLE Tickets (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Price DECIMAL(10, 2) NOT NULL,
    DateOfDeparture DATE NOT NULL,
    DateOfArrival DATE NOT NULL,
    TrainId INT NOT NULL,
    PassengerId INT NOT NULL,
    FOREIGN KEY (TrainId) REFERENCES Trains(Id),
    FOREIGN KEY (PassengerId) REFERENCES Passengers(Id)
);