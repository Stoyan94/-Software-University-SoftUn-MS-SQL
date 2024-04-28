
--Combining UNIQUE and NOT NULL in this way ensures that every user in the table must have a unique username, and that username cannot be null. 
--This is a common requirement for columns that serve as unique identifiers for entities in a database table, such as usernames, email addresses, or IDs.
CREATE TABLE [Users](
	[Id] BIGINT PRIMARY KEY IDENTITY,
	[UserName] VARCHAR(30) UNIQUE NOT NULL,
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

-- 9*
ALTER TABLE [Users]
	DROP CONSTRAINT PK__Users__3214EC0708A6FD73


ALTER TABLE [Users]
	ADD CONSTRAINT PK_Users_Complex
	PRIMARY KEY ([Id], [UserName])
