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


-- ALTER TABLE [Minions]: This part specifies the table that you want to modify. In this case, it's the "Minions" table.
--ADD [TownId] INT: This part adds a new column named "TownId" to the "Minions" table. The data type of this column is INT, meaning it will store integer values.
--FOREIGN KEY REFERENCES [Towns] ([Id]): This part specifies that the "TownId" column will be a foreign key that references the "Id" column in the "Towns" table. 
	--This establishes a relationship between the "Minions" table and the "Towns" table, where each value in the "TownId" column of the "Minions" table must correspond to a value in the "Id" column of the "Towns" table.
--NOT NULL: This part specifies that the "TownId" column cannot contain null values. 
	--It ensures that every row in the "Minions" table must have a valid value for the "TownId" column, which corresponds to an existing town in the "Towns" table.
-- So, overall, this statement modifies the "Minions" table by adding a new column "TownId", which serves as a foreign key referencing the "Id" column in the "Towns" table. 
	--This establishes a relationship between the two tables, ensuring referential integrity, and specifies that the "TownId" column cannot contain null values.

ALTER TABLE [Minions]
ADD [TownId] INT FOREIGN KEY REFERENCES [Towns] ([Id]) NOT NULL


--This statement alters the "Minions" table by modifying the data type of the "Age" column to INT. 
	--Without the NOT NULL constraint, the column is now allowed to contain NULL values
	
ALTER TABLE [Minions]
ALTER COLUMN [Age] INT

GO


--To understand why you need to fill the [Towns] table before the [Minions] table, let's consider the data model and the concept of foreign key constraints.

--In your example, the [Minions] table has a column [TownId] that serves as a foreign key referencing the [Id] column in the [Towns] table. 
	--This means that every value in the [TownId] column of the [Minions] table must correspond to a valid Id in the [Towns] table. 
	--If you try to insert a row into [Minions] with a [TownId] that doesn't exist in the [Towns] table, you'll encounter a foreign key constraint violation error.

--Given this constraint, you need to ensure that the [Towns] table is populated with the necessary data (in this case, town names and their corresponding IDs) before inserting any rows into the [Minions] table. 
	--Otherwise, you might attempt to insert a [TownId] in the [Minions] table that doesn't exist in the [Towns] table, leading to a constraint violation.
	
--So, by inserting data into [Towns] first, you establish the necessary reference points for the foreign key constraints in the [Minions] table, ensuring data integrity and preventing constraint violations during insertion into [Minions].
	
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
