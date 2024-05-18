SELECT c.*, r.* FROM Countries AS c
JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
JOIN [Rivers] AS r ON cr.RiverId = r.Id

-- ������ ������ �� ������� ������� � ������ ����� ��� ����� ������ �� ����� ���� ����������� �� ������� => maping table
 
-- When we want to connect tables with a many-to-many relationship, we have to go through their connecting table => mapping table