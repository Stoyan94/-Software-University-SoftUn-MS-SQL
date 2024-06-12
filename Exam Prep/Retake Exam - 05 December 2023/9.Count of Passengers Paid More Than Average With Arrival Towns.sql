SELECT 
    tArrival.Name AS TownName,
    COUNT(p.Id) AS PassengersCount
FROM 
    Tickets tk
JOIN 
    Passengers p ON tk.PassengerId = p.Id
JOIN 
    Trains tr ON tk.TrainId = tr.Id
JOIN 
    Towns tArrival ON tr.ArrivalTownId = tArrival.Id
WHERE 
    tk.Price > 76.99
GROUP BY 
    tArrival.Name
ORDER BY 
    tArrival.Name;
