
-- Majors
CREATE TABLE [Majors](
	[MajorID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(50) NOT NULL
)

-- Subjects
CREATE TABLE [Subjects](
	[SubjectID] INT PRIMARY KEY IDENTITY
   ,[SubjectName] VARCHAR(50) NOT NULL
)

-- Students
CREATE TABLE [Students](
	[StudentID] INT PRIMARY KEY IDENTITY
   ,[StudentNumber] INT NOT NULL
   ,[StudentName] VARCHAR(50) NOT NULL
   ,[MajorID] INT FOREIGN KEY REFERENCES [Majors]([MajorID]) NOT NULL
)

-- Agenda
CREATE TABLE [Agenda](
	[StudentID] INT FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL
   ,[SubjectID] INT FOREIGN KEY REFERENCES [Subjects]([SubjectID]) NOT NULL
)