CREATE PROCEDURE usp_SearchByGenre @genreName VARCHAR(50)
AS
BEGIN

    SELECT b.Title,
    	   b.YearPublished,
    	   b.ISBN,
    	   a.[Name],
    	   g.[Name]
    FROM Books AS b
    JOIN Authors A ON b.AuthorId = a.Id
    JOIN Genres AS g ON g.Id = b.GenreId
    WHERE g.[Name] = @genreName
    ORDER BY b.Title

	END


	EXEC usp_SearchByGenre 'Fantasy'