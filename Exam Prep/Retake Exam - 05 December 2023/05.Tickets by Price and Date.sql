SELECT 
    DateOfDeparture, 
    Price AS TicketPrice
FROM 
    Tickets
ORDER BY 
    Price ASC, 
    DateOfDeparture DESC;