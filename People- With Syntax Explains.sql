USE [Minions]

CREATE TABLE [People](
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	[Picture] VARBINARY(MAX),
	CHECK (DATALENGTH([Picture]) <= 2000000),
	[Height] DECIMAL(3,2),
	[Weight] DECIMAL(5,2),
	[Gender] CHAR(1) NOT NULL,
	CHECK ([Gender] = 'm' OR [Gender] = 'f'),
	[Birthdate] DATE NOT NULL,
	[Biography] NVARCHAR(MAX)
)

--CHECK Constraint: In SQL, a CHECK constraint is used to enforce a condition on the values being inserted or updated in a column. 
	--It ensures that only values meeting the specified condition are allowed in the column.

--DATALENGTH() Function: DATALENGTH() is a function in SQL Server that returns the number of bytes used to represent the expression. 
	--In this case, [Picture] refers to the "Picture" column, and DATALENGTH([Picture]) returns the length of the binary data stored in this column in bytes.

--2000000 Bytes Limit: The condition DATALENGTH([Picture]) <= 2000000 checks whether the length of the binary data stored in the "Picture" column 
	--is less than or equal to 2,000,000 bytes (approximately 2 MB). This ensures that the size of the picture stored in the column does not exceed the specified limit.

--Explanation: By adding this CHECK constraint to the "Picture" column, you're ensuring that any attempt to insert or update a row in the "People" table with a picture exceeding 2 MB in size will fail. 
	--This constraint helps enforce data integrity by preventing excessively large pictures from being stored in the database, which could potentially impact performance and storage requirements.

--In summary, the CHECK constraint with DATALENGTH([Picture]) <= 2000000 ensures that the binary data stored in the "Picture" column of the "People" table
	--does not exceed 2,000,000 bytes in length, thereby imposing a size limit on the pictures stored in the database.


INSERT INTO [People] ([Name], [Height], [Weight], [Gender], [Birthdate])
	VALUES
('Pesho', 1.77, 75.2, 'm', '1998-05-25'),
('Gosho', NULL, NULL, 'm', '1977-11-05'),
('Maria', 1.55, 72.2, 'f', '1990-01-02'),
('Elena', NULL, NULL, 'f', '1996-01-25'),
('Stoyan', 1.80, 105.8, 'm', '1993-07-5')


SELECT * FROM [People]


--ALTER TABLE [People]: This part specifies the table that you want to modify. In this case, it's the "People" table.

--ADD CONSTRAINT: This part specifies that you want to add a constraint to the table.

--DF_DefaultBiography: This is the name of the constraint being added.
	--In SQL Server, constraint names are typically prefixed with a code indicating the type of constraint. Here, "DF" likely stands for "Default".

--DEFAULT ('No biography provided...'): This specifies the default value constraint being added. 
	--It indicates that if a value is not provided for the "Biography" column during an INSERT operation, 
	--the default value 'No biography provided...' will be used instead.

--FOR [Biography]: This part specifies which column the default constraint applies to. In this case, it applies to the "Biography" column of the "People" table.

--In summary, this line of code adds a default constraint to the "Biography" column of the "People" table. 
	--If no value is explicitly provided for the "Biography" column during an INSERT operation, the default value 'No biography provided...' will be used instead. 
	--This ensures that every row in the "People" table has a default biography value if one is not provided explicitly.

ALTER TABLE [People]
ADD CONSTRAINT DF_DefaultBiography DEFAULT ('No biography provided...') FOR [Biography]
