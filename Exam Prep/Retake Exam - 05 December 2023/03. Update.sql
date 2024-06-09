UPDATE Tickets
SET 
    DateOfDeparture = DATEADD(day, 7, DateOfDeparture),
    DateOfArrival = DATEADD(day, 7, DateOfArrival)
WHERE 
    DateOfDeparture > '2023-10-31';