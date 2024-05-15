SELECT [r].[RiverName],
	   [p].[PeakName]
FROM [Peaks]
  AS [p],
     [Rivers]
  AS [r]
WHERE SUBSTRING(r.RiverName, 1, 1) = SUBSTRING(p.PeakName, 1, 1)