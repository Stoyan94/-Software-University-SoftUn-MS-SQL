-- Set constraint for password length
ALTER TABLE [Users]
	ADD CONSTRAINT CHK_PasswordLength CHECK (LEN([Password]) >= 5)


INSERT INTO [Users] ([UserName], [Password], [LastLoginTime], [IsDeleted])
		VALUES	
('OOOOas', 'oos', '18:40:34', 'false')