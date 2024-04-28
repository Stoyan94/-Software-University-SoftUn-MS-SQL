
ALTER TABLE [Users]
ADD CONSTRAINT DE_CurrentTime DEFAULT GETDATE() FOR [LastLoginTime]

INSERT INTO [Users] ([UserName], [Password], [IsDeleted])
		VALUES		
	('CurrTime', 'ssgg34','false')

SELECT * FROM [Users]