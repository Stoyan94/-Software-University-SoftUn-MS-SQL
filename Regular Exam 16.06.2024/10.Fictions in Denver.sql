SELECT
    A.Name AS Author,
    B.Title AS Title,
    L.Name AS Library,
    C.PostAddress AS [Library Address]	
FROM Books B
JOIN Authors A ON B.AuthorId = A.Id
JOIN Genres G ON B.GenreId = G.Id
JOIN LibrariesBooks LB ON B.Id = LB.BookId
JOIN Libraries L ON LB.LibraryId = L.Id
JOIN Contacts C ON L.ContactId = C.Id
WHERE C.PostAddress LIKE '%Denver%' AND G.Name = 'Fiction'
ORDER BY B.Title;