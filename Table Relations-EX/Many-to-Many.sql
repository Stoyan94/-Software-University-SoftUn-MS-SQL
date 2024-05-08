CREATE TABLE [Students](
	[StudentID] INT PRIMARY KEY IDENTITY
   ,[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE [Exams](
	[ExamID] INT PRIMARY KEY IDENTITY(101, 1)
   ,[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE [StudentsExams](
	[StudentID] INT FOREIGN KEY REFERENCES [Students](StudentID) NOT NULL
   ,[ExamID] INT FOREIGN KEY REFERENCES [Exams](ExamID) NOT NULL
   ,PRIMARY KEY([StudentID], [ExamID])
)

SELECT * FROM StudentsExams

INSERT INTO [StudentsExams]
	VALUES
	(1, 101)
   ,(1, 102)
   ,(2, 101)
   ,(3, 103)
   ,(2, 102)
   ,(2, 103)

INSERT INTO [Students]
	VALUES
	('Mila')
   ,('Toni')
   ,('Ron')


INSERT INTO [Exams]
	VALUES
	('SpringMVC')
   ,('Neo4j')
   ,('Oracle 11g')