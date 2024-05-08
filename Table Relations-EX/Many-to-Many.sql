CREATE TABLE [Students](
	[StudentID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE [Exams](
	[ExamID] INT PRIMARY KEY IDENTITY(101, 1)
   ,[Name] VARCHAR(50) 
)

CREATE TABLE [StudentsExams](
	[StudentID] INT FOREIGN KEY REFERENCES [Students](StudentID) NOT NULL
   ,[ExamID] INT FOREIGN KEY REFERENCES [Exams](ExamID) NOT NULL
)

INSERT INTO [Students]
	VALUES
	('Mila')
   ,('Toni')
   ,('Ron')
