SELECT c.*, r.* FROM Countries AS c
JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
JOIN [Rivers] AS r ON cr.RiverId = r.Id

-- Когато искаме да свържем таблици с връзка много към много трябва да минем през свързващата ги таблица => maping table
 
-- When we want to connect tables with a many-to-many relationship, we have to go through their connecting table => mapping table