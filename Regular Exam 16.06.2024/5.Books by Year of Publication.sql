
-- Select all books, ordered by year of publication – descending, and then by title - alphabetically.
-- Required columns:
-- •	Book Title
-- •	ISBN
-- •	YearReleased


SELECT Title,
	   ISBN,
	   YearPublished
FROM Books
ORDER BY YearPublished DESC, Title