-- 27. Provide a query that shows the most purchased Media Type.

SELECT 
    m.Name AS MediaType,
    SUM(il.Quantity) AS TotalSold
FROM Invoice i 
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
GROUP BY MediaType
ORDER BY TotalSold DESC
LIMIT 1;