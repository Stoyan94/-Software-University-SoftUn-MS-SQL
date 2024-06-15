UPDATE Bookings
SET DepartureDate = DATEADD(day, 1, DepartureDate)
WHERE ArrivalDate >= '2023-12-01' AND ArrivalDate < '2024-01-01';

UPDATE Tourists
SET Email = NULL
WHERE Name LIKE '%MA%';