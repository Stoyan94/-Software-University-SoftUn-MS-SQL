ALTER TABLE [Users]
DROP CONSTRAINT PK_Users_Complex

ALTER TABLE [Users]
ADD CONSTRAINT PK_Users_Id PRIMARY KEY ([Id])

ALTER TABLE [Users]
ADD CONSTRAINT UQ_Username UNIQUE ([Username])


ALTER TABLE [Users]
ADD CONSTRAINT CH_UserNameLenght CHECK (LEN([Username]) >= 3)


INSERT INTO [Users] ([UserName], [Password], [LastLoginTime], [IsDeleted])
		VALUES		
	('Sw', 'ssgg34', '13:30:20', 'false')