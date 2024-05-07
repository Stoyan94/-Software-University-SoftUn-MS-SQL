CREATE DATABASE [TableRelations]

USE [TableRelations]

-- Paste in Judge from this point on

-- Table Passports

CREATE TABLE [Passports]
(
	[PassportID] INT NOT NULL,
	[PassportNumber] CHAR(8) NOT NULL,
)

ALTER TABLE [Passports]
ADD CONSTRAINT PK_PassportId 
PRIMARY KEY (PassportId)

INSERT INTO [Passports] VALUES
	(101, 'N34FG21B'),
	(102, 'K65LO4R7'),
	(103, 'ZE657QP2')

