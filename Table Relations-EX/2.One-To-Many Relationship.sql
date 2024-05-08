CREATE TABLE [Manufacturers](
	[ManufacturerID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(30) NOT NULL
   ,[EstablishedOn] DATETIME2 NOT NULL
)

CREATE TABLE [Models](
	[ModelID] INT PRIMARY KEY IDENTITY(101,1)
   ,[Name] VARCHAR(50) NOT NULL
   ,[ManufacturerID] INT FOREIGN KEY REFERENCES [Manufacturers]([ManufacturerID]) NOT NULL
)


INSERT INTO [Manufacturers]
	VALUES
	('BWM', '07/03/1916')
   ,('Tesla', '01/01/2003')
   ,('Lada', '01/05/1966')


INSERT INTO [Models]
	VALUES
	('X1', 1)
   ,('i6', 1)
   ,('Model S', 2)
   ,('Model X', 2)
   ,('Model 3', 2)
   ,('Nova', 3)


SELECT * FROM [Models]