CREATE FUNCTION udf_AuthorsWithBooks(@name VARCHAR(30))
RETURNS INT
AS
  BEGIN
		
		DECLARE @countBooks INT;
			
			SELECT @countBooks = COUNT(a.Id)
			FROM Authors AS a
			JOIN Books AS b ON a.Id = b.AuthorId
			WHERE a.[Name] = @name

		RETURN @countBooks

  END


  SELECT dbo.udf_AuthorsWithBooks('J.K. Rowling')
