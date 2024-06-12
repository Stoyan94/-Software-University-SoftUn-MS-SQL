SELECT 
    tr.Id AS TrainID,
    tDeparture.Name AS DepartureTown,
    mr.Details
FROM 
    MaintenanceRecords mr
JOIN 
    Trains tr ON mr.TrainId = tr.Id
JOIN 
    Towns tDeparture ON tr.DepartureTownId = tDeparture.Id
WHERE 
    mr.Details LIKE '%inspection%'
ORDER BY 
    tr.Id;