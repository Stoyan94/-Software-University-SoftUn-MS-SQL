SELECT TOP 3
	 b.Title,
	 b.YearPublished,
	 g.[Name]
FROM Books AS b
JOIN Genres AS g ON g.Id = b.GenreId
WHERE b.YearPublished > '2000' AND b.Title LIKE '%a%'
OR b.YearPublished < '1950' AND g.[Name] LIKE '%Fantasy%'
ORDER BY b.Title, b.YearPublished DESC

SELECT * FROM Genres