SELECT * FROM Books

SELECT * FROM LibrariesBooks

SELECT * FROM Genres

SELECT * FROM Libraries

SELECT
    l.Name AS Library,
    c.Email
FROM
    Libraries l
JOIN
    Contacts c ON l.ContactId = c.Id
WHERE
    l.Id NOT IN (
        SELECT DISTINCT lb.LibraryId
        FROM LibrariesBooks AS lb
        JOIN Books b ON lb.BookId = b.Id
        JOIN Genres g ON b.GenreId = g.Id
        WHERE g.[Name] = 'Mystery'
    )
ORDER BY
    l.[Name];