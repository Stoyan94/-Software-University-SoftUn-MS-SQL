DECLARE @AuthorID INT;

SELECT @AuthorID = Id
FROM Authors
WHERE Name = 'Alex Michaelides';


DELETE lb
FROM LibrariesBooks as lb
JOIN Books b ON LB.BookId = b.Id
WHERE b.AuthorId = @AuthorID;

DELETE Books
WHERE AuthorId = @AuthorID

DELETE Authors
WHERE Id = @AuthorID