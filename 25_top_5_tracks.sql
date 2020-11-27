-- 25.  Provide a query that shows the top 5 most purchased tracks over all.


SELECT 
    t.Name AS Track,
    SUM(il.Quantity) AS TotalSold
FROM Invoice i 
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
GROUP BY Track
ORDER BY TotalSold DESC
LIMIT 6;
