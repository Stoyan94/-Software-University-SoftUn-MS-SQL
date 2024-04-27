-- always first is the name of the request, 
-- then is the name of the object on which we want to perform the operation
-- CRUD => Create, Read, Update, and Delete

CREATE DATABASE [Minions]

USE [Minions] 

-- GO to separate different batches of SQL statements
-- Each batch separated by GO is compiled and executed individually
--GO 

--CREATE DATABASE [DEMO2024]

--GO

-- using brackets around identifiers like database names, table names, or column names is a way to handle cases 
-- where the identifier contains special characters, spaces, or matches a reserved keyword.
-- It's a good practice to use brackets around identifiers in SQL 
-- when there's a chance that the identifier might conflict with SQL syntax or contain special characters.

CREATE TABLE [Minions] (
	[Id] INT PRIMARY KEY,
	[Name] NVARCHAR (50) NOT NULL,
	[Age] INT NOT NULL,
)
-- CREATE TABLE [Minions]: This line initiates the creation of a new table with the name "Minions". The [Minions] part is enclosed in brackets, 
-- which means it's considered as a single identifier even if it contains special characters or matches SQL keywords.

-- ([Id] INT PRIMARY KEY, [Name] NVARCHAR (50) NOT NULL, [Age] INT NOT NULL): This part defines the structure of the table. It consists of three columns:
-- [Id] INT PRIMARY KEY: This defines a column named "Id" with the data type INT, which means it stores integer values. 
-- The PRIMARY KEY constraint specifies that this column is the primary key for the table, which means its values must be unique and not null.
--[Name] NVARCHAR (50) NOT NULL: This defines a column named "Name" with the data type NVARCHAR(50), 
-- which means it can store variable-length character data of up to 50 characters. 
-- [Age] INT NOT NULL: This defines a column named "Age" with the data type INT, which means it stores integer values. 
--The NOT NULL constraint specifies that this column cannot contain null values.

USE [Minions]

CREATE TABLE [Towns] (
	[Id] INT PRIMARY KEY,
	[Name] NVARCHAR (70) NOT NULL
)

ALTER TABLE [Minions]
ADD [TownId] INT FOREIGN KEY REFERENCES [Towns] ([Id]) NOT NULL


ALTER TABLE [Minions]
ALTER COLUMN [Age] INT

GO

INSERT INTO [Towns] ([Id], [Name])
	VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')

--SELECT * FROM [Towns]

INSERT INTO [Minions] ([Id], [Name], [Age], [TownId])
	VALUES
(1,'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2)

SELECT * FROM [Towns]
SELECT * FROM [Minions]

GO