
-- Items info
CREATE TABLE [ItemTypes](
	[ItemTypeID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE [Items](
	[ItemID] INT PRIMARY KEY IDENTITY 
   ,[Name] VARCHAR(50) NOT NULL
   ,[ItemTypeID] INT FOREIGN KEY REFERENCES [ItemTypes]([ItemTypeID]) NOT NULL
)

-- Customers info
CREATE TABLE [Cities](
	[CityID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE [Customers](
	[CustomerID] INT PRIMARY KEY IDENTITY
   ,[Name] VARCHAR(50) NOT NULL
   ,[Birthday] DATETIME2 NOT NULL
   ,[CityID] INT FOREIGN KEY REFERENCES [Cities]([CityID]) NOT NULL
)

-- Orders info
CREATE TABLE [Orders](
	[OrderID] INT PRIMARY KEY IDENTITY
   ,[CustomerID] INT FOREIGN KEY REFERENCES [Customers]([CustomerID]) NOT NULL
)


CREATE TABLE [OrderItems](
	[OrderID] INT FOREIGN KEY REFERENCES [Orders]([OrderID]) NOT NULL
   ,[ItemID] INT FOREIGN KEY REFERENCES [Items]([ItemID]) NOT NULL

   CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID,ItemID)
)

-- CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID,ItemID): This line defines a primary key constraint for the table. 
	-- It specifies that the combination of "OrderID" and "ItemID" together forms the primary key for the "OrderItems" table. 
	--This means that each combination of "OrderID" and "ItemID" must be unique within the table.
-- In summary, this code creates a table to represent the relationship between orders and items, 
	-- where each record links an order to an item through their respective IDs. 
	--The combination of order ID and item ID serves as the primary key for this table.