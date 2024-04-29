--14.Car Rental Database

CREATE TABLE [Categories](
	[Id] INT PRIMARY KEY IDENTITY,
	[CategoryName] VARCHAR(50) NOT NULL,
	[DailyRate] DECIMAL(7,2),
	[WeeklyRate] DECIMAL(7,2),
	[MonthlyRate] DECIMAL(7,2),
	[WeekendRate] DECIMAL(7,2),
)


CREATE TABLE [Cars](
	[Id] INT PRIMARY KEY IDENTITY,
	[PlateNumber] VARCHAR(10) NOT NULL,
	[Manufacturer] VARCHAR(30) NOT NULL,
	[Model] VARCHAR(30) NOT NULL,
	[CarYear] SMALLINT NOT NULL,
	[CategoryId] INT FOREIGN KEY REFERENCES [Categories](Id),
	[Doors] VARCHAR(5),
	[Picture] VARBINARY(800),
	[Condition] VARCHAR(50) NOT NULL,
	[Available] BIT NOT NULL
)

CREATE TABLE [Employees](
	[Id] INT PRIMARY KEY IDENTITY,
	[FirstName] VARCHAR(30) NOT NULL,
	[LastName] VARCHAR(30) NOT NULL,
	[Title] VARCHAR(30) NOT NULL,
	[Notes] VARCHAR(MAX)
)



CREATE TABLE [Customers](
	[Id] INT PRIMARY KEY IDENTITY,
	[DriverLicenceNumber] VARCHAR(50) NOT NULL,
	[FullName] VARCHAR(100) NOT NULL,
	[Address] VARCHAR(150) NOT NULL,
	[City] VARCHAR(100) NOT NULL,
	[ZIPCode] VARCHAR(20) NOT NULL,
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [RentalOrders](
	[Id] INT PRIMARY KEY IDENTITY,
	[EmployeeId] INT FOREIGN KEY REFERENCES [Employees](Id),
	[CustomerId] INT FOREIGN KEY REFERENCES [Customers](Id),
	[CarId] INT FOREIGN KEY REFERENCES [Cars](Id),
	[TankLevel] FLOAT(2) NOT NULL,
	[KilometrageStart] INT NOT NULL,
	[KilometrageEnd] INT NOT NULL,
	[TotalKilometrage] INT NOT NULL,
	[StartDate] DATETIME2 NOT NULL,
	[EndDate] DATETIME2 NOT NULL,
	[TotalDays] SMALLINT NOT NULL,
	[RateApplied] DECIMAL(7,2) NOT NULL,
	[TaxRate] DECIMAL(5,2) NOT NULL,
	[OrderStatus] VARCHAR(30) NOT NULL,
	[Notes] VARCHAR(MAX)
)

INSERT INTO [Categories]([CategoryName], [DailyRate], [WeeklyRate], [MonthlyRate], [WeekendRate])
	VALUES
	('Category1', 6.3, 3.5, 3.3, 4.4),
	('Category2', 5.3, 2.5, 5.3, 3.4),
	('Category3', 7.3, 8.5, 8.3, 4.9)


INSERT INTO [Cars]([PlateNumber], [Manufacturer], [Model], [CarYear], [CategoryId], [Doors], [Condition], [Available])
	VALUES
	('S 4532 BB', 'Opel', 'Vectra', 1991, 1, '4', 'Broken' , 0),
	('A 5532 SB', 'Honda', 'Civic', 1994, 2, '2', 'Good' , 1),
	('Q 8756 LG', 'Nisan', 'Godzila', 1997, 3, '4', 'Excelent' , 1)