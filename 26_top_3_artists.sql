-- 26. Provide a query that shows the top 3 best selling artists.


SELECT 
    ar.Name AS Artist,
    SUM(il.Quantity) AS TotalSold
FROM Invoice i 
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN Album al ON al.AlbumId = t.AlbumId
    JOIN Artist ar ON ar.ArtistId = al.ArtistId
GROUP BY Artist
ORDER BY TotalSold DESC
LIMIT 3;