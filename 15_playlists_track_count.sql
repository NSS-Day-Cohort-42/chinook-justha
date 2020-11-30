-- 15. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.


SELECT 
    p.Name AS PlaylistName,
    COUNT(t.TrackId) AS TotalTracks
FROM Track t
    JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
    JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP BY PlaylistName



-- confirm...
-- SELECT 
--     p.Name AS PlaylistName,
--     t.Name AS TrackName
-- FROM Track t
--     JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
--     JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
 