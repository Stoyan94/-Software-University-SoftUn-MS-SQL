CREATE TABLE [Directors](
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[DirectorName] VARCHAR(255),
	[Notes] VARCHAR(MAX),
)


CREATE TABLE [Genres](
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[GenreName] VARCHAR(255),
	[Notes] VARCHAR(MAX)
)


CREATE TABLE [Categories](
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[CategoryName] VARCHAR(255),
	[Notes] VARCHAR(MAX)
)

CREATE TABLE [Movies](
	[Id] INT IDENTITY NOT NULL,
	[Title] VARCHAR(50),
	[DirectorId] INT FOREIGN KEY REFERENCES [Directors](Id),
	[CopyRightYear] SMALLINT,
	[Length] FLOAT,
	[GenreId] INT FOREIGN KEY REFERENCES [Genres](Id),
	[CategoryId] INT FOREIGN KEY REFERENCES [Categories](Id),
	[Rating] DECIMAL(3,1),
	[Notes] VARCHAR(MAX)
)

INSERT INTO [Directors]([DirectorName], [Notes])
	VALUES
	('Juliq M', 'First women director'),
	('Stoqn M', 'SCFI-GURO'),
	('Makaron Pro', NULL),
	('Shin', 'Best chinese director'),
	('Goku', 'Best anime director')


INSERT INTO [Genres]([GenreName], [Notes])
	VALUES
	('Horror', 'Loves to kill in every movie character with name "Stoqn"'),
	('SCFI', 'Crazy but good ideas for movies'),
	(NULL,'Hate other italians directors'),
	('Many', 'loves too much romance in his movies'),
	('Anime-GOD', 'he created moste of the best loved characters in the world')


INSERT INTO [Categories]([CategoryName], [Notes])
	VALUES
	('First', 'All love her movies'),
	('First', 'He created SuperNaturale'),
	('Third', 'Most famous in Italy'),
	('Seckond', NULL),
	('First', 'GOAT')


INSERT INTO Movies([Title], [DirectorId], [CopyRightYear], [Length], [GenreId], [CategoryId], [Rating], [Notes])
	VALUES
	('The Shawshank Redemption', 1, 1994, NULL, 1, 1, 9.3, '2h 22m'),
	('The Godfather', 2, 1972, NULL, 2, 2, 9.2, '2h 55m'),
	('The Dark Knight', 3, 2008, NULL, 3, 3, 9.0, '2h 32m'),
	('The Godfather: Part II', 4, 1974, NULL, 4, 4, 9.0, '3h 22m'),
	('12 Angry Men', 5, 1957, NULL, 5, 5, 9.0, '1h 36m')

SELECT * FROM [Movies]