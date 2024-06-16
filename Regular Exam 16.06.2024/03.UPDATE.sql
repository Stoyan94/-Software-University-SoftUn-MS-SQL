SELECT * FROM Contacts

SELECT * 
FROM Authors AS a
LEFT JOIN Contacts AS c ON a.ContactId = c.Id
--WHERE Website IS NULL

UPDATE Contacts
SET Website = 'www.' + REPLACE(LOWER(A.Name), ' ', '') + '.com'
FROM Contacts AS c
LEFT JOIN Authors AS a ON c.Id = a.ContactId
WHERE c.Website IS NULL