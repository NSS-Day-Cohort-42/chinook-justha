-- 16. Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.


SELECT 
    p.Name AS Playlist,
    a.Title As Album,
    t.Name AS Track,
    g.Name AS Genre,
    m.Name AS MediaType
FROM Track t
    JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
    JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
    JOIN Album a ON a.AlbumId = t.AlbumId
    JOIN Genre g ON g.GenreId = t.GenreId
    JOIN MediaType m ON m.MediaTypeID = t.MediaTypeId