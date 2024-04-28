CREATE TABLE [Users](
	[Id] BIGINT PRIMARY KEY IDENTITY,
	[UserName] VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	[ProfilePicture] VARBINARY(MAX),
	CHECK (DATALENGTH ([ProfilePicture]) <= 900000),
	[LastLoginTime] TIME,
	[IsDeleted] BIT NOT NULL DEFAULT 0
)

-- NOT NULL DEFAULT 0

INSERT INTO [Users] ([UserName], [Password], [LastLoginTime], [IsDeleted])
		VALUES		
	('Stoyan', 'ssgg34', '13:30:20', 'false'),
	('Julia', 'ggr3424', '14:40:32', 'true'),
	('Manqk', 'manqk00', '20:20:20', 'false'),
	('Loli', 'rrws813', '00:00:00', 'true'),
	('OOOO', 'ooooss', '18:40:34', 'false')

SELECT * FROM [Users]