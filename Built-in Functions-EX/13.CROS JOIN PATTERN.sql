SELECT [p].[PeakName],
	   [r].[RiverName],
	   LOWER(CONCAT(SUBSTRING([p].[PeakName], 1, LEN([p].[PeakName]) -1 ), [r].[RiverName]))
	   AS Mix
FROM [Peaks]
  AS [p],
     [Rivers]
  AS [r]
WHERE RIGHT(LOWER(r.RiverName), 1) = LEFT(LOWER(p.PeakName), 1)
ORDER BY Mix