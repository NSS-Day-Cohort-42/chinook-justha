-- 13. Provide a query that includes the purchased track name AND artist name with each invoice line item.


SELECT 
    il.InvoiceId,
    il.InvoiceLineId,
    t.Name AS TrackName,
    art.Name AS ArtistName
FROM InvoiceLine il
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN Album alb ON alb.AlbumId = t.AlbumId
    JOIN Artist art ON art.ArtistId = alb.ArtistId;