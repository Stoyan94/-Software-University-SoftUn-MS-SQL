CREATE DATABASE [Hotel]

USE [Hotel]

CREATE TABLE [Employees](
	[Id] INT PRIMARY KEY IDENTITY,
	[FirstName] VARCHAR(30) NOT NULL,
	[LastName] VARCHAR(30) NOT NULL,
	[Title] VARCHAR(30) NOT NULL,
	[Notes] VARCHAR(MAX)
)

CREATE TABLE[Customers](
	[AccountNumber] INT IDENTITY(1, 1),
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