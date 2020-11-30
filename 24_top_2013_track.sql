-- 24. Provide a query that shows the most purchased track of 2013.


SELECT 
    TotalSoldByTrack.Track, 
    MAX(TotalSoldByTrack.TotalSold)
FROM 
    (
    SELECT 
        t.Name AS Track,
        SUM(il.Quantity) AS TotalSold
    FROM Invoice i 
        JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
        JOIN Track t ON t.TrackId = il.TrackId
    GROUP BY Track
    ORDER BY TotalSold DESC
    ) 
        AS TotalSoldByTrack;
