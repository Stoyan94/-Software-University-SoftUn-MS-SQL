--CREATE DATABASE [Hotel]

--USE [Hotel]

CREATE TABLE [Employees](
	[Id] INT PRIMARY KEY IDENTITY,
	[FirstName] VARCHAR(30) NOT NULL,
	[LastName] VARCHAR(30) NOT NULL,
	[Title] VARCHAR(30) NOT NULL,
	[Notes] VARCHAR(MAX)
)

CREATE TABLE[Customers](
	[AccountNumber] INT IDENTITY(1,1),
	[FirstName] VARCHAR(30) NOT NULL,
	[LastName] VARCHAR(30) NOT NULL,
	[PhoneNumber] VARCHAR(30) NOT NULL,
	[EmergencyName] VARCHAR(30) NOT NULL,
	[EmergencyNumber] VARCHAR(30) NOT NULL,
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [RoomStatus](
	[RoomStatus] VARCHAR(50),
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [RoomTypes](
	[RoomType] VARCHAR(50),
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [BedTypes](
	[BedType] VARCHAR(50),
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [Rooms](
	[RoomNumber] SMALLINT NOT NULL,
	[RoomType] VARCHAR(50) NOT NULL,
	[BedType] VARCHAR(30) NOT NULL,
	[Rate] DECIMAL(4,1) NOT NULL,
	[RoomStatus] VARCHAR(50) NOT NULL,
	[Notes] VARCHAR(MAX)
)



--DECIMAL(10,2) strikes a balance between accommodating a wide range of 
	--monetary values and providing the necessary precision for accurate representation of fractional amounts, 
	--making it a suitable choice for storing monetary values in the [AmountCharged] column.


--DECIMAL(5,2), the column can represent tax rates ranging from 0.00% to 999.99%. This allows for a wide range of tax rates to be stored accurately.
--Decimal Places: With 2 digits reserved for the fractional part (DECIMAL(5,2)), the column can accurately represent tax rates to two decimal places. 
--This is common for representing percentages, where the fractional part represents the percentage value after the decimal point.

CREATE TABLE [Payments](
	[Id] INT PRIMARY KEY IDENTITY(1,1),
	[EmployeeId] INT FOREIGN KEY REFERENCES [Employees],
	[PaymentDate] DATETIME2 NOT NULL,
	[AccountNumber] INT NOT NULL,
	[FirstDateOccupied] DATETIME2 NOT NULL,
	[LastDateOccupied] DATETIME2 NOT NULL,
	[TotalDays] TINYINT NOT NULL,
	[AmountCharged] DECIMAL(10,2) NOT NULL,
	[TaxRate] DECIMAL(5,2) NOT NULL,
	[TaxAmount] DECIMAL(10,2) NOT NULL,
	[PaymentTotal] DECIMAL(12, 2) NOT NULL,
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [Occupancies](
	[Id] INT PRIMARY KEY IDENTITY(1,1),
	[EmployeeId] INT FOREIGN KEY REFERENCES [Employees],
	[DateOccupied] DATETIME2 NOT NULL,
	[AccountNumber] INT NOT NULL,
	[RoomNumber] INT NOT NULL,
	[RateApplied] DECIMAL(4,1) NOT NULL,
	[PhoneCharge] DECIMAL(5,2) NOT NULL,
	[Notes] VARCHAR(MAX)
)


-- Employees table
INSERT INTO Employees (FirstName, LastName, Title, Notes)
VALUES
    ('John', 'Doe', 'Manager', 'Responsible for overseeing daily operations.'),
    ('Jane', 'Smith', 'Receptionist', 'Responsible for greeting and assisting customers.'),
    ('Michael', 'Johnson', 'Housekeeper', 'Responsible for cleaning and maintaining rooms.')



-- Customers table
INSERT INTO Customers (FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
VALUES
    ('Alice', 'Jones', '123-456-7890', 'Bob Jones', '987-654-3210', 'Regular customer with loyalty points.'),
    ('Bob', 'Smith', '456-789-0123', 'Carol Smith', '321-654-0987', 'New customer with special requests.'),
    ('Carol', 'Brown', '789-012-3456', 'Dave Brown', '654-987-0123', 'Frequent traveler with specific preferences.')


-- RoomStatus table
INSERT INTO RoomStatus (RoomStatus, Notes)
VALUES
    ('Occupied', 'Room is currently occupied by a guest.'),
    ('Available', 'Room is available for booking.'),
    ('Out of Service', 'Room is temporarily unavailable due to maintenance.')


-- RoomTypes table
INSERT INTO RoomTypes (RoomType, Notes)
VALUES
    ('Standard', 'Basic room with essential amenities.'),
    ('Deluxe', 'Upgraded room with additional amenities.'),
    ('Suite', 'Luxurious room with premium features.')


-- BedTypes table
INSERT INTO BedTypes (BedType, Notes)
VALUES
    ('Single', 'Room with a single bed.'),
    ('Double', 'Room with a double bed.'),
    ('King', 'Room with a king-size bed.')


-- Rooms table
INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
VALUES
    (101, 'Standard', 'Single', 50.0, 'Available', 'Room with city view.'),
    (102, 'Deluxe', 'Double', 75.0, 'Available', 'Room with balcony.'),
    (103, 'Suite', 'King', 100.0, 'Occupied', 'Executive suite with ocean view.')



-- Populating the Payments table
INSERT INTO Payments (EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
VALUES
    (1, '2024-04-01 10:00:00', 123456, '2024-03-28 12:00:00', '2024-04-01 12:00:00', 4, 500.00, 0.08, 40.00, 540.00, 'Payment for room charges'),
    (2, '2024-04-02 11:00:00', 987654, '2024-04-01 14:00:00', '2024-04-03 12:00:00', 2, 300.00, 0.08, 24.00, 324.00, 'Payment for room charges'),
    (3, '2024-04-03 12:30:00', 456789, '2024-04-02 10:00:00', '2024-04-04 11:00:00', 2, 350.00, 0.08, 28.00, 378.00, 'Payment for room charges')

-- Populating the Occupancies table
INSERT INTO Occupancies (EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
VALUES
    (1, '2024-03-28 12:00:00', 123456, 101, 50.0, 10.00, 'Standard room occupied'),
    (2, '2024-04-01 14:00:00', 987654, 102, 75.0, 5.00, 'Deluxe room occupied'),
    (3, '2024-04-02 10:00:00', 456789, 103, 100.0, 15.00, 'Suite occupied')