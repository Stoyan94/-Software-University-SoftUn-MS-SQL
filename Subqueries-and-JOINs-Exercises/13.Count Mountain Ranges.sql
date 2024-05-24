SELECT mc.CountryCode
	  ,COUNT(m.MountainRange)
FROM Mountains AS m
JOIN MountainsCountries AS mc ON m.Id = mc.MountainId
WHERE mc.CountryCode IN ('BG', 'RU', 'US')
GROUP BY mc.CountryCode