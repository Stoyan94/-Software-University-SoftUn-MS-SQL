SELECT a.[Name],
	   c.Email,
	   c.PostAddress
FROM Contacts AS c
JOIN Authors AS a ON a.ContactId = c.Id
WHERE c.PostAddress LIKE '%UK%'
ORDER BY a.[Name]