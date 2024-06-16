SELECT 
    b.Id,
    b.Title,
    b.ISBN,
    g.[Name] AS Genre
FROM Genres g
JOIN Books  b ON b.GenreId = g.Id
WHERE g.[Name] IN ('Biography', 'Historical Fiction')
ORDER BY g.Name, b.Title;